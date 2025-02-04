# ENZYMES
python -m train --datadir=data --bmname=ENZYMES --cuda=3 --max-nodes=100 --num-classes=6

# ENZYMES - Diffpool
python -m train --bmname=ENZYMES --assign-ratio=0.1 --hidden-dim=30 --output-dim=30 --cuda=1 --num-classes=6 --method=soft-assign

(# ENZYMES - Diffpool -trl 1
python -m train --bmname=ENZYMES --assign-ratio=0.1 --hidden-dim=20 --output-dim=20 --cuda=1 --num-classes=2 --method=soft-assign --batch_size=18
# ENZYMES - Diffpool -trl 2
python -m train --bmname=ENZYMES --assign-ratio=0.1 --hidden-dim=20 --output-dim=20 --cuda=1 --num-classes=2 --method=soft-assign --batch_size=20)

# DD
python -m train --datadir=data --bmname=DD --cuda=0 --max-nodes=500 --epochs=1000 --num-classes=2

# DD - Diffpool
python -m train --bmname=ENZYMES --assign-ratio=0.1 --hidden-dim=64 --output-dim=64 --cuda=1 --num-classes=2 --method=soft-assign
