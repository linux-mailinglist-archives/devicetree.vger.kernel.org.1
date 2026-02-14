Return-Path: <devicetree+bounces-265595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMkkIcLqkGkfdwEAu9opvQ
	(envelope-from <devicetree+bounces-265595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 22:36:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA7413DA6D
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 22:36:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB4DF3029AE6
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 984FF3128AE;
	Sat, 14 Feb 2026 21:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dt7Sqne3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A028A30BB8C
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 21:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771104769; cv=none; b=IpaKYp5oytBl7aWeHiJDrC3neW399wvpgEeq01LMhR2RNSnfDUop1Xd3mZ1cE01QozL3cfCM9RAexgAGv+m++9KAEaFOmnXDzBDs4pNLjfTFxgW5p+iMtY88xWlPFTPLbrmxa/WLgWVxlTuPsaRqYB431fiU6MKRCeMgjzblwkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771104769; c=relaxed/simple;
	bh=mHYCYIynKnTU9C6JHA+3biClChxi9HQvWugV7yDWqRg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RhpX7IvBEzyMsoM3dkS86GaqbF20vylyOwBa3BOB8J1JDKmhev06xNJhlctbjj4oYMM7Vlf2YKSulCJ/r+j6db1o/zFkjefqyGNnJKM6RUcZ7oZSBE0y0K2OqH1QImVEpxYA3C72krGo0eU4c0dOZKeg16cuE7wK2tEi98smSaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dt7Sqne3; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-4638a18efc2so1404524b6e.3
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 13:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771104765; x=1771709565; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L4c/Ah4XWvxrSV/SoFkvHi4YIXjIbfcCsisFz1apAmI=;
        b=Dt7Sqne3mt7LHEjiLpAizzud9qGkhu8FZRVJea5bQZE6KU65aDVOVu5pIy0T/MmelM
         cUDS35QVqsArihgdI+gxfpWrbyNBoifSVbOwXIBGN+25V/YYL2yxnL8Ys/Jqp6MmVxQw
         0J3MaAgLBz3D75kNd3N74H6Lk3JlnJ593rTlzyVtpTezc4M9654BOi6H/NQyYc+W81cH
         MonKO3bPrrAox2WYx6nAswS4/Fh3Rm2OG3PjfKbMihRtGj+2cYeQDApfIIJtD0XiIpVd
         8GKhJTEKUp2jN1rNA73zewdA/VxpthSPr/GsGauI4JdJAQd40i5/+msLhxwooSjxSz+n
         f4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771104765; x=1771709565;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4c/Ah4XWvxrSV/SoFkvHi4YIXjIbfcCsisFz1apAmI=;
        b=H68Lzs9m//7F9/CkAab+6M+eSzG0kDMxEuwgFWgg9pfJnD1Bdg0k9e94/usUhsw7mS
         VPdoQuMH31hM3X4hBcPky7nLeg65Qn4lHHq1eEPArq0kYSldGRjiV7XffQoy9gi8TkvH
         tmv+YiBWWDQLs/ku3GhoTqe2JXGoeqm55vfrRBs0Zi4kZSX9hqEojBqZRzx0bnxOpeTk
         02EDQZiBI6qEvgjnQUouS5KSJUb7w89Z980oGNTsQtJqtKimHsCphHJW2KdZsHjJBSpO
         Eak+hnINIb02FE0Tc01Dx67cxwkN2a5eVUcX3JCQzR3oKg7rKglT/pjLe7PT227zKn7u
         HPHw==
X-Forwarded-Encrypted: i=1; AJvYcCVLb6JATxqXPC0VCOJJzRyezD/VcsB8qa7b9J5IONy4lOomhgiqBqRjGGXNK4j7g8673TbCjHrNgdET@vger.kernel.org
X-Gm-Message-State: AOJu0YwxsBhbw0sXgjece+pPzTwTwwNTWnZXwfpHRkaQz6eBGUSrOsLH
	4Yq8vX22DHS0gb+XJNNJY13UA8lVC5uaDWjX7J95qeffAND9f4aSSWAA
X-Gm-Gg: AZuq6aLbstDslhOaDIMrdZqiSDIK0nq3as0CWmLwjhZZZ9m9IIy+3cZ4O62LqSKuZUJ
	YjgBcEvlpeoV5nNvkAYYAd7paQ/oizhfy6wBpCeJcQ5YNW04hg6O5UQXZHdcR+a1Gq3qlA5/x1M
	X12s5KET+r6SKSezLqupPeriR51P4DciFd8eTG9j7Br6aBInSPt4h7hFeNog/NjeO05hVDDSgFl
	ddKGjG7qYZ3g9mIubRhSXRlkgNv3knePCrmlMW7RNXn3d9fEFLHCFRg3mh8AmknQP9U20+Lu3ku
	QLKjzzagh01IK4yrHxMANUISIZSMoW9R75dUjWIytvkxaaQE/nq/ZtdXhMiK8dFkFXl6hQ2DPzl
	hKGEDoQQvLzlH6K8gXDVLJNXBl0bxHiQijHY3RZRnKBA4ZGDPQMDUL5h4G1E/BIGJr1w1knHvd9
	Z2ogZ/UFP4C5rYy3ngrUXeJJLkHs4R6WsPmjHFT0Wse0VhM4VyRuiVzhA8BBm2u6X/n6DGFIMwL
	Rx+szQcjx8c7qt8Kx7HLOlsKBMwoPFK45OXtRADF8RnOwKXp/ALfnICJlhGJQ8=
X-Received: by 2002:a05:6808:1208:b0:450:4628:e3ce with SMTP id 5614622812f47-4639ef1a5f3mr3413419b6e.15.1771104765501;
        Sat, 14 Feb 2026 13:32:45 -0800 (PST)
Received: from james-x399.localdomain (71-218-105-26.hlrn.qwest.net. [71.218.105.26])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4636ae901d4sm7319937b6e.2.2026.02.14.13.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Feb 2026 13:32:44 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
To: linux-gpio@vger.kernel.org
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/1] gpiolib: of: add gpio-line node support
Date: Sat, 14 Feb 2026 14:32:37 -0700
Message-ID: <20260214213239.2546012-1-james.hilliard1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265595-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DBA7413DA6D
X-Rspamd-Action: no action

Allow GPIO controller child nodes marked with "gpio-line" to
configure direction/flags at probe time without hogging the line.

Teach OF gpiochip scanning and OF dynamic reconfiguration handlers to
process gpio-line nodes in addition to gpio-hog nodes.

Also parse "gpio-line-name" and apply it to desc->name. For gpio-hog
nodes, keep "line-name" semantics as the hog consumer label.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
Depends on:
  - https://github.com/devicetree-org/dt-schema/pull/185

Changes v1 -> v2:
  - drop documentation changes
  - add depends on to changelog
---
 drivers/gpio/gpiolib-of.c     | 89 ++++++++++++++++++++++++++++-------
 drivers/gpio/gpiolib-shared.c |  7 +--
 drivers/of/property.c         |  7 +--
 scripts/dtc/checks.c          |  4 +-
 4 files changed, 82 insertions(+), 25 deletions(-)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index ef1ac68b94b7..b10a21a63d46 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -744,6 +744,7 @@ struct gpio_desc *of_find_gpio(struct device_node *np, const char *con_id,
  * @lflags:	bitmask of gpio_lookup_flags GPIO_* values - returned from
  *		of_find_gpio() or of_parse_own_gpio()
  * @dflags:	gpiod_flags - optional GPIO initialization flags
+ * @hog:	indicates if this is a gpio-hog node
  *
  * Returns:
  * GPIO descriptor to use with Linux GPIO API, or one of the errno
@@ -753,11 +754,13 @@ static struct gpio_desc *of_parse_own_gpio(struct device_node *np,
 					   struct gpio_chip *chip,
 					   unsigned int idx, const char **name,
 					   unsigned long *lflags,
-					   enum gpiod_flags *dflags)
+					   enum gpiod_flags *dflags,
+					   bool hog)
 {
 	struct device_node *chip_np;
 	enum of_gpio_flags xlate_flags;
 	struct of_phandle_args gpiospec;
+	const char *desc_name;
 	struct gpio_desc *desc;
 	unsigned int i;
 	u32 tmp;
@@ -797,15 +800,19 @@ static struct gpio_desc *of_parse_own_gpio(struct device_node *np,
 		*dflags |= GPIOD_OUT_LOW;
 	else if (of_property_read_bool(np, "output-high"))
 		*dflags |= GPIOD_OUT_HIGH;
-	else {
+	else if (hog) {
 		pr_warn("GPIO line %d (%pOFn): no hogging state specified, bailing out\n",
 			desc_to_gpio(desc), np);
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (name && of_property_read_string(np, "line-name", name))
+	if (hog && name && of_property_read_string(np, "line-name", name))
 		*name = np->name;
 
+	if (!of_property_read_string(np, "gpio-line-name", &desc_name) &&
+	    desc_name[0])
+		desc->name = desc_name;
+
 	return desc;
 }
 
@@ -827,7 +834,8 @@ static int of_gpiochip_add_hog(struct gpio_chip *chip, struct device_node *hog)
 	int ret;
 
 	for (i = 0;; i++) {
-		desc = of_parse_own_gpio(hog, chip, i, &name, &lflags, &dflags);
+		desc = of_parse_own_gpio(hog, chip, i, &name, &lflags, &dflags,
+					 true);
 		if (IS_ERR(desc))
 			break;
 
@@ -843,6 +851,36 @@ static int of_gpiochip_add_hog(struct gpio_chip *chip, struct device_node *hog)
 	return 0;
 }
 
+/**
+ * of_gpiochip_add_line - Configure all lines in a gpio-line device node
+ * @chip:	gpio chip to act on
+ * @line:	device node describing GPIO lines to configure
+ *
+ * Returns:
+ * 0 on success, or negative errno on failure.
+ */
+static int of_gpiochip_add_line(struct gpio_chip *chip, struct device_node *line)
+{
+	enum gpiod_flags dflags;
+	struct gpio_desc *desc;
+	unsigned long lflags;
+	unsigned int i;
+	int ret;
+
+	for (i = 0;; i++) {
+		desc = of_parse_own_gpio(line, chip, i, NULL, &lflags, &dflags,
+					 false);
+		if (IS_ERR(desc))
+			break;
+
+		ret = gpiod_configure_flags(desc, NULL, lflags, dflags);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
 /**
  * of_gpiochip_scan_gpios - Scan gpio-controller for gpio definitions
  * @chip:	gpio chip to act on
@@ -858,14 +896,22 @@ static int of_gpiochip_scan_gpios(struct gpio_chip *chip)
 	int ret;
 
 	for_each_available_child_of_node_scoped(dev_of_node(&chip->gpiodev->dev), np) {
-		if (!of_property_read_bool(np, "gpio-hog"))
+		if (of_property_read_bool(np, "gpio-hog")) {
+			ret = of_gpiochip_add_hog(chip, np);
+			if (ret < 0)
+				return ret;
+
+			of_node_set_flag(np, OF_POPULATED);
 			continue;
+		}
 
-		ret = of_gpiochip_add_hog(chip, np);
-		if (ret < 0)
-			return ret;
+		if (of_property_read_bool(np, "gpio-line")) {
+			ret = of_gpiochip_add_line(chip, np);
+			if (ret < 0)
+				return ret;
 
-		of_node_set_flag(np, OF_POPULATED);
+			of_node_set_flag(np, OF_POPULATED);
+		}
 	}
 
 	return 0;
@@ -905,14 +951,15 @@ static int of_gpio_notify(struct notifier_block *nb, unsigned long action,
 	int ret;
 
 	/*
-	 * This only supports adding and removing complete gpio-hog nodes.
-	 * Modifying an existing gpio-hog node is not supported (except for
-	 * changing its "status" property, which is treated the same as
-	 * addition/removal).
+	 * This only supports adding and removing complete gpio-hog and
+	 * gpio-line nodes. Modifying an existing node is not supported
+	 * (except for changing its "status" property, which is treated
+	 * the same as addition/removal).
 	 */
 	switch (of_reconfig_get_state_change(action, arg)) {
 	case OF_RECONFIG_CHANGE_ADD:
-		if (!of_property_read_bool(rd->dn, "gpio-hog"))
+		if (!of_property_read_bool(rd->dn, "gpio-hog") &&
+		    !of_property_read_bool(rd->dn, "gpio-line"))
 			return NOTIFY_DONE;	/* not for us */
 
 		if (of_node_test_and_set_flag(rd->dn, OF_POPULATED))
@@ -922,9 +969,12 @@ static int of_gpio_notify(struct notifier_block *nb, unsigned long action,
 		if (!gdev)
 			return NOTIFY_DONE;	/* not for us */
 
-		ret = of_gpiochip_add_hog(gpio_device_get_chip(gdev), rd->dn);
+		if (of_property_read_bool(rd->dn, "gpio-hog"))
+			ret = of_gpiochip_add_hog(gpio_device_get_chip(gdev), rd->dn);
+		else
+			ret = of_gpiochip_add_line(gpio_device_get_chip(gdev), rd->dn);
 		if (ret < 0) {
-			pr_err("%s: failed to add hogs for %pOF\n", __func__,
+			pr_err("%s: failed to configure lines for %pOF\n", __func__,
 			       rd->dn);
 			of_node_clear_flag(rd->dn, OF_POPULATED);
 			return notifier_from_errno(ret);
@@ -932,6 +982,10 @@ static int of_gpio_notify(struct notifier_block *nb, unsigned long action,
 		return NOTIFY_OK;
 
 	case OF_RECONFIG_CHANGE_REMOVE:
+		if (!of_property_read_bool(rd->dn, "gpio-hog") &&
+		    !of_property_read_bool(rd->dn, "gpio-line"))
+			return NOTIFY_DONE;	/* not for us */
+
 		if (!of_node_check_flag(rd->dn, OF_POPULATED))
 			return NOTIFY_DONE;	/* already depopulated */
 
@@ -939,7 +993,8 @@ static int of_gpio_notify(struct notifier_block *nb, unsigned long action,
 		if (!gdev)
 			return NOTIFY_DONE;	/* not for us */
 
-		of_gpiochip_remove_hog(gpio_device_get_chip(gdev), rd->dn);
+		if (of_property_read_bool(rd->dn, "gpio-hog"))
+			of_gpiochip_remove_hog(gpio_device_get_chip(gdev), rd->dn);
 		of_node_clear_flag(rd->dn, OF_POPULATED);
 		return NOTIFY_OK;
 	}
diff --git a/drivers/gpio/gpiolib-shared.c b/drivers/gpio/gpiolib-shared.c
index b3525d1f06a4..b934e58a07f0 100644
--- a/drivers/gpio/gpiolib-shared.c
+++ b/drivers/gpio/gpiolib-shared.c
@@ -147,10 +147,11 @@ static bool gpio_shared_of_node_ignore(struct device_node *node)
 		return true;
 
 	/*
-	 * GPIO hogs have a "gpios" property which is not a phandle and can't
-	 * possibly refer to a shared GPIO.
+	 * GPIO hog and gpio-line nodes have a "gpios" property which is not a
+	 * phandle and can't possibly refer to a shared GPIO.
 	 */
-	if (of_property_present(node, "gpio-hog"))
+	if (of_property_present(node, "gpio-hog") ||
+	    of_property_present(node, "gpio-line"))
 		return true;
 
 	return false;
diff --git a/drivers/of/property.c b/drivers/of/property.c
index 50d95d512bf5..7689c4315115 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1435,10 +1435,11 @@ static struct device_node *parse_gpio_compat(struct device_node *np,
 		return NULL;
 
 	/*
-	 * Ignore node with gpio-hog property since its gpios are all provided
-	 * by its parent.
+	 * Ignore nodes with gpio-hog and gpio-line properties since their gpios
+	 * are all provided by their parent.
 	 */
-	if (of_property_read_bool(np, "gpio-hog"))
+	if (of_property_read_bool(np, "gpio-hog") ||
+	    of_property_read_bool(np, "gpio-line"))
 		return NULL;
 
 	if (of_parse_phandle_with_args(np, prop_name, "#gpio-cells", index,
diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index 45d0213f3bf3..ee64cb4ada4f 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -1533,8 +1533,8 @@ static void check_gpios_property(struct check *c,
 {
 	struct property *prop;
 
-	/* Skip GPIO hog nodes which have 'gpios' property */
-	if (get_property(node, "gpio-hog"))
+	/* Skip gpio-hog and gpio-line nodes which have 'gpios' property */
+	if (get_property(node, "gpio-hog") || get_property(node, "gpio-line"))
 		return;
 
 	for_each_property(node, prop) {
-- 
2.43.0


