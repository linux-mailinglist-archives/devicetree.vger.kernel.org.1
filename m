Return-Path: <devicetree+bounces-238981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 960F1C6050F
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 13:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A747E4E7634
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 12:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C0A2BDC19;
	Sat, 15 Nov 2025 12:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jX0p4G1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD1F29D26E
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 12:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763209630; cv=none; b=aI0rePF17KfY6Mw7EYt0lVPFPzuapIoHg42MvVfopVeiwlZ40/M8LRuPdgHqtjAGNLE6lQfesQUmNhzrAty+gvsNCqeMwGs6OHCeI5k8drVlG88FcN8IrzY8Md1bzmnhQA1jpmInG759b38WlI7OVpVhUseUf3+wMo6zHlbvSPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763209630; c=relaxed/simple;
	bh=9aLmwzkNAl0fWuMuVondtmIaHCgChuo26ApIfLvkfFg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KquM3EvEcWmAfWjxIFNL6YwTYMqe67cw3StXIM9QBn3xoGZ4dwKzrU+qjEQW18bbgcQdm5dwkEs7fdoZcFf61cgPwRuQhBwUMTgEXUMHuw6kT+sHC5EdSoTMdlX0165A2fZFlyLX6jHOjl6Dl0+XR5rxfMRMBWUiGbZnHhuDN9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jX0p4G1b; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-641977dc00fso4250168a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 04:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763209626; x=1763814426; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvK3la7gcQuHMKu0Ctg4YqteqqaI5MjLgal59B0Tr/k=;
        b=jX0p4G1bL1wGzg59vdWRfuF0lI2seIe9FYdRKI29IW+nbgvWdWP6wzgdaQgpLvcvsX
         iPpj93gMio21e7fj6zpZrNAw9EXXns77LRgPadsctHrKzCGZsp/MQYwOsQ0LzWkBQpOw
         1eJoHokxBRuCfFESZl5IdSLlnNHPaG7D5UPW16DLrTY29GEx2k2UZLL5GLcEK8GnRJwi
         6cjwJzmRpfDvC1sKfxCO52svm+RKNesnnM5S6GoL79dEE83rZIJK3vcdm3JDFU4f3IbA
         ElBt29gOOigk3JVDYYPTQR69AHTf5kwGVB9j3tdP686W6P50dyFHvhAoyZ2Pi99qM4X8
         mHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763209626; x=1763814426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lvK3la7gcQuHMKu0Ctg4YqteqqaI5MjLgal59B0Tr/k=;
        b=svJu26AGpcQb91m1PVxlZ5KS1+IbXlox4ZJsuV713ajCDzb3KMVFO+1MiaFYLYzR/p
         /oWOZBtEhBXhitR3meXQUg+v96AmLLgKLHwa+jJX7Et1rBUHldyT/UdoApPSTtnXfZBQ
         Bmzztt0v0KI/pXM/x2sGszQAZGoKsU9wLkcKvfwxqNfwDUtZ9N7urZg8EXjJ5YjZjgEU
         6lOrHHOx+PRaAV74g0nrAJ4LR7l624GFVPDwS34MbRWMCTB9i1mEDWvpKvLmbQ2rTboi
         DuqPyhiEAyrLbXYqOtdz/cWyWaDlVHMsBi9eWmdVgo6MXEjeprXYbXR01GYVFDWGI4xT
         MyFg==
X-Forwarded-Encrypted: i=1; AJvYcCXuBNjF/oVQbAj5pIRalIQXON0nBT7hATEtZW33lY06D/g+XnAaoJmuyj4XAB33G0POHdvLZ2bJINGM@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq39u/cFH9Ni6Qgwv7uYC5aKc78GnUetNDPG4ro833j1vRIVml
	E0SKRkAVJyCSLx3sAQUYfyx7aKfO6wV5vHhn8b5kalpVpy09NJC/dbHf
X-Gm-Gg: ASbGnctXxykIrFqwAnvH8pSjtaQ8i/ua8Lho1gTdUmdUydTBHaDMOs41SUHKkTsbJ47
	/rJsrWKBCcoLeLxeQvI1cCGIkN56eMy77cnMRZBpL6magSv2ST7eiedHQOLYmPx74DYF0X0xEiR
	EBLFNczge+FNsF/4AFo5YshwFw7BMp6fo8lRX3abrr86r51UAMfgo4lcSQolNSi6VojRZ1gT+vf
	dkoN7Z5Ti/VabmGJzoRbTz/3WAMCCzxlNDG4Na7zES4peCgy9mmtTIrq4j0yv9dZhzdAzRTLZhP
	HFo71XtH9P+kz+LJ/VTFRMzcbpAexgjKG4mxlg+Gu2cTzozPYBgDmLI/eRbtQ0QUILDEk/Na/WZ
	Cd94tVJwYhLlTfVaJzdTTqRm9Iy9AbwZA10v4WqVngapM22nJ3eHtvrUzjAIWFmc9pEB12x1/bi
	7mdT0u1nyS08aQEko=
X-Google-Smtp-Source: AGHT+IGPNXXDBVzrdW0ewCGGvsan17fP3zMqb7WdKL2xTwdzjqfWwc/8Nm7mBh23tsxt8snJrllZqA==
X-Received: by 2002:a05:6402:2683:b0:640:b1cf:f800 with SMTP id 4fb4d7f45d1cf-64350e02fcbmr5344009a12.4.1763209625786;
        Sat, 15 Nov 2025 04:27:05 -0800 (PST)
Received: from [192.168.0.188] ([88.223.153.72])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4b2155sm5627042a12.29.2025.11.15.04.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 04:27:04 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 15 Nov 2025 14:26:43 +0200
Subject: [PATCH 1/2] arm64: dts: qcom: msm8939-asus-z00t: add battery
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251115-battery-hall-v1-1-1586283d17c7@gmail.com>
References: <20251115-battery-hall-v1-0-1586283d17c7@gmail.com>
In-Reply-To: <20251115-battery-hall-v1-0-1586283d17c7@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3

This device tracks remaining battery capacity percentage using voltage
mode BMS. This commit enables the pm8916_bms node and adds a battery
node to track its capacity. Battery properties were taken from the
downstream code and from the information printed on the battery itself.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
index ebb548e62e02..b58f0a04abfd 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
@@ -20,6 +20,25 @@ aliases {
 		serial0 = &blsp_uart2;
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		device-chemistry = "lithium-ion-polymer";
+		voltage-min-design-microvolt = <3400000>;
+		voltage-max-design-microvolt = <4400000>;
+		energy-full-design-microwatt-hours = <11500000>;
+		charge-full-design-microamp-hours = <3000000>;
+
+		ocv-capacity-celsius = <25>;
+		ocv-capacity-table-0 = <4372000 100>, <4306000 95>, <4247000 90>,
+			<4190000 85>, <4134000 80>, <4081000 75>, <4030000 70>,
+			<3984000 65>, <3930000 60>, <3884000 55>, <3850000 50>,
+			<3826000 45>, <3804000 40>, <3786000 35>, <3770000 30>,
+			<3753000 25>, <3734000 20>, <3712000 16>, <3693000 13>,
+			<3686000 11>, <3684000 10>, <3682000 9>, <3680000 8>,
+			<3676000 7>, <3668000 6>, <3643000 5>, <3600000 4>,
+			<3542000 3>, <3462000 2>, <3340000 1>, <3000000 0>;
+	};
+
 	chosen {
 		stdout-path = "serial0";
 	};
@@ -135,6 +154,12 @@ &mpss_mem {
 	reg = <0x0 0x86800000 0x0 0x5500000>;
 };
 
+&pm8916_bms {
+	monitored-battery = <&battery>;
+
+	status = "okay";
+};
+
 &pm8916_codec {
 	qcom,micbias-lvl = <2800>;
 	qcom,mbhc-vthreshold-low = <75 150 237 450 500>;

-- 
2.51.2


