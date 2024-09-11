Return-Path: <devicetree+bounces-101902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6124D974B59
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:30:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A90C28A166
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07406153565;
	Wed, 11 Sep 2024 07:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jF64Q5iu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4264B1514EF
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726039725; cv=none; b=H4tXV7bdiQ3crAlvz+iVhtpoU2f+VzOkeISn+LZDEG2lOQGcavYU8oTAB3RU7LO1gAl/3l/mI/4gAacCCHEyUYRPPbQ01eAe/1UNj/TY/+74jthHcBkDgBVFQWgDXUHX54caMKhJrksvFBKCe0lfFbHCir94KHQgy1UIAZY6Fzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726039725; c=relaxed/simple;
	bh=0m7VQ2QI0ApKlNRhuiGh+mRGNYI/bK3s4kf7/NXjOx0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jFvr0EX7Fn0re85OXz5Nz5N0kJSBJ9ExaGyiPA0JunfvjtIFpA0vYS7RyczRmEv817tzVIHK1LvlYYMEJpAXAexqExERWCVRo7hjJB1/fEIJNVYosYKnN7QXsjVr7tneB0DsiEFPr8nJvF+TURNLXP8JVXjfk5RHURsy1aknesU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jF64Q5iu; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-717849c0dcaso5990936b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726039723; x=1726644523; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVhbTxLURsXagkjV6T5t8snpx3JbKq5qtkesVJ+9OU0=;
        b=jF64Q5iuQL3jflr+BWwhswyENLKkQFBaYYRqi3bgi1WLjVWSitliwl15I5ItTfHaVs
         PMK9PoXiDpfC0Sih13tTiHB28t39NrTIkYY9eYDpES1Lu8Th/33AozAUQOewWxmerEod
         l1tzWIP+AXVqnTJmVz8S4TRS0qg8iov8fMiCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726039723; x=1726644523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fVhbTxLURsXagkjV6T5t8snpx3JbKq5qtkesVJ+9OU0=;
        b=dFPWsmFiMyxlHJPhQE4WW8v5ZYwrqJogFNpVdwHZSLqPCbVwGYJ2CgcHAC725qgHrf
         jDjUDdcs1fzsuTYidLl3L0Bv5DL24pDta3zbTiCj0PkHP21geQ/QI3xX2vAHqsR0eel5
         b6MwDqwwIR1rwanIvhCNRRdNNlM0/g5URFJOC1XsAxVZN27b0bBoKj9h4w+SfRu1rvRe
         KoAn8b4o1kISjXQg7pozEwgxdqeLqL1enFLO4OYTk09gzyAwqLSbDoruLqoqRaAAzYyB
         wAnEy/LlryO3V4QyDejyhb0qjBe4KdP/oBmMOEaZ9aU02jMyEqG5ipg2PPgrtgUc93lY
         54cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS3dwIuxyFrRDQ4lGQ/syC2kekAfVUs1e4P+LA9UP6d/RBvZQR8ifAP+D6HgrDO1WpvHrp/CiK8phc@vger.kernel.org
X-Gm-Message-State: AOJu0YwTW9a3Ob0wYQN9ngg2wIK//OpvgtGOAXAcKMvZOlxiSY/fyfKO
	09azbI2RLtLUTqhZWNBTZxYezH1TDYWGHESK0QWVeDTyyxiJVTN6DHV+E1Ai6Q==
X-Google-Smtp-Source: AGHT+IHJHP/sS0c8oI4sQVmWMgfIt7DzJlolRs9q3i3C6TrZ9TAHcWiYmt8L4UpiwKLjhWZ/rnLTPA==
X-Received: by 2002:a05:6a20:cf90:b0:1cf:5437:e76f with SMTP id adf61e73a8af0-1cf5e098306mr4519928637.4.1726039723417;
        Wed, 11 Sep 2024 00:28:43 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8398:fe34:eba2:f301])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71908fe4e7esm2399415b3a.80.2024.09.11.00.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 00:28:43 -0700 (PDT)
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
Subject: [PATCH v7 07/10] i2c: of-prober: Add simple helpers for regulator support
Date: Wed, 11 Sep 2024 15:27:45 +0800
Message-ID: <20240911072751.365361-8-wenst@chromium.org>
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

Add helpers to do regulator management for the I2C OF component prober.
Components that the prober intends to probe likely require their
regulator supplies be enabled, and GPIOs be toggled to enable them or
bring them out of reset before they will respond to probe attempts.
GPIOs will be handled in the next patch.

The assumption is that the same class of components to be probed are
always connected in the same fashion with the same regulator supply
and GPIO. The names may vary due to binding differences, but the
physical layout does not change.

This set of helpers supports at most one regulator supply. The user
must specify the node from which the supply is retrieved. The supply
name and the amount of time to wait after the supply is enabled are
also given by the user.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v6:
- Moved change of of_get_next_child_scoped() to
  of_get_next_child_with_prefix() to previous patch
- Restructured into helpers for the I2C OF component prober
- Reduced to only handle one regulator
- Commit message updated

Changes since v5:
- Split of_regulator_bulk_get_all() return value check and explain
  "ret == 0" case
- Switched to of_get_next_child_with_prefix_scoped() where applicable
- Used krealloc_array() instead of directly calculating size
- copy whole regulator array in one memcpy() call
- Drop "0" from struct zeroing initializer
- Split out regulator helper from i2c_of_probe_enable_res() to keep
  code cleaner when combined with the next patch
- Added options for customizing power sequencing delay
- Rename i2c_of_probe_get_regulator() to i2c_of_probe_get_regulators()
- Add i2c_of_probe_free_regulator() helper

Changes since v4:
- Split out GPIO handling to separate patch
- Rewrote using of_regulator_bulk_get_all()
- Replaced "regulators" with "regulator supplies" in debug messages

Changes since v3:
- New patch

This change is kept as a separate patch for now since the changes are
quite numerous.
---
 drivers/i2c/i2c-core-of-prober.c | 169 ++++++++++++++++++++++++++++++-
 include/linux/i2c-of-prober.h    |  48 +++++++++
 2 files changed, 216 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c-core-of-prober.c b/drivers/i2c/i2c-core-of-prober.c
index 62ff2f4b6177..1371ea565556 100644
--- a/drivers/i2c/i2c-core-of-prober.c
+++ b/drivers/i2c/i2c-core-of-prober.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/cleanup.h>
+#include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/dev_printk.h>
 #include <linux/err.h>
@@ -13,6 +14,7 @@
 #include <linux/i2c-of-prober.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 
 /*
@@ -28,7 +30,6 @@
  * address responds.
  *
  * TODO:
- * - Support handling common regulators.
  * - Support handling common GPIOs.
  * - Support I2C muxes
  */
@@ -193,3 +194,169 @@ int i2c_of_probe_component(struct device *dev, const struct i2c_of_probe_cfg *cf
 	return ret;
 }
 EXPORT_SYMBOL_NS_GPL(i2c_of_probe_component, I2C_OF_PROBER);
+
+static int i2c_of_probe_simple_get_supply(struct device *dev, struct device_node *node,
+					  struct i2c_of_probe_simple_ctx *ctx)
+{
+	const char *supply_name;
+	struct regulator *supply;
+
+	/*
+	 * It's entirely possible for the component's device node to not have regulator
+	 * supplies. While it does not make sense from a hardware perspective, the
+	 * supplies could be always on or otherwise not modeled in the device tree, but
+	 * the device would still work.
+	 */
+	supply_name = ctx->opts->supply_name;
+	if (!supply_name)
+		return 0;
+
+	supply = of_regulator_get_optional(dev, node, supply_name);
+	if (IS_ERR(supply)) {
+		return dev_err_probe(dev, PTR_ERR(supply),
+				     "Failed to get regulator supply \"%s\" from %pOF\n",
+				     supply_name, node);
+	}
+
+	ctx->supply = supply;
+
+	return 0;
+}
+
+static void i2c_of_probe_simple_put_supply(struct i2c_of_probe_simple_ctx *ctx)
+{
+	regulator_put(ctx->supply);
+	ctx->supply = NULL;
+}
+
+static int i2c_of_probe_simple_enable_regulator(struct device *dev, struct i2c_of_probe_simple_ctx *ctx)
+{
+	int ret;
+
+	if (!ctx->supply)
+		return 0;
+
+	dev_dbg(dev, "Enabling regulator supply \"%s\"\n", ctx->opts->supply_name);
+
+	ret = regulator_enable(ctx->supply);
+	if (ret)
+		return ret;
+
+	msleep(ctx->opts->post_power_on_delay_ms);
+
+	return 0;
+}
+
+static void i2c_of_probe_simple_disable_regulator(struct device *dev, struct i2c_of_probe_simple_ctx *ctx)
+{
+	if (!ctx->supply)
+		return;
+
+	dev_dbg(dev, "Disabling regulator supply \"%s\"\n", ctx->opts->supply_name);
+
+	regulator_disable(ctx->supply);
+}
+
+/**
+ * i2c_of_probe_simple_get_res - Simple helper for I2C OF prober to get resources
+ * @dev: Pointer to the &struct device of the caller, only used for dev_printk() messages
+ * @bus_node: Pointer to the &struct device_node of the I2C adapter.
+ * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
+ *
+ * If &i2c_of_probe_simple_opts->supply_name is given, request the named regulator supply.
+ *
+ * Return: %0 on success or no-op, or a negative error number on failure.
+ */
+int i2c_of_probe_simple_get_res(struct device *dev, struct device_node *bus_node, void *data)
+{
+	struct i2c_of_probe_simple_ctx *ctx = data;
+	struct device_node *node;
+	const char *compat;
+	int ret;
+
+	dev_dbg(dev, "Requesting resources for components under I2C bus %pOF\n", bus_node);
+
+	if (!ctx || !ctx->opts)
+		return -EINVAL;
+
+	compat = ctx->opts->res_node_compatible;
+	if (!compat)
+		return -EINVAL;
+
+	node = of_get_compatible_child(bus_node, compat);
+	if (!node)
+		return dev_err_probe(dev, -ENODEV, "No device compatible with \"%s\" found\n",
+				     compat);
+
+	ret = i2c_of_probe_simple_get_supply(dev, node, ctx);
+	if (ret)
+		goto out_put_node;
+
+	return 0;
+
+out_put_node:
+	of_node_put(node);
+	return ret;
+}
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_get_res, I2C_OF_PROBER);
+
+/**
+ * i2c_of_probe_simple_free_res_late - Simple helper for I2C OF prober to release all resources.
+ * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
+ */
+void i2c_of_probe_simple_free_res_late(void *data)
+{
+	struct i2c_of_probe_simple_ctx *ctx = data;
+
+	i2c_of_probe_simple_put_supply(ctx);
+}
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_free_res_late, I2C_OF_PROBER);
+
+/**
+ * i2c_of_probe_simple_enable - Enable resources for I2C OF prober simple helpers
+ * @dev: Pointer to the &struct device of the caller, only used for dev_printk() messages
+ * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
+ *
+ * If a regulator supply was found, enable that regulator.
+ *
+ * Return: %0 on success or no-op, or a negative error number on failure.
+ */
+int i2c_of_probe_simple_enable(struct device *dev, void *data)
+{
+	struct i2c_of_probe_simple_ctx *ctx = data;
+	int ret;
+
+	ret = i2c_of_probe_simple_enable_regulator(dev, ctx);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_enable, I2C_OF_PROBER);
+
+/**
+ * i2c_of_probe_simple_cleanup - Clean up resources for I2C OF prober simple helpers
+ * @dev: Pointer to the &struct device of the caller, only used for dev_printk() messages
+ * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
+ *
+ * If a regulator supply was found, disable that regulator.
+ *
+ * Return: %0 on success or no-op, or a negative error number on failure.
+ */
+int i2c_of_probe_simple_cleanup(struct device *dev, void *data)
+{
+	struct i2c_of_probe_simple_ctx *ctx = data;
+
+	i2c_of_probe_simple_disable_regulator(dev, ctx);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_cleanup, I2C_OF_PROBER);
+
+struct i2c_of_probe_ops i2c_of_probe_simple_ops = {
+	.get_resources = i2c_of_probe_simple_get_res,
+	.enable = i2c_of_probe_simple_enable,
+	.cleanup = i2c_of_probe_simple_cleanup,
+	.free_resources_late = i2c_of_probe_simple_free_res_late,
+};
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_ops, I2C_OF_PROBER);
diff --git a/include/linux/i2c-of-prober.h b/include/linux/i2c-of-prober.h
index 0f94e7c94310..541451fbf58d 100644
--- a/include/linux/i2c-of-prober.h
+++ b/include/linux/i2c-of-prober.h
@@ -68,6 +68,54 @@ struct i2c_of_probe_cfg {
 
 int i2c_of_probe_component(struct device *dev, const struct i2c_of_probe_cfg *cfg, void *ctx);
 
+/**
+ * DOC: I2C OF component prober simple helpers
+ *
+ * Components such as trackpads are commonly connected to a devices baseboard
+ * with a 6-pin ribbon cable. That gives at most one voltage supply and one
+ * GPIO besides the I2C bus, interrupt pin, and common ground. Touchscreens,
+ * while integrated into the display panel's connection, typically have the
+ * same set of connections.
+ *
+ * A simple set of helpers are provided here for use with the I2C OF component
+ * prober. This implementation targets such components, allowing for at most
+ * one regulator supply.
+ *
+ * The following helpers are provided:
+ * * i2c_of_probe_simple_get_res()
+ * * i2c_of_probe_simple_free_res_late()
+ * * i2c_of_probe_simple_enable()
+ * * i2c_of_probe_simple_cleanup()
+ */
+
+/**
+ * struct i2c_of_probe_simple_opts - Options for simple I2C component prober callbacks
+ * @res_node_compatible: Compatible string of device node to retrieve resources from.
+ * @supply_name: Name of regulator supply.
+ * @post_power_on_delay_ms: Delay in ms after regulators are powered on. Passed to msleep().
+ */
+struct i2c_of_probe_simple_opts {
+	const char *res_node_compatible;
+	const char *supply_name;
+	unsigned int post_power_on_delay_ms;
+};
+
+struct regulator;
+
+struct i2c_of_probe_simple_ctx {
+	/* public: provided by user before helpers are used. */
+	const struct i2c_of_probe_simple_opts *opts;
+	/* private: internal fields for helpers. */
+	struct regulator *supply;
+};
+
+int i2c_of_probe_simple_get_res(struct device *dev, struct device_node *bus_node, void *data);
+void i2c_of_probe_simple_free_res_late(void *data);
+int i2c_of_probe_simple_enable(struct device *dev, void *data);
+int i2c_of_probe_simple_cleanup(struct device *dev, void *data);
+
+extern struct i2c_of_probe_ops i2c_of_probe_simple_ops;
+
 #endif /* IS_ENABLED(CONFIG_OF_DYNAMIC) */
 
 #endif /* _LINUX_I2C_OF_PROBER_H */
-- 
2.46.0.598.g6f2099f65c-goog


