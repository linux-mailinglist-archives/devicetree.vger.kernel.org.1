Return-Path: <devicetree+bounces-25884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E215814F05
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 18:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25F46289147
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D3F63010D;
	Fri, 15 Dec 2023 17:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mx1cxwIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC97982EF8
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 17:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50c222a022dso1046867e87.1
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 09:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702662120; x=1703266920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1h24XTHlxIOXc1I+zL+zjCVse/5Gc8JfYae1eKP47QU=;
        b=Mx1cxwIO0DbNKHUdXXMqUFw532veSzxApeMO/ALh4bGc7MJH+HNCOsYTnTRoQRFSO7
         xCK1QvzEb6HOfk2IOP70lQNI0jJWpHx4EiRN7wjAjXkWXrMbsBMyR5Vi9tzAgZrwhj/3
         9qsdPtb5rSr270gbr2yeVTNm3XWhTbI3BS42mm7XTt4vdfPZ1WNlIhzCrcTO1LUUkKqe
         W3lcAQTCZNMZtmFpz+wKVL7PAyJia0ZKdeDfs+w5Af1ElvtA0l5FzijfMzu9nl5f2eFx
         RMoWa5PxE3ZSdX35x30x+S0N82FfF0ZFdpcXnmhXrt6UT3IyXX/7ULiyVW6y0rvBBTRF
         P5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702662120; x=1703266920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1h24XTHlxIOXc1I+zL+zjCVse/5Gc8JfYae1eKP47QU=;
        b=SKTgxMnj5fABlmiwcM10gCCUeBu45A43GgP7UoaElqggKkrtDc2URxF/ANEzIZCSuL
         mpvrRjL9MAwlooPHHeGqcmQ1bNN//la1ODInEhH54dOwGMxSYHDkiGHCpRJ0jvF+dQAW
         kRG6NAlcCTDB8q7yw/D/1YfmzSYj4ljhVOFSns0hHbdI8isHSjcwjudf740C+MXDwdzq
         L9EPw/mRh4T7n7SISunPJXHKwajHrnqRv6lglReMxSd/9YWsT/GarSZJrrVv4G35aEaO
         h96GfSlsGpNEQyOG+r8FgQ7xvr0tVgRRoHAHeIvtGLbjRAYkxUEyq7NHe11So0WVHI86
         lyug==
X-Gm-Message-State: AOJu0YwvWwon9DRQCnEK+dZmH31L7xeITrwhRoetMhCDp1xBJpG6g6+d
	wN7/4xe+19vhVIfZYX3/oxjlMg==
X-Google-Smtp-Source: AGHT+IHi/8CwvK473h10Dt4Q9PARgxUmIcOoD7lTXpv8FNk2lhn9KXSTEwk0m60SEhTDsP9996jr/A==
X-Received: by 2002:ac2:598a:0:b0:50b:f7c6:2f72 with SMTP id w10-20020ac2598a000000b0050bf7c62f72mr5002545lfn.106.1702662119800;
        Fri, 15 Dec 2023 09:41:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (85-76-13-188-nat.elisa-mobile.fi. [85.76.13.188])
        by smtp.gmail.com with ESMTPSA id c16-20020a056512239000b0050dff5bb793sm1389263lfv.143.2023.12.15.09.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 09:41:59 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 3/7] arm64: dts: qcom: sm8150-hdk: fix SS USB regulators
Date: Fri, 15 Dec 2023 19:40:35 +0200
Message-ID: <20231215174152.315403-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231215174152.315403-1-dmitry.baryshkov@linaro.org>
References: <20231215174152.315403-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SM8150-HDK uses two different regulators to power up SuperSpeed USB
PHYs. The L5A regulator is used for the second USB host, while the first
(OTG) USB host uses different regulator, L18A. Fix the regulator for the
usb_1 QMPPHY and (to remove possible confusion) drop the
usb_ss_dp_core_1/_2 labels.

Fixes: 0ab1b2d10afe ("arm64: dts: qcom: add sm8150 hdk dts")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index 6a036f9ba1c9..ea4d75308ac8 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -138,8 +138,6 @@ vdda_qrefs_0p875_5:
 		vdda_sp_sensor:
 		vdda_ufs_2ln_core_1:
 		vdda_ufs_2ln_core_2:
-		vdda_usb_ss_dp_core_1:
-		vdda_usb_ss_dp_core_2:
 		vdda_qlink_lv:
 		vdda_qlink_lv_ck:
 		vreg_l5a_0p875: ldo5 {
@@ -221,6 +219,12 @@ vreg_l17a_3p0: ldo17 {
 			regulator-max-microvolt = <3008000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
+
+		vreg_l18a_0p8: ldo18 {
+			regulator-min-microvolt = <880000>;
+			regulator-max-microvolt = <880000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
 	};
 
 	regulators-1 {
@@ -563,13 +567,13 @@ &usb_2_hsphy {
 &usb_1_qmpphy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l3c_1p2>;
-	vdda-pll-supply = <&vdda_usb_ss_dp_core_1>;
+	vdda-pll-supply = <&vreg_l18a_0p8>;
 };
 
 &usb_2_qmpphy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l3c_1p2>;
-	vdda-pll-supply = <&vdda_usb_ss_dp_core_1>;
+	vdda-pll-supply = <&vreg_l5a_0p875>;
 };
 
 &usb_1 {
-- 
2.43.0


