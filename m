Return-Path: <devicetree+bounces-101092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 803819703C7
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 20:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03D2D1F213C3
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 18:49:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2257D16C697;
	Sat,  7 Sep 2024 18:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O/5IhbaR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C151684A7
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 18:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725734910; cv=none; b=ZQtO8CF0GcNCqU8w3wWB8Thad2NLErjNlQV8tJTmW/LTGa8WApOcPAfpiGi4yy8z4dOjVR7UUGFqkbxinmhdleTbKO245au2CbELzbTNTbHEUMArIndYu1UB2Hb7hrOH+Xe8zWifWvi8Vq15krdbT1oemiznGN6Lfix/IIpYjH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725734910; c=relaxed/simple;
	bh=XTnySTBdd5sawEDE4jiRSfy1oa5Ctl+YWAAqUv4joIg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f7BOtCttm83o9iYVLJ4w4FQaoofeQmBe5XKryqZtMsY8fWbfiaX7AcCxX/CP/XKijes7X7oHveGBhYPra9dAY3iNgkTFlwBQuqtMYKcCyjBi2tKBa7WMLpBrhd9dHELenrXcwQL0UFTtXrAzU1NIFXfFspRfIIkdqDNXKww6FD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O/5IhbaR; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f75129b3a3so23837241fa.2
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 11:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725734905; x=1726339705; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wa6fMV9tZ2Snsz6tr/dYASfgwbJ2HTPtEyRdc5RFNjI=;
        b=O/5IhbaR9Oxya+af75rxwcpn3H9fB2ufxmSAngfOicN+mx9HRTfrXV13YV1YBHr9AV
         CBX9UlDiwXeFX6TBwPnYUTMY3USH2ltSVpEVPTzL98UtMSqpGINbgc4o7P8gvJA0mXKq
         ksmVkgGHwtSoDH4ECF9lkJBX+leLfq4+1TGC9oWquTKgL4Lhw+I/FBQFgjo0C4kDU5gn
         1S4NzcEb2lKeVxPRIS4QpQJ2D9guGBV4Wop17f4yBlfG8tTnaRCyWfDXc3cbcklp7oq4
         3QJI/OKzjME4/RznsbgxvyKzsfj7d1uPww1vMfUT0FLxrRpGL7C6Vdq1BDF2sroqL5/e
         3log==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725734905; x=1726339705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wa6fMV9tZ2Snsz6tr/dYASfgwbJ2HTPtEyRdc5RFNjI=;
        b=Kv88Fr5/Cq1Diz17e3F6RXpjBcss2uEvXYVY3ZtAGFr1D9clzrq7rXnQJLyAVAoPf0
         6k1XZCpUajSOA6u1jFgebGJHU9Hjp2aZCvRVv1E7xU4cNCyztdrTuoyt3seqL3Y0U8Qq
         JPnV99et1xkNLRUn4Bja11iJa8FCs6JgEe0NCLtaobReSEDTBOjzkwO/oxChtR2iyGeq
         p9ohma0OD0pFe0bkkifLugmAUz+i0R3fVL555+WrgtG5ZFGhByUEcahM19+QqWDsnBPG
         kkt5NPznwWTC7tblinxcyE3xi7dfzXO5PLeYzHG/zvRcPqfWT8Wf1g+lnqQXkYZpDOfi
         Pakg==
X-Forwarded-Encrypted: i=1; AJvYcCVMtlkL3yhYUIJorUqACZvIiUUcXyFpRMsUi8BqoGTykcCV0y/zgmiGPkAhpDZOb1Cc2aPa7ExxIgf1@vger.kernel.org
X-Gm-Message-State: AOJu0YxcwR5s2dTnaUOCOTz7MeSFMwSlrOIsvHk8qeWc2UcFUZ0s53dG
	AzALJmD8nozL38vhez5d7KEmQhdnMxMwdTNqOJNKYk89CsZ2MdeXRMm6pVLmuKM=
X-Google-Smtp-Source: AGHT+IHSIoknUKa0V2bIajtq0UbQnlrrMTwcNCvk0Cm0DK+8zJifYj/tq+SFZ349vHrP4HPAC7liRw==
X-Received: by 2002:a2e:bc13:0:b0:2f7:5c58:cc7c with SMTP id 38308e7fff4ca-2f75c58cd06mr15833141fa.44.1725734904516;
        Sat, 07 Sep 2024 11:48:24 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f75c0b1af3sm2271861fa.129.2024.09.07.11.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2024 11:48:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 07 Sep 2024 21:48:18 +0300
Subject: [PATCH 7/7] arm64: dts: qcom: sda660-ifc6560: enable mDSP and WiFi
 devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240907-sdm660-wifi-v1-7-e316055142f8@linaro.org>
References: <20240907-sdm660-wifi-v1-0-e316055142f8@linaro.org>
In-Reply-To: <20240907-sdm660-wifi-v1-0-e316055142f8@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: iommu@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, ath11k@lists.infradead.org, 
 Kalle Valo <kvalo@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2512;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XTnySTBdd5sawEDE4jiRSfy1oa5Ctl+YWAAqUv4joIg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm3J/yWVPTASuqwGf6KgTFf9lHvriPxuej/lwbV
 aZEbLvM9JWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtyf8gAKCRCLPIo+Aiko
 1ZEqB/4/aeZwm+BdnM4GZPBXDOBNORRCXxR7ErRiln3e5RdBCf4xXCE6iQvmGFXEXS/LrebtK/X
 FNMW65S93BZFnkwxHn6UQ+EHAFGW27njCs/KvrkXnGPtjv50v4+JiV2Kp1cUWTb3w21MJAnJSU5
 5TP4gUddxWWFBAqPeK0Khdh4ojgcQcxkbJZg49A+fkAl1eQ2+Muneg+woHbjtFa51jJYnvX0SWE
 /Xu+uP5bMQ3+J+0Y+lS2f+HdM6ZAKIvLcVs4cEzVqh4+fljZ6NUrrfM4P/TAlLZ3Q6M0gheBeJV
 4PQ81KBAp7c2Opqwvn3clTZnknpVaurmdvLR2aBlgRtUjDU5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable the onboard WiFi device present on the Inforce IFC6560 SBC.
Pretty much like MSM8998 this device also doesn't generate the
MSA_READY_IND indication.

For the reference:

ath10k_snoc 18800000.wifi: qmi chip_id 0x30214 chip_family 0x4001 board_id 0xff soc_id 0x40050000
ath10k_snoc 18800000.wifi: qmi fw_version 0x101d01da fw_build_timestamp 2018-07-26 21:42 fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.1.0.1.c2-00474-QCAHLSWMTPLZ-1
ath10k_snoc 18800000.wifi: qmi not waiting for msa_ready indicator
ath10k_snoc 18800000.wifi: wcn3990 hw1.0 target 0x00000008 chip_id 0x00000000 sub 0000:0000
ath10k_snoc 18800000.wifi: kconfig debug 1 debugfs 0 tracing 0 dfs 0 testmode 0
ath10k_snoc 18800000.wifi: firmware ver  api 5 features wowlan,mgmt-tx-by-reference,non-bmi crc32 b3d4b790
ath10k_snoc 18800000.wifi: htt-ver 3.54 wmi-op 4 htt-op 3 cal file max-sta 32 raw 0 hwcrypto 1
ath10k_snoc 18800000.wifi: invalid MAC address; choosing random

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

---
Cc: ath11k@lists.infradead.org
Cc: Kalle Valo <kvalo@kernel.org>
---
 .../arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 09bc010ce56a..7948c8f6ab64 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -252,6 +252,11 @@ &qusb2phy1 {
 	vdda-phy-dpdm-supply = <&vreg_l7b_3p125>;
 };
 
+&remoteproc_mss {
+	firmware-name = "qcom/sda660/mba.mbn", "qcom/sda660/modem.mbn";
+	status = "okay";
+};
+
 &rpm_requests {
 	regulators-0 {
 		compatible = "qcom,rpm-pm660-regulators";
@@ -291,6 +296,11 @@ vreg_l1a_1p225: l1 {
 			regulator-allow-set-load;
 		};
 
+		vreg_l5a_0p8: l5 {
+			regulator-min-microvolt = <848000>;
+			regulator-max-microvolt = <848000>;
+		};
+
 		vreg_l6a_1p3: l6 {
 			regulator-min-microvolt = <1304000>;
 			regulator-max-microvolt = <1368000>;
@@ -489,3 +499,15 @@ &usb3_qmpphy {
 	vdda-pll-supply = <&vreg_l10a_1p8>;
 	status = "okay";
 };
+
+&wifi {
+	status = "okay";
+
+	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
+	vdd-1.8-xo-supply = <&vreg_l9a_1p8>;
+	vdd-1.3-rfa-supply = <&vreg_l6a_1p3>;
+	vdd-3.3-ch0-supply = <&vreg_l19a_3p3>;
+	vdd-3.3-ch1-supply = <&vreg_l8b_3p3>;
+
+	qcom,ath10k-calibration-variant = "Inforce_IFC6560";
+};

-- 
2.39.2


