Return-Path: <devicetree+bounces-101899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6C0974B50
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABA751C258A3
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E4914A636;
	Wed, 11 Sep 2024 07:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jIO0qvAh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D461614A0AB
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726039715; cv=none; b=Hqlj5rHFkQ1TJBg1QV4oyCEhpreHlxMIChlPI1srryZKPTmagsWKht2hWq7OzzM5NqzysLaistkkg4UOOlmZ5Zf67fcnta1qBj6hIBpQQCuEVwmcApcRx4YrXPtWRBjAGyfSQP8cXvXjiZtt4cb6XSaIt0j/wDoxJInHsU884yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726039715; c=relaxed/simple;
	bh=WxMROr7huCM27GHQ6nDzxDb5JW0IZzdP8pMTdaNq6Rs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qyqYOfwp2nfoHvVb58FmsapN5am+JeheH0vbswiaLb3wzBMGJl7gTvwJxVWVplBssF8Rx4mPX69yeNeFolfPeC44X/pRAIGINVFo2aL1LB5vJhCaoUomZrVaBtTRqmVXaLxyPVsDDV9YBOa3t3d/DmLcjV9cOvB6SzK/bg3Px+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jIO0qvAh; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-27b88b8a24aso2402368fac.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726039713; x=1726644513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=usCLS2gw9idy/3IwRZ6LuORHWtJja/i6x5Lk0clI0uw=;
        b=jIO0qvAh+oNnWD+ArkzqxgmGBKsqv2PWN65ot8qAEgrlkxZ7Imia4ZmEf7gi0YSv+g
         j82kVoHbcN1YgWyJV0ILqShuhgDld9Tna0ukxKIrMwCCzmlTjDUvu+z6IT0RVF/EOjaK
         H60de3TttUud8B30jDRfmovmyUvoLP1IH8VS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726039713; x=1726644513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=usCLS2gw9idy/3IwRZ6LuORHWtJja/i6x5Lk0clI0uw=;
        b=DuIc+R1dKu+0m3iBnAbJhEMmgTQaw+k+mGaK6F3XEieEj6gasNiQmmErCqoJOBW+f6
         GIgX3lgAmRpg95c4kllNZCA3taCETkFDNPCjscrpWgfvO2hsfqRrsu3yPZUfkfH+Uxz6
         6KJmyIoh3Wb5YpD/OAGL1VR2Jd1kp3r0McG5LZdLDvPm+JI25E+bBBvTHDQDZx6uznJD
         EEWO06Cqh9lnIiYHxDjFc2OUgU1jtrbNueXn+MBKH6+tn4BuATmXcXFJeArLwc35bT7m
         BtwEYvml2D3hxqafOMnAInXENspukIjWnA0MUpkPEme/3LQtCFyPOetNlgYUQU06DgvH
         Zx9g==
X-Forwarded-Encrypted: i=1; AJvYcCWx474mMstEPLH4QwRwP7DKizhHv5h+MvKuN0Qc1u3H0hSdQYwDEAaK7cOA/CSZOGBRBmvU8kPdoVPW@vger.kernel.org
X-Gm-Message-State: AOJu0YwV3ZLjyzzS+uTFEQtXXEUvpEpHRrfIje17JvDo7rWnNf9bZFXD
	kmgUMRxP7g3VnH1CFTgwq8M75i7DIfMqWMsJCqMfRbTJe9YyWexKUg1HnmXLnA==
X-Google-Smtp-Source: AGHT+IFNM7b4JkSSxOxl6LIFw91t1hLIJvdgyEh6OE43L+BvV2ny7clTTpH+bkJj2RTSowhSQE6gdw==
X-Received: by 2002:a05:6870:1702:b0:24f:dd11:4486 with SMTP id 586e51a60fabf-27b9dd8110fmr8247849fac.36.1726039712931;
        Wed, 11 Sep 2024 00:28:32 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8398:fe34:eba2:f301])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71908fe4e7esm2399415b3a.80.2024.09.11.00.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 00:28:32 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v7 04/10] regulator: Add of_regulator_get_optional() for pure DT regulator lookup
Date: Wed, 11 Sep 2024 15:27:42 +0800
Message-ID: <20240911072751.365361-5-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911072751.365361-1-wenst@chromium.org>
References: <20240911072751.365361-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The to-be-introduced I2C component prober needs to enable regulator
supplies (and toggle GPIO pins) for the various components it intends
to probe. To support this, a new "pure DT lookup" method for getting
regulator supplies is needed, since the device normally requesting
the supply won't get created until after the component is probed to
be available.

Add a new of_regulator_get_optional() function for this. This mirrors
the existing regulator_get_optional() function, but is OF-specific.
The underlying code that supports the existing regulator_get*()
functions has been reworked in previous patches to support this
specific case.

Also convert an existing usage of "dev && dev->of_node" to
"dev_of_node(dev)".

Link: https://lore.kernel.org/all/20231220203537.83479-2-jernej.skrabec@gmail.com/ [1]
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v6:
- Changed reference [1] to Link: tag
- Rebased on top of commit 401d078eaf2e ("regulator: of: Refactor
  of_get_*regulator() to decrease indentation")
- Exported of_regulator_get_optional()
- Changed commit message to focus on "of_regulator_get_optional()"
- Dropped change to of_regulator_bulk_get_all()

Changes since v5:
- Used "dev_of_node(dev)" instead of "dev->of_node"
- Replaced "dev_printk" with "dev_printk()" in kerneldoc mentions
- Fixed kerneldoc "Return" section format for of_regulator_get_optional()
- Fix @np parameter name in of_regulator_dev_lookup() kerneldoc

Changes since v4:
- Restore platform-agnostic regulator consumer code to original state
- Move OF-specific regulator code to of_regulator.c (separate patch)
- Split _regulator_get() into three parts for reuse (separate patch)
- Add OF-specific _of_regulator_get() function
- Rename regulator_of_get_optional() to of_regulator_get_optional() for
  consistency
- Make of_regulator_get_optional static, as it is only used internally
- Convert of_regulator_bulk_get_all()

Changes since v3:
- New patch
---
 drivers/regulator/core.c           |  4 +--
 drivers/regulator/internal.h       |  2 ++
 drivers/regulator/of_regulator.c   | 51 ++++++++++++++++++++++++++----
 include/linux/regulator/consumer.h |  4 +++
 4 files changed, 53 insertions(+), 8 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index d60c86477ac2..f94a06ac2109 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -1959,8 +1959,8 @@ static struct regulator_dev *regulator_dev_lookup(struct device *dev,
 	regulator_supply_alias(&dev, &supply);
 
 	/* first do a dt based lookup */
-	if (dev && dev->of_node) {
-		r = of_regulator_dev_lookup(dev, supply);
+	if (dev_of_node(dev)) {
+		r = of_regulator_dev_lookup(dev, dev_of_node(dev), supply);
 		if (!IS_ERR(r))
 			return r;
 		if (PTR_ERR(r) == -EPROBE_DEFER)
diff --git a/drivers/regulator/internal.h b/drivers/regulator/internal.h
index 5b43f802468d..f62cacbbc729 100644
--- a/drivers/regulator/internal.h
+++ b/drivers/regulator/internal.h
@@ -67,6 +67,7 @@ static inline struct regulator_dev *dev_to_rdev(struct device *dev)
 
 #ifdef CONFIG_OF
 struct regulator_dev *of_regulator_dev_lookup(struct device *dev,
+					      struct device_node *np,
 					      const char *supply);
 struct regulator_init_data *regulator_of_get_init_data(struct device *dev,
 			         const struct regulator_desc *desc,
@@ -82,6 +83,7 @@ bool of_check_coupling_data(struct regulator_dev *rdev);
 
 #else
 static inline struct regulator_dev *of_regulator_dev_lookup(struct device *dev,
+							    struct device_node *np,
 							    const char *supply)
 {
 	return ERR_PTR(-ENODEV);
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 3f490d81abc2..358c3ed791db 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -588,7 +588,8 @@ static struct device_node *of_get_child_regulator(struct device_node *parent,
 
 /**
  * of_get_regulator - get a regulator device node based on supply name
- * @dev: Device pointer for the consumer (of regulator) device
+ * @dev: Device pointer for dev_printk() messages
+ * @node: Device node pointer for supply property lookup
  * @supply: regulator supply name
  *
  * Extract the regulator device node corresponding to the supply name.
@@ -596,15 +597,16 @@ static struct device_node *of_get_child_regulator(struct device_node *parent,
  * Return: Pointer to the &struct device_node corresponding to the regulator
  *	   if found, or %NULL if not found.
  */
-static struct device_node *of_get_regulator(struct device *dev, const char *supply)
+static struct device_node *of_get_regulator(struct device *dev, struct device_node *node,
+					    const char *supply)
 {
 	struct device_node *regnode = NULL;
 	char prop_name[64]; /* 64 is max size of property name */
 
-	dev_dbg(dev, "Looking up %s-supply from device tree\n", supply);
+	dev_dbg(dev, "Looking up %s-supply from device node %pOF\n", supply, node);
 
 	snprintf(prop_name, 64, "%s-supply", supply);
-	regnode = of_parse_phandle(dev->of_node, prop_name, 0);
+	regnode = of_parse_phandle(node, prop_name, 0);
 	if (regnode)
 		return regnode;
 
@@ -628,6 +630,7 @@ static struct regulator_dev *of_find_regulator_by_node(struct device_node *np)
 /**
  * of_regulator_dev_lookup - lookup a regulator device with device tree only
  * @dev: Device pointer for regulator supply lookup.
+ * @np: Device node pointer for regulator supply lookup.
  * @supply: Supply name or regulator ID.
  *
  * Return: Pointer to the &struct regulator_dev on success, or ERR_PTR()
@@ -642,13 +645,13 @@ static struct regulator_dev *of_find_regulator_by_node(struct device_node *np)
  * * -%ENODEV if lookup fails permanently.
  * * -%EPROBE_DEFER if lookup could succeed in the future.
  */
-struct regulator_dev *of_regulator_dev_lookup(struct device *dev,
+struct regulator_dev *of_regulator_dev_lookup(struct device *dev, struct device_node *np,
 					      const char *supply)
 {
 	struct regulator_dev *r;
 	struct device_node *node;
 
-	node = of_get_regulator(dev, supply);
+	node = of_get_regulator(dev, np, supply);
 	if (node) {
 		r = of_find_regulator_by_node(node);
 		of_node_put(node);
@@ -665,6 +668,42 @@ struct regulator_dev *of_regulator_dev_lookup(struct device *dev,
 	return ERR_PTR(-ENODEV);
 }
 
+static struct regulator *_of_regulator_get(struct device *dev, struct device_node *node,
+					   const char *id, enum regulator_get_type get_type)
+{
+	struct regulator_dev *r;
+	int ret;
+
+	ret = _regulator_get_common_check(dev, id, get_type);
+	if (ret)
+		return ERR_PTR(ret);
+
+	r = of_regulator_dev_lookup(dev, node, id);
+	return _regulator_get_common(r, dev, id, get_type);
+}
+
+/**
+ * of_regulator_get_optional - get optional regulator via device tree lookup
+ * @dev: device used for dev_printk() messages
+ * @node: device node for regulator "consumer"
+ * @id: Supply name
+ *
+ * Return: pointer to struct regulator corresponding to the regulator producer,
+ *	   or PTR_ERR() encoded error number.
+ *
+ * This is intended for use by consumers that want to get a regulator
+ * supply directly from a device node, and can and want to deal with
+ * absence of such supplies. This will _not_ consider supply aliases.
+ * See regulator_dev_lookup().
+ */
+struct regulator *of_regulator_get_optional(struct device *dev,
+					    struct device_node *node,
+					    const char *id)
+{
+	return _of_regulator_get(dev, node, id, OPTIONAL_GET);
+}
+EXPORT_SYMBOL_GPL(of_regulator_get_optional);
+
 /*
  * Returns number of regulators coupled with rdev.
  */
diff --git a/include/linux/regulator/consumer.h b/include/linux/regulator/consumer.h
index b9ce521910a0..d7325e27a1ce 100644
--- a/include/linux/regulator/consumer.h
+++ b/include/linux/regulator/consumer.h
@@ -168,6 +168,10 @@ int devm_regulator_get_enable_read_voltage(struct device *dev, const char *id);
 void regulator_put(struct regulator *regulator);
 void devm_regulator_put(struct regulator *regulator);
 
+struct regulator *__must_check of_regulator_get_optional(struct device *dev,
+							 struct device_node *node,
+							 const char *id);
+
 int regulator_register_supply_alias(struct device *dev, const char *id,
 				    struct device *alias_dev,
 				    const char *alias_id);
-- 
2.46.0.598.g6f2099f65c-goog


