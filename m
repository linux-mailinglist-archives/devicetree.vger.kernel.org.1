Return-Path: <devicetree+bounces-232367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F9BC16DA1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:03:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 413991C21761
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48A58354AC3;
	Tue, 28 Oct 2025 21:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BfdmuA3+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aDw0UZgA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692F42DC772
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685220; cv=none; b=VEkbomfAaWORZHUm6X9a8yUda1HnpC5Wj9rWlqIQ7UDqEc3VyYY1ANUKdN08uhpl4+wZJPyIqzqYH+9m7gOzvaqfM1Gbena5HKQuBq6x1JfvDFNKvG6xb9CC24v4DzoBQqUwjTBM7tTqopy05lPvDjhp1YtrHZu3gliE2C0YMVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685220; c=relaxed/simple;
	bh=XZlVanBK07YsrrAgPlVUCFnWnH1kW6H3soUn83IKxhE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GVKIrooS6O43wpe6xjcGKnX5Bj3D62fVXFVyofGfxUJvKmJDNd+SRDIGtHOzhYqYWd2bPtMumUHcsFbmtAykoj7NyA45BT3/mGCukJISBZE46tlx+HjbjPNNgii9lufgC9kp9uJPuwu1s99Esk1dtEMtC2iG+M19ljqiWHgvzug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BfdmuA3+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aDw0UZgA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJqXrs2511014
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ztnEZ8z8mQZFEmEJLlZF9ukU00RhQZ/xEw/G6uwQnzQ=; b=BfdmuA3+YsIOLaKZ
	OEmDBEtxZIim0jIMIePePy4rTHY/Tejh99PDKqn5z5Yl6keatB5yoTnu9F2uahRL
	DJHFIvUABnWHIWc+fuHrGM/IhniABjKTD0s7ml76WbyXGVJp4N6bvXi7INJ44xyI
	OOfyZSsqZt/6KoYoCz9ELUwOrNAVSRsNMRG0w8CKlrik7HRquMj5CM/Et2EKPARG
	FJbIT0oica6WY+NVk3QHrw6oexwJ7W+Yppa0yGrTlFlQGPnKXubFb5Lk3TmoTfPY
	DsWlzJhnWHkPt7hf27Z2Zqejf41g7DNX00u62gL6lqR+NiswBrOksJ0LGYXOgHT1
	VbHOzA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34cd84y5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:00:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4eba1cea10dso199738441cf.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761685216; x=1762290016; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ztnEZ8z8mQZFEmEJLlZF9ukU00RhQZ/xEw/G6uwQnzQ=;
        b=aDw0UZgA1AAKRO9dVLmmh5MgaTD76QckB1LeeHPrc8Rky/xm5r0u8PD2IqP7vJAot1
         YV1uj+CX3IZyaNR8K4PRypDzPRooF2Fo0cbZ/7j4coqVRPnImeRKEZfX0qQ8jHVUSO2D
         V9cjjrEkLPKGqN8HyLUEakokqLZPYsajskZ+2yEgAU72jQI+L6J+fyJ1wdnDypPGWi62
         L1SpOTPkp7cI3jVIoONGEyWGB4Tml0XP4b6dFJdxsbW4EoJdSMdON9CcE1hux1yMvzDt
         kwPvZ2i8gA+4Ew1kuJ/j49JkTIou8vcqWzjTZNOJTSqBiuvJbKm8rrz40HJaCdP5z3sE
         zEjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761685216; x=1762290016;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztnEZ8z8mQZFEmEJLlZF9ukU00RhQZ/xEw/G6uwQnzQ=;
        b=NF5V6C9dopQbejohbuqXoUdlJU+fvrxSLCPvmn6MIM/FCiIz8fCZEhlqvp2duvQUCN
         kte25oJd3877vRL4j0VWzguUAQwDSF9rlVXiLQa2ZbUilH7Ove9SsQuLfjhktGWK0LwR
         bIV1BH3vpXmXeGUQQLW81yVrZxslJI9ij8U7LqzLEfQLHA2ixf8OPS1nUfVU0mSpF4TW
         aI9grwQuW774ol6MRITJ70iKX1pKNu741tQthlP7eYykysUrMnrEgMlniexZwrzBq1Gy
         MB+83ru8TlwDL3IP3838I6Daw3tgEMudMIbA+RwxoDsLAIIwNm58qyHKa8NO4Nq8xR2L
         UNeg==
X-Forwarded-Encrypted: i=1; AJvYcCXbJqDhj99mtE/jqAyONuxl25QRuIWBo6a/aNF8k9zutdlZ5TNAG/Ebi2DZG0hspfUK0yq8PhYzT5Ww@vger.kernel.org
X-Gm-Message-State: AOJu0YxYgqZYO5QAR4NAEVJ3DccXF4PR1t4TpDrWlVrRbWdC+IzP8MOd
	jWaZet2tuSWP3R9jzO00p3p1nE1wQuTrHfWLt5CGIEibimsVzmzdBtAzBvt6hY37P0zgj8EMohU
	a3DKFKHiqNUm+sVEUOw9IjN7ezfWg7dJUE4wMc4rt5mFkNbUKh7NJUFscFXcov8Y6
X-Gm-Gg: ASbGncvIXec4XaHt/0YSuq7GrGKGosZWW3eEE0oRDXZl3xEdZkRKMEZC4rRoHAKEqsp
	dG9iSv9ysUvIWjCq5AL8pUtwWHvZhtBs4ytVVV0YNHG++Ou/lzih3WBC/lsBmTQWZhnabjT9GGq
	zbZZrkAx3WrG+9JP+A4cBWcYNk6FT0U3EpZ9Y7mgY0+KdK2Tgh5xMrNG+HzWHWaJXCX+OrJ6KB3
	RvgOJow3zqujZMH+McaovUWvYRc3XeY+lCvoX8R9P+fA/DoWhcPZiFDx0okQogl+3Z+lcj2h7ys
	xbV1uTIdm05cGyHLF1JP9VmDvyJdIw7DAHnBI5lBc4R4yxF94y1x/YYhLZ73UlM4XPDVddsNL7w
	Mw2rRZybsGXuiQ3JMxhb9UKR2cCRHBBr/MvA3z56zmx0KfvFD1KPvEp5jEAUc0lEe+Mkeyn25D0
	bi9+sa/G5egSGb
X-Received: by 2002:a05:622a:8f:b0:4d0:ac40:fab8 with SMTP id d75a77b69052e-4ed15b4947emr9504471cf.7.1761685214670;
        Tue, 28 Oct 2025 14:00:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHy+ynRMizh5efdzduRYMgWEH8/HKBtFtnCd4b/KaFwqqay4ojtNyQT3m1WxgtDSScIZivIIg==
X-Received: by 2002:a05:622a:8f:b0:4d0:ac40:fab8 with SMTP id d75a77b69052e-4ed15b4947emr9503721cf.7.1761685214025;
        Tue, 28 Oct 2025 14:00:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f861f5sm3283594e87.107.2025.10.28.14.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:00:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 23:00:05 +0200
Subject: [PATCH 6/7] arm64: dts: qcom: sc7180: add gpu_zap_shader label
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-zap-shader-v1-6-7eccb823b986@oss.qualcomm.com>
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3687;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=XZlVanBK07YsrrAgPlVUCFnWnH1kW6H3soUn83IKxhE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpAS7UDIYbGe3XDxCxNrS0zAq0+gWjg/uMGzAzs
 718A9UAk0SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaQEu1AAKCRCLPIo+Aiko
 1dNoCACg08F4nyNGtHTbnJoxhvSiUhjUDQ0LUe3n5iTPGjsYsXTNaeCOJ/E7hTnBAOHPV4vKWhS
 RBW1luOf3MdIBXy5wc3lHHRKtIcvtlvg//F4+2jy+dMCezDZeeG4UtXamw+kyxpRUNajTLQnMwm
 M8L2J6LIkT9B/sTeA5W7CFyeWnovb/Cd2mcq9CUPTYil63meHsFSbNEapS89kVMNbjW8Wmfsxtt
 O6Ofy4KUcbnLdvy5RJqbRhG4JQFQ87yMiLKpiOOhjvAOcYBxwmKgMAiV2azLGS1+EtCUVrdNwTO
 KJYHJ5KcyhFUtdSyMcZ5e7gLfWHYkyXJ2JyVbIidiLjjCqay
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: _9TtzF_HuQpJWM8o03XQAfrhQ257sKL5
X-Proofpoint-GUID: _9TtzF_HuQpJWM8o03XQAfrhQ257sKL5
X-Authority-Analysis: v=2.4 cv=avi/yCZV c=1 sm=1 tr=0 ts=69012ee1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=bRHBWdnJZKEDweV1ddAA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3NiBTYWx0ZWRfXwmmyq4SDjx26
 0rZDCF68X9SZRGddYqlYQYZLDyySboTnF30HYCocPmIsK4mluO+VdBh1XkOBv33voZlT8rmwnIK
 Ucrb25GNYrwBduPsdr1D1YtofdVGhQzuop/ZYCE6qSJbxH27csdQrH0Adw2hSwvpP98ThE6t2Gt
 m42ITal7U4727vxpUIPxsrwXXCm4DNQjpYb1Tosu55t8D4TOzYJb/EFFFYU6f/JWUF1AoCBPA35
 aZAD4CCNxFsqgmCkI6jd174uYqFU8qmmRaHKRlPsee1Cv2kabz/TDRvFm0xh1TbarhouBvjWi3K
 ps3GpuRegIirzbVgQUIBVe1gZ3rNr0c6rIRFCQ2ABH8aX1GHMHr/wJi9sipz/LTNs/IKRa4rzQi
 AVlx8YeHiA1/gxHSYQypKnOb98huCA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510280176

Patching existing DT nodes based on full path is error prone and
generally not recommended. Add a generic zap-shader subnode to the GPU
node on SC7180, delete it on trogdor and IDP, two platforms which don't
use ZAP and patch it with the firmware-name on all other platforms by
using the label.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts | 9 ++++-----
 arch/arm64/boot/dts/qcom/sc7180-el2.dtso         | 6 ++----
 arch/arm64/boot/dts/qcom/sc7180-idp.dts          | 1 +
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi     | 1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi             | 4 ++++
 5 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
index ad342d8b7508c543984f166300bea04b6d7de88f..1514da636269826ce3e87d8c23aad0e37430f57d 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
@@ -31,7 +31,7 @@ chosen {
 	};
 
 	reserved-memory {
-		zap_mem: zap-shader@80840000 {
+		gpu_mem: zap-shader@80840000 {
 			reg = <0x0 0x80840000 0 0x2000>;
 			no-map;
 		};
@@ -426,11 +426,10 @@ panel_in_edp: endpoint {
 
 &gpu {
 	status = "okay";
+};
 
-	zap-shader {
-		memory-region = <&zap_mem>;
-		firmware-name = "qcom/sc7180/acer/aspire1/qcdxkmsuc7180.mbn";
-	};
+&gpu_zap_shader {
+	firmware-name = "qcom/sc7180/acer/aspire1/qcdxkmsuc7180.mbn";
 };
 
 &mdss {
diff --git a/arch/arm64/boot/dts/qcom/sc7180-el2.dtso b/arch/arm64/boot/dts/qcom/sc7180-el2.dtso
index 49a98676ca4db270ecb55e8f801d0800ef9e4def..6e8da59597b657cf15c68c3a12ab56213979950b 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-el2.dtso
+++ b/arch/arm64/boot/dts/qcom/sc7180-el2.dtso
@@ -8,10 +8,8 @@
 /plugin/;
 
 /* We can't and don't need to use zap shader in EL2 as linux can zap the gpu on it's own. */
-&gpu {
-	zap-shader {
-		status = "disabled";
-	};
+&gpu_zap_shader {
+	status = "disabled";
 };
 
 /* Venus can be used in EL2 if booted similarly to ChromeOS devices. */
diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 19cf419cf531f353f17b83b89ec57dac697d5134..0bce3eefca2e9b14310390f49616873689894ae3 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -39,6 +39,7 @@ chosen {
  *
  */
 
+/delete-node/ &gpu_zap_shader;
 /delete-node/ &hyp_mem;
 /delete-node/ &xbl_mem;
 /delete-node/ &aop_mem;
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 74ab321d3333cf8fdca45c7cde2fcd9d34b264b2..b398f69917f0e1eb7f2b1b0a6cb582ecb0c7c5c9 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -41,6 +41,7 @@ charger-crit {
  * required by the board dts.
  */
 
+/delete-node/ &gpu_zap_shader;
 /delete-node/ &hyp_mem;
 /delete-node/ &ipa_fw_mem;
 /delete-node/ &xbl_mem;
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index a47182994c564e036dba25c772454320dc41cc7c..45b9864e3304b2c0331a27109f7918c327cee5c2 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -2185,6 +2185,10 @@ gpu: gpu@5000000 {
 			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
 			interconnect-names = "gfx-mem";
 
+			gpu_zap_shader: zap-shader {
+				memory-region = <&gpu_mem>;
+			};
+
 			gpu_opp_table: opp-table {
 				compatible = "operating-points-v2";
 

-- 
2.47.3


