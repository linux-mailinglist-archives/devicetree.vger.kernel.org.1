Return-Path: <devicetree+bounces-219471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA9FB8BD09
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E8B11C0555D
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 01:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91BDC216E32;
	Sat, 20 Sep 2025 01:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R0lqCVxt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE2A214A97
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 01:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758332836; cv=none; b=f6U2XS+14LmZcHKrlg+CFHATQf05zmqL2DT15yYlJiqw3dvOkuS7yDIwR2e5f2b8gX7F+V7yy4EX6PKByyMg3eoUqcnu0gdeiCgcFrTRWoLD+MPe4/7R3Qb8b2MClOAQ66K5NS5rXLPM7kgoyRBvHuGwHp/8lO2eN7/6DsbV/jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758332836; c=relaxed/simple;
	bh=J3OQ/gbZXClh+gnMC9yVomxVT5i16d4sRMT1zK1pgf4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q8UBjKD+BJC4JIhjvNSS8XGlhx5UefitgvveBMBM13lG1VLbZptmtJ0TTLpt++KdfvnGiA4uIjr6wF+i2eTR8grIWMdwVf4FTQdefbAKmOpOje1fB9s7aadueJ7d3Dom4EW47Vs8U/WQR5yFSZJUsCEp2v7vFzqbOgmB8Y54VcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R0lqCVxt; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-267facf9b58so20266665ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758332833; x=1758937633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qeUIHWsKLh6gjLn9Z3+FbhnYjwlNLiSz3aZCwDtFUKY=;
        b=R0lqCVxtloWyypEeavKNztwcl+prrAy2NFsIkEV4oWTQtDjJ9y4pCid+szugR6TNjw
         cwu2y90eVqjOkhZqeE0tA5Eojnn1UfsgPNKQ/cd1Vwe5MOQtjBYspD+1BJ07WjXXmPCH
         rRHRTwnjrucG3GbbOOwkA6toVs1DKT4K2B5e7iVg3j9GbeHGdtczTljfdpXwjJcLqocc
         0KEgcSMNyBvljPSPTYIA/ZpCuv7puNxYMKI1kgu/Cr9hm0pdyKJ5g6t6/NZ2GDHh5Xne
         bQX1VbAvo86lBikv//knGSiUsxAiDILFdZiV+amLUSOeUaYLU6vLScLJyVw67Y+OSaAy
         RJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758332833; x=1758937633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qeUIHWsKLh6gjLn9Z3+FbhnYjwlNLiSz3aZCwDtFUKY=;
        b=eTFmKWGwK464tEhtVwk0NR9gkl+kC2A/RHWYbaww5yREus0jwfY1aJskOrZ5lT6VUs
         teoHkAuoxl3Vwl9Yayq1RFqOFZ3IsWaJ5nDTW9JooJLLxeyDp4Kv62CEgzS95BrHRdLU
         YOccwnl23HCqJMTWxpU8AMPpqpJp0ey8hDFqNboWw0EJy3E2K4+Y018Meb9KH+QUf7yR
         Q8meMLyIdjax5GV/TuaURTbHebBqf2MYAXDEZWPfxvb7Wnz92v1aoSmSR4N0jqoMiOvi
         x1Puy6zuN4frAsbAXrUKMNdoLMCOJ3sFztbsROvZDiUUKMUd11/ISNY5l1IVwBYhdeIb
         SOlQ==
X-Gm-Message-State: AOJu0YzVJ7/4MwDiu8fHA56ZiXPzGCKId5/ze3LZg6ADwUaQSmzoYEiK
	e63r9NUXluIhD0ql9sYhSfDOhFZTa8t08I5HR1DEoDKEkebkFoTWsw3T
X-Gm-Gg: ASbGnctiAODDpUAyvOjbGSIrz7kq6nXU/XMcRdR01P6g+vtzz315czhtgdIDxbN7rZn
	dUTKUJdhveUPzwQ41754lo+KoqJ17Dyr4Z0Sgw/uUqT7x1gYMirBNGGOZoVphFSutfChxY12fiH
	K3nU8dYFEZsNwumXXR40CMAKBJ+kP42Ayay3i7o5abB+ol2Ndzhyjn1G5vJQ9ajd2EmcuO6QrsJ
	c9tGGkGqjar8/f+1ByJhgfhqq0imafrJ2H6kjZkcBh5pDF8qjukKNsOdkpeKlgQVVka2Taiq421
	+U6F4TrEGpy4qWcsw40SYfadk1sPnIvxCECgbg4OJcQPyaHl/xIgrkL/7PETlcz6jJEKVTc6bMb
	/LoKDrnldkPJ0tzftz16F
X-Google-Smtp-Source: AGHT+IHAb8q347For76gqV7j8lIEycMW9TAsw2JxhvCS3NbiNhH4DBGbKJw3OQ7FwHz61bSv6avlkA==
X-Received: by 2002:a17:902:ef12:b0:248:a4e2:e6d6 with SMTP id d9443c01a7336-269ba5042eemr66295115ad.39.1758332833618;
        Fri, 19 Sep 2025 18:47:13 -0700 (PDT)
Received: from archlinux ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698033c922sm65709455ad.131.2025.09.19.18.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 18:47:13 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: qcom: r0q: enable max77705 PMIC
Date: Sat, 20 Sep 2025 01:46:35 +0000
Message-ID: <20250920014637.38175-4-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250920014637.38175-1-ghatto404@gmail.com>
References: <20250920014637.38175-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Samsung Galaxy S22 uses max77705 as its charger, fuelgauge and haptic
PMIC, enable the fuelgauge and charger for now.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index 7bf56564dfc6..c1b0b21c0ec5 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -14,6 +14,16 @@ / {
 	compatible = "samsung,r0q", "qcom,sm8450";
 	chassis-type = "handset";
 
+	battery: battery {
+		compatible = "simple-battery";
+
+		constant-charge-current-max-microamp = <2150000>;
+		charge-full-design-microamp-hours = <3700000>;
+		over-voltage-threshold-microvolt = <4500000>;
+		voltage-min-design-microvolt = <3400000>;
+		voltage-max-design-microvolt = <4350000>;
+	};
+
 	chosen {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -186,6 +196,26 @@ vreg_l11c_3p0: ldo11 {
 	};
 };
 
+&i2c5 {
+	status = "okay";
+
+	max77705_charger: charger@69 {
+	    compatible = "maxim,max77705-charger";
+	    reg = <0x69>;
+	    monitored-battery = <&battery>;
+	    interrupt-parent = <&tlmm>;
+	    interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	fuel-gauge@36 {
+		reg = <0x36>;
+		compatible = "maxim,max77705-battery";
+		power-supplies = <&max77705_charger>;
+		interrupt-parent = <&tlmm>;
+		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
 &pm8350_gpios {
 	vol_up_n: vol-up-n-state {
 		pins = "gpio6";
@@ -345,3 +375,7 @@ &usb_1_hsphy {
 
 	status = "okay";
 };
+
+&qupv3_id_0 {
+	status = "okay";
+};
-- 
2.51.0


