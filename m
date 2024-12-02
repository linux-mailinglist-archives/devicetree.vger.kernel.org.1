Return-Path: <devicetree+bounces-125880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F049DF977
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1074E281969
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47CB62B2D7;
	Mon,  2 Dec 2024 03:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="nNOuSVTX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A59CE134AC
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 03:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733109644; cv=none; b=PJwKfcaSNm5VqX55KEgHUqMelo4xYjQ33C6QAHxSAbhzFl0fZixB2LP3CNSTCwXBAfO0bkWmACCR/BRNgyn5oMnt5Ik4vSDd2I7i2HBSbr5E/8AdaJuOigq9jXoEJ6UUpuA5cajb3TxSW0e5PUNofl0ibuuxZyyeU5heGLtAIKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733109644; c=relaxed/simple;
	bh=vqdI1mH+uv+ca8YwmCbhfpw9H3cReOLDFMBIS2FNmZ4=;
	h=From:To:Cc:Subject:Date:Message-Id; b=WrEc8hfBPHAywOgesxdR1Rgh/cqWMHaoLbuelUplJdAVpKH3EOB2P6lQYTvzS9uRkrcChhQ7VoumRCvJUnGIx1w+EIisT0YWS/ARCklX7mJ9MXftowYmGKQMBRpn6BtkqbLY63k7SDUubLyuVuYUtdsz6iCNJNGbWllu7pgRBTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=nNOuSVTX; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21589aa7913so189225ad.0
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 19:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1733109642; x=1733714442; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TuzgFIU7lhnnYJgWPAsmz9SQkyrksNZjuekvv2lFkOo=;
        b=nNOuSVTX4jASPDWkprDgrlb52RFadfginSHOqg9zw1gT5Ieh1XuLsQ+So/ZHgratbL
         +IQ6pZAgMwFkuaYrS+/CBgt7U7O7IZ+mB6d0F9HecuouUc/TgQ1UVrDRdbmXvQaURFTo
         mEus1NVBt1pZ//gzoKGktdKRsi8aPlVyLLJgeuR0a6CpfK4hvNPSSIv5tuAqbLwU0q8c
         DA3GKSNEqWHhK8IRjJu45srGLU4WaLA3d2DKt+IcwXBDWJziqsXOox2QIcVb4Y1sNP51
         cGtFPy4OK8CGI0efealRmi+csTE5yNclfJbB2yaB6KVa8bb3fCqUlyWa28PyqiwJ7/5n
         RF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733109642; x=1733714442;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TuzgFIU7lhnnYJgWPAsmz9SQkyrksNZjuekvv2lFkOo=;
        b=pvm4U4hrSzKyvA5CRcZyv/zbjuJzub+cVVAdTdXB7rRBOmHO1V0TSls88gjTy7ps/w
         RRl1GJ4yv+GxRXuEqCXGYTrPDRK6fAHAU9/lZfDgo/qi2vBnvMPFjQTmy7fdp/rkaJKu
         bHoiCNjSO0DuYnJZEZpF0eWmtWwcvfjtWqRNSgm2goUF96j32ndFdqroMwJiS9MHtoq7
         E6UazSzl9CjIo9IL99H+DyXXztu5wfBAB9nBxRPnMzWqzn/vSOqDG/19ogPoudt01Hji
         oqnwIBIVwp8A19sSAf880WmPQgNm/lqYfL2crsAfY4njKKztXoan3SCDi1jE3lQ1i0cL
         PZrg==
X-Gm-Message-State: AOJu0YxwBFDTpnYWgkbSBR6fkIJSpwojbLBnImlyb/ULucWsMJUXYP4Z
	0SqUGopzu+UqZbdkmujHAQzQGpRwpS0+P2InpifvVXFOxltZ9Sf6lng8W2W9Zwc=
X-Gm-Gg: ASbGncteMdJeoJiLK1Tb5/4sCw2A8v9jLtMTqzYesdxYoJ/cgpg6e7bQRANsbtucaX8
	KlwpyoY1N47dcrqvpYVybuJyn3pbyF8TNSnQi2EQY0pDBlPiDwGgfVy0aqiy6y5huWVqs/EKaFZ
	TU7Qocd5AcwGOkenw60Dl8ZxNHo8wqH91hzJnux1Kk125P0uyYMYEUwkDYbVSkein0VMvg4UVZM
	9uehh980PFSymHPJdIMEgnPijpATptBt7fxyhFTbM7/Uwpc8eWGIjft7iN5a1FnHLC73yPNy1mM
	IdVupGPTKnXuSw==
X-Google-Smtp-Source: AGHT+IHb5nlT9jqYI8Y70WEvhybXjTpRvcrYnffGEZaJUPmJv4bqJ8BX7U0rAdMIvmdlW2JubFsgoA==
X-Received: by 2002:a17:902:d4c7:b0:215:4e57:178d with SMTP id d9443c01a7336-2154e5719e5mr55828885ad.11.1733109641988;
        Sun, 01 Dec 2024 19:20:41 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21521986004sm66305725ad.184.2024.12.01.19.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 19:20:41 -0800 (PST)
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
Subject: [PATCH v4 0/4] arm64: dts: mediatek: Add MT8186 Chinchou
Date: Mon,  2 Dec 2024 11:20:31 +0800
Message-Id: <20241202032035.29045-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This is v4 of the MT8186 Chromebook device tree series to support
MT8186 chinchou platform. It is based on the "corsola" design.
It includes chinchou and chinchou360, including LTE, stylus,
touchscreen combinations.

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
  arm64: dts: mediatek: Add exton node for DP bridge
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


