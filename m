Return-Path: <devicetree+bounces-167563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEBFA8AC82
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 02:14:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED0007AB6D7
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890BF4A0F;
	Wed, 16 Apr 2025 00:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="1qyf0xgF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9717E1C36
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744762439; cv=none; b=tR8a+vM36Ekg+52uv4a+XW9uTP3nt8eKQxliaaCreERIrci2aacAOzxO40rX65vCwYLqPkNcnSWDknmba8xGQiA1taSgO5+dmdA9xOK/F0dmyRuAT/b816J6G8nMP18vzlBT3f+5SimI8e+WSZ9Z6j4nF980XtdTaJMndtTkYwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744762439; c=relaxed/simple;
	bh=0fuGOmb+qatmclqZbJkK38ISLNsb9lHUwwxPGIhTLTI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z6eKlesxrdSk8+FqcynavUVQRQY7tDX8i7RZiDEgUpvTdy+ZC9noPY03OZimU5+8NH0Yn0GpjKue6INVEe4MnIEd0qwLG9c2n8RzcFMamrr0StTi+JF/Ml52CE/3RKtZ5ZKOS9nxC6Gcj6Oruw2Uom4SjL3r/rAx6Vu414optgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=1qyf0xgF; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-736a72220edso6324820b3a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 17:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1744762436; x=1745367236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Hrq/5jnsaS2UvAtZ8/+V6NwQKUrA7NpnKCyv2FlWdc=;
        b=1qyf0xgFsR3c8PciAmF9TrQTaVaQkDWr5AX4m11lqVi9imh+t9SmwNrSNH3DlmuuVq
         ODDHBQuKHjsQo7qBvpRqA9M7Zq0zslYg+XMmykgnchPUjJqqYHfTxnxaMIOqIps5k64D
         ogX3YwXXQ8LgpGbH6i/0wJ2jjONeR8RnzGoKxGEwv7s0ITu3tlhe0+YBchfI6ZsAEkuL
         Zq2G6P4oJPt5rE56DxQcSdtiFPAYy/VglTniPGw3MUHl7t8s1J7d0Vk2E0fJ8L9/CIb1
         sYr2yjAKGaHFP7OiLvR/hdYQNhQOvcDexlAfejjLr5U4Wann5LSM3IAbGLbQCqVWUQE2
         /rGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744762436; x=1745367236;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Hrq/5jnsaS2UvAtZ8/+V6NwQKUrA7NpnKCyv2FlWdc=;
        b=HFpbd/pguX70SB2JyCor0jJWmGm3QUTDUfX1TgXALDxccHschoVE+y4rll3Z1Zp7ZT
         quf/gW90k77mpz54QePYRHEQYmhPV9paiOP2HKoh9iUR06cpdXpFrnGknJpcNQlyTRau
         ZPSiHLnP8brrg4HgjMDDUnUOADwnuYrX/E+CshNglXx9+x70RfjQ29ENAttPRk8UdHat
         pc989LlHMwlvHpEfCYPtP04c11fgfSYTAebWwUnLHPSt3FdVnA4JFew80tII8RUanpqH
         aaHwguL+SEG+D4MVwDFncIgVAOPpmvgoQ85zcc/4Ux2iM1yf5xNteehiUIXca47lyGHW
         LBHw==
X-Forwarded-Encrypted: i=1; AJvYcCVYxtyTOjisYsEZq05+2r4yCD8XCOPKHxybr96OtjaXMy8ZsPzkMeAjzfySQuPtqZCsRYWu9nRi6e8c@vger.kernel.org
X-Gm-Message-State: AOJu0YwhzsY/qXo7kPXWXPi6feNBj5Rzy23tk2xEqGff9MURoOf7L4Fj
	PpS01T00/t2dvm+YwH0+IaYE39dW5GJGHI2HY+o1Je8+Pa2PUUjK01jScrlPeUI=
X-Gm-Gg: ASbGncsXBQpq3TlNwxZg23tanm/sEeGNqXeln4Nqd4tQ3pRHUIUuBsCFvh6xlLTyFHQ
	u4Gl5Trf5VCQV2Vse+q6pARVgkaEnwiittzuCbzTXvT9jTMJGcvEXn/cej4OXctFbGKlXhSraQw
	BxrXbQ/F8vYV54zGmPXym/Qy3x75D582G/DlNQKj2499JXV1qhbQqfr+O9ne1DXpT5m679sOq2X
	OKEgvEwd9MrRpwq0zcxnp3NyKKtc8hPuYtkfxE47i94WLrr4yhVTXhg6Jw/Awmc6D1ND1Px6+hI
	iCD6+3yCCCSctA024UXSaDZHv7k23TTN6wV5IYlwVLp/NAE1dYS49CK5gozNL7itF6MRHWmnpWd
	yPdGRDa8M4C6vGl0l8fxsRrOXHT3Piv+YJFfw5A==
X-Google-Smtp-Source: AGHT+IFuikzPoPqd7B8f1cnRj42JNiLHhSl7BeBI58QZ7SkDEfmP4xHkdJrszDfHnU7WZaegvbF/OA==
X-Received: by 2002:a05:6a00:ad0:b0:730:99cb:7c2f with SMTP id d2e1a72fcca58-73c1f922615mr1633304b3a.6.1744762435765;
        Tue, 15 Apr 2025 17:13:55 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:ef0:9d76:c8a5:f522])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd22f1040sm9413386b3a.98.2025.04.15.17.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 17:13:55 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH] arm64: dts: nuvoton: Add EDAC controller
Date: Tue, 15 Apr 2025 17:13:49 -0700
Message-ID: <20250416001350.2066008-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have the driver support but need a common node for all the 8xx
platforms that contain this device.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
 arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index 4da62308b274..ccebcb11c05e 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -56,6 +56,13 @@ clk: rstc: reset-controller@f0801000 {
 			#clock-cells = <1>;
 		};
 
+		mc: memory-controller@f0824000 {
+			compatible = "nuvoton,npcm845-memory-controller";
+			reg = <0x0 0xf0824000 0x0 0x2000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		apb {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.49.0.604.gff1f9ca942-goog


