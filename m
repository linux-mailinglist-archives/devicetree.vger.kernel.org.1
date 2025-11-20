Return-Path: <devicetree+bounces-240859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC9FC7694C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:11:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D948A358CA2
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4588B30DD16;
	Thu, 20 Nov 2025 23:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jb4LMMky"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1BC305948
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763680276; cv=none; b=NJ8KNfYAFjoJ3Cw2sNgyBR8hX109Wnot567PG/qmom/3A19Kuq5OojR68X9QNX4nxmbrE8N0NWONKl7lYIU9uWIwEoLA6H9gkI/GV298h79YsA24JGc9Fhoz/5nlVZ7QN+Cwy+pg9EneuwwfR05KpniHg42PAYXkh1l2F4xjhWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763680276; c=relaxed/simple;
	bh=rvQqK2Qnnza8UODspIoco/dwN/jhzS7VOEc+p0mvRws=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GDRRPe+52j0b/c8voRBkesrKWLsufttxB6l6u1NwyJ+c/BxKioVF3wz8vzecxJyE1VppXEGwD6dTYtD/oZ4Xz9C0JbmE2j+gihpbK72tm4ZZc/KNZhdHjN4Dsm+1eWZsIqrdv15z18d9D8PoHbkZsI2Udj60RkVGxEzfilcxguk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jb4LMMky; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-63f96d5038dso1263323d50.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763680272; x=1764285072; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BcrMiAY6TXHKRYE9vCTFAKLMlZrOurVy/Icq3KzRhzE=;
        b=jb4LMMkyLoCF7FxwGvkAr8Gdb8PhLc/ONMjL+FwPEF0NoUSdNLyyeAJhEblHbMrg7y
         Ddqjtrjb1FqK7U81Y5lvI5WlDKRBbJzk+V8zbjZX10qQAHOtosiQG3RBQZ2n/w0OVBFo
         Wg/Eg51fpOPjOv59kx3RqG4O7gC+7Jr1NeIJ2TlcP+o0CvK5TYZ0lJN6bMmeLnf2WewN
         rTt++w6pqmEa4jxhWKC44WXFqU2PTrGvpIi4rh90xOtFVRxTjVWYh7juhqWk00mcl5pc
         0Fqgx22oCHL/+QMsSF6YeGAJG7o20iG+huEHjXNPs4pkb3kvNFw2vhOXi/jJZ77YNgum
         dARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763680272; x=1764285072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BcrMiAY6TXHKRYE9vCTFAKLMlZrOurVy/Icq3KzRhzE=;
        b=gjgalkVW3FpR0vC7av2R2AnHSKyoQXcHRjDQ/mo6EkULkV8avA9rVfBHFZ6Kr6hVrZ
         aJm+jnNZKDzv26yiubH7mehhivylZI7/A3NN9xJP8wtU3qFEvPRmTnqnp+k+JvgPysyO
         hDVSRGYK5VVGEGjXNLuvmfm7BXbiBBhdVOweWHEJAnC2O2JGJd7jUSQhCnZP4NnEwLBK
         ys8rPN8n4aFTPw1WsKSaqVk7F4EAmj8zWH4ZzYl/sxDowIavvlJ5hKoOWHo54GSFSilj
         ZvLdDYGWueNc8zDV5Mq20IPhd3jQ3rBAvsZuBZliqmTrHSpAuFtkCouKQ3plZw5er8lp
         cOMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlHIxoxYShzgY8nYbkodlOxYFKcCNVdh4z2eaMJoQ3YQpeMXw7qV3356/5lGEWdcC+yvKMJIXrJgaZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzcmdMBpS9k42aTOh2SHM7EGAdRhZ4TpzjuyZ97PqhkXQsqdOXN
	IJLFs4ki//NEuqmpNOmprUBJ+TaYuEqUx5SPMCMHIYx899VYtwwifoYV
X-Gm-Gg: ASbGncsyVtTBFx13oEjNSvgCHU2ZCQ8wFDhKZqCktrRNxeJaou06wu5ZfUIr07bNn7T
	MnfIHm/U+ynlBpDpKCGdwliL+xBElVDJXWM/HGQFw78tS+IQHXmNUDSoG04PGqC+HxIVNoGHfcA
	r+vbad6fBsjoZnDrm49qMVKiMRB1ticGdEYVo1lstkrjuymIQ0Cbl6Dao/6fEP8XckuHf0qXSzU
	M/rfypR+7SEFS5sus5PWotzNN6tRY1kYgnC9ABjrJ2R4mMgeCGH4pslg34UXuidBMeXh3DuwJAC
	OY/11Hie/hAkMFY6eywVM6A9QjZ6jHsV0lzyCV1gu5AGEZjo6RvB85AwCRAPOfwGzb0l+moIyuu
	AoQEjBtfgM7mpfhfy5REzhG1xk4MMEwjkaR4kf0bR6PD2dowKneQut+jj2p8Ae5xya0pZVPPnVt
	B5aaZ/cdhTy73MOA==
X-Google-Smtp-Source: AGHT+IFB+ETqzI/BJCcnBrZ6ztkZrLAt40rL3dOopRnLtXBJXXcXrpR6Qj5fuohfSaTCS/BZDxlGZw==
X-Received: by 2002:a53:c052:0:20b0:63c:f5a6:f2ea with SMTP id 956f58d0204a3-64302acd4e6mr81240d50.60.1763680272170;
        Thu, 20 Nov 2025 15:11:12 -0800 (PST)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78a798a7f19sm11356807b3.20.2025.11.20.15.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 15:11:11 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 21 Nov 2025 01:10:48 +0200
Subject: [PATCH v2 1/2] arm64: dts: qcom: msm8939-asus-z00t: add battery
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-battery-hall-v2-1-d29e0828f214@gmail.com>
References: <20251121-battery-hall-v2-0-d29e0828f214@gmail.com>
In-Reply-To: <20251121-battery-hall-v2-0-d29e0828f214@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3

This device tracks remaining battery capacity percentage using voltage
mode BMS. This commit enables the pm8916_bms node and adds a battery
node to track its capacity. Battery properties were taken from the
information printed on the battery itself and downstream device tree
for a battery named "nvt+atl_3000mah" [1]

[1] https://github.com/Asus-MSM8916/android_kernel_asus_msm8916/blob/10.x/arch/arm/boot/dts/qcom/ASUS_ZE550KL_1936167_3000mAh_3p4COV_VBMS_Final.dtsi

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
2.52.0


