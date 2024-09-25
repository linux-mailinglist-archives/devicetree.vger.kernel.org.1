Return-Path: <devicetree+bounces-105207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D289198567E
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:38:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 020EE1C211A2
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 09:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 362FD188A01;
	Wed, 25 Sep 2024 09:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TDkp/u7V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8CA18308A
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 09:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727257102; cv=none; b=L1K9Yc8iMzgaqBmcSQFLREMtZPRjMr2f3f1wBvd2/XmKbK6lgD1N/nt+rGkiQnUsCN/8oyxbLJrM5vprU25v3xO25e4t+gsUeJ87d9cCgpKsHhAjuur5VaEi3qz2smvvqikhJYISL70nI5QedM6BlnVxnowqynSyR97xEIaRLoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727257102; c=relaxed/simple;
	bh=yIHPQabVkxjx7tzx5SzyX87nRu2AVwQVbaXvyp7mRHI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qbCUN3uZ6wH5SO+eZmF9YC0yTpfLAPo075QkiGE19k6tNYJ8LAWSv5Xlm0Gp/DTkdxp/mb1R/zffkBQkTmUSfEGF378ulmsMXQW+i6NgCO/nva9iXqDHU0dD7bqKh7JtjgeihwMYIWMldX+o6DGcfdk55RWCjc1fDOQ1tLBcxj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TDkp/u7V; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7d50e7a3652so3896636a12.3
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 02:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727257100; x=1727861900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bXktUyxRWkmvmoDnOf/TDCOPJhfZ68iG0bFgcdjWoY=;
        b=TDkp/u7VGhaQ9OEvEadYZ65PBVUU+791OOObioavlRPLMy/xhzT6GL6epjslTC7qll
         YDuSDp31QDizbg3wV6oO+4YnV7MjqEaxlnu47pjnDRQqFBBsDnDPWrObGTUkYhUirqZ1
         c9jmO2Ceq7Vtdys0iZe/TnEu7S1WyAgX1IB+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727257100; x=1727861900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7bXktUyxRWkmvmoDnOf/TDCOPJhfZ68iG0bFgcdjWoY=;
        b=gCly0LDSqPe2HyVXEo1p+Ky6aCfiZxz1Ldlf4jlwcKz42TKmE0iJRcJbFrICS/fQIf
         ly6mkNr6joIbxcfOeVR1+gOSQkGGWdXIj7JFOZ7E8AmVwzS5YrmyXriGVkeBmzPi5R+d
         OvzNkdJdL3jSrnem5JlWK/ql6ZWzTkRv6p3iyxjaW8pCcfzNqkjBve8P9fXOgNKp+bRS
         SDC+mKLIfAFsBhRyPluwiV86mXcRL4SEt/Po8EhFOfeVblMqP7LqmD+tc+KzwZj0QolB
         ipyGwMgsLhdu3SWdOEt7ca5+FenDAl4AenX5wAU5OghM0l9szjqVTFaOS04dtkX8at0F
         zGKw==
X-Forwarded-Encrypted: i=1; AJvYcCWqpDWXxQKyoirlmeju+MHaCBNCu5dC9rJ6JkwdBGww6+aFzIHUROypPF+7dnaqrsgDhslFeXhyzS6T@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9jZnNDIXFqpTTfa/DkQHmhYkFBNI5k4jSki67BwzXNRYxihfn
	G12zNjdlTwLjKkqZyeT0NCgZgaX2vSOPBC2+FnJ+XhT2PrtnD1ye/SD8slLu0j17rM+YDnW72V4
	=
X-Google-Smtp-Source: AGHT+IHiIptcOj4pohjGvFSBEsElP+b23Io+sJLV0MHs1RLHjwz1o2ogGe1jcYOVaKnKSawT4ThJ6Q==
X-Received: by 2002:a05:6a21:3305:b0:1cf:31b6:18c6 with SMTP id adf61e73a8af0-1d4e0beb994mr2832996637.46.1727257099967;
        Wed, 25 Sep 2024 02:38:19 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2480:2c96:2b64:cdcb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71afc8347fesm2432789b3a.35.2024.09.25.02.38.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 02:38:19 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Pablo Sun <pablo.sun@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v8 2/3] regulator: Add devres version of of_regulator_get_optional()
Date: Wed, 25 Sep 2024 17:38:05 +0800
Message-ID: <20240925093807.1026949-3-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
In-Reply-To: <20240925093807.1026949-1-wenst@chromium.org>
References: <20240925093807.1026949-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are existing uses for a devres version of of_regulator_get_optional()
in power domain drivers. On MediaTek platforms, power domains may have
regulator supplies tied to them. The driver currently tries to use
devm_regulator_get() to not have to manage the lifecycle, but ends up
doing it in a very hacky way by replacing the device node of the power
domain controller device to the device node of the power domain that is
currently being registered, getting the supply, and reverting the device
node.

Provide a better API so that the hack can be replaced.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v7:
- New patch
---
 drivers/regulator/devres.c         | 39 ++++++++++++++++++++++++++++++
 drivers/regulator/internal.h       | 16 +++++++-----
 drivers/regulator/of_regulator.c   |  4 +--
 include/linux/regulator/consumer.h | 17 +++++++++++++
 4 files changed, 68 insertions(+), 8 deletions(-)

diff --git a/drivers/regulator/devres.c b/drivers/regulator/devres.c
index 1b893cdd1aad..36164aec30e8 100644
--- a/drivers/regulator/devres.c
+++ b/drivers/regulator/devres.c
@@ -749,3 +749,42 @@ void *devm_regulator_irq_helper(struct device *dev,
 	return ptr;
 }
 EXPORT_SYMBOL_GPL(devm_regulator_irq_helper);
+
+#if IS_ENABLED(CONFIG_OF)
+static struct regulator *_devm_of_regulator_get(struct device *dev, struct device_node *node,
+						const char *id, int get_type)
+{
+	struct regulator **ptr, *regulator;
+
+	ptr = devres_alloc(devm_regulator_release, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	regulator = _of_regulator_get(dev, node, id, get_type);
+	if (!IS_ERR(regulator)) {
+		*ptr = regulator;
+		devres_add(dev, ptr);
+	} else {
+		devres_free(ptr);
+	}
+
+	return regulator;
+}
+
+/**
+ * devm_of_regulator_get_optional - Resource managed of_regulator_get_optional()
+ * @dev: device used for dev_printk() messages and resource lifetime management
+ * @node: device node for regulator "consumer"
+ * @id:  supply name or regulator ID.
+ *
+ * Managed regulator_get_optional(). Regulators returned from this
+ * function are automatically regulator_put() on driver detach. See
+ * of_regulator_get_optional() for more information.
+ */
+struct regulator *devm_of_regulator_get_optional(struct device *dev, struct device_node *node,
+						 const char *id)
+{
+	return _devm_of_regulator_get(dev, node, id, OPTIONAL_GET);
+}
+EXPORT_SYMBOL_GPL(devm_of_regulator_get_optional);
+#endif
diff --git a/drivers/regulator/internal.h b/drivers/regulator/internal.h
index f62cacbbc729..b3d48dc38bc4 100644
--- a/drivers/regulator/internal.h
+++ b/drivers/regulator/internal.h
@@ -65,6 +65,13 @@ static inline struct regulator_dev *dev_to_rdev(struct device *dev)
 	return container_of(dev, struct regulator_dev, dev);
 }
 
+enum regulator_get_type {
+	NORMAL_GET,
+	EXCLUSIVE_GET,
+	OPTIONAL_GET,
+	MAX_GET_TYPE
+};
+
 #ifdef CONFIG_OF
 struct regulator_dev *of_regulator_dev_lookup(struct device *dev,
 					      struct device_node *np,
@@ -74,6 +81,9 @@ struct regulator_init_data *regulator_of_get_init_data(struct device *dev,
 				 struct regulator_config *config,
 				 struct device_node **node);
 
+struct regulator *_of_regulator_get(struct device *dev, struct device_node *node,
+				    const char *id, enum regulator_get_type get_type);
+
 struct regulator_dev *of_parse_coupled_regulator(struct regulator_dev *rdev,
 						 int index);
 
@@ -116,12 +126,6 @@ static inline bool of_check_coupling_data(struct regulator_dev *rdev)
 }
 
 #endif
-enum regulator_get_type {
-	NORMAL_GET,
-	EXCLUSIVE_GET,
-	OPTIONAL_GET,
-	MAX_GET_TYPE
-};
 
 int _regulator_get_common_check(struct device *dev, const char *id,
 				enum regulator_get_type get_type);
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 358c3ed791db..3d85762beda6 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -668,8 +668,8 @@ struct regulator_dev *of_regulator_dev_lookup(struct device *dev, struct device_
 	return ERR_PTR(-ENODEV);
 }
 
-static struct regulator *_of_regulator_get(struct device *dev, struct device_node *node,
-					   const char *id, enum regulator_get_type get_type)
+struct regulator *_of_regulator_get(struct device *dev, struct device_node *node,
+				    const char *id, enum regulator_get_type get_type)
 {
 	struct regulator_dev *r;
 	int ret;
diff --git a/include/linux/regulator/consumer.h b/include/linux/regulator/consumer.h
index 2b22f07e491c..8c3c372ad735 100644
--- a/include/linux/regulator/consumer.h
+++ b/include/linux/regulator/consumer.h
@@ -172,6 +172,9 @@ void devm_regulator_put(struct regulator *regulator);
 struct regulator *__must_check of_regulator_get_optional(struct device *dev,
 							 struct device_node *node,
 							 const char *id);
+struct regulator *__must_check devm_of_regulator_get_optional(struct device *dev,
+							      struct device_node *node,
+							      const char *id);
 #else
 static inline struct regulator *__must_check of_regulator_get_optional(struct device *dev,
 								       struct device_node *node,
@@ -179,6 +182,13 @@ static inline struct regulator *__must_check of_regulator_get_optional(struct de
 {
 	return ERR_PTR(-ENODEV);
 }
+
+static inline struct regulator *__must_check devm_of_regulator_get_optional(struct device *dev,
+									    struct device_node *node,
+									    const char *id)
+{
+	return ERR_PTR(-ENODEV);
+}
 #endif
 
 int regulator_register_supply_alias(struct device *dev, const char *id,
@@ -370,6 +380,13 @@ static inline struct regulator *__must_check of_regulator_get_optional(struct de
 	return ERR_PTR(-ENODEV);
 }
 
+static inline struct regulator *__must_check devm_of_regulator_get_optional(struct device *dev,
+									    struct device_node *node,
+									    const char *id)
+{
+	return ERR_PTR(-ENODEV);
+}
+
 static inline void regulator_put(struct regulator *regulator)
 {
 }
-- 
2.46.0.792.g87dc391469-goog


