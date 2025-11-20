Return-Path: <devicetree+bounces-240863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B893C769CE
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:31:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 885774E609D
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 701EC2E2852;
	Thu, 20 Nov 2025 23:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T3f6lNzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318D62FFF83
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763681403; cv=none; b=SF+PHNlgrwR3MP5ZSkQU0h36i9EjZKAPANjaWKjRwL+p2LwHv1uS48kf3BHUqmanpVQJqZy4y8bvlegA+I+2lpJevATEIHsMnYbg9NBlMvPmXmFhZ4tMyDi5xKsd5vsvvglyLuxwxCvm+3nyhpIjFZUCxqeYuonpnD6jDVkBLuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763681403; c=relaxed/simple;
	bh=W4DaM94tPPtznOp7Un8ESSuQT5CGLy9fqdfzdwLWV8o=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=Okao4g6i4ajoRxWf/y9eui3z8iQ4x513RhYgO9SV9ikmIyyDv7RDZcP2er3AGkbzN2ufjma81BPTOU+Q/BZz0rydsGNcGtDePasVq/2ll+o9GfMO5Y4F6bCLbE0BTehMPOqHbwoMLPylqkMq/IS7/Ulu7wPH4cSG4OVopz4/aGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T3f6lNzQ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso14010375e9.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763681398; x=1764286198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=o99Q6btqe94dFwhCkqr9jpNEkkVzeqWoyeDeppPljwM=;
        b=T3f6lNzQRhJD2eJlcNSooGaayyfU53A1iUmsnGTqIQ/bH8qNcUq1eOOrQwAzpbMYi1
         p208yWw1X5XMSXrKPCugOP2Cb0YELEvqs8mnkPrPhiDHYowRUb732Jo4Yi4pZ2GsGDxH
         HGhccfgZUKspYTG9GHL5KLRFDITmAA/br6EccUnJ0AxOdl8x4+gFt1drogCFsB5oWrSH
         Qdx8t3l8eYsnaKJY/SG8PvuoIVcJJ97p++taTk/iOHDhw18tcPo/tUlpjBf5ER2nc9SK
         IVj5Y+r3YIudE/R6bqGTgHTtmFh0hcI8pAPQhMTDsIM+c+IK7K7hqT2Wiw9Lgscw76AA
         tU5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763681398; x=1764286198;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o99Q6btqe94dFwhCkqr9jpNEkkVzeqWoyeDeppPljwM=;
        b=drsJKj/xXflC+BqWxm4X6yPxmZoC5RG1YrArX2jvdkrtnygGhsM8jPFcO6swFTjxwP
         +BRwXf8NShu+V09hNd7wC/jrPchWG1zESgTaVt4v3cM+K+ecE7MBZzaXtNX4xy2GOlzc
         V8qEVj97MV33D/y1LnDuTQWMHS02i6Yzck+gKD/gYbcS3UBBp8r9tvcsE/SsYI8zMb9N
         9Udm2GGLmKhaK9Q0SS7gPsgaGXQPzpFm4TFAp7cbOP7fgVR7Y6jTQZUi5ld1SKcbIhmV
         WJjnQQabDvPrmgFpovryXWF72fpRj5P1CQhcXVbAykKXSLIPKIcawg9ZI1qXZPKy7TYQ
         puBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdAk/ZMF2J1XY56nghQYQliguxaRzPWURQDv9gMEBDTsxMRlAoHkwXmWFCxzLuTp2i3ukWlB/CgAYd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8YrXdvkwLeWQFTL2ECvMJucvtwC6TrwxXe4DK9r5FPQUqvgsJ
	qBLlHwNWVDSrSuHuZiDz06Z0pEQbbkn/BjcHMKvm1KWmc4GZvSvhxGDs
X-Gm-Gg: ASbGncvOM+JNXNdPVs+3jxl9Ea6HqzkyknDBB/G/OwYI0/IOrzvVmA64USQvB2MVYzo
	qnRZ5b49/uRENtQ6tuIwuW5/++hVQDMM8feMV4Loqm9i211TSaBkyLEXsPX/+GYim0mcEpQRNcO
	Xp+gBzY6gcFydn/isETv6pxdMeTor0FNZ5O3hk4qk47oP9ujilCYnICC7SKR2uxss4B5FWKNF/S
	Cvu8lQGk4o3pA6lFS3ivPG/h7ZpSBvXaCDFzLWepUGwiqBlPoPxmmOJ4z3xgJNXbVeIS9+Q5hAq
	25VtvxOU3HSu0gShk1xQoOJc0voxJfxBKfRxbFJP9rMUo9KOY/41HeSGCjAUQcV9PVnrztTwwsB
	BWr/jldOyN0VOA+ZGfLsL24KJgLm81dhp3ddaeWZRTYtl5WiLZKJVnPh5xmbuuiQ6luqY/51RlT
	wwXXobgqIIdwcETBOfBjvMDUWY7edySnuzEFf9KGO2
X-Google-Smtp-Source: AGHT+IENcKDSU9p5/g82mvjpGvvEKuudRdiDvyXXEFjAWRPw+rHnGQTHf31HMHlBDVIX2Yzva/jh6w==
X-Received: by 2002:a05:600c:45ce:b0:477:79cf:89d4 with SMTP id 5b1f17b1804b1-477c01ff270mr3630625e9.31.1763681398280;
        Thu, 20 Nov 2025 15:29:58 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42cb7fb9022sm7776315f8f.36.2025.11.20.15.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 15:29:57 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
	Ray Liu <ray.liu@airoha.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 0/3] ASoC: Add support for Airoha AN7581
Date: Fri, 21 Nov 2025 00:29:09 +0100
Message-ID: <20251120232913.32532-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add all the patch and documentation to support Airoha AN7581
sound driver.

The card follows similar implementation with Mediatek with
the codec present on i2c but with a simplified implementation
register wise and additional frequency supported.

Christian Marangi (3):
  ASoC: dt-bindings: Add Airoha AN7581 with WM8960 YAML
  ASoC: dt-bindings: Add Airoha AN7581 AFE YAML
  ASoC: airoha: Add AFE and machine driver for Airoha AN7581

 .../bindings/sound/airoha,an7581-afe.yaml     |  41 ++
 .../bindings/sound/airoha,an7581-wm8960.yaml  |  67 +++
 MAINTAINERS                                   |  10 +-
 sound/soc/mediatek/Kconfig                    |  20 +
 sound/soc/mediatek/Makefile                   |   1 +
 sound/soc/mediatek/an7581/Makefile            |   9 +
 sound/soc/mediatek/an7581/an7581-afe-common.h |  39 ++
 sound/soc/mediatek/an7581/an7581-afe-pcm.c    | 456 ++++++++++++++++++
 sound/soc/mediatek/an7581/an7581-dai-etdm.c   | 371 ++++++++++++++
 sound/soc/mediatek/an7581/an7581-reg.h        |  61 +++
 sound/soc/mediatek/an7581/an7581-wm8960.c     | 170 +++++++
 11 files changed, 1244 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/airoha,an7581-afe.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/airoha,an7581-wm8960.yaml
 create mode 100644 sound/soc/mediatek/an7581/Makefile
 create mode 100644 sound/soc/mediatek/an7581/an7581-afe-common.h
 create mode 100644 sound/soc/mediatek/an7581/an7581-afe-pcm.c
 create mode 100644 sound/soc/mediatek/an7581/an7581-dai-etdm.c
 create mode 100644 sound/soc/mediatek/an7581/an7581-reg.h
 create mode 100644 sound/soc/mediatek/an7581/an7581-wm8960.c

-- 
2.51.0


