Return-Path: <devicetree+bounces-40419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC94850662
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 21:57:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7F7DB244BD
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 20:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA775F55D;
	Sat, 10 Feb 2024 20:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifts/wq7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D5E5FBB2;
	Sat, 10 Feb 2024 20:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707598641; cv=none; b=R04QaoXK0w7aWSSZ4mgBtvpA0tfUNmMjPD1V4IT3MohuoYFdycjC62nWR42mbINr0VC9OJbuiicTyvUz94KWcXfZk06VcX2r+lxp4IKE8fW0LgmymUmDwCcdMfo/m14eLd9r63NOF+R11mBGfzpH+8HlPGIAHIb4H/CL7NcxhUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707598641; c=relaxed/simple;
	bh=KHiWex7ck5Tp2OHJXhKZ/jusbjDu2MZyCdaVFZTp02U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hfOtdmVc0A30jtqyD8DZaTICtRS0Xug/QcyPumMuq6aaVYRN6evA94Y5fz1mJ6gBjrGHwVEHWS4pjDP2qYTpqFlMPc5aVwjJa3WlD9kDybIf83NqB2tCXKf9AUbyMxT1Ep5xX7GH7ByWqrCQtle0Lc1Z7HINpzSfkwHkDD14NuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifts/wq7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4E570C4160D;
	Sat, 10 Feb 2024 20:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707598641;
	bh=KHiWex7ck5Tp2OHJXhKZ/jusbjDu2MZyCdaVFZTp02U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ifts/wq7HKYqs6sV6I/AvLrfQjRM4sZL8Piq95lp34gqtdIFtnVlxUCZ2PdMK/52a
	 BBrsPS3Ke3/MYo1lzguogcITOkMNy5beobXU7y8TLSSBlRl3LOdqgM6IsdoHpGaAXy
	 b2yppB4f4wFYtQGAgRygT4t0v5RrbOBHslpdK4IymtBE7NSFKIgnzk9ZOXksOR6GYR
	 k2NrX2btF+Vdq0FuS7aSYq3Sy6SFxZ/T0iOGLqgYdT6k7WPP0fN6wn3FBTkBU4Uzc9
	 SgcUs78tWgvMbCVjztDpnaGHQXyV3rXxSeNjtZSHPwyw10jMtO8BHK1a6GCYUPDXrZ
	 WWhk+SP/g2+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37994C48BC4;
	Sat, 10 Feb 2024 20:57:21 +0000 (UTC)
From: Nuno Sa via B4 Relay <devnull+nuno.sa.analog.com@kernel.org>
Date: Sat, 10 Feb 2024 21:57:19 +0100
Subject: [PATCH v11 7/7] iio: adc: adi-axi-adc: move to backend framework
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240210-iio-backend-v11-7-f5242a5fb42a@analog.com>
References: <20240210-iio-backend-v11-0-f5242a5fb42a@analog.com>
In-Reply-To: <20240210-iio-backend-v11-0-f5242a5fb42a@analog.com>
To: linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Olivier Moysan <olivier.moysan@foss.st.com>, andy.shevchenko@gmail.com
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1707598639; l=18276;
 i=nuno.sa@analog.com; s=20231116; h=from:subject:message-id;
 bh=PZyxDtlSRmSwD0WmCcfWjaQKZU64oXziAQgHAlHqshI=;
 b=qA2pfxCd/46qVWBJ5lG8iPy0NsHA3vARxq0UoNY9OvCR4Ed48ZsgIiTwUjqB4gsyB+VQpiRKN
 76WphnhsEl4AGIJ/G2sjt7XVwJx5iWjQhfPVX9SlWkTIjtoA1ZwlNY1
X-Developer-Key: i=nuno.sa@analog.com; a=ed25519;
 pk=3NQwYA013OUYZsmDFBf8rmyyr5iQlxV/9H4/Df83o1E=
X-Endpoint-Received:
 by B4 Relay for nuno.sa@analog.com/20231116 with auth_id=100
X-Original-From: Nuno Sa <nuno.sa@analog.com>
Reply-To: <nuno.sa@analog.com>

From: Nuno Sa <nuno.sa@analog.com>

Move to the IIO backend framework. Devices supported by adi-axi-adc now
register themselves as backend devices.

Signed-off-by: Nuno Sa <nuno.sa@analog.com>
---
 drivers/iio/adc/Kconfig             |   2 +-
 drivers/iio/adc/adi-axi-adc.c       | 384 +++++++++---------------------------
 include/linux/iio/adc/adi-axi-adc.h |  68 -------
 3 files changed, 96 insertions(+), 358 deletions(-)

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index 61736dc21d2a..977832d797e1 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -325,7 +325,7 @@ config ADI_AXI_ADC
 	select IIO_BUFFER_HW_CONSUMER
 	select IIO_BUFFER_DMAENGINE
 	select REGMAP_MMIO
-	depends on OF
+	select IIO_BACKEND
 	help
 	  Say yes here to build support for Analog Devices Generic
 	  AXI ADC IP core. The IP core is used for interfacing with
diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
index 0f21d1d98b9f..4156639b3c8b 100644
--- a/drivers/iio/adc/adi-axi-adc.c
+++ b/drivers/iio/adc/adi-axi-adc.c
@@ -8,6 +8,7 @@
 
 #include <linux/bitfield.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <linux/io.h>
 #include <linux/delay.h>
 #include <linux/module.h>
@@ -17,13 +18,12 @@
 #include <linux/regmap.h>
 #include <linux/slab.h>
 
-#include <linux/iio/iio.h>
-#include <linux/iio/sysfs.h>
-#include <linux/iio/buffer.h>
-#include <linux/iio/buffer-dmaengine.h>
-
 #include <linux/fpga/adi-axi-common.h>
-#include <linux/iio/adc/adi-axi-adc.h>
+
+#include <linux/iio/backend.h>
+#include <linux/iio/buffer-dmaengine.h>
+#include <linux/iio/buffer.h>
+#include <linux/iio/iio.h>
 
 /*
  * Register definitions:
@@ -44,6 +44,7 @@
 #define   ADI_AXI_REG_CHAN_CTRL_PN_SEL_OWR	BIT(10)
 #define   ADI_AXI_REG_CHAN_CTRL_IQCOR_EN	BIT(9)
 #define   ADI_AXI_REG_CHAN_CTRL_DCFILT_EN	BIT(8)
+#define   ADI_AXI_REG_CHAN_CTRL_FMT_MASK	GENMASK(6, 4)
 #define   ADI_AXI_REG_CHAN_CTRL_FMT_SIGNEXT	BIT(6)
 #define   ADI_AXI_REG_CHAN_CTRL_FMT_TYPE	BIT(5)
 #define   ADI_AXI_REG_CHAN_CTRL_FMT_EN		BIT(4)
@@ -55,286 +56,100 @@
 	 ADI_AXI_REG_CHAN_CTRL_FMT_EN |		\
 	 ADI_AXI_REG_CHAN_CTRL_ENABLE)
 
-struct adi_axi_adc_core_info {
-	unsigned int				version;
-};
-
 struct adi_axi_adc_state {
-	struct mutex				lock;
-
-	struct adi_axi_adc_client		*client;
 	struct regmap				*regmap;
-};
-
-struct adi_axi_adc_client {
-	struct list_head			entry;
-	struct adi_axi_adc_conv			conv;
-	struct adi_axi_adc_state		*state;
 	struct device				*dev;
-	const struct adi_axi_adc_core_info	*info;
 };
 
-static LIST_HEAD(registered_clients);
-static DEFINE_MUTEX(registered_clients_lock);
-
-static struct adi_axi_adc_client *conv_to_client(struct adi_axi_adc_conv *conv)
-{
-	return container_of(conv, struct adi_axi_adc_client, conv);
-}
-
-void *adi_axi_adc_conv_priv(struct adi_axi_adc_conv *conv)
-{
-	struct adi_axi_adc_client *cl = conv_to_client(conv);
-
-	return (char *)cl + ALIGN(sizeof(struct adi_axi_adc_client),
-				  IIO_DMA_MINALIGN);
-}
-EXPORT_SYMBOL_NS_GPL(adi_axi_adc_conv_priv, IIO_ADI_AXI);
-
-static int adi_axi_adc_config_dma_buffer(struct device *dev,
-					 struct iio_dev *indio_dev)
-{
-	const char *dma_name;
-
-	if (!device_property_present(dev, "dmas"))
-		return 0;
-
-	if (device_property_read_string(dev, "dma-names", &dma_name))
-		dma_name = "rx";
-
-	return devm_iio_dmaengine_buffer_setup(indio_dev->dev.parent,
-					       indio_dev, dma_name);
-}
-
-static int adi_axi_adc_read_raw(struct iio_dev *indio_dev,
-				struct iio_chan_spec const *chan,
-				int *val, int *val2, long mask)
-{
-	struct adi_axi_adc_state *st = iio_priv(indio_dev);
-	struct adi_axi_adc_conv *conv = &st->client->conv;
-
-	if (!conv->read_raw)
-		return -EOPNOTSUPP;
-
-	return conv->read_raw(conv, chan, val, val2, mask);
-}
-
-static int adi_axi_adc_write_raw(struct iio_dev *indio_dev,
-				 struct iio_chan_spec const *chan,
-				 int val, int val2, long mask)
-{
-	struct adi_axi_adc_state *st = iio_priv(indio_dev);
-	struct adi_axi_adc_conv *conv = &st->client->conv;
-
-	if (!conv->write_raw)
-		return -EOPNOTSUPP;
-
-	return conv->write_raw(conv, chan, val, val2, mask);
-}
-
-static int adi_axi_adc_read_avail(struct iio_dev *indio_dev,
-				  struct iio_chan_spec const *chan,
-				  const int **vals, int *type, int *length,
-				  long mask)
-{
-	struct adi_axi_adc_state *st = iio_priv(indio_dev);
-	struct adi_axi_adc_conv *conv = &st->client->conv;
-
-	if (!conv->read_avail)
-		return -EOPNOTSUPP;
-
-	return conv->read_avail(conv, chan, vals, type, length, mask);
-}
-
-static int adi_axi_adc_update_scan_mode(struct iio_dev *indio_dev,
-					const unsigned long *scan_mask)
+static int axi_adc_enable(struct iio_backend *back)
 {
-	struct adi_axi_adc_state *st = iio_priv(indio_dev);
-	struct adi_axi_adc_conv *conv = &st->client->conv;
-	unsigned int i;
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
 	int ret;
 
-	for (i = 0; i < conv->chip_info->num_channels; i++) {
-		if (test_bit(i, scan_mask))
-			ret = regmap_set_bits(st->regmap,
-					      ADI_AXI_REG_CHAN_CTRL(i),
-					      ADI_AXI_REG_CHAN_CTRL_ENABLE);
-		else
-			ret = regmap_clear_bits(st->regmap,
-						ADI_AXI_REG_CHAN_CTRL(i),
-						ADI_AXI_REG_CHAN_CTRL_ENABLE);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
-static struct adi_axi_adc_conv *adi_axi_adc_conv_register(struct device *dev,
-							  size_t sizeof_priv)
-{
-	struct adi_axi_adc_client *cl;
-	size_t alloc_size;
-
-	alloc_size = ALIGN(sizeof(struct adi_axi_adc_client), IIO_DMA_MINALIGN);
-	if (sizeof_priv)
-		alloc_size += ALIGN(sizeof_priv, IIO_DMA_MINALIGN);
-
-	cl = kzalloc(alloc_size, GFP_KERNEL);
-	if (!cl)
-		return ERR_PTR(-ENOMEM);
-
-	mutex_lock(&registered_clients_lock);
-
-	cl->dev = get_device(dev);
-
-	list_add_tail(&cl->entry, &registered_clients);
-
-	mutex_unlock(&registered_clients_lock);
+	ret = regmap_set_bits(st->regmap, ADI_AXI_REG_RSTN,
+			      ADI_AXI_REG_RSTN_MMCM_RSTN);
+	if (ret)
+		return ret;
 
-	return &cl->conv;
+	fsleep(10000);
+	return regmap_set_bits(st->regmap, ADI_AXI_REG_RSTN,
+			       ADI_AXI_REG_RSTN_RSTN | ADI_AXI_REG_RSTN_MMCM_RSTN);
 }
 
-static void adi_axi_adc_conv_unregister(struct adi_axi_adc_conv *conv)
+static void axi_adc_disable(struct iio_backend *back)
 {
-	struct adi_axi_adc_client *cl = conv_to_client(conv);
-
-	mutex_lock(&registered_clients_lock);
-
-	list_del(&cl->entry);
-	put_device(cl->dev);
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
 
-	mutex_unlock(&registered_clients_lock);
-
-	kfree(cl);
+	regmap_write(st->regmap, ADI_AXI_REG_RSTN, 0);
 }
 
-static void devm_adi_axi_adc_conv_release(void *conv)
+static int axi_adc_data_format_set(struct iio_backend *back, unsigned int chan,
+				   const struct iio_backend_data_fmt *data)
 {
-	adi_axi_adc_conv_unregister(conv);
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	u32 val;
+
+	if (!data->enable)
+		return regmap_clear_bits(st->regmap,
+					 ADI_AXI_REG_CHAN_CTRL(chan),
+					 ADI_AXI_REG_CHAN_CTRL_FMT_EN);
+
+	val = FIELD_PREP(ADI_AXI_REG_CHAN_CTRL_FMT_EN, true);
+	if (data->sign_extend)
+		val |= FIELD_PREP(ADI_AXI_REG_CHAN_CTRL_FMT_SIGNEXT, true);
+	if (data->type == IIO_BACKEND_OFFSET_BINARY)
+		val |= FIELD_PREP(ADI_AXI_REG_CHAN_CTRL_FMT_TYPE, true);
+
+	return regmap_update_bits(st->regmap, ADI_AXI_REG_CHAN_CTRL(chan),
+				  ADI_AXI_REG_CHAN_CTRL_FMT_MASK, val);
 }
 
-struct adi_axi_adc_conv *devm_adi_axi_adc_conv_register(struct device *dev,
-							size_t sizeof_priv)
+static int axi_adc_chan_enable(struct iio_backend *back, unsigned int chan)
 {
-	struct adi_axi_adc_conv *conv;
-	int ret;
-
-	conv = adi_axi_adc_conv_register(dev, sizeof_priv);
-	if (IS_ERR(conv))
-		return conv;
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
 
-	ret = devm_add_action_or_reset(dev, devm_adi_axi_adc_conv_release,
-				       conv);
-	if (ret)
-		return ERR_PTR(ret);
-
-	return conv;
+	return regmap_set_bits(st->regmap, ADI_AXI_REG_CHAN_CTRL(chan),
+			       ADI_AXI_REG_CHAN_CTRL_ENABLE);
 }
-EXPORT_SYMBOL_NS_GPL(devm_adi_axi_adc_conv_register, IIO_ADI_AXI);
-
-static const struct iio_info adi_axi_adc_info = {
-	.read_raw = &adi_axi_adc_read_raw,
-	.write_raw = &adi_axi_adc_write_raw,
-	.update_scan_mode = &adi_axi_adc_update_scan_mode,
-	.read_avail = &adi_axi_adc_read_avail,
-};
-
-static const struct adi_axi_adc_core_info adi_axi_adc_10_0_a_info = {
-	.version = ADI_AXI_PCORE_VER(10, 0, 'a'),
-};
 
-static struct adi_axi_adc_client *adi_axi_adc_attach_client(struct device *dev)
+static int axi_adc_chan_disable(struct iio_backend *back, unsigned int chan)
 {
-	const struct adi_axi_adc_core_info *info;
-	struct adi_axi_adc_client *cl;
-	struct device_node *cln;
-
-	info = of_device_get_match_data(dev);
-	if (!info)
-		return ERR_PTR(-ENODEV);
-
-	cln = of_parse_phandle(dev->of_node, "adi,adc-dev", 0);
-	if (!cln) {
-		dev_err(dev, "No 'adi,adc-dev' node defined\n");
-		return ERR_PTR(-ENODEV);
-	}
-
-	mutex_lock(&registered_clients_lock);
-
-	list_for_each_entry(cl, &registered_clients, entry) {
-		if (!cl->dev)
-			continue;
-
-		if (cl->dev->of_node != cln)
-			continue;
-
-		if (!try_module_get(cl->dev->driver->owner)) {
-			mutex_unlock(&registered_clients_lock);
-			of_node_put(cln);
-			return ERR_PTR(-ENODEV);
-		}
-
-		get_device(cl->dev);
-		cl->info = info;
-		mutex_unlock(&registered_clients_lock);
-		of_node_put(cln);
-		return cl;
-	}
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
 
-	mutex_unlock(&registered_clients_lock);
-	of_node_put(cln);
-
-	return ERR_PTR(-EPROBE_DEFER);
+	return regmap_clear_bits(st->regmap, ADI_AXI_REG_CHAN_CTRL(chan),
+				 ADI_AXI_REG_CHAN_CTRL_ENABLE);
 }
 
-static int adi_axi_adc_setup_channels(struct device *dev,
-				      struct adi_axi_adc_state *st)
+static struct iio_buffer *axi_adc_request_buffer(struct iio_backend *back,
+						 struct iio_dev *indio_dev)
 {
-	struct adi_axi_adc_conv *conv = &st->client->conv;
-	int i, ret;
+	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
+	struct iio_buffer *buffer;
+	const char *dma_name;
+	int ret;
 
-	if (conv->preenable_setup) {
-		ret = conv->preenable_setup(conv);
-		if (ret)
-			return ret;
-	}
+	if (device_property_read_string(st->dev, "dma-names", &dma_name))
+		dma_name = "rx";
 
-	for (i = 0; i < conv->chip_info->num_channels; i++) {
-		ret = regmap_write(st->regmap, ADI_AXI_REG_CHAN_CTRL(i),
-				   ADI_AXI_REG_CHAN_CTRL_DEFAULTS);
-		if (ret)
-			return ret;
+	buffer = iio_dmaengine_buffer_alloc(st->dev, dma_name);
+	if (IS_ERR(buffer)) {
+		dev_err(st->dev, "Could not get DMA buffer, %ld\n",
+			PTR_ERR(buffer));
+		return ERR_CAST(buffer);
 	}
 
-	return 0;
-}
-
-static int axi_adc_reset(struct adi_axi_adc_state *st)
-{
-	int ret;
-
-	ret = regmap_write(st->regmap, ADI_AXI_REG_RSTN, 0);
-	if (ret)
-		return ret;
-
-	mdelay(10);
-	ret = regmap_write(st->regmap, ADI_AXI_REG_RSTN,
-			   ADI_AXI_REG_RSTN_MMCM_RSTN);
+	indio_dev->modes |= INDIO_BUFFER_HARDWARE;
+	ret = iio_device_attach_buffer(indio_dev, buffer);
 	if (ret)
-		return ret;
+		return ERR_PTR(ret);
 
-	mdelay(10);
-	return regmap_write(st->regmap, ADI_AXI_REG_RSTN,
-			    ADI_AXI_REG_RSTN_RSTN | ADI_AXI_REG_RSTN_MMCM_RSTN);
+	return buffer;
 }
 
-static void adi_axi_adc_cleanup(void *data)
+static void axi_adc_free_buffer(struct iio_backend *back,
+				struct iio_buffer *buffer)
 {
-	struct adi_axi_adc_client *cl = data;
-
-	put_device(cl->dev);
-	module_put(cl->dev->driver->owner);
+	iio_dmaengine_buffer_free(buffer);
 }
 
 static const struct regmap_config axi_adc_regmap_config = {
@@ -344,45 +159,47 @@ static const struct regmap_config axi_adc_regmap_config = {
 	.max_register = 0x0800,
 };
 
+static const struct iio_backend_ops adi_axi_adc_generic = {
+	.enable = axi_adc_enable,
+	.disable = axi_adc_disable,
+	.data_format_set = axi_adc_data_format_set,
+	.chan_enable = axi_adc_chan_enable,
+	.chan_disable = axi_adc_chan_disable,
+	.request_buffer = axi_adc_request_buffer,
+	.free_buffer = axi_adc_free_buffer,
+};
+
 static int adi_axi_adc_probe(struct platform_device *pdev)
 {
-	struct adi_axi_adc_conv *conv;
-	struct iio_dev *indio_dev;
-	struct adi_axi_adc_client *cl;
+	const unsigned int *expected_ver;
 	struct adi_axi_adc_state *st;
 	void __iomem *base;
 	unsigned int ver;
 	int ret;
 
-	cl = adi_axi_adc_attach_client(&pdev->dev);
-	if (IS_ERR(cl))
-		return PTR_ERR(cl);
-
-	ret = devm_add_action_or_reset(&pdev->dev, adi_axi_adc_cleanup, cl);
-	if (ret)
-		return ret;
-
-	indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	st = devm_kzalloc(&pdev->dev, sizeof(*st), GFP_KERNEL);
+	if (!st)
 		return -ENOMEM;
 
-	st = iio_priv(indio_dev);
-	st->client = cl;
-	cl->state = st;
-	mutex_init(&st->lock);
-
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
+	st->dev = &pdev->dev;
 	st->regmap = devm_regmap_init_mmio(&pdev->dev, base,
 					   &axi_adc_regmap_config);
 	if (IS_ERR(st->regmap))
 		return PTR_ERR(st->regmap);
 
-	conv = &st->client->conv;
+	expected_ver = device_get_match_data(&pdev->dev);
+	if (!expected_ver)
+		return -ENODEV;
 
-	ret = axi_adc_reset(st);
+	/*
+	 * Force disable the core. Up to the frontend to enable us. And we can
+	 * still read/write registers...
+	 */
+	ret = regmap_write(st->regmap, ADI_AXI_REG_RSTN, 0);
 	if (ret)
 		return ret;
 
@@ -390,33 +207,19 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	if (cl->info->version > ver) {
+	if (*expected_ver > ver) {
 		dev_err(&pdev->dev,
 			"IP core version is too old. Expected %d.%.2d.%c, Reported %d.%.2d.%c\n",
-			ADI_AXI_PCORE_VER_MAJOR(cl->info->version),
-			ADI_AXI_PCORE_VER_MINOR(cl->info->version),
-			ADI_AXI_PCORE_VER_PATCH(cl->info->version),
+			ADI_AXI_PCORE_VER_MAJOR(*expected_ver),
+			ADI_AXI_PCORE_VER_MINOR(*expected_ver),
+			ADI_AXI_PCORE_VER_PATCH(*expected_ver),
 			ADI_AXI_PCORE_VER_MAJOR(ver),
 			ADI_AXI_PCORE_VER_MINOR(ver),
 			ADI_AXI_PCORE_VER_PATCH(ver));
 		return -ENODEV;
 	}
 
-	indio_dev->info = &adi_axi_adc_info;
-	indio_dev->name = "adi-axi-adc";
-	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->num_channels = conv->chip_info->num_channels;
-	indio_dev->channels = conv->chip_info->channels;
-
-	ret = adi_axi_adc_config_dma_buffer(&pdev->dev, indio_dev);
-	if (ret)
-		return ret;
-
-	ret = adi_axi_adc_setup_channels(&pdev->dev, st);
-	if (ret)
-		return ret;
-
-	ret = devm_iio_device_register(&pdev->dev, indio_dev);
+	ret = devm_iio_backend_register(&pdev->dev, &adi_axi_adc_generic, st);
 	if (ret)
 		return ret;
 
@@ -428,6 +231,8 @@ static int adi_axi_adc_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static unsigned int adi_axi_adc_10_0_a_info = ADI_AXI_PCORE_VER(10, 0, 'a');
+
 /* Match table for of_platform binding */
 static const struct of_device_id adi_axi_adc_of_match[] = {
 	{ .compatible = "adi,axi-adc-10.0.a", .data = &adi_axi_adc_10_0_a_info },
@@ -448,3 +253,4 @@ MODULE_AUTHOR("Michael Hennerich <michael.hennerich@analog.com>");
 MODULE_DESCRIPTION("Analog Devices Generic AXI ADC IP core driver");
 MODULE_LICENSE("GPL v2");
 MODULE_IMPORT_NS(IIO_DMAENGINE_BUFFER);
+MODULE_IMPORT_NS(IIO_BACKEND);
diff --git a/include/linux/iio/adc/adi-axi-adc.h b/include/linux/iio/adc/adi-axi-adc.h
deleted file mode 100644
index b7904992d561..000000000000
--- a/include/linux/iio/adc/adi-axi-adc.h
+++ /dev/null
@@ -1,68 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Analog Devices Generic AXI ADC IP core driver/library
- * Link: https://wiki.analog.com/resources/fpga/docs/axi_adc_ip
- *
- * Copyright 2012-2020 Analog Devices Inc.
- */
-#ifndef __ADI_AXI_ADC_H__
-#define __ADI_AXI_ADC_H__
-
-struct device;
-struct iio_chan_spec;
-
-/**
- * struct adi_axi_adc_chip_info - Chip specific information
- * @name		Chip name
- * @id			Chip ID (usually product ID)
- * @channels		Channel specifications of type @struct iio_chan_spec
- * @num_channels	Number of @channels
- * @scale_table		Supported scales by the chip; tuples of 2 ints
- * @num_scales		Number of scales in the table
- * @max_rate		Maximum sampling rate supported by the device
- */
-struct adi_axi_adc_chip_info {
-	const char			*name;
-	unsigned int			id;
-
-	const struct iio_chan_spec	*channels;
-	unsigned int			num_channels;
-
-	const unsigned int		(*scale_table)[2];
-	int				num_scales;
-
-	unsigned long			max_rate;
-};
-
-/**
- * struct adi_axi_adc_conv - data of the ADC attached to the AXI ADC
- * @chip_info		chip info details for the client ADC
- * @preenable_setup	op to run in the client before enabling the AXI ADC
- * @reg_access		IIO debugfs_reg_access hook for the client ADC
- * @read_raw		IIO read_raw hook for the client ADC
- * @write_raw		IIO write_raw hook for the client ADC
- * @read_avail		IIO read_avail hook for the client ADC
- */
-struct adi_axi_adc_conv {
-	const struct adi_axi_adc_chip_info		*chip_info;
-
-	int (*preenable_setup)(struct adi_axi_adc_conv *conv);
-	int (*reg_access)(struct adi_axi_adc_conv *conv, unsigned int reg,
-			  unsigned int writeval, unsigned int *readval);
-	int (*read_raw)(struct adi_axi_adc_conv *conv,
-			struct iio_chan_spec const *chan,
-			int *val, int *val2, long mask);
-	int (*write_raw)(struct adi_axi_adc_conv *conv,
-			 struct iio_chan_spec const *chan,
-			 int val, int val2, long mask);
-	int (*read_avail)(struct adi_axi_adc_conv *conv,
-			  struct iio_chan_spec const *chan,
-			  const int **val, int *type, int *length, long mask);
-};
-
-struct adi_axi_adc_conv *devm_adi_axi_adc_conv_register(struct device *dev,
-							size_t sizeof_priv);
-
-void *adi_axi_adc_conv_priv(struct adi_axi_adc_conv *conv);
-
-#endif

-- 
2.43.0


