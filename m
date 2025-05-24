Return-Path: <devicetree+bounces-180155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DFDAC2D6A
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A195D4E043C
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 05:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61AF41C861E;
	Sat, 24 May 2025 05:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f85i/E8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5791B413D
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 05:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748064103; cv=none; b=ZMsQfgUPWzXzp81VGpex35BCyUIFXxtZRSFwwc37TYva+C925MSQyeBRF5s0AZ6Uj893iaRDKX6JcClymoslUODolhj0IrzAHclERdXnIEujR02/IndGOgSLlKlEYdaTo2RexhM/hdZn2gXE8TfTfp+RNfmr7FfqwsB4avQaxVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748064103; c=relaxed/simple;
	bh=+jwqBuIwFMBeNotpPI6tkIuGBlP83Ihx29EXiedTQeE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LyxMGBmj9n7TEKajGdvyUvMLq2BK1IUyX3eSYeH2f2wpwvzgevVeutmu4oboorvWzO+F2nnXpqK64s3B2PrFbrB+2kVvt6X+3rwNd8GiymaSQjNchYl2apcDBfS+Zu8g+gwRRld1+mWYZH/YZ4WeZIMOD3kL6jsmgifg5TgNNT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f85i/E8r; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-acacb8743a7so94665366b.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 22:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748064099; x=1748668899; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Twazfz0joDHDf3E0VUXRkggat1KdGbQWxfqNgUu5Y8=;
        b=f85i/E8ru0B3StnOmk25oZBBK2xMpuL+AuQtKizcNTRlFtNGk1woykQVEhJcfdrHFg
         UKGKn8O83EdCypfKynAbFWjsj4yuDIDQtNBF6QDrlWUCFq6R1ZpoWoK8Mk3/ZH2DFNnF
         JJxRWw1zoQIKJ72cizxsH1O5N7rwgP2DNK54p2To2Q2RIsm6PxvMUDrKGk8a0V7shqzI
         J6voFEsUVS8YmLSFLp2FlI69GfvA3eD13LSBVTkU15hP9jIx/bDdOaidx83nE2iNt50D
         U/d5aTgxjCo8szne6fEoy31KZuuc2zz3CKZdqwUng/3pZTNLy1mBzdeKtsxJMN1DwSXK
         eK1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748064099; x=1748668899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Twazfz0joDHDf3E0VUXRkggat1KdGbQWxfqNgUu5Y8=;
        b=S0SRFwIXvftmlhWiRy8O8p3hU36cHTfK7mObLyvYG9oYCJQqbLolThAgGwMyAzcFRO
         C2NnpIKnxWYcdFn+JtTmQCdPE+DoFVNs7ZFs9q3+EVMYqjICZ4wxzz5MKaWkY+ttAFzl
         6preSzyf+WLRtZXaza+lHsMmxve2DfB2kjO3fwVJobMdS+95SYIq50y57cQRsP9mA6s5
         ZwthzbeE0CawkKZoYBer1Z3sBBx+/5UUHBXEGxjySCFbvCnh6sUtExNO27w033VbYowZ
         Yz2gwme2h5Wa+92waCT57tjfs5UjmogWNzkDlGOiuy4DDhSfD9h/RKCzuxdbWlIoApOw
         ytGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrpQD3AQw4eNySIAjiwgH1N8Tx1RFHNEBmw6GIkYu3PxXqlhyO9dF+T1lMmIs7R7GjdpNsI0eivvfT@vger.kernel.org
X-Gm-Message-State: AOJu0YwFZshMgqN+g1Z3iCQFCacTPCIt6YsNG4Y4pA1VQg6AzkV728X1
	f+Iqwum8Q3ucIVlaJrs2JSbzN5bG/EuspkojJZYWZze3PrM6VCoJ9hrT7dNKnSzWzRfUtqw3Bee
	S1fq8fEM=
X-Gm-Gg: ASbGncsd2YcPZ1aU373mdGSRhixO1jXUrvUB13b3Hh1ywaBHh76K2XYIFDp4D2ACk2x
	XEs2Z7oMfhq6UPa1P8V0LdUOHRCwPCB+9vWEhshPlXp7uT/rpRkhGd6Wp1dTZBbokRy6jSBe4jK
	6g+GbkO78FYbn9SMOuQJTVknv30E1+Js26ivMFGgz9yaP/3FooUxX1yCQrCry1fz0kJP3SOnyvm
	/xN18kBLBLBOeeKDwmjxb0tnZGaZNgEtYba6NHwyZewBcIiP2FuM1TjwSdIKvQCmVTr4gqGuCgt
	stJtitHtqBFpqg5u4O+60EpTMQcGtVJovpz6hS0q1xWSdO7QFFFSddx8ldNVSjQKO+R9myvYiu6
	pT4uzmWCrDZ6mwSjD74DHykoEU3/NxmyBp3s=
X-Google-Smtp-Source: AGHT+IHtMWk0Zf+q26yD0iAFN/AxSEy+PDpN0ChAhlrk8dppBVzxLu8QU9Jabhie5nFR/O8+Q1JeMA==
X-Received: by 2002:a17:907:96a0:b0:ad5:67f3:73ea with SMTP id a640c23a62f3a-ad64e84b500mr516495266b.21.1748064099584;
        Fri, 23 May 2025 22:21:39 -0700 (PDT)
Received: from puffmais.c.googlers.com (68.57.204.35.bc.googleusercontent.com. [35.204.57.68])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5572f6402sm1106778066b.178.2025.05.23.22.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 22:21:39 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sat, 24 May 2025 06:21:30 +0100
Subject: [PATCH v2 3/4] arm64: dts: exynos: gs101-pixel-common: add
 nvmem-reboot-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250524-b4-max77759-mfd-dts-v2-3-b479542eb97d@linaro.org>
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add the 'nvmem-reboot-mode' which is used to communicate a requested
boot mode to the boot loader.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
- add dm-verity-device-corrupted
- update commit message slightly
---
 .../boot/dts/exynos/google/gs101-pixel-common.dtsi      | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index de5c8d236b705505c0745827c5c6b67d94ba6227..cd8e1b8a10b111190b984e104f749d04514d0449 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -60,6 +60,21 @@ button-power {
 		};
 	};
 
+	reboot-mode {
+		compatible = "nvmem-reboot-mode";
+		nvmem-cells = <&nvmem_reboot_mode>;
+		nvmem-cell-names = "reboot-mode";
+		mode-bootloader = <0x800000fc>;
+		mode-charge = <0x8000000a>;
+		mode-dm-verity-device-corrupted = <0x80000050>;
+		mode-fastboot = <0x800000fa>;
+		mode-reboot-ab-update = <0x80000052>;
+		mode-recovery = <0x800000ff>;
+		mode-rescue = <0x800000f9>;
+		mode-shutdown-thermal = <0x80000051>;
+		mode-shutdown-thermal-battery = <0x80000051>;
+	};
+
 	/* TODO: Remove this once PMIC is implemented  */
 	reg_placeholder: regulator-0 {
 		compatible = "regulator-fixed";
@@ -224,7 +239,7 @@ nvmem-layout {
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-				reboot-mode@0 {
+				nvmem_reboot_mode: reboot-mode@0 {
 					reg = <0x0 0x4>;
 				};
 

-- 
2.49.0.1151.ga128411c76-goog


