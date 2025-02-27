Return-Path: <devicetree+bounces-152352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CC7A48CFB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD22616D015
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C3D23E325;
	Thu, 27 Feb 2025 23:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X45Vr4oa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A331AA1E4
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740700624; cv=none; b=s264pBitYqG8jS/Hc70+lPVSNS81iEZTyqU3K1ODlrO5z15EvGIcYnAQRZ/yaWwZti0ve3BsJNhVyAjXca4WyHp/S6k8FGoAaB+5G7qWJTzDuZ2Xq0NRFGBAmzFi2QCzkx1K3sZCIU+UOECSCuSxs/7pSNqkmN/nZ3kwN6/dVnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740700624; c=relaxed/simple;
	bh=DgZ4sXDQ5T0W4GfMMaLCo+pcw+0vmTsdH94ztOfnCNw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WOm4ICbhFeMhXWefgJU67i+imrImtf/khxP28PM/qLcLFw+7WgCbsKQEH0ZXu1TErnoO32EsR+/spTOqbCPfliYFbWG/mYmSd3TomZOQtj96uY+OgyGwwpIw6Kf/dt7D1C0eGaasmrHpearxqZGpbR66r48lgsjVIDmoI3I+2fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X45Vr4oa; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2bcceee7b41so445894fac.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740700621; x=1741305421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5f7cp01etSGqQcJpVMZaoL9eSKNoSeKF/3ov9ybZvxo=;
        b=X45Vr4oat8jh9HH9B0sZeKl35VNWKETtSpbIRzYjhZNsorMQcyV53BgILr1ID8y0F2
         vwj6ffWvNn/k2P94COeRPT0Mg34HfROfBX/AL37LQeYtgiZy116B3c5V/U4uIeyCxKGX
         Ts0VK9si/+IiElPuFfO+kLjdr6mZ7L6IjX7kp+V13b6dH2TAX7QlerL0TMdgLz7eV3NI
         e3b+XEp+uJLzUU5qzn24g11MwHaC/mtQXbOGO1/918SHn+Zj8RzldcrtUQX7e+HkWCPo
         ND59eY68aAq1wuyn9rFBaeXpmgPl+RFPWfsizqVaEGpS5Kx3cZyyZP0EzDtNnY2g392s
         b0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740700621; x=1741305421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5f7cp01etSGqQcJpVMZaoL9eSKNoSeKF/3ov9ybZvxo=;
        b=VOr/j/RGZz5eP3Jqd+U+cr8Gk6WhUPAR8VNM3zijJmVQBXAhO/ZmSJ1SzZl1X2IFzz
         bDSuRMesyrgN0q9cOahCekLhrMw70QaAuoaU6+JRHUvBh06F7JJGvZjfIfOeRG8ABYsJ
         yHTLvUBupDSW/+O6sigZRFf7GXCPMUAH8UvyYoxyrzRZEkV705E8c59yeVWtb4q0XT0u
         C4hpGbaFgeZvmcr6ZBRfPrElta1l1URd80d8pLAK+59y36OpvK4HAJ6OUlUF2dSpHj3J
         UBhvipppTdKKeiEdmf3SINy0z4YVDaVPYbLrnf1yPaSry51jkYok/CWoZnLCLgC6MMds
         rGIg==
X-Forwarded-Encrypted: i=1; AJvYcCV/rjvoAFJlMpTk9kyK7V7bTQ4shD2VhoPmXeH7mN4tgtKCQs+vUPcLXKf4VAUMBeDAOJsDN6PpoJkN@vger.kernel.org
X-Gm-Message-State: AOJu0YyKHKVNwLCcx8RIrX7FCtE4q0UhEDzdjRW2HVHiTdNw9chw3k5b
	nQPb8NJ9ZB4fDEVjVIzU44uiysfmw4l1ucDP/Xerd1y5gqyxY2ZC4rPE26zd
X-Gm-Gg: ASbGncthY2lg8DK+CHXyEEKhRO6yDCHHIPTNrt8zx4NCjbFGrEoerNMjQoPuS5+VPqb
	jrXARQvacaXBWV/xb9rMiiOFJXZKuN0rNAmgoOI3WzMvWwt3vPpqhoZQOHO+jLtNUfTpaAQ9ht9
	0f2yKJ0sc7G2OOPRY0zgoBbuSKZQO+0EV1XS54fg+WqTJpC6Sw5fI8wQVMGV9dcVzszyCI1D4lF
	P7Izr1K0kbO87xXnPV0lUKDSkL6p0g1uTDr0z9Ywj5sffx8kCWZlzvZ+RFWTQFHNrw32DeBL5EA
	d5F9hL9Kmwcel5ya6tOVOjCIWb814MqoO2c=
X-Google-Smtp-Source: AGHT+IHeUEKjz+4sGoCB5gVNYNI3uQzQx3hNsvSywy0xjlxhu59fctjx6SgN7YI3BUYwIqr3Z5ffAA==
X-Received: by 2002:a05:6871:5314:b0:29e:4c37:b471 with SMTP id 586e51a60fabf-2c17873227cmr783286fac.30.1740700621592;
        Thu, 27 Feb 2025 15:57:01 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:87c8:8ae4:f338:6188])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd7694fsm443893a34.50.2025.02.27.15.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 15:57:01 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Florian Klink <flokli@flokli.de>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Ondrej Jirman <megi@xff.cz>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: Enable HDMI0 audio output for Orange Pi 5/5B
Date: Thu, 27 Feb 2025 17:56:20 -0600
Message-ID: <20250227235623.1624-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250227235623.1624-1-honyuenkwun@gmail.com>
References: <20250227235623.1624-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

HDMI audio is available on the Orange Pi 5 HDMI0 TX port.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index 9e16960b8705..3fef11f79788 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -197,6 +197,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -355,6 +359,10 @@ &i2s1m0_sdi1
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.48.1


