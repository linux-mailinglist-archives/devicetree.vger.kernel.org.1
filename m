Return-Path: <devicetree+bounces-104694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA7F983D7B
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 09:01:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D869AB232A4
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 07:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F64F126C12;
	Tue, 24 Sep 2024 07:01:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5354582D66;
	Tue, 24 Sep 2024 07:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727161269; cv=none; b=sl7doASMY9/3/5fOLKUa+oYJiR5FUhd0AnNg30Orb6tEBT3X5I8cGHOTTmYNQVzC7ZtQkzAyci2PAxpyzmKmtfRghjN6B3VrF2vvI8FC5G/3Phu1pLZ+4KenEJonfEhV3qxNLCtghqfYomVUe/IvJvj75lw/B0t+5EWAwg0g9tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727161269; c=relaxed/simple;
	bh=55n8Q4R+eiXvrq8ZAjodBUas7GeSrkDHXTBQBGs6s/c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XvKDhxXDdBX7RsgMHiRRnk61dNPD29sOYWtHXzQddQiJYQgWeJ88jV1c92k/NfYqRUbnPxsTMSut2hmp7DI153JcE62J/BguKFWuN4bOZ7jRj/NXC2Ug9DLI2YoghLpm01jhdof2xzcr+G/VL0CNDGTE11rOUGsiRAh6yskJ5iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8CxxuivY_JmWMUNAA--.30906S3;
	Tue, 24 Sep 2024 15:01:03 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMCxodaiY_Jm5qQNAA--.11745S3;
	Tue, 24 Sep 2024 15:00:55 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Weidong Wang <wangweidong.a@awinic.com>,
	Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Shuming Fan <shumingf@realtek.com>,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v2 7/9] ASoC: loongson: Add I2S controller driver as platform device
Date: Tue, 24 Sep 2024 15:00:48 +0800
Message-ID: <fd3989d15546502b47f580e6a2c3a59cb628ce93.1727056789.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1727056789.git.zhoubinbin@loongson.cn>
References: <cover.1727056789.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMCxodaiY_Jm5qQNAA--.11745S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3WrW3Ww1DCrWUWw17WFy7CFX_yoWfAFy8pF
	s3ZayfWrWYqr4ayrZ8Jry8Cr15Zry3CasrGa9rJ342kr9rA348uryDtF1FvF4jkFW5Wry7
	XFWkurWrCFs8GabCm3ZEXasCq-sJn29KB7ZKAUJUUUUd529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUmIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E
	14v26r4UJVWxJr1ln4kS14v26r1q6r43M2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6x
	kI12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v2
	6Fy26r45twAv7VC2z280aVAFwI0_Gr1j6F4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2
	IYc2Ij64vIr41lF7xvrVCFI7AF6II2Y40_Zr0_Gr1UMxkF7I0En4kS14v26r4a6rW5MxAI
	w28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMxCIbckI1I0E14v26r1q6r43MI
	8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AK
	xVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26w1j6s0DMIIF0xvE2Ix0cI
	8IcVCY1x0267AKxVW8Jr0_Cr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E
	87Iv67AKxVW8Jr0_Cr1UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa
	73UjIFyTuYvjxUBSksDUUUU

The Loongson I2S controller exists not only in PCI form (LS7A bridge
chip), but also in platform device form (Loongson-2K1000 SoC).

This patch adds support for platform device I2S controller.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 sound/soc/loongson/Kconfig             |  31 +++--
 sound/soc/loongson/Makefile            |   3 +
 sound/soc/loongson/loongson_i2s_plat.c | 186 +++++++++++++++++++++++++
 3 files changed, 210 insertions(+), 10 deletions(-)
 create mode 100644 sound/soc/loongson/loongson_i2s_plat.c

diff --git a/sound/soc/loongson/Kconfig b/sound/soc/loongson/Kconfig
index b8d7e2bade24..715ddc91a834 100644
--- a/sound/soc/loongson/Kconfig
+++ b/sound/soc/loongson/Kconfig
@@ -1,11 +1,21 @@
 # SPDX-License-Identifier: GPL-2.0
 menu "SoC Audio for Loongson CPUs"
+
+config SND_SOC_LOONGSON_CARD
+	tristate "Loongson Sound Card Driver"
 	depends on LOONGARCH || COMPILE_TEST
+	help
+	  Say Y or M if you want to add support for SoC audio using
+	  loongson I2S controller.
+
+	  The driver add support for ALSA SoC Audio support using
+	  loongson I2S controller.
 
 config SND_SOC_LOONGSON_I2S_PCI
 	tristate "Loongson I2S-PCI Device Driver"
-	select REGMAP_MMIO
 	depends on PCI
+	select REGMAP_MMIO
+	select SND_SOC_LOONGSON_CARD
 	help
 	  Say Y or M if you want to add support for I2S driver for
 	  Loongson I2S controller.
@@ -13,15 +23,16 @@ config SND_SOC_LOONGSON_I2S_PCI
 	  The controller is found in loongson bridge chips or SoCs,
 	  and work as a PCI device.
 
-config SND_SOC_LOONGSON_CARD
-	tristate "Loongson Sound Card Driver"
-	select SND_SOC_LOONGSON_I2S_PCI
-	depends on PCI
+config SND_SOC_LOONGSON_I2S_PLATFORM
+	tristate "Loongson I2S controller as platform device"
+	depends on OF
+	select REGMAP_MMIO
+	select SND_SOC_LOONGSON_CARD
+	select SND_SOC_GENERIC_DMAENGINE_PCM
 	help
-	  Say Y or M if you want to add support for SoC audio using
-	  loongson I2S controller.
-
-	  The driver add support for ALSA SoC Audio support using
-	  loongson I2S controller.
+	  Say Y or M if you want to add support for I2S driver for
+	  Loongson I2S controller.
 
+	  The controller work as a platform device, found in Loongson-2K1000
+	  SoCs.
 endmenu
diff --git a/sound/soc/loongson/Makefile b/sound/soc/loongson/Makefile
index 578030ad6563..f396259244a3 100644
--- a/sound/soc/loongson/Makefile
+++ b/sound/soc/loongson/Makefile
@@ -3,6 +3,9 @@
 snd-soc-loongson-i2s-pci-y := loongson_i2s_pci.o loongson_i2s.o loongson_dma.o
 obj-$(CONFIG_SND_SOC_LOONGSON_I2S_PCI) += snd-soc-loongson-i2s-pci.o
 
+snd-soc-loongson-i2s-plat-y := loongson_i2s_plat.o loongson_i2s.o
+obj-$(CONFIG_SND_SOC_LOONGSON_I2S_PLATFORM) += snd-soc-loongson-i2s-plat.o
+
 #Machine Support
 snd-soc-loongson-card-y := loongson_card.o
 obj-$(CONFIG_SND_SOC_LOONGSON_CARD) += snd-soc-loongson-card.o
diff --git a/sound/soc/loongson/loongson_i2s_plat.c b/sound/soc/loongson/loongson_i2s_plat.c
new file mode 100644
index 000000000000..668067753b1c
--- /dev/null
+++ b/sound/soc/loongson/loongson_i2s_plat.c
@@ -0,0 +1,186 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Loongson I2S controller master mode dirver(platform device)
+ *
+ * Copyright (C) 2023-2024 Loongson Technology Corporation Limited
+ *
+ * Author: Yingkun Meng <mengyingkun@loongson.cn>
+ *         Binbin Zhou <zhoubinbin@loongson.cn>
+ */
+
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+#include <linux/module.h>
+#include <linux/of_dma.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <sound/dmaengine_pcm.h>
+#include <sound/pcm.h>
+#include <sound/pcm_params.h>
+#include <sound/soc.h>
+
+#include "loongson_i2s.h"
+
+#define LOONGSON_I2S_RX_DMA_OFFSET	21
+#define LOONGSON_I2S_TX_DMA_OFFSET	18
+
+#define LOONGSON_DMA0_CONF	0x0
+#define LOONGSON_DMA1_CONF	0x1
+#define LOONGSON_DMA2_CONF	0x2
+#define LOONGSON_DMA3_CONF	0x3
+#define LOONGSON_DMA4_CONF	0x4
+
+/* periods_max = PAGE_SIZE / sizeof(struct ls_dma_chan_reg) */
+static const struct snd_pcm_hardware loongson_pcm_hardware = {
+	.info = SNDRV_PCM_INFO_MMAP |
+		SNDRV_PCM_INFO_INTERLEAVED |
+		SNDRV_PCM_INFO_MMAP_VALID |
+		SNDRV_PCM_INFO_RESUME |
+		SNDRV_PCM_INFO_PAUSE,
+	.formats = SNDRV_PCM_FMTBIT_S16_LE |
+		   SNDRV_PCM_FMTBIT_S20_3LE |
+		   SNDRV_PCM_FMTBIT_S24_LE,
+	.period_bytes_min = 128,
+	.period_bytes_max = 128 * 1024,
+	.periods_min = 1,
+	.periods_max = 64,
+	.buffer_bytes_max = 1024 * 1024,
+};
+
+static const struct snd_dmaengine_pcm_config loongson_dmaengine_pcm_config = {
+	.pcm_hardware = &loongson_pcm_hardware,
+	.prepare_slave_config = snd_dmaengine_pcm_prepare_slave_config,
+	.prealloc_buffer_size = 128 * 1024,
+};
+
+static int loongson_pcm_open(struct snd_soc_component *component,
+			     struct snd_pcm_substream *substream)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+
+	if (substream->pcm->device & 1) {
+		runtime->hw.info &= ~SNDRV_PCM_INFO_INTERLEAVED;
+		runtime->hw.info |= SNDRV_PCM_INFO_NONINTERLEAVED;
+	}
+
+	if (substream->pcm->device & 2)
+		runtime->hw.info &= ~(SNDRV_PCM_INFO_MMAP |
+				      SNDRV_PCM_INFO_MMAP_VALID);
+	/*
+	 * For mysterious reasons (and despite what the manual says)
+	 * playback samples are lost if the DMA count is not a multiple
+	 * of the DMA burst size.  Let's add a rule to enforce that.
+	 */
+	snd_pcm_hw_constraint_step(runtime, 0,
+				   SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 128);
+	snd_pcm_hw_constraint_step(runtime, 0,
+				   SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 128);
+	snd_pcm_hw_constraint_integer(substream->runtime,
+				      SNDRV_PCM_HW_PARAM_PERIODS);
+
+	return 0;
+}
+
+static const struct snd_soc_component_driver loongson_i2s_component_driver = {
+	.name   = LS_I2S_DRVNAME,
+	.open	= loongson_pcm_open,
+};
+
+static const struct regmap_config loongson_i2s_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = 0x14,
+	.cache_type = REGCACHE_FLAT,
+};
+
+static int loongson_i2s_apbdma_config(struct platform_device *pdev)
+{
+	int val;
+	void __iomem *regs;
+
+	regs = devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
+
+	val = readl(regs);
+	val |= LOONGSON_DMA2_CONF << LOONGSON_I2S_TX_DMA_OFFSET;
+	val |= LOONGSON_DMA3_CONF << LOONGSON_I2S_RX_DMA_OFFSET;
+	writel(val, regs);
+
+	return 0;
+}
+
+static int loongson_i2s_plat_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct loongson_i2s *i2s;
+	struct resource *res;
+	struct clk *i2s_clk;
+	int ret;
+
+	i2s = devm_kzalloc(dev, sizeof(*i2s), GFP_KERNEL);
+	if (!i2s)
+		return -ENOMEM;
+
+	ret = loongson_i2s_apbdma_config(pdev);
+	if (ret)
+		return ret;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	i2s->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(i2s->reg_base))
+		return dev_err_probe(dev, PTR_ERR(i2s->reg_base),
+				     "devm_ioremap_resource failed\n");
+
+	i2s->regmap = devm_regmap_init_mmio(dev, i2s->reg_base,
+					    &loongson_i2s_regmap_config);
+	if (IS_ERR(i2s->regmap))
+		return dev_err_probe(dev, PTR_ERR(i2s->regmap),
+				     "devm_regmap_init_mmio failed\n");
+
+	i2s->playback_dma_data.addr = res->start + LS_I2S_TX_DATA;
+	i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	i2s->playback_dma_data.maxburst = 4;
+
+	i2s->capture_dma_data.addr = res->start + LS_I2S_RX_DATA;
+	i2s->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	i2s->capture_dma_data.maxburst = 4;
+
+	i2s_clk = devm_clk_get_enabled(dev, NULL);
+	if (IS_ERR(i2s_clk))
+		return dev_err_probe(dev, PTR_ERR(i2s_clk), "clock property invalid\n");
+	i2s->clk_rate = clk_get_rate(i2s_clk);
+
+	dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+	dev_set_name(dev, LS_I2S_DRVNAME);
+	dev_set_drvdata(dev, i2s);
+
+	ret = devm_snd_soc_register_component(dev, &loongson_i2s_component_driver,
+					      &loongson_i2s_dai, 1);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register DAI\n");
+
+	return devm_snd_dmaengine_pcm_register(dev, &loongson_dmaengine_pcm_config,
+					       SND_DMAENGINE_PCM_FLAG_COMPAT);
+}
+
+static const struct of_device_id loongson_i2s_ids[] = {
+	{ .compatible = "loongson,ls2k1000-i2s" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, loongson_i2s_ids);
+
+static struct platform_driver loongson_i2s_driver = {
+	.probe = loongson_i2s_plat_probe,
+	.driver = {
+		.name = "loongson-i2s-plat",
+		.pm = pm_sleep_ptr(&loongson_i2s_pm),
+		.of_match_table = loongson_i2s_ids,
+	},
+};
+module_platform_driver(loongson_i2s_driver);
+
+MODULE_DESCRIPTION("Loongson I2S Master Mode ASoC Driver");
+MODULE_AUTHOR("Loongson Technology Corporation Limited");
+MODULE_LICENSE("GPL");
-- 
2.43.5


