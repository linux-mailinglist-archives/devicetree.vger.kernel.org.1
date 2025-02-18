Return-Path: <devicetree+bounces-147996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DD2A3A298
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 17:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BBED07A5F2C
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 16:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B05271283;
	Tue, 18 Feb 2025 16:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="B+UTuIDU"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D43270EDF;
	Tue, 18 Feb 2025 16:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739895575; cv=none; b=qJgf+BwqBusVtIpQaWME0R6zLzbxCWMC27mK99uoS24GxAf2rbfgU/TiE8MGSVhnyL4R4/bAk5s87vwYs/hjU5KccQ6iQBu4KKa1WNfChe1eOp/LVHij/bzv3qgFR6ElF+lpq/+4QkYwQwcKUZXcyc/fxDnSQIdnEpHLz3xkbLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739895575; c=relaxed/simple;
	bh=iDZcoXquwEP36kW7VPrT8S/Njzet5XBB9dc66qveH9w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FxKGhXqYNAFrBiBbf9da7UE564/HhY34nOUIuPfhwT4OHDrmuiSDGxVejuNSBphoyeVxvq2nTdseuK3oku7PqjxW/dAUN2hXvYBULubGUWbV5jgmms+N0zw/beVcS666qVHt/F3UUCXkIS+fUQqGo4Nv0M8sXbjhuF/sQPncapw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=B+UTuIDU; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E605444326;
	Tue, 18 Feb 2025 16:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1739895570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Rj+i24DE3gBXZViSTAY4jPfhu0JQJ5E2pJHf/za7rm0=;
	b=B+UTuIDUfiAmDoDs3gq4eW0If+TUl8YF3XO/8dY6WBjCaiaiLrysZaJPD6lRy31v1ScXtC
	DurTNbzILACsvIMZDXiUosyAdYF5Ma1ZafvAwNr7fYxDiEbNzZW+2fkeDHR3aVMPucQqBV
	55j+9WaroxB/24Odn0NQMjo1eK5UPZliPsFfTwj+thtuLW1gazUSJ7GHhM2VHcDFKZ4PD0
	H1zf6pRvjEzOQyrGnesnpEv1jCigXjROAoa2Q+tF2MQ1q4xj5gUZMiwq3VvLl57JkWRndj
	wQ4QG5VYXqCRxEqwuP0bvkII2mrkjBb/LGYw87faYXc0e1XJjSpzDirR3vugtw==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Tue, 18 Feb 2025 17:19:11 +0100
Subject: [PATCH net-next v5 07/12] net: ethtool: Add PSE new budget
 evaluation strategy support feature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250218-feature_poe_port_prio-v5-7-3da486e5fd64@bootlin.com>
References: <20250218-feature_poe_port_prio-v5-0-3da486e5fd64@bootlin.com>
In-Reply-To: <20250218-feature_poe_port_prio-v5-0-3da486e5fd64@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>, Oleksij Rempel <o.rempel@pengutronix.de>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jonathan Corbet <corbet@lwn.net>, Donald Hunter <donald.hunter@gmail.com>, 
 Rob Herring <robh@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Simon Horman <horms@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 linux-doc@vger.kernel.org, Kyle Swenson <kyle.swenson@est.tech>, 
 Dent Project <dentproject@linuxfoundation.org>, kernel@pengutronix.de, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 "Kory Maincent (Dent Project)" <kory.maincent@bootlin.com>
X-Mailer: b4 0.15-dev-8cb71
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeiudejjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephfffufggtgfgkfhfjgfvvefosehtkeertdertdejnecuhfhrohhmpefmohhrhicuofgrihhntggvnhhtuceokhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepieekgfejvdekudfgieehffegfeelgfetudeluedviedtgfdtvdelteeikeffffeknecukfhppedvrgdtudemtggstddumeeftdehfeemrgdvieeimeelvgeivgemleeisgdumegvsgguleemfhdtrgegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtddumegtsgdtudemfedtheefmegrvdeiieemlegviegvmeeliegsudemvggsugelmehftdgrgedphhgvlhhopegluddvjedrtddruddrudgnpdhmrghilhhfrhhomhepkhhorhihrdhmrghinhgtvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepvdehpdhrtghpthhtoheprghnughrvgifodhnvghtuggvvheslhhunhhnrdgthhdprhgtphhtthhopeguvghnthhprhhojhgvtghtsehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoheplhhinhhugiesrghrmhhlihhnuhigrdhorhhgrdhuk
 hdprhgtphhtthhopehprggsvghnihesrhgvughhrghtrdgtohhmpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkvghrnhgvlhesphgvnhhguhhtrhhonhhigidruggv
X-GND-Sasl: kory.maincent@bootlin.com

From: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>

This patch expands the status information provided by ethtool for PSE c33
with current port priority and max port priority. It also adds a call to
pse_ethtool_set_prio() to configure the PSE port priority.

Signed-off-by: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>
---

Change in v4:
- Remove disconnection policy features.
- Rename port priority to budget evaluation strategy.

Change in v3:
- Add disconnection policy.

Change in v2:
- Improve port priority documentation.
- Add port priority modes.
---
 Documentation/netlink/specs/ethtool.yaml       | 16 ++++++
 Documentation/networking/ethtool-netlink.rst   | 67 ++++++++++++++++++++++++++
 include/uapi/linux/ethtool_netlink_generated.h |  3 ++
 net/ethtool/pse-pd.c                           | 26 ++++++++++
 4 files changed, 112 insertions(+)

diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
index 9b171c2dd1a4..387eff675d7f 100644
--- a/Documentation/netlink/specs/ethtool.yaml
+++ b/Documentation/netlink/specs/ethtool.yaml
@@ -1370,6 +1370,18 @@ attribute-sets:
         name: pse-pw-d-id
         type: u32
         name-prefix: ethtool-a-
+      -
+        name: pse-budget-eval-strat
+        type: u32
+        name-prefix: ethtool-a-
+      -
+        name: pse-prio-max
+        type: u32
+        name-prefix: ethtool-a-
+      -
+        name: pse-prio
+        type: u32
+        name-prefix: ethtool-a-
   -
     name: rss
     attr-cnt-name: __ethtool-a-rss-cnt
@@ -2195,6 +2207,9 @@ operations:
             - c33-pse-avail-pw-limit
             - c33-pse-pw-limit-ranges
             - pse-pw-d-id
+            - pse-budget-eval-strat
+            - pse-prio-max
+            - pse-prio
       dump: *pse-get-op
     -
       name: pse-set
@@ -2209,6 +2224,7 @@ operations:
             - podl-pse-admin-control
             - c33-pse-admin-control
             - c33-pse-avail-pw-limit
+            - pse-prio
     -
       name: rss-get
       doc: Get RSS params.
diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
index dc3f6afc55a4..148323417fc9 100644
--- a/Documentation/networking/ethtool-netlink.rst
+++ b/Documentation/networking/ethtool-netlink.rst
@@ -1790,6 +1790,12 @@ Kernel response contents:
   ``ETHTOOL_A_C33_PSE_PW_LIMIT_RANGES``       nested  Supported power limit
                                                       configuration ranges.
   ``ETHTOOL_A_PSE_PW_D_ID``                      u32  Index of the PSE power domain
+  ``ETHTOOL_A_C33_PSE_BUDGET_EVAL_STRAT``        u32  Budget evaluation strategy
+                                                      of the PSE
+  ``ETHTOOL_A_C33_PSE_PRIO_MAX``                 u32  Priority maximum configurable
+                                                      on the PoE PSE
+  ``ETHTOOL_A_C33_PSE_PRIO``                     u32  Priority of the PoE PSE
+                                                      currently configured
   ==========================================  ======  =============================
 
 When set, the optional ``ETHTOOL_A_PODL_PSE_ADMIN_STATE`` attribute identifies
@@ -1866,6 +1872,51 @@ equal.
 The ``ETHTOOL_A_PSE_PW_D_ID`` attribute identifies the index of PSE power
 domain.
 
+When set, the optional ``ETHTOOL_A_C33_PSE_PRIO_SUPP_MODES`` attribute
+identifies the priority mode supported by the C33 PSE.
+When set, the optional ``ETHTOOL_A_C33_PSE_BUDGET_EVAL_STRAT`` attributes is used to
+identifies the currently configured C33 PSE budget evaluation strategy.
+The available strategies are:
+
+1. Disabled:
+
+   In this mode, the port is excluded from active budget evaluation. It
+   allows the port to violate the budget and is intended primarily for testing
+   purposes.
+
+2. Static Method:
+
+   This method involves distributing power based on PD classification. It’s
+   straightforward and stable, with the PSE core keeping track of the budget
+   and subtracting the power requested by each PD’s class. This is the
+   safest option and should be used by default.
+
+   Advantages: Every PD gets its promised power at any time, which guarantees
+   reliability.
+
+   Disadvantages: PD classification steps are large, meaning devices request
+   much more power than they actually need. As a result, the power supply may
+   only operate at, say, 50% capacity, which is inefficient and wastes money.
+
+3. Dynamic Method:
+
+   This method monitors the current consumption per port and subtracts it from
+   the available power budget. When the budget is exceeded, lower-priority
+   ports are shut down. This method is managed by the PSE controller itself.
+
+   Advantages: This method optimizes resource utilization, saving costs.
+
+   Disadvantages: Low-priority devices may experience instability.
+
+.. kernel-doc:: include/uapi/linux/ethtool.h
+    :identifiers: ethtool_pse_budget_eval_strategies
+
+When set, the optional ``ETHTOOL_A_C33_PSE_PRIO_MAX`` attribute identifies
+the C33 PSE maximum priority value.
+When set, the optional ``ETHTOOL_A_C33_PSE_PRIO`` attributes is used to
+identifies the currently configured C33 PSE priority.
+For a description of PSE priority attributes, see ``PSE_SET``.
+
 PSE_SET
 =======
 
@@ -1879,6 +1930,8 @@ Request contents:
   ``ETHTOOL_A_C33_PSE_ADMIN_CONTROL``        u32  Control PSE Admin state
   ``ETHTOOL_A_C33_PSE_AVAIL_PWR_LIMIT``      u32  Control PoE PSE available
                                                   power limit
+  ``ETHTOOL_A_C33_PSE_PRIO``                 u32  Control priority of the
+                                                  PoE PSE
   ======================================  ======  =============================
 
 When set, the optional ``ETHTOOL_A_PODL_PSE_ADMIN_CONTROL`` attribute is used
@@ -1901,6 +1954,20 @@ various existing products that document power consumption in watts rather than
 classes. If power limit configuration based on classes is needed, the
 conversion can be done in user space, for example by ethtool.
 
+When set, the optional ``ETHTOOL_A_C33_PSE_PRIO`` attributes is used to
+control the C33 PSE priority. Allowed priority value are between zero
+and the value of ``ETHTOOL_A_C33_PSE_PRIO_MAX`` attribute.
+
+A lower value indicates a higher priority, meaning that a priority value
+of 0 corresponds to the highest port priority.
+Port priority serves two functions:
+
+ - Power-up Order: After a reset, ports are powered up in order of their
+   priority from highest to lowest. Ports with higher priority
+   (lower values) power up first.
+ - Shutdown Order: When the power budget is exceeded, ports with lower
+   priority (higher values) are turned off first.
+
 PSE_NTF
 =======
 
diff --git a/include/uapi/linux/ethtool_netlink_generated.h b/include/uapi/linux/ethtool_netlink_generated.h
index 919435c1a924..5e65b73043c6 100644
--- a/include/uapi/linux/ethtool_netlink_generated.h
+++ b/include/uapi/linux/ethtool_netlink_generated.h
@@ -634,6 +634,9 @@ enum {
 	ETHTOOL_A_C33_PSE_AVAIL_PW_LIMIT,
 	ETHTOOL_A_C33_PSE_PW_LIMIT_RANGES,
 	ETHTOOL_A_PSE_PW_D_ID,
+	ETHTOOL_A_PSE_BUDGET_EVAL_STRAT,
+	ETHTOOL_A_PSE_PRIO_MAX,
+	ETHTOOL_A_PSE_PRIO,
 
 	__ETHTOOL_A_PSE_CNT,
 	ETHTOOL_A_PSE_MAX = (__ETHTOOL_A_PSE_CNT - 1)
diff --git a/net/ethtool/pse-pd.c b/net/ethtool/pse-pd.c
index eae5b7894613..70ac11810c2a 100644
--- a/net/ethtool/pse-pd.c
+++ b/net/ethtool/pse-pd.c
@@ -112,6 +112,12 @@ static int pse_reply_size(const struct ethnl_req_info *req_base,
 		len += st->c33_pw_limit_nb_ranges *
 		       (nla_total_size(0) +
 			nla_total_size(sizeof(u32)) * 2);
+	if (st->budget_eval_strategy)
+		/* _PSE_BUDGET_EVAL_STRAT */
+		len += nla_total_size(sizeof(u32));
+	if (st->prio_max)
+		/* _PSE_PRIO_MAX + _PSE_PRIO */
+		len += nla_total_size(sizeof(u32)) * 2;
 
 	return len;
 }
@@ -206,6 +212,16 @@ static int pse_fill_reply(struct sk_buff *skb,
 	    pse_put_pw_limit_ranges(skb, st))
 		return -EMSGSIZE;
 
+	if (st->budget_eval_strategy > 0 &&
+	    nla_put_u32(skb, ETHTOOL_A_PSE_BUDGET_EVAL_STRAT,
+			st->budget_eval_strategy))
+		return -EMSGSIZE;
+
+	if (st->prio_max > 0 &&
+	    (nla_put_u32(skb, ETHTOOL_A_PSE_PRIO_MAX, st->prio_max) ||
+	     nla_put_u32(skb, ETHTOOL_A_PSE_PRIO, st->prio)))
+		return -EMSGSIZE;
+
 	return 0;
 }
 
@@ -227,6 +243,7 @@ const struct nla_policy ethnl_pse_set_policy[ETHTOOL_A_PSE_MAX + 1] = {
 		NLA_POLICY_RANGE(NLA_U32, ETHTOOL_C33_PSE_ADMIN_STATE_DISABLED,
 				 ETHTOOL_C33_PSE_ADMIN_STATE_ENABLED),
 	[ETHTOOL_A_C33_PSE_AVAIL_PW_LIMIT] = { .type = NLA_U32 },
+	[ETHTOOL_A_PSE_PRIO] = { .type = NLA_U32 },
 };
 
 static int
@@ -275,6 +292,15 @@ ethnl_set_pse(struct ethnl_req_info *req_info, struct genl_info *info)
 	if (ret)
 		return ret;
 
+	if (tb[ETHTOOL_A_PSE_PRIO]) {
+		unsigned int prio;
+
+		prio = nla_get_u32(tb[ETHTOOL_A_PSE_PRIO]);
+		ret = pse_ethtool_set_prio(phydev->psec, info->extack, prio);
+		if (ret)
+			return ret;
+	}
+
 	if (tb[ETHTOOL_A_C33_PSE_AVAIL_PW_LIMIT]) {
 		unsigned int pw_limit;
 

-- 
2.34.1


