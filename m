Return-Path: <devicetree+bounces-34968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F8383BE00
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C9CE28C826
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934BE1CD16;
	Thu, 25 Jan 2024 09:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UozhGrAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153C51CD10
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706176381; cv=none; b=BupbROqQ1kpd3d9934e/TXML0RFsZ57t0zV24UgOYX0A7dAA47AcENu9tgIvBcB57gAEEFKzCfAoG2dH4WFaCL8Mew2owi1WDy3w21yu1U0pwI+tpU42H2mJ+oP4B//HOD4un6pjOYp4B3zShzsvKHnQNo/f3VAD+kv5PHIW6Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706176381; c=relaxed/simple;
	bh=u25TQi/eCQzC6TkwHDavOWDYLYRf4oNMi+35yG2C16I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hHolOIESl6QeGWTuIGZyNm6NOUi4TczqzGZ2sAo2AZbvy6xOkzKfx6kqIEmRiCbOn1jfUyBWvoh/OQ5tPeGMXgbueXzi2H/UklDmgygM7zLhLQVEZdpWPLN50q7dIy+Or6iTVUvPW/OytBzmU3dPTUVIYNSr1cVLDHGD1XNYcYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UozhGrAK; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3bda5be862eso4089296b6e.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706176379; x=1706781179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwHQQ3y8mRIC5l7GJR/3O2cr3VUs7tVDE1ZJ0OPgKKc=;
        b=UozhGrAK9gJVtTbSEPb//zh8wAFymQqVEBy7InQ12SzZc5ARf5Eb7M93dmLIhki/EA
         JhDC5fXgqPlWipQJ9aUvmj2pKBSj1Hidi9NzJtMbgPsJkciPTrf6s8Jh3alfhr2NDq3D
         T4tu3plSujc4TxrUEVIqpZsbk81cQGX65wQVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176379; x=1706781179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vwHQQ3y8mRIC5l7GJR/3O2cr3VUs7tVDE1ZJ0OPgKKc=;
        b=AMEGUhYz4MO8YWb4BkkaiKXiNUjQrtWzsHEPgln3PkKrJqBaZy24oiBwIMGFepIX8e
         kXUGBPf2uVelgGgojnLcLc2Jjt6VyNpaWPuUqs7HiGjiurvHyCHl31xvVhJOpdijZwdj
         kWS2cleQEO8BF8XfWhLkVxVqlxKbVYbS9TbpGq3ntIBvDTqCph62tSq7/nnrTHvyNmyz
         8PaulSmS0GOKzTLHsIpzQxTKaO88hlLCaohGnuY/0xsSvNN9DOneniGyVeh3sdpU05n5
         bhO5p5wE9nsY3Qn98jKmGoRVhxa06T8v6Xd5El/1HdWHhWmuyswmbaZS1uamDmTMIOIk
         2+ig==
X-Gm-Message-State: AOJu0YyL/2mDMeiCO2qTmG9+b6XC45H2ZSSjGwaZffhVH1FIA1vPiYD1
	ChMZsmyg60y4UeVSKYw6nAqKP28AuX9hwcCm0jsiTmko/yIMK58WYri26BlB8w==
X-Google-Smtp-Source: AGHT+IF9ouqrxuN/kDRByMxn/PlL63gtfiQf6zEmcMi2K5+Vu4orKTJyiaEsZI9CeowBst0wk6XIzQ==
X-Received: by 2002:a05:6808:1911:b0:3bd:c038:b71a with SMTP id bf17-20020a056808191100b003bdc038b71amr770409oib.25.1706176379179;
        Thu, 25 Jan 2024 01:52:59 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7fb6:ed02:1c59:9f9c])
        by smtp.gmail.com with ESMTPSA id gu15-20020a056a004e4f00b006dd8a4bbbc7sm3228275pfb.101.2024.01.25.01.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 01:52:58 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8183-pico6: Fix bluetooth node
Date: Thu, 25 Jan 2024 17:52:38 +0800
Message-ID: <20240125095240.2308340-3-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125095240.2308340-1-wenst@chromium.org>
References: <20240125095240.2308340-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bluetooth is not a random device connected to the MMC/SD controller. It
is function 2 of the SDIO device.

Fix the address of the bluetooth node. Also fix the node name and drop
the label.

Fixes: 055ef10ccdd4 ("arm64: dts: mt8183: Add jacuzzi pico/pico6 board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
index a2e74b829320..6a7ae616512d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
@@ -82,7 +82,8 @@ pins-clk {
 };
 
 &mmc1 {
-	bt_reset: bt-reset {
+	bluetooth@2 {
+		reg = <2>;
 		compatible = "mediatek,mt7921s-bluetooth";
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_pins_reset>;
-- 
2.43.0.429.g432eaa2c6b-goog


