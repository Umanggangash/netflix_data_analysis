import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("netflix_titles.csv")

# Count Movies vs TV Shows
type_counts = df["type"].value_counts()

print(type_counts)

# Plot content distribution
type_counts.plot(kind="bar")

plt.title("Movies vs TV Shows on Netflix")
plt.xlabel("Content Type")
plt.ylabel("Count")

plt.tight_layout()

plt.savefig("dashboard.png")
plt.show()