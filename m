Return-Path: <devicetree+bounces-138029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB798A0B7B4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C592C165740
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5885235BE2;
	Mon, 13 Jan 2025 13:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="GwcMkYTS"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E9D18E361;
	Mon, 13 Jan 2025 13:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736773674; cv=none; b=dgZlSWDyrVvEKLNQlGGCcjw8CjeOKauvtVZASBooHMP5MlWaAgZIRDzoNgdm/0uZqMGpSCc36IAWAWvr10MEnAnUirAuEDtnP760J43PIT9OQrgWQtT1eHmdVN8Ebfvru6IYDGQ8stF0E58rFR+JbcIL2c3Fh8Fl8Br+VGN8J60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736773674; c=relaxed/simple;
	bh=mDjDTpznYo4gGutiTNhfJcVss/MD+GcjAsIx9e5NuF8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XR65hh68d/nD8YXpwuW0oDThcbs0VHzkrKAVhpg3rRQnQzGoAJErTEOWIk60kY9eX+G+cF8b9HBEOQzGKDpSunfveXAgR52OHzZW7VAqtlwQY34Qep6TQBhzEK2Dp+Tcxz5iOjTRqocRvsU/zNbBZ0lmDUqz4W65XSXqiB93jcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=GwcMkYTS; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 19010FF809;
	Mon, 13 Jan 2025 13:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736773670;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7zrbRpb2gIg9xt7Kjz+UvsvZ2mSU6D27TaYh9DRW0tk=;
	b=GwcMkYTS4cistHyQ5i/cVzAA2/FaENpHt1eCv59aYKiVXKGpSPHYxuxuFvbu/hz0j+Mubn
	GygicXWKtk975OrEZn+MBdUi23OEbT/bHwrblhlvRQOopbdEBeh98dhAtmZKXpWmcVRGrl
	h7u9DvEd2qhpE85tkuwhDtUJhdfid3RcN6Jmh0oLE6DucJ/6WzRJ1R91P5oCazEzZ8GFow
	jHCY8bMeKkpk47jODs1KYxbXfBdSjOegaecvbnB0He1DhGP4jOFUUieO/5I5f4sxp+1lpO
	Yprci7Ts85nbMNDseED9+UTgk+R9gpETtr/7ugqzubg41MceYMmk//KuiCbj/A==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Mon, 13 Jan 2025 14:07:45 +0100
Subject: [PATCH 1/2] regulator: Add support for power budget
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
In-Reply-To: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.14.1
X-GND-Sasl: kory.maincent@bootlin.com

Add power budget management for the regulator device. Enable the regulator
to track available power capacity by providing helpers to request and
release power budget allocations.

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 drivers/regulator/core.c           | 89 ++++++++++++++++++++++++++++++++++++++
 drivers/regulator/of_regulator.c   |  3 ++
 include/linux/regulator/consumer.h | 21 +++++++++
 include/linux/regulator/driver.h   |  2 +
 include/linux/regulator/machine.h  |  2 +
 5 files changed, 117 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index c092b78c5f12..c86092220b70 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -917,6 +917,15 @@ static ssize_t bypass_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(bypass);
 
+static ssize_t power_budget_show(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	struct regulator_dev *rdev = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%d\n", rdev->pw_available_mW);
+}
+static DEVICE_ATTR_RO(power_budget);
+
 #define REGULATOR_ERROR_ATTR(name, bit)							\
 	static ssize_t name##_show(struct device *dev, struct device_attribute *attr,	\
 				   char *buf)						\
@@ -1149,6 +1158,10 @@ static void print_constraints_debug(struct regulator_dev *rdev)
 	if (constraints->valid_modes_mask & REGULATOR_MODE_STANDBY)
 		count += scnprintf(buf + count, len - count, "standby ");
 
+	if (constraints->pw_budget_mW)
+		count += scnprintf(buf + count, len - count, "%d mW budget",
+				   constraints->pw_budget_mW);
+
 	if (!count)
 		count = scnprintf(buf, len, "no parameters");
 	else
@@ -1627,6 +1640,13 @@ static int set_machine_constraints(struct regulator_dev *rdev)
 		rdev->last_off = ktime_get();
 	}
 
+	if (rdev->constraints->pw_budget_mW)
+		rdev->pw_available_mW = rdev->constraints->pw_budget_mW;
+	else if (rdev->supply)
+		rdev->pw_available_mW = regulator_get_power_budget(rdev->supply);
+	else
+		rdev->pw_available_mW = INT_MAX;
+
 	print_constraints(rdev);
 	return 0;
 }
@@ -4601,6 +4621,71 @@ int regulator_get_current_limit(struct regulator *regulator)
 }
 EXPORT_SYMBOL_GPL(regulator_get_current_limit);
 
+/**
+ * regulator_get_power_budget - get regulator total power budget
+ * @regulator: regulator source
+ *
+ * Return: Power budget of the regulator in mW.
+ */
+int regulator_get_power_budget(struct regulator *regulator)
+{
+	return regulator->rdev->pw_available_mW;
+}
+EXPORT_SYMBOL_GPL(regulator_get_power_budget);
+
+/**
+ * regulator_request_power_budget - request power budget on a regulator
+ * @regulator: regulator source
+ * @pw_req: Power requested
+ *
+ * Return: 0 on success or a negative error number on failure.
+ */
+int regulator_request_power_budget(struct regulator *regulator,
+				   unsigned int pw_req)
+{
+	struct regulator_dev *rdev = regulator->rdev;
+	int ret = 0;
+
+	regulator_lock(rdev);
+	if (rdev->supply) {
+		ret = regulator_request_power_budget(rdev->supply, pw_req);
+		if (ret < 0)
+			goto out;
+	}
+	if (pw_req > rdev->pw_available_mW) {
+		rdev_dbg(rdev, "power requested %d mW out of budget %d mW",
+			 pw_req, rdev->pw_available_mW);
+		ret = -ERANGE;
+		goto out;
+	}
+
+	rdev->pw_available_mW -= pw_req;
+out:
+	regulator_unlock(rdev);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(regulator_request_power_budget);
+
+/**
+ * regulator_free_power_budget - free power budget on a regulator
+ * @regulator: regulator source
+ * @pw: Power to be released.
+ *
+ * Return: Power budget of the regulator in mW.
+ */
+void regulator_free_power_budget(struct regulator *regulator,
+				 unsigned int pw)
+{
+	struct regulator_dev *rdev = regulator->rdev;
+
+	regulator_lock(rdev);
+	if (rdev->supply)
+		regulator_free_power_budget(rdev->supply, pw);
+	rdev->pw_available_mW += pw;
+	regulator_unlock(rdev);
+}
+EXPORT_SYMBOL_GPL(regulator_free_power_budget);
+
 /**
  * regulator_set_mode - set regulator operating mode
  * @regulator: regulator source
@@ -5239,6 +5324,7 @@ static struct attribute *regulator_dev_attrs[] = {
 	&dev_attr_suspend_standby_mode.attr,
 	&dev_attr_suspend_mem_mode.attr,
 	&dev_attr_suspend_disk_mode.attr,
+	&dev_attr_power_budget.attr,
 	NULL
 };
 
@@ -5320,6 +5406,9 @@ static umode_t regulator_attr_is_visible(struct kobject *kobj,
 	    attr == &dev_attr_suspend_disk_mode.attr)
 		return ops->set_suspend_mode ? mode : 0;
 
+	if (attr == &dev_attr_power_budget.attr)
+		return rdev->pw_available_mW != INT_MAX ? mode : 0;
+
 	return mode;
 }
 
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 6af8411679c7..011088c57891 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -125,6 +125,9 @@ static int of_get_regulation_constraints(struct device *dev,
 	if (constraints->min_uA != constraints->max_uA)
 		constraints->valid_ops_mask |= REGULATOR_CHANGE_CURRENT;
 
+	if (!of_property_read_u32(np, "regulator-power-budget-milliwatt", &pval))
+		constraints->pw_budget_mW = pval;
+
 	constraints->boot_on = of_property_read_bool(np, "regulator-boot-on");
 	constraints->always_on = of_property_read_bool(np, "regulator-always-on");
 	if (!constraints->always_on) /* status change should be possible. */
diff --git a/include/linux/regulator/consumer.h b/include/linux/regulator/consumer.h
index bcba3935c6f9..ca78c539b94d 100644
--- a/include/linux/regulator/consumer.h
+++ b/include/linux/regulator/consumer.h
@@ -233,6 +233,11 @@ int regulator_sync_voltage(struct regulator *regulator);
 int regulator_set_current_limit(struct regulator *regulator,
 			       int min_uA, int max_uA);
 int regulator_get_current_limit(struct regulator *regulator);
+int regulator_get_power_budget(struct regulator *regulator);
+int regulator_request_power_budget(struct regulator *regulator,
+				   unsigned int pw_req);
+void regulator_free_power_budget(struct regulator *regulator,
+				 unsigned int pw);
 
 int regulator_set_mode(struct regulator *regulator, unsigned int mode);
 unsigned int regulator_get_mode(struct regulator *regulator);
@@ -526,6 +531,22 @@ static inline int regulator_get_current_limit(struct regulator *regulator)
 	return 0;
 }
 
+static inline int regulator_get_power_budget(struct regulator *regulator)
+{
+	return INT_MAX;
+}
+
+static inline int regulator_request_power_budget(struct regulator *regulator,
+						 unsigned int pw_req)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void regulator_free_power_budget(struct regulator *regulator,
+					       unsigned int pw)
+{
+}
+
 static inline int regulator_set_mode(struct regulator *regulator,
 	unsigned int mode)
 {
diff --git a/include/linux/regulator/driver.h b/include/linux/regulator/driver.h
index 5b66caf1695d..9e436b4d7c4c 100644
--- a/include/linux/regulator/driver.h
+++ b/include/linux/regulator/driver.h
@@ -656,6 +656,8 @@ struct regulator_dev {
 	int cached_err;
 	bool use_cached_err;
 	spinlock_t err_lock;
+
+	int pw_available_mW;
 };
 
 /*
diff --git a/include/linux/regulator/machine.h b/include/linux/regulator/machine.h
index b3db09a7429b..1fc440c5c4c7 100644
--- a/include/linux/regulator/machine.h
+++ b/include/linux/regulator/machine.h
@@ -113,6 +113,7 @@ struct notification_limit {
  * @min_uA: Smallest current consumers may set.
  * @max_uA: Largest current consumers may set.
  * @ilim_uA: Maximum input current.
+ * @pw_budget_mW: Power budget for the regulator in mW.
  * @system_load: Load that isn't captured by any consumer requests.
  *
  * @over_curr_limits:		Limits for acting on over current.
@@ -185,6 +186,7 @@ struct regulation_constraints {
 	int max_uA;
 	int ilim_uA;
 
+	int pw_budget_mW;
 	int system_load;
 
 	/* used for coupled regulators */

-- 
2.34.1


