Return-Path: <devicetree+bounces-56029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A97548975F8
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 19:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD4091C21210
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 17:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE2D4152DE1;
	Wed,  3 Apr 2024 17:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LpEwSx23"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CF7152527
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 17:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712164229; cv=none; b=NVGOnCDbOMYRAwQ0Rs8liOJTaXjTChnLs12LUW9L7YiFeEiqVoMkJROKnwCiEP/byj1HS+RSSHxiBOqyILCIPy+lSlfQvaZmEHOIa/cn0tGbpzkEWTFVF8opRstOrC0XxntjMGdhtPMt1hHiA0svyM0b9WOppiP/qNgWDcBajkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712164229; c=relaxed/simple;
	bh=6yB8jITO6dm5A3iw3f6NpbSDj6c1Ihz8ymCz6gkRHfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BJLPoO1dDYqKhjMHjzAExcfTgD17ZSnCzZJmkLB5fEFz3H5vWTaShDTCByw4oUUjO9ofSaHR9YX+c2GsDFRTAdttWvE8PgWHkkVl/+w1osmNCbgPHjeEwJPWmzza20PDhKG/abjJK71Jp9LfGsjQzZQ4Ue4Kgrf8O0okdKSJYLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LpEwSx23; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d848973b57so438431fa.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 10:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712164226; x=1712769026; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+zN2ir3wcSw60JnUZhYl89sqH9XQ6cSsnDil8Gkw6Q=;
        b=LpEwSx23Ocx22OXlGw5Aq1KX7NIewun91yQ87su7GOBhwZ+7F7E81w/dis+Ms1id75
         bjczScq2vZOvyx+YCwD26m5ug6fwiMNNyyppIVPAmzLhycFGkObN45MSHJIS5gykEPUx
         5mL1QBdMiLFNSrsNBHbzFZFiO/6pqANX1FRfruhQwJjVvnSNMXMYucZ3rHLCeCiTfpfD
         /s69xyjGj/lGAi2Mh1+Lx94yhpMy0SrVrWvChp0uk+zQItIElxXOUMrwQP5cBakOXXKz
         JHPFZNAHJXKow4cAa+LepigbxEO45tYEBORp3+edyfNAVSAnRVSFXU6rqDExkHVVebGK
         NyBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164226; x=1712769026;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y+zN2ir3wcSw60JnUZhYl89sqH9XQ6cSsnDil8Gkw6Q=;
        b=r4LICRt7h+eCeAE9gOXMp3qVNhDTTIwMeF7HcexJ/Y2UYAsOXgdXXBv1vVG8ZVpPse
         TiNyCE0gvlpmWj9KfWESGPwRaeKF5c3tWU8vx+N8+s0r4iAqLX7uz70L7IIiUUwDC9WY
         scnPiUdIBukApApnRN5ykrUplUNj+/7HVlM9gFliwTBBd19ZlH/UWjwSlutnIS1xqEHH
         3SPju1SlQtZ/CyZtozPwQnHHJZyxmyvW85J1fgaUoyUhQ7BbbE+Kb/O6SiThpw/L8RXR
         zpnzwMagPnPa2kCik/NVWMCnyC9AFzvswES6r4LjsDDZdz7SekbBrZgqG9NpYAtUGRoB
         Zx7A==
X-Forwarded-Encrypted: i=1; AJvYcCWWQfCXFJsanNiNNPdKirgWQV3EqR3YF5pirpC8irWkWMWRVpkbL8YWudw3cKby7eKVnzwGpDFEp4efWQ60PGpLAWI6nRJ05Egi0g==
X-Gm-Message-State: AOJu0YxRbctDD+V+WnLQzdwVAiB5N48WtCT8x8N5y4+a3ipepreCGyAb
	JX6UPSLYYwC5ppDP2trWkZDQuj8fkb+1/U0Eo5Ar4DRFvtjKsLNihES6xFSAQAIzln8CrEuBGEN
	s
X-Google-Smtp-Source: AGHT+IHm0F0qkDxHvy9yc52xu5a2NgU4D/4+ae7i/3qwVDw/rcFHypOJAe9JvNFwb9ysbJ3Cb2nWnw==
X-Received: by 2002:a2e:99c9:0:b0:2d4:6c1c:7734 with SMTP id l9-20020a2e99c9000000b002d46c1c7734mr175643ljj.26.1712164225597;
        Wed, 03 Apr 2024 10:10:25 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x2-20020a2e8382000000b002d71b89f93bsm1450472ljg.27.2024.04.03.10.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 10:10:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 03 Apr 2024 20:10:12 +0300
Subject: [PATCH] arm64: dts: qcom: sm8150-hdk: enable WiFI support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240403-sm8150-hdk-wifi-v1-1-8da3063829c2@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHONDWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDEwNj3eJcC0NTA92MlGzd8sy0TF1zk5TUxNTkRCBOUgLqKihKTcusAJs
 YHVtbCwDns67HYQAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kalle Valo <kvalo@kernel.org>, 
 Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2493;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=6yB8jITO6dm5A3iw3f6NpbSDj6c1Ihz8ymCz6gkRHfw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmDY12yuwPHmKtZ/NmXgv95SvLL8Lw5Bwr9uyrx
 bgLSjDONPGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZg2NdgAKCRCLPIo+Aiko
 1ZXrB/9KjPWcjTMwwhwi6z4mOT/+a+pLQR8GOe50+v8JgBsbPQKKrZ4lMcQM2zpYFWSYtNLlsuV
 mRbXt33qWd3lQoE52zFumkOQt1o08pz/C3wHG3yHXuWnYLLgr7pl361cV9tHwAEsvBH2mE1r1+t
 wOveXqo44Vxpr8Wj1ZUDkyq5YbiGebY7KkOnzw3rSdC300CkxPEm1PHB4YY2WYcxPVfSs2OcdQc
 CDDFg+dKqg0olvxx4MPefEYtnbQbs+s9fpHb9FTOsjYd+tTKEbV4rPKol0TDf9LoZH+6jbpus7t
 oVmXy1wnN46PxruG/KzqnjSREzgrNI4xusQbWUYM/Rvb1ZKM
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable modem DSP and WiFI devices on the SM8150 HDK device. The HDK is
manufactured by Lantronix, but it attributed to Qualcomm, so the
calibration string uses Qualcomm as manufacturer.

For reference:

ath10k_snoc 18800000.wifi: qmi chip_id 0x30224 chip_family 0x4001 board_id 0x55 soc_id 0x40060000
ath10k_snoc 18800000.wifi: qmi fw_version 0x32040163 fw_build_timestamp 2019-10-08 05:42 fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.3.2.0-00355-QCAHLSWMTPLZ-1
ath10k_snoc 18800000.wifi: wcn3990 hw1.0 target 0x00000008 chip_id 0x00000000 sub 0000:0000
ath10k_snoc 18800000.wifi: kconfig debug 1 debugfs 0 tracing 0 dfs 0 testmode 0
ath10k_snoc 18800000.wifi: firmware ver  api 5 features wowlan,mgmt-tx-by-reference,non-bmi crc32 b3d4b790
ath10k_snoc 18800000.wifi: htt-ver 3.73 wmi-op 4 htt-op 3 cal file max-sta 32 raw 0 hwcrypto 1
ath10k_snoc 18800000.wifi: invalid MAC address; choosing random

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Note the device also uses updated wlanmdsp, so it will be updated with
firmware-name for WiFi once [1] is merged.

[   68.236220] ath10k_snoc 18800000.wifi: chan info: invalid frequency 0 (idx 41 out of bounds)
[   69.426700] ath10k_snoc 18800000.wifi: chan info: invalid frequency 0 (idx 41 out of bounds)o

[1] https://lore.kernel.org/ath10k/20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org/
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index de670b407ef1..6cb6f503fdac 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -609,6 +609,11 @@ &remoteproc_cdsp {
 	firmware-name = "qcom/sm8150/cdsp.mbn";
 };
 
+&remoteproc_mpss {
+	firmware-name = "qcom/sm8150/modem.mbn";
+	status = "okay";
+};
+
 &remoteproc_slpi {
 	status = "okay";
 
@@ -713,3 +718,14 @@ &usb_1_dwc3_ss {
 &usb_2_dwc3 {
 	dr_mode = "host";
 };
+
+&wifi {
+	status = "okay";
+
+	vdd-0.8-cx-mx-supply = <&vreg_l1a_0p75>;
+	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
+	vdd-1.3-rfa-supply = <&vreg_l2c_1p3>;
+	vdd-3.3-ch0-supply = <&vreg_l11c_3p3>;
+
+	qcom,ath10k-calibration-variant = "Qualcomm_sm8150hdk";
+};

---
base-commit: abfb54bc2d2b925336c6ea9ae2b335e3867ceb89
change-id: 20240403-sm8150-hdk-wifi-74deaecaaecb

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


