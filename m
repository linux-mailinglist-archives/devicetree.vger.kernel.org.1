Return-Path: <devicetree+bounces-104687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A41EB983D74
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 09:00:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6D7C1C228B1
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 07:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F365126BE2;
	Tue, 24 Sep 2024 07:00:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73AF7D417;
	Tue, 24 Sep 2024 07:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727161205; cv=none; b=TWJpceaYxDxMOJEKiQINpzPVolZMydyp2AGL3UMXQLV1LDoMRPLRC2fD2+evPxmQwoe8fpw0HMoA7lVMu0QEuz1TnJfFIZwjmEI4sE6hVEdjsfoIeRiFVsR4kUx/nbqbXsGXbLpWMAQslnVRDZ9xGRDbQ+rY1K4a70TPxhUb82U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727161205; c=relaxed/simple;
	bh=/lkOPvS3y/qr3A5PFR+lL/l6HBxzbt6nt7mXSIJJQWQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QhvPFxbAbdNLralIkCb8Bl1v9DCoRTAPVb+Y7Q/4+pYMnKQOz3jZnoTQ5HR9/utdBeyaZXq+qaaeGfuRn9tPqeg1TB5Rhig3dI0cqMj+Ov/NXgOZyroJW5LFrBide2dQVvTIY5QKj9IbbMW7FMEZvkvPl9cZu6nVoyBU3QOHSRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.38])
	by gateway (Coremail) with SMTP id _____8CxSOlvY_JmcMQNAA--.30700S3;
	Tue, 24 Sep 2024 14:59:59 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.38])
	by front1 (Coremail) with SMTP id qMiowMCxLeRpY_JmnKQNAA--.11695S2;
	Tue, 24 Sep 2024 14:59:54 +0800 (CST)
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
Subject: [PATCH v2 0/9] ASoC: Some issues about loongson i2s
Date: Tue, 24 Sep 2024 14:59:49 +0800
Message-ID: <cover.1727056789.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMCxLeRpY_JmnKQNAA--.11695S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxCryDtFWUCF47Kw1DZr1kJFc_yoWrXw1Upa
	nxC393Gr15Jr43ArWrGF48CF1rZ3yfZFnxGa1aq34UWry7Xw1UZ3s7tF15ZFZxCryFgry2
	qryrur48G3W5GagCm3ZEXasCq-sJn29KB7ZKAUJUUUUd529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r126r13M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2kKe7AKxVWUtVW8ZwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
	tVWrXwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
	AKI48JMxkF7I0En4kS14v26r4a6rW5MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
	6r1j6r4UMxCIbckI1I0E14v26r1q6r43MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26r4j6ryUMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IUeFoGPUUUUU==

Hi all:

This patch set is mainly about Loongson i2s related issues.

Please allow me to briefly explain this patch set:
Patch 1-2: Add ES8323 codec required on Loongson-2K2000
Patch 3-4: Add uda1342 codec required on Loongson-2K1000
Patch 5: Fix the problem of unable to detect codec under FDT system.
Patch 6-7: Add Loongson i2s platform device support
Patch 8-9: Related DTS support.

Thanks.

-------
V2:
- Spilt the improve code readability patch to a separate patch series.
  The link is:
  https://lore.kernel.org/all/cover.1725844530.git.zhoubinbin@loongson.cn/

patch (1/9):
 - Add es8323 compatible in everest,es8316.yaml instead of creating a
   new yaml file;

patch (2/9):
 - Use regmap_config.reg_defaults instead of snd_soc_component_driver.{read/write};
 - Use the more modern _CBC_CFC(SND_SOC_DAIFMT_BC_FC);
 - Rewrite suspend/resume function with regmap;
 - Drop i2c_check_functionality();
 - Use named variables for the enums rather than putting them into an array;

patch (3/9):
 - Add Reviewed-by tag from Krzysztof;

patch (4/9):
 - Drop unused param to avoid lkp warnning;
 - Drop some noisy log message(dev_info);
 - Use normal conditional statements to improve legibility;
 - Use provider/consumer instead of master/slave;
 - Use the more modern _CBC_CFC(SND_SOC_DAIFMT_BC_FC);
 - Drop uda1342_set_bias_level() for it does nothing;
 - Drop uda1342_mixer_enum[] for it is unused;
 - Point to controls/routes arrays from the component struct;
 - REGCACHE_MAP instead of REGCACHE_RBTREE.

patch (5/9):
 - Add of_node_put(args.np) after snd_soc_get_dai_name();
 - Use matching label name, such as codec_put instead of free_codec;
 - Rewrote the loongson_parse_cpu() and loongson_parse_codec() function
   interfaces to avoid dropping a reference from a pointer that is a
   random stack value

patch (6/9):
 - Rename file name as loongson,ls2k1000-i2s.yaml;
 - List and describe items for reg property;
 - 'unevaluatedProperties: false' instead of 'additionalProperties:
   false';

patch (7/9):
 - Fix lkp warnning;
 - Reorder Kconfig items, let
SND_SOC_LOONGSON_I2S_{PCI,PLATFORM} select SND_SOC_LOONGSON_CARD.

Link to v1:
https://lore.kernel.org/all/cover.1725518229.git.zhoubinbin@loongson.cn/

Binbin Zhou (9):
  ASoC: dt-bindings: Add Everest ES8323 Codec
  ASoC: codecs: Add support for ES8323
  ASoC: dt-bindings: Add NXP uda1342 Codec
  ASoC: codecs: Add uda1342 codec driver
  ASoC: loongson: Fix codec detection failure on FDT systems
  ASoC: dt-bindings: Add Loongson I2S controller
  ASoC: loongson: Add I2S controller driver as platform device
  LoongArch: dts: Add I2S support to Loongson-2K1000
  LoongArch: dts: Add I2S support to Loongson-2K2000

 .../bindings/sound/everest,es8316.yaml        |   4 +-
 .../bindings/sound/loongson,ls2k1000-i2s.yaml |  68 ++
 .../bindings/sound/nxp,uda1342.yaml           |  42 +
 arch/loongarch/boot/dts/loongson-2k1000.dtsi  |  17 +-
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  |  22 +-
 sound/soc/codecs/Kconfig                      |  13 +
 sound/soc/codecs/Makefile                     |   4 +
 sound/soc/codecs/es8323.c                     | 737 ++++++++++++++++++
 sound/soc/codecs/es8323.h                     |  78 ++
 sound/soc/codecs/uda1342.c                    | 355 +++++++++
 sound/soc/codecs/uda1342.h                    |  79 ++
 sound/soc/loongson/Kconfig                    |  31 +-
 sound/soc/loongson/Makefile                   |   3 +
 sound/soc/loongson/loongson_card.c            |  81 +-
 sound/soc/loongson/loongson_i2s_plat.c        | 186 +++++
 15 files changed, 1679 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/nxp,uda1342.yaml
 create mode 100644 sound/soc/codecs/es8323.c
 create mode 100644 sound/soc/codecs/es8323.h
 create mode 100644 sound/soc/codecs/uda1342.c
 create mode 100644 sound/soc/codecs/uda1342.h
 create mode 100644 sound/soc/loongson/loongson_i2s_plat.c

-- 
2.43.5


