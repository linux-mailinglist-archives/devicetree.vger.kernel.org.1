Return-Path: <devicetree+bounces-130082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF329EDF53
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 07:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65B0E18897B3
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 06:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C165417C7C4;
	Thu, 12 Dec 2024 06:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="RlvB8ifW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2875E1632CA
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 06:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733984455; cv=none; b=GQAHY08CpQ29oE+VSelmq+GaAyL8rQ0eMtVVpaTZp2r4T+dZHwiqwflkTCokKsFkUcu0h2a4UtuLos+A7e2TVM/USI+otVo2VAQ0JgZc5aWAIAG28jiwAMiAMlte/IN/2DitX25DN4j6kwPBe3r5nW7Tt+WgNQxSVPAPK3hd+E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733984455; c=relaxed/simple;
	bh=DURjK8IyCOH/TUjiFMC5zs9Ikrm4F/wbwKEn58IIwM0=;
	h=From:To:Cc:Subject:Date:Message-Id; b=YZ6QRIFnY9qtN6CqGEGPfwJPILrpVyZTh5L9jpC3w9VmnlS0QQgTBqHVtklffzgJ7n3cwBcVS2zNH/dJdCIjcSZzpTZok23AX0UJY4kmgiJ4Pk5pA8LjJ3M1Q3AVOkliKlmF8D6dfvs6KDcif7Yz3J2zdF82F6oYD3DM0jdaXCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=RlvB8ifW; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2161d4b820bso417875ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 22:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1733984453; x=1734589253; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2sOU/zN1rnDAJHK7mSCpddQhh7N81+Tto3qj5XwbKbU=;
        b=RlvB8ifWSVPCzBnK7kkxPVYYJJge39K2aYGYv3JG9ORBDNaEzbY4UYjUyaU6wYSRtb
         A2euV3C9JNR+MEDBS8vscg1Rxi80S+NCL0m0tuamYNSSfmrLv8AQC8otAb4/a3X1s0+Y
         4QQ8aPUePSUsO2FbvtjduaiEtOhOUfthVHEytl+fTkDdo7EEF3zJSJCQkjT7svPfIShK
         2E0PNtRbvEfR5vK4XxiZTEIOyO0LcBFcIz11EhDpL5APBOGtpOab9AN0vM7RDweUeWI3
         h1RDk4AoyA2KedfYJBDBpP+uNclUEC3Fmnpdo5nz8BHX/sEieTJ1IFhUknnwAvQtIWZi
         gdxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733984453; x=1734589253;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2sOU/zN1rnDAJHK7mSCpddQhh7N81+Tto3qj5XwbKbU=;
        b=fWWow8BNCz9CLPGKlQAOJsSVG/ITghSfKzys9ZagMf2EFp+/RCE5Of7+YP9F8Llb6s
         BaKAiO4iKoBt9lRyiwXYv5hhkqwzaUztStg2D22LW8k19w7FagbocR4xo0EafaCJ8hj2
         BUrle6o+7cA1eloIzJqgN/QUYwTePrI8bPYj+bD9R/NxzuXlsOh99QbRxKxRNTL49wGT
         Bhse3yroJtHDQO/nrMjLw4yPSTUOBhNS0P0/6yyU2y1HK7a+20bIUoYCBQvo+vnu7Dim
         kzhlCvy8VJOAR2K9E9J7JhmRDCnh1U8jFMP6LUSqrX4ehDpDOdMQUmj7VOq8g/hJwfaj
         dxyQ==
X-Gm-Message-State: AOJu0YwNI+1bnYRblaQHJKq+EFFhkH0H07xaHN7xWimjsY2cjpslqt53
	z2jPdVkqiTAOaAzjZOj1NhVNGoGpcG49A4p8lfe/rLPRRpJCaRerIzH0FP1xp+A=
X-Gm-Gg: ASbGnctVOTjeZ5ryZwObzOMMkzAUiEYAE9ndnx0hTjySgW9mQg0QyjRly2pJcMaktpN
	en84e+bghAfBRmekxhBww4apOS4GkjpFSzHhXQDou+XJRJdIfGxgQm6+LV/dcO8eUVhHHJ6c4sp
	Re1rJujW+tCvajBL++oU64MBVtnbE/5yud9OsYu6+X5SUv5bBVYmU8XKq64HJnULsyVNBfKSP9y
	/o63wZReRLRTF4l2SFOhyX3h1FTOnfrEKW+uvbZrYjapWqmtRx82AkpD2Mgoz7rpEDWZQODPrel
	c9lJUka/720d0++HC8NC
X-Google-Smtp-Source: AGHT+IHLQqfTE6S33rXaKex6v5/nL8RuEZqh0jZ1l97VEOxPKBfxg+FVj8Clw/rAjJE+bNggu1IJ0w==
X-Received: by 2002:a17:902:dacb:b0:216:6590:d477 with SMTP id d9443c01a7336-21778397962mr36786945ad.2.1733984453430;
        Wed, 11 Dec 2024 22:20:53 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2162c278668sm83579165ad.81.2024.12.11.22.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 22:20:53 -0800 (PST)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com,
	dianders@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v5 0/4] arm64: dts: mediatek: Add MT8186 Chinchou
Date: Thu, 12 Dec 2024 14:20:42 +0800
Message-Id: <20241212062046.22509-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This is v5 of the MT8186 Chromebook device tree series to support
MT8186 chinchou platform. It is based on the "corsola" design.
It includes chinchou and chinchou360, including LTE, stylus,
touchscreen combinations.

Changes in v5:
- move sku17 here to keep alphabetical order.
- do not use the MTK_DRIVE_xxx definitions.
- Modify exton to extcon
- Link to v4: https://patchwork.kernel.org/project/linux-arm-kernel/cover/20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com/

Changes in v4:
- modify 'rt1019p_pins_default' to 'speaker_codec_pins_default'
- Move usbc_extcon out of typec
- Link to v3: https://patchwork.kernel.org/project/linux-arm-kernel/cover/20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com/

Changes in v3:
- Add a patch to change codec in pmic (in mt8186-corsola.dtsi) to audio-codec
- Link to v2: https://lore.kernel.org/all/20241018091135.17075-1-xiazhengqiao@huaqin.corp-partner.google.com/

Changes in v2:
- Modify location of "const: google,chinchou-sku17" in mediatek.yaml
- rename "pin-report" to "pin-report-pins"
- add "vcc33-supply" and "vcc33-supply" 
- rename "cbj-sleeve-gpio" to "cbj-sleeve-gpios"
- modify subnode of sound 
- Link to v1: https://lore.kernel.org/all/172900161180.733089.8963543745385219831.robh@kernel.org/


Zhengqiao Xia (4):
  dt-bindings: arm: mediatek: Add MT8186 Chinchou Chromebook
  arm64: dts: mediatek: Add MT8186 Chinchou Chromebooks
  arm64: dts: mediatek: Add extcon node for DP bridge
  arm64: dts: mediatek: Modify audio codec name for pmic

 .../devicetree/bindings/arm/mediatek.yaml     |  28 ++
 arch/arm64/boot/dts/mediatek/Makefile         |   3 +
 .../mediatek/mt8186-corsola-chinchou-sku0.dts |  18 +
 .../mediatek/mt8186-corsola-chinchou-sku1.dts |  35 ++
 .../mt8186-corsola-chinchou-sku16.dts         |  29 ++
 .../dts/mediatek/mt8186-corsola-chinchou.dtsi | 321 ++++++++++++++++++
 .../boot/dts/mediatek/mt8186-corsola.dtsi     |   8 +-
 7 files changed, 441 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku16.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi

-- 
2.17.1


