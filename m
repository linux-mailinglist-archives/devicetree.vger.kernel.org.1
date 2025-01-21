Return-Path: <devicetree+bounces-140041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0FFA17E1E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 13:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F70E7A1104
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10231F2398;
	Tue, 21 Jan 2025 12:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="XpLvY1dk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DA61F237A
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 12:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737464181; cv=none; b=RXZl0oTaXPN+/UgnQc7bJgLfetpY+/Ka+DhQCudgZppQ5O0yWLFcGKZFM4gAG0GKxJjoSlWuGvaLeqD7A0CcZedSWN4lYTgg0G+JBPkm86XsEGmYSuGdrUjnYMgGT2oxRbZLyhM4QgsifqMDJrcOUkiOe8nKUoewTTgNWBhmo9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737464181; c=relaxed/simple;
	bh=zkCwi5FnK5wPCkeA+FruP2G2sZBycMp67B53czYr/6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EpvczdEH/5yN7ZdLgtIl+h3E8wGsvO3cFC6dvFzwHG3XAMwUF0YixeyLsmUmA/i2bl8lHkVbl6rH/Uj7rYQx5jJS9ATELPTVdKozNgjkB3r1BxIac7LwL0Z/YU5Rttnr47bh3+NKKIZsKqnrrix0T7I5OVM3POtrP7yboeURe10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=XpLvY1dk; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d0d32cd31aso8399612a12.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 04:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1737464178; x=1738068978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RiSS1nYpUCNiSeYMCfYpcAR25/sptrb9q7TkmxVtubc=;
        b=XpLvY1dk2L5JB0bcHjksR5QgHP1TWAL0Rpg1CZsLqGmpoK1nNbDrgOwPyuqSShn8MO
         GPhHAExIYl9VYszhRja4X0PXJLXaN+kWJByCxiYbJhZDJvKmsaQ2z1Vh+cL1x5v/+Xrk
         9ei5ZaTRZOa72EYGzx+c4Q1h8xwbbN/Wpu5pQJAnDNM2kPVd9Y5fAl4uLIUlncPgq8+W
         Wl8lzBnn72LCtFkw8MdVXGSILgayIFC/XfyaDtw/7+8EwNPAtwkjlHTfP+ydHzMAIfz8
         s5DHGsK2yI1Zmtkt0ho6P7ViRvmwazjJwehimtRINSe0JiLozsiWdZ5xW0MwyD2zQWXO
         4Fug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737464178; x=1738068978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RiSS1nYpUCNiSeYMCfYpcAR25/sptrb9q7TkmxVtubc=;
        b=bXFHkc2wcuUL3CL4Ms+BazuyytuLbRKZUJ/uQRRZ9itI7blaKLU4nFLpf/UG8y33yc
         5XdArIVZiZSoaGq0I7B28ByxZxFFKLXyh4udD3mZotAI1L9JTxb7llHNUVCAGY0zkux7
         qUAqH3q4YVXCMHUNrB0fXVm6fRd+LSCG5mTBDQGBSqXDmHuejNcsFwKJgUSyjFRMEMm0
         xApCUDsbXQke44ZGFOKK/OJs7q7jMZjJPUBO09jUMH//UszZn6g065I93va1Mda50TmT
         r+KSoB+M9gJO9NEC0hOyKe0y6NxAC0pmoCFlcEU2caILIKLHtXXb32EO1fpSGDMAoYj+
         pfKg==
X-Forwarded-Encrypted: i=1; AJvYcCUMt+lTpxe1BevZjhAOKmGERc9bkLBiK2lmxfJkgEcLa00LlIFTl0c9C4+ST6oWkBlZW8sDapXUfFWJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2kBk6KEkyP92irDeXaoyHrIQVTte5E5CgqddeHNnBQut8SNQM
	N86+mBr0doDcM1q3r7n3BUokQ70ONHSed2kLrir6I1p+SKAAVACXhogscLMecr8=
X-Gm-Gg: ASbGncun2+E/8wmP4Yfi6CfIGHC5NComUTNQ3oSTs48W1G/lzkgt9xgmTSV7B2QTuL9
	pMT2caVKcGv5iQXVyAWdMmYIYMBUONyc0d67tnA+nvIKMKq+gSG9eUOFtcqG3HaqOSrkk5N1k9b
	SOAUpfkXtKEStxI+6TzWueoVnkzLnE0/oBzRzBEWeS3FR51Hw459HJXxofZT6ciREK9TsK27jgL
	em1aTEjNspQIAsxQoH5FOB+Tp5ExQsfsRslgMfTo4dVqlhKHAg4I2+DV1xbJwFC7lZhy/jLqUOq
	kl/C4CHJg/kh6Ty4MxEPelnwkg==
X-Google-Smtp-Source: AGHT+IGNUrQ1owGiuycreL+ecfL6xNDC4NN9qxkE8FnFn4B+VO++Fb989ERQC0artIbK2G1crar2zw==
X-Received: by 2002:a50:9357:0:b0:5db:e91a:6baf with SMTP id 4fb4d7f45d1cf-5dbe91a6ce3mr1051424a12.14.1737464178063;
        Tue, 21 Jan 2025 04:56:18 -0800 (PST)
Received: from lczechowski-Latitude-5440.. ([78.9.4.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384ce0529sm740943866b.43.2025.01.21.04.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:56:17 -0800 (PST)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
To: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@cherry.de,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
	stable@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Move uart5 pin configuration to SoM dtsi
Date: Tue, 21 Jan 2025 13:56:03 +0100
Message-ID: <20250121125604.3115235-2-lukasz.czechowski@thaumatec.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250121125604.3115235-1-lukasz.czechowski@thaumatec.com>
References: <20250121125604.3115235-1-lukasz.czechowski@thaumatec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the PX30-uQ7 (Ringneck) SoM, the hardware CTS and RTS pins for
uart5 cannot be used for the UART CTS/RTS, because they are already
allocated for different purposes. CTS pin is routed to SUS_S3#
signal, while RTS pin is used internally and is not available on
Q7 connector. Move definition of the pinctrl-0 property from
px30-ringneck-haikou.dts to px30-ringneck.dtsi.

This commit is a dependency to next commit in the patch series,
that disables DMA for uart5.

Cc: stable@vger.kernel.org
Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 1 -
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi       | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index e4517f47d519c..eb9470a00e549 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -226,7 +226,6 @@ &uart0 {
 };
 
 &uart5 {
-	pinctrl-0 = <&uart5_xfer>;
 	rts-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index ae050cc6cd050..2c87005c89bd3 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -396,6 +396,10 @@ &u2phy_host {
 	status = "okay";
 };
 
+&uart5 {
+	pinctrl-0 = <&uart5_xfer>;
+};
+
 /* Mule UCAN */
 &usb_host0_ehci {
 	status = "okay";
-- 
2.43.0


