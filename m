Return-Path: <devicetree+bounces-100261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B28C96CFF2
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:02:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A4A4B21B37
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04AB1191F84;
	Thu,  5 Sep 2024 07:02:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B43C188A24;
	Thu,  5 Sep 2024 07:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725519767; cv=none; b=PBLcKTYJO9COtL1wmlmLD1VJs4yxeO12sEeXXLPjyivxs2iYGNOOzEiY0gQ3xiqBFbRYcsB7B0PilNq/bZbpaHMnITBNlwIoZMKOPf2CPltcDVwZs/ECyHoBdBaPNlQE/E17KoBHBLT6vSxRUPelF2Rc5LC4Dn6Og2giPH4negk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725519767; c=relaxed/simple;
	bh=3baeLYdHXf7NGUbfR2ssniO9/iFtU83bq7QROwdT1hg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=X1JgZkq4tYb+8AOX6LyXlXQOZzSubRd32j/nA8EfgVgOaEobENP5dkl1/cssCq38ChslBJEAnVyUanj9mf7IRTaZI6NLJpyliqFrcj3Pox3FIMHQAMPKbqtdM5x8eX9Rr5k7+aZMZsCgBclbKD5bE8hwFti1T0O8lhXH/mDrLBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.71])
	by gateway (Coremail) with SMTP id _____8BxmpqRV9lmhhkrAA--.46575S3;
	Thu, 05 Sep 2024 15:02:41 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.71])
	by front1 (Coremail) with SMTP id qMiowMAxXNyJV9lm38IEAA--.21058S2;
	Thu, 05 Sep 2024 15:02:36 +0800 (CST)
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
Subject: [PATCH v1 00/10] ASoC: Some issues about loongson i2s
Date: Thu,  5 Sep 2024 15:02:13 +0800
Message-ID: <cover.1725518229.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMAxXNyJV9lm38IEAA--.21058S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7CFW5JFW7Ar4kCFyUZryUCFX_yoW5JFWxpa
	n3C393Wr15Jr43Ar93J3W8GF1rAFyF9FnxGa17t34DGr9rX3WrZw1kJF15ZFZrCryrKF9F
	qryrCw48GF15GagCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUB2b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
	AVWUtwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
	AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
	6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x02
	67AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUcpBTUUUUU

Hi all:

This patch set is mainly about Loongson i2s related issues.

Please allow me to briefly explain this patch set:
Patch 1-2: Add ES8323 codec required on Loongson-2K2000
Patch 3-4: Add uda1342 codec required on Loongson-2K1000
Patch 5: Improve code readability
Patch 6: Fix the problem of unable to detect codec under FDT system.
Patch 7-8: Add Loongson i2s platform device support
Patch 9-10: Related DTS support.

Thanks.

base-commit: 097a44db5747403b19d05a9664e8ec6adba27e3b

Binbin Zhou (10):
  ASoC: dt-bindings: Add Everest ES8323 Codec
  ASoC: codecs: Add support for ES8323
  ASoC: dt-bindings: Add NXP uda1342 Codec
  ASoC: codecs: Add uda1342 codec driver
  ASoC: loongson: Improve code readability
  ASoC: loongson: Fix codec detection failure on FDT systems
  ASoC: dt-bindings: Add Loongson I2S controller
  ASoC: loongson: Add I2S controller driver as platform device
  LoongArch: dts: Add I2S support to Loongson-2K1000
  LoongArch: dts: Add I2S support to Loongson-2K2000

 .../bindings/sound/everest,es8323.yaml        |  49 +
 .../bindings/sound/loongson,ls2k-i2s.yaml     |  66 ++
 .../bindings/sound/nxp,uda1342.yaml           |  42 +
 arch/loongarch/boot/dts/loongson-2k1000.dtsi  |  17 +-
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  |  22 +-
 sound/soc/codecs/Kconfig                      |  13 +
 sound/soc/codecs/Makefile                     |   4 +
 sound/soc/codecs/es8323.c                     | 849 ++++++++++++++++++
 sound/soc/codecs/es8323.h                     |  77 ++
 sound/soc/codecs/uda1342.c                    | 397 ++++++++
 sound/soc/codecs/uda1342.h                    |  77 ++
 sound/soc/loongson/Kconfig                    |  12 +-
 sound/soc/loongson/Makefile                   |   3 +
 sound/soc/loongson/loongson_card.c            | 217 +++--
 sound/soc/loongson/loongson_dma.c             |  10 +-
 sound/soc/loongson/loongson_i2s.c             | 110 +--
 sound/soc/loongson/loongson_i2s.h             |  24 +-
 sound/soc/loongson/loongson_i2s_pci.c         |  51 +-
 sound/soc/loongson/loongson_i2s_plat.c        | 186 ++++
 19 files changed, 2030 insertions(+), 196 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es8323.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/loongson,ls2k-i2s.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/nxp,uda1342.yaml
 create mode 100644 sound/soc/codecs/es8323.c
 create mode 100644 sound/soc/codecs/es8323.h
 create mode 100644 sound/soc/codecs/uda1342.c
 create mode 100644 sound/soc/codecs/uda1342.h
 create mode 100644 sound/soc/loongson/loongson_i2s_plat.c

-- 
2.43.5


