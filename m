Return-Path: <devicetree+bounces-113480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCA59A5CF4
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:28:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D14A1C217EF
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 07:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BA71D1F6F;
	Mon, 21 Oct 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="jikVwEz3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC631D1519
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 07:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729495643; cv=none; b=sl/yN+bcddg7zO0YBqKJ3GdWILfc4wmtFe36acxGpY9t3kQzD5WKWu8efIY4xLVRRa9XPYLhK3OA2PTUWXFJdJFe0qQbHX7zQGz6fM/GHjO8sL8eW8L5nEducIPvF/ddrjb82RZvF/CmUdFB13ecAxLg7hyYWOayN4cLJkVTvlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729495643; c=relaxed/simple;
	bh=7d387XbGv+JuPxcJAyDfP2Ybl78d5z+BX2IzPCKXLUg=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Ja2Qt/X54CP9UWGV8bvCZfS6xMOxQBHvQcDNUW3Vqh43DtItGA62vwiP2P6qUiaTL0by6CXj7oYP1ajr5zXw507CaVbs9UKhkwN0FJxYlEjPygKA0iXglMOR5QZIA6dlRn5pqpL2sXcS9rRUj4G/KR2K/uU9XyOAdxHrKAf6bKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=jikVwEz3; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2e2d1b7bd57so648310a91.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 00:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1729495638; x=1730100438; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RuLV+gJE30OXtNyG+M95n2ScV6KSGMzKjcPSGYqH7I=;
        b=jikVwEz3GCL4HBohozgPcWVb3oLbbL54/TPfkIQCPkicJK6VYXZhFmWFWxYuy+xekB
         fdAJ0mKaCrup20OxKLWDRX2tuvTnkMGi2MtIZM3Dq94ws5xpOnGoEh1zqTZd7NCorYTt
         iMc+lvfkTCl7Kqs9uN/teLJY25ey7ElP1vhe34BFSgX+kJAtSkgJjP9cn9opYf8cmvIA
         7p8UTW7mj0X71Ef+tMb9T2P5DDuEabHtxrW7gE54tTWB/akuZ/cDdWof9f4o+UoMndqC
         F6Kadsik8TsKq04dp57UCK2AEsWUmRNvAnImdBaaa0I65G/KfRSMMb0DvfOE6UYo9byE
         rgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729495638; x=1730100438;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RuLV+gJE30OXtNyG+M95n2ScV6KSGMzKjcPSGYqH7I=;
        b=ZbSomkjRDK6DTHAf9nDdYUs8Y1m2jfhcWome/oLvZop/N8mu9LIzU7BOizSwIxQVtK
         MObSuzhg3QAijwManq29QaoCJ7v0o8rekdTY18iaK/hlQ/oO12eVRjAbGFQKeCY4f56k
         yBCPoWMWrx8jYhjH/KN8Ys1FrokNY8TkacVDQMA9stnH7fYZKM2Vt4no/EOXRAlPWwjL
         Mk6V4yWw6FRjemn57NciduY+fgsNBG3O+vKwU2E7+CplAf+bBV9OKiL0ehSn1XkJofWP
         Nghyy1bwBF7PYcgXtVNDrBel31Y2OJN+yNkZ/JklSzWPTLGgXce6JK4KbLOifORjXaU1
         pVPg==
X-Gm-Message-State: AOJu0Yy88o+eJRkqrWEGrgJIS3X+3zG+HO8NHg7pWTI33o2MxouEIyzG
	iQMBPrQuuViPx8wNOCA9RUntpiH1lkVe1XVz6pgY4rUlsOxDPlnFYHpPseKDjwM=
X-Google-Smtp-Source: AGHT+IFpx0iTKEAwT3WlvkO5e1PC1FRTIM+OU/OYf9CVrGfExwAKk4Zt8qzMrBocxp4f1FZgpGEoUQ==
X-Received: by 2002:a17:902:da8f:b0:20c:9285:e951 with SMTP id d9443c01a7336-20e5a71b46dmr62711105ad.3.1729495637905;
        Mon, 21 Oct 2024 00:27:17 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7f0db2desm19749595ad.203.2024.10.21.00.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 00:27:17 -0700 (PDT)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v3 RESEND 0/4] arm64: dts: mediatek: Add MT8186 Chinchou
Date: Mon, 21 Oct 2024 15:26:22 +0800
Message-Id: <20241021072626.15102-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This is v3 of the MT8186 Chromebook device tree series to support
MT8186 chinchou platform. It is based on the "corsola" design.
It includes chinchou and chinchou360, including LTE, stylus,
touchscreen combinations.

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


