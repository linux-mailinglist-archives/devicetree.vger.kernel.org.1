Return-Path: <devicetree+bounces-108846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4EE9940EC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00E931F27E18
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 211CF1D0DE7;
	Tue,  8 Oct 2024 07:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="e7Tm16QF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492B51CDFCA
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 07:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728372915; cv=none; b=UIU+Ra6xkHIrQv06kjlOZXGGeNgndgzFgFOrB8R74Q/UBXUYBjxSy1w1bm10qV5IBWuvg+K2wU9XSZe7LUq95ez7OROOczdHUWSxEwF33fVlnq0R3LXUgTAKFmGEfCcLK/+zusU7/P6a5cgUATslvpuCkjQOo107SeyZzhLNL5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728372915; c=relaxed/simple;
	bh=nE/fiUD8wtYRMYbh9flavEhYDKB6VQXqT16/5WJOYZg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OknWt+Ww1meRtNhr8FqvCZw7i/k2qz/MYj5walUqBneWccYnhRpLrQnxLQ//+PWLB3O2kY9MYCs6Qwwgov9wE+Qqe0bNST913lLjytMEtNZAYQ2ytAHOU7ZnCpKTJMlf9Ki+nMac3PqykSo9XXy57MJ7zNUO7tdVMw17juDE48g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=e7Tm16QF; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-20b86298710so44614545ad.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 00:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728372912; x=1728977712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s3Urm2Gd9lkx9QpNe5FuUQb3fMaQWiLoID5tgu7U4aA=;
        b=e7Tm16QFPi3pYN4YK11tT3iboYNcQF1BG175tQtto2YutjGofbncemRrkyGjt65EWQ
         jzRjvxcQTry5T6feyJCdiLgMOtSOmcN6AftQsy1RIv3poLAqjKcimH6i4l5qO4CNLkeu
         PrNXI3UMU8QQnzQOuIfqf/H5wqFrIlJEjiP7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728372912; x=1728977712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s3Urm2Gd9lkx9QpNe5FuUQb3fMaQWiLoID5tgu7U4aA=;
        b=MZA1+DGjknYcpvCzp6v+owquAi7wrq1P4DJATL1GTKijqtS5YoLCXINibWT+SlhqZU
         vu33EUrrWCVbi2ZmxWh9bWhzUz4grh/lJ0em3iQd3HISa5uWYSWvJCczmxrGifL1AsYR
         9T2Jvd4y/blTVAzDS2E+I6OD2k7QXY1ejs4pR3IVXF+Svcsh7n1BEkvP1gqIswTKVErb
         dvGmBOBxrJFYsPvmbHFd7tZjmk0fC26wvt7xTkoBlAiiGbuZ6gPf+u23Ue6CePI9C01i
         0pzOmOU/w1gBMDocBNoGZPHgbPrwq3if9scmF4MvgUIJFZyk6JOBO1GKvcknT5ph9QMJ
         HLIA==
X-Forwarded-Encrypted: i=1; AJvYcCXl68yX856HxGPHi+fJOY6K3xpA05ixN8lPviWoCeUYlswRo79kCSGS41azijOOD+JpMm9cuMurea82@vger.kernel.org
X-Gm-Message-State: AOJu0YxS7qg1qPJYQgQw9wcvc4Z0QydjtVhj6gDsZTGMo/pqC7sgkOBM
	G0L60Ix3CQNIqQTL+BxetgNtsDsCLdQd3ynrzkyTDooNizbr4ICrWP/HnLuPOQ==
X-Google-Smtp-Source: AGHT+IGLgcwc62NvV+1AM3ZYCpmHP4ueOvwdKeYFSYE//DUZfAoGheHLiPeqNZOIemDTbUAS7lwx9A==
X-Received: by 2002:a17:902:f551:b0:20b:8776:4902 with SMTP id d9443c01a7336-20bff047bd5mr213957095ad.38.1728372912577;
        Tue, 08 Oct 2024 00:35:12 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:10df:d27e:8d4b:6740])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c13939bd7sm50121175ad.120.2024.10.08.00.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 00:35:12 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>
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
Subject: [PATCH v8 5/8] i2c: of-prober: Add simple helpers for regulator support
Date: Tue,  8 Oct 2024 15:34:24 +0800
Message-ID: <20241008073430.3992087-6-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241008073430.3992087-1-wenst@chromium.org>
References: <20241008073430.3992087-1-wenst@chromium.org>
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
Changes since v7:
- Reworded comment in i2c_of_probe_simple_get_supply() as suggested
  (Andy)
- Dropped mention of time unit in struct i2c_of_probe_simple_opts
  kernel doc (Andy)
- Added mention of common GPIO line usages ("enable" or "reset") in I2C
  OF component prober kernel doc (Doug)
- Added check for non-zero delay before msleep() (Doug)
- Combined callback helpers (.get_resources with .enable; .cleanup with
  .free_resources_late)

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
---
 drivers/i2c/i2c-core-of-prober.c | 138 ++++++++++++++++++++++++++++++-
 include/linux/i2c-of-prober.h    |  44 ++++++++++
 2 files changed, 181 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c-core-of-prober.c b/drivers/i2c/i2c-core-of-prober.c
index cc1aae9fef43..d7f51ff872b8 100644
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
@@ -174,3 +175,138 @@ int i2c_of_probe_component(struct device *dev, const struct i2c_of_probe_cfg *cf
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
+	 * It's entirely possible for the component's device node to not have the
+	 * regulator supplies. While it does not make sense from a hardware perspective,
+	 * the supplies could be always on or otherwise not modeled in the device tree,
+	 * but the device would still work.
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
+	if (ctx->opts->post_power_on_delay_ms)
+		msleep(ctx->opts->post_power_on_delay_ms);
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
+ * i2c_of_probe_simple_enable - Simple helper for I2C OF prober to get and enable resources
+ * @dev: Pointer to the &struct device of the caller, only used for dev_printk() messages
+ * @bus_node: Pointer to the &struct device_node of the I2C adapter.
+ * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
+ *
+ * If &i2c_of_probe_simple_opts->supply_name is given, request the named regulator supply.
+ * If a regulator supply was found, enable that regulator.
+ *
+ * Return: %0 on success or no-op, or a negative error number on failure.
+ */
+int i2c_of_probe_simple_enable(struct device *dev, struct device_node *bus_node, void *data)
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
+	ret = i2c_of_probe_simple_enable_regulator(dev, ctx);
+	if (ret)
+		goto out_put_supply;
+
+	return 0;
+
+out_put_supply:
+	i2c_of_probe_simple_put_supply(ctx);
+out_put_node:
+	of_node_put(node);
+	return ret;
+}
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_enable, I2C_OF_PROBER);
+
+/**
+ * i2c_of_probe_simple_cleanup - Clean up and release resources for I2C OF prober simple helpers
+ * @dev: Pointer to the &struct device of the caller, only used for dev_printk() messages
+ * @data: Pointer to &struct i2c_of_probe_simple_ctx helper context.
+ *
+ * * If a regulator supply was found, disable that regulator and release it.
+ */
+void i2c_of_probe_simple_cleanup(struct device *dev, void *data)
+{
+	struct i2c_of_probe_simple_ctx *ctx = data;
+
+	i2c_of_probe_simple_disable_regulator(dev, ctx);
+	i2c_of_probe_simple_put_supply(ctx);
+}
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_cleanup, I2C_OF_PROBER);
+
+struct i2c_of_probe_ops i2c_of_probe_simple_ops = {
+	.enable = i2c_of_probe_simple_enable,
+	.cleanup = i2c_of_probe_simple_cleanup,
+};
+EXPORT_SYMBOL_NS_GPL(i2c_of_probe_simple_ops, I2C_OF_PROBER);
diff --git a/include/linux/i2c-of-prober.h b/include/linux/i2c-of-prober.h
index b771da21a051..c4938a34b901 100644
--- a/include/linux/i2c-of-prober.h
+++ b/include/linux/i2c-of-prober.h
@@ -65,6 +65,50 @@ struct i2c_of_probe_cfg {
 
 int i2c_of_probe_component(struct device *dev, const struct i2c_of_probe_cfg *cfg, void *ctx);
 
+/**
+ * DOC: I2C OF component prober simple helpers
+ *
+ * Components such as trackpads are commonly connected to a devices baseboard
+ * with a 6-pin ribbon cable. That gives at most one voltage supply and one
+ * GPIO (commonly a "enable" or "reset" line) besides the I2C bus, interrupt
+ * pin, and common ground. Touchscreens, while integrated into the display
+ * panel's connection, typically have the same set of connections.
+ *
+ * A simple set of helpers are provided here for use with the I2C OF component
+ * prober. This implementation targets such components, allowing for at most
+ * one regulator supply.
+ *
+ * The following helpers are provided:
+ * * i2c_of_probe_simple_enable()
+ * * i2c_of_probe_simple_cleanup()
+ */
+
+/**
+ * struct i2c_of_probe_simple_opts - Options for simple I2C component prober callbacks
+ * @res_node_compatible: Compatible string of device node to retrieve resources from.
+ * @supply_name: Name of regulator supply.
+ * @post_power_on_delay_ms: Delay after regulators are powered on. Passed to msleep().
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
+int i2c_of_probe_simple_enable(struct device *dev, struct device_node *bus_node, void *data);
+void i2c_of_probe_simple_cleanup(struct device *dev, void *data);
+
+extern struct i2c_of_probe_ops i2c_of_probe_simple_ops;
+
 #endif /* IS_ENABLED(CONFIG_OF_DYNAMIC) */
 
 #endif /* _LINUX_I2C_OF_PROBER_H */
-- 
2.47.0.rc0.187.ge670bccf7e-goog


