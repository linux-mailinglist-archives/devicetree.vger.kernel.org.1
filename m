Return-Path: <devicetree+bounces-104691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C6F983D78
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 09:00:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F13BB1F23F69
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 07:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5767E126C05;
	Tue, 24 Sep 2024 07:00:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494D682D83;
	Tue, 24 Sep 2024 07:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727161246; cv=none; b=WVp2ieEvnT0duMrNxaCMd4bITdt0Hr9h9WBOBrCuQuzJVstPlxX7685S14u9DABCg+IuDbvkRR0OaP0U5XxAa+pSDI9LRxtROgfjvJBwBuFtg61A1zVu2I8l3e6dPyVhoe130fIBja1Ve39j/YOKR6jCdWuWjsI60KJXQjTuWcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727161246; c=relaxed/simple;
	bh=6szpx7WIBp+NTw/J0Udr471Do2nvuHh2tO3manZxiv4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rxyWHgn1U+SPHgPcWA64uAiwEfGlv2yfN3BM86uKS/2Ip8rxLI1iHOnayZI7qFinYR4reOIlRAwFPGiLqxDcid/MN9k+ZaFgTs98goMagpT9WOqn/w3u1o/uBUUzo9O9mYCPvmxVbrRF8YSjcq5hUCL3/7HYipoKiXTf/g1F+zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8DxleibY_JmB8UNAA--.30729S3;
	Tue, 24 Sep 2024 15:00:43 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMBxn+SRY_Jm0KQNAA--.11471S3;
	Tue, 24 Sep 2024 15:00:41 +0800 (CST)
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
Subject: [PATCH v2 5/9] ASoC: loongson: Fix codec detection failure on FDT systems
Date: Tue, 24 Sep 2024 15:00:32 +0800
Message-ID: <9a286537a20f0f96597090f59165b4532e41bdb8.1727056789.git.zhoubinbin@loongson.cn>
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
X-CM-TRANSID:qMiowMBxn+SRY_Jm0KQNAA--.11471S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxXr17GF4rtw4UXw1UuF48GrX_yoW5uFW5p3
	ZxC3yYkrWrJr1xuwnYqrWUAFyakry8W39rJay7K3WIkr9xA3s8uw18WF1UZF4akFy8G34U
	XFWrKa92ka4UJFgCm3ZEXasCq-sJn29KB7ZKAUJUUUUd529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBCb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r126r13M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E
	14v26r4UJVWxJr1ln4kS14v26r1q6r43M2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6x
	kI12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v2
	6Fy26r45twAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0x
	vY0x0EwIxGrwCY1x0262kKe7AKxVW8ZVWrXwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE
	7xkEbVWUJVW8JwCFI7km07C267AKxVWUtVW8ZwC20s026c02F40E14v26r1j6r18MI8I3I
	0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAI
	cVC0I7IYx2IY67AKxVWDJVCq3wCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr1j6F4UJwCI42
	IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Cr0_Gr1UMIIF0xvEx4A2
	jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa73UjIFyTuYvjxUS_HUUUUUU

When the Codec is compiled into a module, we can't use
snd_soc_of_get_dlc() to get the codec dai_name, use
snd_soc_get_dai_name() instead.

Also, for the cpu dailink, its dai_name is already defined as
"loongson-i2s", so just get the corresponding of_node attribute here.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 sound/soc/loongson/loongson_card.c | 81 ++++++++++++++++++++----------
 1 file changed, 55 insertions(+), 26 deletions(-)

diff --git a/sound/soc/loongson/loongson_card.c b/sound/soc/loongson/loongson_card.c
index 7379f24d385c..b07b8652d95b 100644
--- a/sound/soc/loongson/loongson_card.c
+++ b/sound/soc/loongson/loongson_card.c
@@ -119,48 +119,77 @@ static int loongson_card_parse_acpi(struct loongson_card_data *data)
 	return 0;
 }
 
-static int loongson_card_parse_of(struct loongson_card_data *data)
+static int loongson_parse_cpu(struct snd_soc_card *card)
 {
-	struct device_node *cpu, *codec;
-	struct snd_soc_card *card = &data->snd_card;
+	struct device_node *dai_node = NULL, *cpu = NULL;
 	struct device *dev = card->dev;
-	int ret, i;
+	int i;
 
 	cpu = of_get_child_by_name(dev->of_node, "cpu");
-	if (!cpu) {
-		dev_err(dev, "platform property missing or invalid\n");
+	if (!cpu)
 		return -EINVAL;
+
+	dai_node = of_parse_phandle(cpu, "sound-dai", 0);
+	of_node_put(cpu);
+	if (!dai_node)
+		return -EINVAL;
+
+	for (i = 0; i < card->num_links; i++) {
+		loongson_dai_links[i].platforms->of_node = dai_node;
+		loongson_dai_links[i].cpus->of_node = dai_node;
 	}
+
+	of_node_put(dai_node);
+	return 0;
+}
+
+static int loongson_parse_codec(struct snd_soc_card *card)
+{
+	struct device_node *codec = NULL, *dai_node = NULL;
+	struct device *dev = card->dev;
+	struct of_phandle_args args;
+	const char *dai_name;
+	int ret = 0, i;
+
 	codec = of_get_child_by_name(dev->of_node, "codec");
-	if (!codec) {
-		dev_err(dev, "audio-codec property missing or invalid\n");
-		of_node_put(cpu);
+	if (!codec)
 		return -EINVAL;
+
+	ret = of_parse_phandle_with_args(codec, "sound-dai", "#sound-dai-cells", 0, &args);
+	if (ret)
+		goto codec_put;
+
+	ret = snd_soc_get_dai_name(&args, &dai_name);
+	of_node_put(args.np);
+	if (ret)
+		goto codec_put;
+
+	dai_node = of_parse_phandle(codec, "sound-dai", 0);
+	if (!dai_node) {
+		ret = -EINVAL;
+		goto codec_put;
 	}
 
 	for (i = 0; i < card->num_links; i++) {
-		ret = snd_soc_of_get_dlc(cpu, NULL, loongson_dai_links[i].cpus, 0);
-		if (ret < 0) {
-			dev_err(dev, "getting cpu dlc error (%d)\n", ret);
-			goto err;
-		}
-
-		ret = snd_soc_of_get_dlc(codec, NULL, loongson_dai_links[i].codecs, 0);
-		if (ret < 0) {
-			dev_err(dev, "getting codec dlc error (%d)\n", ret);
-			goto err;
-		}
+		loongson_dai_links[i].codecs->of_node = dai_node;
+		loongson_dai_links[i].codecs->dai_name = dai_name;
 	}
 
-	of_node_put(cpu);
+codec_put:
 	of_node_put(codec);
+	return ret;
+}
 
-	return 0;
+static int loongson_card_parse_of(struct loongson_card_data *data)
+{
+	struct snd_soc_card *card = &data->snd_card;
+	int ret;
 
-err:
-	of_node_put(cpu);
-	of_node_put(codec);
-	return ret;
+	ret = loongson_parse_cpu(card);
+	if (ret)
+		return ret;
+
+	return loongson_parse_codec(card);
 }
 
 static int loongson_asoc_card_probe(struct platform_device *pdev)
-- 
2.43.5


