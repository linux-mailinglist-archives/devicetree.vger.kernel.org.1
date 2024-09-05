Return-Path: <devicetree+bounces-100267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E9096D006
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:04:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 581E12857E6
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DAD019342D;
	Thu,  5 Sep 2024 07:03:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E823A1925B2;
	Thu,  5 Sep 2024 07:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725519795; cv=none; b=LxV1xNJzR/jxyV6MNdKJpNoU8VvcTHXPzybpBTqiKFIBEMhVm5AsHvWSJlWezXW8QytdmAY395BBUsa+WnxqaTizbRBwzeqZ/JP9wOjJZd5pkV5xymTQu3V7SHEEMaBlWKQ/bn+ocodj4jExoxGov6hcVCyMi/kD1JoVtNOclzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725519795; c=relaxed/simple;
	bh=QcX2O7XnndxNWIhO8kVlxa928zU/85PG+bWjbsYou3I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dUmEyWHwYUIjvz23+KSgDMOY5izzHDrkz7YcdeIuplhZ8QcR/f+GuzMVIN4qsNh0o+jL2Hp7g6QxHxan2wVCMwWwMcnBgxCrp5fDU0WUv/jaUdFuj5UdLLiqN7HwHhZLsmq80PFbpy/g29L67018RaLuTmZ/T+5+jyplBKNKxt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.71])
	by gateway (Coremail) with SMTP id _____8AxGuqwV9lmERorAA--.18043S3;
	Thu, 05 Sep 2024 15:03:12 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.71])
	by front1 (Coremail) with SMTP id qMiowMBxbNyhV9lmDcMEAA--.21040S4;
	Thu, 05 Sep 2024 15:03:09 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v1 06/10] ASoC: loongson: Fix codec detection failure on FDT systems
Date: Thu,  5 Sep 2024 15:02:55 +0800
Message-ID: <f9111564acc6c9ac011318a7eb3c6843ea0529ce.1725518229.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1725518229.git.zhoubinbin@loongson.cn>
References: <cover.1725518229.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMBxbNyhV9lmDcMEAA--.21040S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxXr17GFyUXw1kZw1UJF15Jrc_yoW5KF4Upr
	45uayYkryrJr1xuwnYqrW8Aa4akry8WrsrJay7K3WSk3Z3Z3s8Ww1j9F1UZF4ayFyUA34U
	XFW8Ka97Ka4UJFXCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBvb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Gr1j6F4UJwAaw2AFwI0_JF0_Jw1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2
	xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_
	Wrv_ZF1lYx0Ex4A2jsIE14v26F4j6r4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2
	Ij64vIr41lc7CjxVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
	z7v_Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
	8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE
	2Ix0cI8IcVAFwI0_Ar0_tr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwCI42IY6x
	AIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Cr0_Gr1UMIIF0xvEx4A2jsIE
	c7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07jxxhdUUUUU=

When the Codec is compiled into a module, we can't use
snd_soc_of_get_dlc() to get the codec dai_name, use
snd_soc_get_dai_name() instead.

Also, for the cpu dailink, its dai_name is already defined as
"loongson-i2s", so just get the corresponding of_node attribute here.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 sound/soc/loongson/loongson_card.c | 89 +++++++++++++++++++++---------
 1 file changed, 63 insertions(+), 26 deletions(-)

diff --git a/sound/soc/loongson/loongson_card.c b/sound/soc/loongson/loongson_card.c
index a25287efdd5c..d45a3e77cb90 100644
--- a/sound/soc/loongson/loongson_card.c
+++ b/sound/soc/loongson/loongson_card.c
@@ -119,44 +119,81 @@ static int loongson_card_parse_acpi(struct loongson_card_data *data)
 	return 0;
 }
 
-static int loongson_card_parse_of(struct loongson_card_data *data)
+static int loongson_parse_cpu(struct device *dev, struct device_node **dai_node)
 {
-	struct snd_soc_card *card = &data->snd_card;
-	struct device_node *cpu, *codec;
-	struct device *dev = card->dev;
-	int ret, i;
+	struct device_node *cpu;
+	int ret = 0;
 
 	cpu = of_get_child_by_name(dev->of_node, "cpu");
-	if (!cpu) {
-		dev_err(dev, "platform property missing or invalid\n");
+	if (!cpu)
 		return -EINVAL;
-	}
+
+	*dai_node = of_parse_phandle(cpu, "sound-dai", 0);
+	if (!*dai_node)
+		ret = -EINVAL;
+
+	of_node_put(cpu);
+	return ret;
+}
+
+static int loongson_parse_codec(struct device *dev, struct device_node **dai_node,
+				const char **dai_name)
+{
+	struct of_phandle_args args;
+	struct device_node *codec;
+	int ret = 0;
 
 	codec = of_get_child_by_name(dev->of_node, "codec");
-	if (!codec) {
-		dev_err(dev, "audio-codec property missing or invalid\n");
+	if (!codec)
+		return -EINVAL;
+
+	ret = of_parse_phandle_with_args(codec, "sound-dai", "#sound-dai-cells", 0, &args);
+	if (ret)
+		goto free_codec;
+
+	ret = snd_soc_get_dai_name(&args, dai_name);
+	if (ret)
+		goto free_codec;
+
+	*dai_node = of_parse_phandle(codec, "sound-dai", 0);
+	if (!*dai_node)
 		ret = -EINVAL;
-		goto free_cpu;
+
+free_codec:
+	of_node_put(codec);
+	return ret;
+}
+
+static int loongson_card_parse_of(struct loongson_card_data *data)
+{
+	struct device_node *codec_dai_node, *cpu_dai_node;
+	struct snd_soc_card *card = &data->snd_card;
+	struct device *dev = card->dev;
+	const char *codec_dai_name;
+	int ret = 0, i;
+
+	ret = loongson_parse_cpu(dev, &cpu_dai_node);
+	if (ret) {
+		dev_err(dev, "cpu property missing or invalid.\n");
+		goto out;
+	}
+
+	ret = loongson_parse_codec(dev, &codec_dai_node, &codec_dai_name);
+	if (ret) {
+		dev_err(dev, "audio-codec property missing or invalid.\n");
+		goto out;
 	}
 
 	for (i = 0; i < card->num_links; i++) {
-		ret = snd_soc_of_get_dlc(cpu, NULL, loongson_dai_links[i].cpus, 0);
-		if (ret) {
-			dev_err(dev, "getting cpu dlc error (%d)\n", ret);
-			goto free_codec;
-		}
-
-		ret = snd_soc_of_get_dlc(codec, NULL, loongson_dai_links[i].codecs, 0);
-		if (ret) {
-			dev_err(dev, "getting codec dlc error (%d)\n", ret);
-			goto free_codec;
-		}
+		loongson_dai_links[i].platforms->of_node = cpu_dai_node;
+		loongson_dai_links[i].cpus->of_node = cpu_dai_node;
+		loongson_dai_links[i].codecs->of_node = codec_dai_node;
+		loongson_dai_links[i].codecs->dai_name = codec_dai_name;
 	}
 
-free_codec:
-	of_node_put(codec);
-free_cpu:
-	of_node_put(cpu);
+out:
+	of_node_put(codec_dai_node);
+	of_node_put(cpu_dai_node);
 	return ret;
 }
 
-- 
2.43.5


