Return-Path: <devicetree+bounces-134187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1689FCE5B
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 23:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7614318831CF
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 22:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576BD1474B8;
	Thu, 26 Dec 2024 22:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="Ee26+TTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD3D139E;
	Thu, 26 Dec 2024 22:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735250644; cv=none; b=nPRZGIeCkAi/kdk5Bc49PG5FqsxIpYbcilGMjsGwUFGueuka+Ebv0joyLT5gmUyDp52u6TGJRPr4yHT3QFaoLL6Is+sL0lxjyTvsrQxUoZAuV9uhcCaBUJLjE2XaQmTuWL3GWpM4x3FVZfEapDXwtvbU6bc+SKsVGpSCW9B3rDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735250644; c=relaxed/simple;
	bh=815sgZ95ZGs9+g7RAadusCyM9YiXx3GGEW+SHP6sisg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MS8epn2eAP9zHw3g/qgyUGbzlP2GsKX37SUNMQfgctW0dXtq9hZApU4/UcdpYQNch74b0SLFzcHCWFYHoJXrkjkLj9IxUzuopi3y6j8Ld1ybczTxjNwhhu7BIvs30cWZKe91Cs0ljA2XchZDQzL2702Q/L9O7fxI2X+O5hgwRAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Ee26+TTx; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa6c0d1833eso1412493566b.1;
        Thu, 26 Dec 2024 14:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735250641; x=1735855441; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zCq4pgg3ghZQ5gyCQM0kq4IJL3Ban35pSeSFFuGXBL8=;
        b=Ee26+TTxbcO4JDB4kqZ/DaCYN6gZZyusM/4IYkGtjSCQYSpUdPAxN8E5UuwnIgHD5m
         /J2iaopqCEL/sPH3zhnVJHZuqtiw123sybLgaakuVqP2FpvP//qnirOTSLjIORmG67iN
         b0seOD9McXi/hynCbnCJBZKdHWQSBzwx2ZCw5ynoL48oOS/4/w+IS/i6Kag1GpdHHLLb
         qPZy2ddyNQY70kvJK6CU7Bv+GaKrvfX0dWqsBy9tG0hDjLeOXPVUADxZmw3qz6Khdu/K
         /OTxZhVZrs6faPL5SY3ikZvzN46UVd33Y6niGkWeeW9Ycngf0k8PZbP5KIkxuqZec4nu
         5+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735250641; x=1735855441;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zCq4pgg3ghZQ5gyCQM0kq4IJL3Ban35pSeSFFuGXBL8=;
        b=tyY6mXh9Ev4gTm3csxnk1B4DqZyNedyowDD46TxN/+sS12dtAUVvmsw8+exCnAHNfO
         ee49zfNeAJQH/XZPukpKG6x/tHSPkJO5niyGA9eWB7KHfbI+YhY0Dl4BBjhCS/upMUea
         k57VGN1pQwR0tG/4hQ6fX/OaXkPmyhCg8DHm+QYtBUTyPlSYpBv/EkUJaag5E3iqOFMo
         pwwn7MSfRGaT1WdzfeeJTAaC8JTufwy8r5zk+YdrsU+g8ripQw/G4Nbhyk2nDm6+dr7h
         XWUQe9W760ITekWxZ2yn9/Vb+436Xzll93Z9gs3qhEGGFz8rYlEvKVwE3q74Ax5l6QDC
         S49Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6S83OV4ZRyCnX/lSELGNXOoCbmDcYa+4OmQeFRTRHU6daI6qaDfjl28ef7Hajkx8FJkBLQMu3yIAc@vger.kernel.org, AJvYcCWxc8Z1weHa2Ekt+6ARAgU07eRB+ZBSm+iOJo0qro7MaqwuL3XZ0yYGUfVwYBiUn++P16A6SSqX/47lCSDU@vger.kernel.org
X-Gm-Message-State: AOJu0YxujdgA4XbRFvtNvwapSaSOEMkZl0hHdth4qOV09l8k7YLpZkVB
	D3TvRjIvCECGVO3l7c7otYPpDe/scO5mbcKCv9yM5NcQ/EBYXkln15xc9Q==
X-Gm-Gg: ASbGncsB0yiKRDz5uJCMgen47zo0rzQeOeOo34EuR6Mk7tZ4jiw/UleMypIMaG3VQIZ
	NPGxn11EaQHI3MoeM3hsSvwwZm7RN1BEnqXofgNvRofh+TaB7eyXgbMIctWhjytk9q/x52VE6Bm
	hTUmg7634tlHbz6VoKiJ9my6mR7CDE5csAQQIrpGzEi35i3lLDBBaB6atC9mP0Cs+kqfUjbfIsk
	bWw73GvicVqfN98oCzF3gJC5H7McjxA1V+97tRe/ZMQ06gRhXlWd6UeWhPXOaw2Yr7/t2xJftaO
	EoifB88ysPKBdGd7EUwWuiUyHbsM9LWi7e5Pjcl59RPPwNFEWOZDYx6tBQmmjj+PENQ9URoCPur
	il4VwpKo=
X-Google-Smtp-Source: AGHT+IGuGLsLz0eg3XnX61A2VWimbSnHZ3HdwaSlpZ2eb6Tkhezt3kD08zYUbIsbh9VNY2rsmYs2HQ==
X-Received: by 2002:a17:907:d9f:b0:aac:619:7ed8 with SMTP id a640c23a62f3a-aac28748b30mr2394212066b.7.1735250640729;
        Thu, 26 Dec 2024 14:04:00 -0800 (PST)
Received: from localhost.localdomain (dynamic-2a02-3100-9da0-ce00-0000-0000-0000-0e63.310.pool.telefonica.de. [2a02:3100:9da0:ce00::e63])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-aac0e82ede9sm1011815266b.2.2024.12.26.14.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 14:03:59 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH] ARM: dts: amlogic: meson: remove size and address cells from USB nodes
Date: Thu, 26 Dec 2024 23:03:52 +0100
Message-ID: <20241226220352.965505-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The only board that actually requires these properties is
meson8b-odroidc1.dts but that already sets it on it's own. Drop these
properties from meson.dtsi because otherwise they can cause dtc
warnings:
  /soc/usb@c9040000: unnecessary #address-cells/#size-cells without
  "ranges", "dma-ranges" or child "reg" property

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/amlogic/meson.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson.dtsi b/arch/arm/boot/dts/amlogic/meson.dtsi
index 8cb0fc78b2af..28ec2c821cdc 100644
--- a/arch/arm/boot/dts/amlogic/meson.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson.dtsi
@@ -255,8 +255,6 @@ rtc: rtc@740 {
 
 		usb0: usb@c9040000 {
 			compatible = "snps,dwc2";
-			#address-cells = <1>;
-			#size-cells = <0>;
 			reg = <0xc9040000 0x40000>;
 			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
 			phys = <&usb0_phy>;
@@ -270,8 +268,6 @@ usb0: usb@c9040000 {
 
 		usb1: usb@c90c0000 {
 			compatible = "snps,dwc2";
-			#address-cells = <1>;
-			#size-cells = <0>;
 			reg = <0xc90c0000 0x40000>;
 			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 			phys = <&usb1_phy>;
-- 
2.47.1


