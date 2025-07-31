Return-Path: <devicetree+bounces-201061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCBEB172BD
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 16:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEBE85875B0
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 14:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 136702D3ED0;
	Thu, 31 Jul 2025 14:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f7ObG5WP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373CF2D3730
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 14:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970526; cv=none; b=mNzNkcB2uUiF8FKMhAuwL9m7VgUkrxoOh/tWOq6ajAACahrBjrLz+rUowrzW5mWJgidqfxJWMD3Lb2blXrRcnRxR13yQyzQeJ2W/nmSmZ7fLz8aEUnEFO6mFb0BWM2qGPd8iBpRjmwhrpRt25zJoBAVak7ECQlBWvwUXGMSKNBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970526; c=relaxed/simple;
	bh=yQHSXj9X+9M9Y9py8Z7kopx308qQsUk3NFruZ6iZnh4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OKkYyApBee5AaQO9fP+0u2DurI+xBFXQRJBKc5OBIO/75JGK1cCt+D3Pqtumwu48KReNTnGLW9IZL3gKq1lM6OG6jrM7XC0T4fIzFslmAsC24lypAm9u0oe3Vsv7riwAk+oqs2XjSS4Rx2VQ24nHItM1dLxt/awWR91xMbPsXbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f7ObG5WP; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3b78294a233so357284f8f.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753970522; x=1754575322; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BLgS03msUmp+vuGwcZngE+sO5Zm7YcN21p+x25WXrLM=;
        b=f7ObG5WPZJNKroot9Ugjyl4i7N4J+WoqBg7XnfSawN+UxAQf+Q1KKa8cdPPEbztozS
         CNoa1L3kAVhDstMD/Nh8riFV/mr6XVUrwVExkDwITktVAhY927aUM01wTF8mDyCQk8NE
         en3g68xBcv3lrISXBiNenAm9VReJ0wVk4Ot0OrBZkK3v3013cM+23IVA3SSd7LknSGFM
         +5A6hVGO4FuDxczY5hsGE7upU6R6BAYSDTK5THQDP3FvBd9mgpQGhvitYJ0fA5ocUzAt
         10jOnSMW46aeBNDS71iDxEsG0hNhJjfpgYVukbte5a0Ye5HjLHbqSf69GtS7W6MQld//
         URyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753970522; x=1754575322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BLgS03msUmp+vuGwcZngE+sO5Zm7YcN21p+x25WXrLM=;
        b=UrJfl//J7Axr7vrjL4uY+VZoluCpVj4nTMsIr3RyhQwoim0tZL8Dd+4c3nEdpNJrqG
         KKYaNVMn2Nb8Z7VJQIt77V7pQfFGAhmonzl4NSxxRUEMtEI9/oeEm2zUuFUSFQ3MVvqK
         1alLWsR58AOCJMknlJpGqfXOF4UCxneyME/ym4VeP7ya+GplqjRMFCT4RfmvAwXOv3eH
         2Pko4TAZLKGbejeY4YRkAE+sia2PjeuZoETz9CiruiU5UsP5BWCnJoR+CjxT+sA6gA3l
         lcKqcouYfOdwSvkwSLpb7rpfatkMQaJF/UNPGIlQfjqPIDsr2z0DGwDe/7vqN/gj5RU7
         ZhjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQN6tVE+8tUJsMmbraa12+4rHcRWi035LVc792/N/aA68OaE6aPxd14rosklCt8cqpvQZLzjcFgxlk@vger.kernel.org
X-Gm-Message-State: AOJu0YyfOMWngNbJpuRF5Rjzt8qusALzAMXCZOsluXEpB2hmSPC7GEiN
	GS4MpqWS5/J/Edj/KBKc7OrfexCPzW70x0sHAouGWXM9WG3EQ2fhgut6XxzWxQ3gJfA=
X-Gm-Gg: ASbGncvihXpnn4HGMGz83wmzHLR2aQyhTbW6SnhDqi0MeD+Q/YWRMpFDrpiMUTalTGX
	T0moeBhtzttEuLjys/oWN41RcLjRY6zqGPWV4SALN0M7lXHIoIBHaHDPZgxSHiL6w9SxeILuGEo
	mIRT+48R+xgiPk7taXCxBjHQSufAQFJcy76oORFDqN6+y1T0rzIf/Itx0Tn+74Zu5mU07niZjMg
	Frh616w6qe7tqzzrky/sJs9QHR6fNYE5y7SRqgERpfLnaOXbxw+t6tYiRzUJwuklDzB4zuQOX/I
	OasNKQ9uyfqJlPRhx3NCZFHt1S7yR5suDAHq0Ba5+CxZHHkZ//QCmGo8U6tySq6oVw50lQQeFI8
	m+Y/gRkRyurCyNMCS0zeyzYwY5t/jh3p2sKepaN2hJJAWXCD6
X-Google-Smtp-Source: AGHT+IHKeZczvelpwGjx/EOADUEZKpoKSKEfhOoz3VFDbeZbEjT91pFxldnpybLu9UgLDOG6DAcA7w==
X-Received: by 2002:a05:6000:401f:b0:3b5:e2ca:1c2 with SMTP id ffacd0b85a97d-3b794fe50b7mr6057814f8f.2.1753970522308;
        Thu, 31 Jul 2025 07:02:02 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm28121285e9.28.2025.07.31.07.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 07:02:01 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/8] arm64: dts: s32g2: Add the Software Timer Watchdog (SWT) nodes
Date: Thu, 31 Jul 2025 16:01:38 +0200
Message-ID: <20250731140146.62960-6-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250731140146.62960-1-daniel.lezcano@linaro.org>
References: <20250731140146.62960-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Referred in the documentation as the Software Timer Watchdog (SWT),
the s32g2 has 7 watchdogs. The number of watchdogs is designed to
allow dedicating one watchdog per Cortex-M7/A53 present on the SoC.

Add the SWT nodes in the device tree.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi | 56 ++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 1783edb81350..478899d4dd06 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -317,6 +317,38 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		swt0: watchdog@40100000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40100000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt1: watchdog@40104000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40104000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt2: watchdog@40108000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40108000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt3: watchdog@4010c000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x4010c000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
 		stm0: timer@4011c000 {
 			compatible = "nxp,s32g2-stm";
 			reg = <0x4011c000 0x3000>;
@@ -445,6 +477,30 @@ i2c2: i2c@401ec000 {
 			status = "disabled";
 		};
 
+		swt4: watchdog@40200000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40200000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt5: watchdog@40204000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40204000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt6: watchdog@40208000 {
+			compatible = "nxp,s32g2-swt";
+			reg = <0x40208000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
 		stm4: timer@4021c000 {
 			compatible = "nxp,s32g2-stm";
 			reg = <0x4021c000 0x3000>;
-- 
2.43.0


