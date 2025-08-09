Return-Path: <devicetree+bounces-202906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D006FB1F369
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 10:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5F0D18946FC
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 08:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C88CB281368;
	Sat,  9 Aug 2025 08:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DHI1ylL/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A012B280CEA
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 08:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754728462; cv=none; b=fCNfbGePmS7Yg7dxQTuhWO8Sqt360qrsDxEWmKLPVdZkZQMermeBajYfzL7JoHSBaM67rAXhOQMDfhoOajQC2BuCIDexIcEVENcwoLmaQxVLu1GBSIXeIS6bzwK96RtJThdclSNt7AfEv3o9/z6iWKeGuGt9ljJ1qZlDBbonvH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754728462; c=relaxed/simple;
	bh=YfiVGEud20vU8esoZtyj0me/DjvqG2/Tlpw0/CyKgHk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tHPbpLIBL21BG429N6XXKKGh1gI56Pz89sutj6qPV5NLF/JqLdO8H+NR4/69c/p1NJNosX8wi98f43Ugqte+/p/qobK0lU5H6w5W6Osb3vwPHkbFkifHa1FYCDJJiJQNw5iY+ethW1ZJPxYIkARozNWquOQLLCaGgJFrtH0Refc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DHI1ylL/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5794lvrn024072
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 08:34:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tHOzaiCC5F8i8lHg3dFjNbOd7YZhTe1TcbaS/7DwHXM=; b=DHI1ylL/uaF28GmB
	C94lsUAsh5JYqE/yxFDKl9tRhuVHy6YqnZXco6Ko/O3MHKJiutOw66XD72BakQix
	WYprBswCxB/+y8JjW0ATMU7bISjTif4lC4VileJ1wCe/1M75bhVdozy9P31HkobS
	fIH0DvFfv06E6+E9AXM79yNR90l27QQaSdjmUu8yxryc4hUFXLYp6xUj04fexMau
	kUaAMHDONkT2MvH8XfZuXem7U88w9S7pGzQS4rRw4hXbp+WrKy7U9+jp91x43yjs
	d5vpzZ+r3Ozk8/mmMwqqTCPDnmpv9w5Kh6dbvwgIgnKMlSOPgqcZ0FD4C5O3TC4K
	uhtlJw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dym9g8kq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 08:34:19 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b0884559cdso40044471cf.2
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 01:34:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754728458; x=1755333258;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tHOzaiCC5F8i8lHg3dFjNbOd7YZhTe1TcbaS/7DwHXM=;
        b=cpfArbjgBcvz9as+mwWlsndO0i7Kldq/wHfalKIQIJtDq6PzK+YuT2F49VLwfGbTiO
         OTIYDJ8xd3owO//wyaOj7MJ0+nkvz8Zc9c49n99jq7Mf4MWITvtOUEV3eC2er4jhaTxk
         XSUFq6Q7+FzqPhobkL1pXHQEaTThLick8AYFNlf5f2IA+3jMi+sTQgOfA5Z43ED63S6O
         6JaiRH0KFxTd0fT5M6C9j7X+DJdc8FozsH1Bww6xL0vFP81+Wz31l9s7BvSBFeBrQMNJ
         WmGioqEbV39FxSp9iQC9fP41xVDFnKgDytcUSM0mVmnbSnWzYA7GKJNRzXgA9Q9jEPXj
         09oQ==
X-Forwarded-Encrypted: i=1; AJvYcCWamKlf5/4XvfooU4DT7rlB7yLV/OOOyz8pB+9BBQCbl0t5yeSZ6Jz6EiDSSy903KMcDq6S9NCkgwEL@vger.kernel.org
X-Gm-Message-State: AOJu0YxDeaVp91CQ2yJGsks6Q9mpl+isILPT7r8YnZYylVs1xLaP8qvj
	ghrUhGU9e7PNNxS3QVPQJDcWYN0ZR5oJ/UXtAhdd2EfnM1V7HWiypLpI8uQL9t52a/7yXur73bn
	xSc3hTHAcHoJ0VeDe7abO9E7hNAOLcFPsGDM1Wurvg6Ii5eia+F3XBO1haaoyZBgs
X-Gm-Gg: ASbGncubwqUxhoF4M9V/EqDbmIqF549drbAbEDZChxtKVYNryd7Dltr1/VuoomFmu5+
	2TualmUkFaAMGYkod1D7Mx/OL9pRAyIC3egPE9JFsoLpJhFo5Q59dnwWeZJA94uDPEYUyml6tu8
	QGRLti9P4lZDOy6dQIJj3LNUSZjiJXYCRmzy95YTp3rtlZLgsIjpIy6NdP1eAH0KaAr+DR6oOUa
	7uwPsBF3UXHxMHayUJjY8Qg0YoGaM3mbN2V7j6RHAiIfJ+ossxf+VVXhqHRlYu5innChAQMK7gE
	xpALAqrYypKzQc213uyVHT3TCjp3uHHgUNCiJbZVNWL09HPEZKt3xZuU0507Xa9IKyg8LtQxEGa
	oWf+OoKwk4cfrRG/SMqUakb9oWv7Ddmau73wWnAgOn+6qWAQzs/5c
X-Received: by 2002:a05:622a:13cf:b0:4af:1547:4513 with SMTP id d75a77b69052e-4b0aee629e8mr77324861cf.58.1754728458136;
        Sat, 09 Aug 2025 01:34:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPRKMoihFya0R/88dPZM/Ya/YpBLYC1QFY2794iF4MD25Q949eD1Dn+KHq+zWgAtAjsvuFZQ==
X-Received: by 2002:a05:622a:13cf:b0:4af:1547:4513 with SMTP id d75a77b69052e-4b0aee629e8mr77324511cf.58.1754728457484;
        Sat, 09 Aug 2025 01:34:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88c99078sm3268166e87.102.2025.08.09.01.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 01:34:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 11:33:57 +0300
Subject: [PATCH v4 6/6] arm64: dts: qcom: Add MST pixel streams for
 displayport
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-dp_mst_bindings-v4-6-bb316e638284@oss.qualcomm.com>
References: <20250809-dp_mst_bindings-v4-0-bb316e638284@oss.qualcomm.com>
In-Reply-To: <20250809-dp_mst_bindings-v4-0-bb316e638284@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=27554;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=bWogejo2vi3gl352VZRFqEcGv8m7/EBOIvPZdPXNKdI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBolwf0fDH3B+CwaGnvUFGc4QgbTzbjCn6FC3HRY
 w6vA0A65yGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJcH9AAKCRCLPIo+Aiko
 1eT5CACaNOdE8n868rtgAThxdh9Rpl+RBe1vJrE+Hpb+COB6msJv8JfMLyAOLj5/j3GP8mvGU7b
 z6vnWazLFAqRI/qVeskuCfidxsUs50CcTZ9hxE4e0qY2jBFKDYCNwBnn9M1rpA4NwFdg8q7F6S3
 cnYA5t5CvV12fFDbR9pJoxpqnyFxafr3dm2p9kf4Ft7Z6/QrmMqtS65ow2tYC9TmlZdt9c44prQ
 Zk01QFpbjq0QbgA68nk3MN9kJV8rUsgBmEcvRTvWPsijYp+xYgBu8VFkiutY4b64WG4tNols9hV
 KidOOyyGjAHJoC0lHbEL9NXjU05mdehcMY7aCi+iP1inoQwD
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: AWM1FC91L08-Z9oJ3HK8nWqVg6tfxHa1
X-Proofpoint-ORIG-GUID: AWM1FC91L08-Z9oJ3HK8nWqVg6tfxHa1
X-Authority-Analysis: v=2.4 cv=YZ+95xRf c=1 sm=1 tr=0 ts=6897080b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=GeKaIpM8acZGkCD96n0A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNiBTYWx0ZWRfX+yZWpZrpuBQe
 AFEFUp2MNhic2BkUCeazoCneWNzvc1/9KL0S+GIz/5LX8yz3IXhI/G9v8RYnVIwQnoadutfBmHc
 4juEDWfHcUwweA8gbXDEPIrY9lRaTdlBvkCjIPsukMYCH80M4xrx2OM2Grua1+o55SW4DywYWdV
 ZAbE/mD1fs/zzhc50xbDUMTUInK5X1ovJgjxWQqZjMhzlv9aJwi+d6utlPq3mZwJVgaaE959fJT
 93127YG4ApeS6Exiqf+DGBFU2AYQd6Gq28hTyamNPdqYoh8vlHCUimxNE4uxIH1zQbhedLjOH9i
 BxrQ96pK47Hgy0MIXSxKnMmyjEXO7PMhvwjgMrKhMK5Ag//uYKGS6rmkEyruG9aO88/V/h46a93
 4NY7+ggs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090036

From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>

Update Qualcomm DT files in order to declare extra stream pixel clocks
used on these platforms to support DisplayPort MST.

Note: SC7280 isn't udpated since it requires clock controller changes.

Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi  | 34 ++++++++++++----
 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 10 +++--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi  | 20 +++++++---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 72 +++++++++++++++++++++++-----------
 arch/arm64/boot/dts/qcom/sdm845.dtsi   | 15 +++++--
 arch/arm64/boot/dts/qcom/sm8150.dtsi   | 10 +++--
 arch/arm64/boot/dts/qcom/sm8250.dtsi   | 10 +++--
 arch/arm64/boot/dts/qcom/sm8350.dtsi   | 10 +++--
 arch/arm64/boot/dts/qcom/sm8450.dtsi   | 10 +++--
 arch/arm64/boot/dts/qcom/sm8550.dtsi   | 10 +++--
 arch/arm64/boot/dts/qcom/sm8650.dtsi   | 10 +++--
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 30 +++++++++-----
 12 files changed, 171 insertions(+), 70 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 9997a29901f57d7894dc1eacb6a809caa427c6c4..74d08c5a320aaf685b6337ef481ed45f5453a5d2 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -4691,15 +4691,28 @@ mdss0_dp0: displayport-controller@af54000 {
 					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK>,
+					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK>,
+					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel",
+					      "stream_2_pixel",
+					      "stream_3_pixel";
 				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
-				assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
+						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>,
+						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL2_CLK_SRC>,
+						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL3_CLK_SRC>;
+				assigned-clock-parents = <&mdss0_dp0_phy 0>,
+							 <&mdss0_dp0_phy 1>,
+							 <&mdss0_dp0_phy 1>,
+							 <&mdss0_dp0_phy 1>,
+							 <&mdss0_dp0_phy 1>;
 				phys = <&mdss0_dp0_phy>;
 				phy-names = "dp";
 
@@ -4770,15 +4783,20 @@ mdss0_dp1: displayport-controller@af5c000 {
 					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
 					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK>,
 					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
-					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK>;
+					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
+					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
-						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>;
-				assigned-clock-parents = <&mdss0_dp1_phy 0>, <&mdss0_dp1_phy 1>;
+						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
+						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&mdss0_dp1_phy 0>,
+							 <&mdss0_dp1_phy 1>,
+							 <&mdss0_dp1_phy 1>;
 				phys = <&mdss0_dp1_phy>;
 				phy-names = "dp";
 
diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
index 38f7869616ff01ece3799ced15c39375d629e364..62bd535d7f14bed10fae329b20ac97cb63f3761b 100644
--- a/arch/arm64/boot/dts/qcom/sar2130p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
@@ -2144,16 +2144,20 @@ mdss_dp0: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index f4f1d6a11960c69055d001a34e893e696ae5ce77..48353f70878d57c4e61b33c6f4c147379e4ea4d0 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3239,16 +3239,20 @@ mdss_dp0: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_prim_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_prim_qmpphy QMP_USB43DP_DP_PHY>;
@@ -3317,16 +3321,20 @@ mdss_dp1: displayport-controller@ae98000 {
 					 <&dispcc DISP_CC_MDSS_DP_AUX1_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK1_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK1_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>;
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK1_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_sec_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_sec_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 87555a119d947dca75415675807f7965b2f203ac..11ea2fa0b8537165d59469d1c7ccfa3c29496c54 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -4338,15 +4338,19 @@ mdss0_dp0: displayport-controller@ae90000 {
 					 <&dispcc0 DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc0 DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc0 DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc0 DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc0 DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
 				clock-names = "core_iface", "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc0 DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc0 DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
+						  <&dispcc0 DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc0 DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_0_qmpphy QMP_USB43DP_DP_PHY>;
@@ -4417,14 +4421,18 @@ mdss0_dp1: displayport-controller@ae98000 {
 					 <&dispcc0 DISP_CC_MDSS_DPTX1_AUX_CLK>,
 					 <&dispcc0 DISP_CC_MDSS_DPTX1_LINK_CLK>,
 					 <&dispcc0 DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
-					 <&dispcc0 DISP_CC_MDSS_DPTX1_PIXEL0_CLK>;
+					 <&dispcc0 DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_DPTX1_PIXEL1_CLK>;
 				clock-names = "core_iface", "core_aux",
 					      "ctrl_link",
-					      "ctrl_link_iface", "stream_pixel";
+					      "ctrl_link_iface", "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc0 DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
-						  <&dispcc0 DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>;
+						  <&dispcc0 DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
+						  <&dispcc0 DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
@@ -4494,10 +4502,12 @@ mdss0_dp2: displayport-controller@ae9a000 {
 					 <&dispcc0 DISP_CC_MDSS_DPTX2_AUX_CLK>,
 					 <&dispcc0 DISP_CC_MDSS_DPTX2_LINK_CLK>,
 					 <&dispcc0 DISP_CC_MDSS_DPTX2_LINK_INTF_CLK>,
-					 <&dispcc0 DISP_CC_MDSS_DPTX2_PIXEL0_CLK>;
+					 <&dispcc0 DISP_CC_MDSS_DPTX2_PIXEL0_CLK>,
+					 <&dispcc0 DISP_CC_MDSS_DPTX2_PIXEL1_CLK>;
 				clock-names = "core_iface", "core_aux",
 					      "ctrl_link",
-					      "ctrl_link_iface", "stream_pixel";
+					      "ctrl_link_iface", "stream_pixel",
+					      "stream_1_pixel";
 				interrupt-parent = <&mdss0>;
 				interrupts = <14>;
 				phys = <&mdss0_dp2_phy>;
@@ -4505,8 +4515,11 @@ mdss0_dp2: displayport-controller@ae9a000 {
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
 				assigned-clocks = <&dispcc0 DISP_CC_MDSS_DPTX2_LINK_CLK_SRC>,
-						  <&dispcc0 DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>;
-				assigned-clock-parents = <&mdss0_dp2_phy 0>, <&mdss0_dp2_phy 1>;
+						  <&dispcc0 DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>,
+						  <&dispcc0 DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&mdss0_dp2_phy 0>,
+							 <&mdss0_dp2_phy 1>,
+							 <&mdss0_dp2_phy 1>;
 				operating-points-v2 = <&mdss0_dp2_opp_table>;
 
 				#sound-dai-cells = <0>;
@@ -5669,10 +5682,12 @@ mdss1_dp0: displayport-controller@22090000 {
 					 <&dispcc1 DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc1 DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc1 DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc1 DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc1 DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
 				clock-names = "core_iface", "core_aux",
 					      "ctrl_link",
-					      "ctrl_link_iface", "stream_pixel";
+					      "ctrl_link_iface", "stream_pixel",
+					      "stream_1_pixel";
 				interrupt-parent = <&mdss1>;
 				interrupts = <12>;
 				phys = <&mdss1_dp0_phy>;
@@ -5680,8 +5695,11 @@ mdss1_dp0: displayport-controller@22090000 {
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
 				assigned-clocks = <&dispcc1 DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc1 DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
-				assigned-clock-parents = <&mdss1_dp0_phy 0>, <&mdss1_dp0_phy 1>;
+						  <&dispcc1 DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc1 DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&mdss1_dp0_phy 0>,
+							 <&mdss1_dp0_phy 1>,
+							 <&mdss1_dp0_phy 1>;
 				operating-points-v2 = <&mdss1_dp0_opp_table>;
 
 				#sound-dai-cells = <0>;
@@ -5741,10 +5759,12 @@ mdss1_dp1: displayport-controller@22098000 {
 					 <&dispcc1 DISP_CC_MDSS_DPTX1_AUX_CLK>,
 					 <&dispcc1 DISP_CC_MDSS_DPTX1_LINK_CLK>,
 					 <&dispcc1 DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
-					 <&dispcc1 DISP_CC_MDSS_DPTX1_PIXEL0_CLK>;
+					 <&dispcc1 DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_DPTX1_PIXEL1_CLK>;
 				clock-names = "core_iface", "core_aux",
 					      "ctrl_link",
-					      "ctrl_link_iface", "stream_pixel";
+					      "ctrl_link_iface", "stream_pixel",
+					      "stream_1_pixel";
 				interrupt-parent = <&mdss1>;
 				interrupts = <13>;
 				phys = <&mdss1_dp1_phy>;
@@ -5752,8 +5772,11 @@ mdss1_dp1: displayport-controller@22098000 {
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
 				assigned-clocks = <&dispcc1 DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
-						  <&dispcc1 DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>;
-				assigned-clock-parents = <&mdss1_dp1_phy 0>, <&mdss1_dp1_phy 1>;
+						  <&dispcc1 DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
+						  <&dispcc1 DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&mdss1_dp1_phy 0>,
+							 <&mdss1_dp1_phy 1>,
+							 <&mdss1_dp1_phy 1>;
 				operating-points-v2 = <&mdss1_dp1_opp_table>;
 
 				#sound-dai-cells = <0>;
@@ -5813,10 +5836,12 @@ mdss1_dp2: displayport-controller@2209a000 {
 					 <&dispcc1 DISP_CC_MDSS_DPTX2_AUX_CLK>,
 					 <&dispcc1 DISP_CC_MDSS_DPTX2_LINK_CLK>,
 					 <&dispcc1 DISP_CC_MDSS_DPTX2_LINK_INTF_CLK>,
-					 <&dispcc1 DISP_CC_MDSS_DPTX2_PIXEL0_CLK>;
+					 <&dispcc1 DISP_CC_MDSS_DPTX2_PIXEL0_CLK>,
+					 <&dispcc1 DISP_CC_MDSS_DPTX2_PIXEL1_CLK>;
 				clock-names = "core_iface", "core_aux",
 					      "ctrl_link",
-					      "ctrl_link_iface", "stream_pixel";
+					      "ctrl_link_iface", "stream_pixel",
+					      "stream_1_pixel";
 				interrupt-parent = <&mdss1>;
 				interrupts = <14>;
 				phys = <&mdss1_dp2_phy>;
@@ -5824,8 +5849,11 @@ mdss1_dp2: displayport-controller@2209a000 {
 				power-domains = <&rpmhpd SC8280XP_MMCX>;
 
 				assigned-clocks = <&dispcc1 DISP_CC_MDSS_DPTX2_LINK_CLK_SRC>,
-						  <&dispcc1 DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>;
-				assigned-clock-parents = <&mdss1_dp2_phy 0>, <&mdss1_dp2_phy 1>;
+						  <&dispcc1 DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>,
+						  <&dispcc1 DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC>;
+				assigned-clock-parents = <&mdss1_dp2_phy 0>,
+							 <&mdss1_dp2_phy 1>,
+							 <&mdss1_dp2_phy 1>;
 				operating-points-v2 = <&mdss1_dp2_opp_table>;
 
 				#sound-dai-cells = <0>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 828b55cb6baf10458feae8f53c04663ef958601e..816987906ca51b8c7eb834d8b850839941eadb6b 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4656,12 +4656,19 @@ mdss_dp: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
-				clock-names = "core_iface", "core_aux", "ctrl_link",
-					      "ctrl_link_iface", "stream_pixel";
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
+				clock-names = "core_iface",
+					      "core_aux",
+					      "ctrl_link",
+					      "ctrl_link_iface",
+					      "stream_pixel",
+					      "stream_1_pixel";
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
 				phy-names = "dp";
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index abf12e10d33f1ce5c74e3e9136585bcb0a578492..598d505c8dcf86199f59240e62f6de36e55dfbfd 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3890,16 +3890,20 @@ mdss_dp: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index b0197602c677d49f7833f31d71f72436499bfe84..9fbbd7e09aa54cc5f242052745242ce76493a388 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4771,16 +4771,20 @@ mdss_dp: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 9a4207ead6156333b8b6030fb0fbc1d215948041..136f40a3b9767133d6a4fe52753530bccced3391 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2876,16 +2876,20 @@ mdss_dp: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
+					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 33574ad706b915136546c7f92c7cd0b8a0d62b7e..da83ac10f70f666fbb836e79a38a4a73a8f9969c 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -3431,16 +3431,20 @@ mdss_dp0: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 45713d46f3c52487d2638b7ab194c111f58679ce..6ceae0e3165ec9033c8f9f1c0106db874530cc7a 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3755,16 +3755,20 @@ mdss_dp0: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index e14d3d778b71bbbd0c8fcc851eebc9df9ac09c31..e4dd8cd33aefba143d92cbcf3ccc3fc1d3f3249c 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5481,16 +5481,20 @@ mdss_dp0: displayport-controller@af54000 {
 					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				operating-points-v2 = <&dp_opp_table>;
diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 5e9a8fa3cf96468b12775f91192cbd779d5ce946..17a7c217a2f975f0e71b9b5df5781061e66884b3 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5312,16 +5312,20 @@ mdss_dp0: displayport-controller@ae90000 {
 					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				operating-points-v2 = <&mdss_dp0_opp_table>;
@@ -5395,16 +5399,20 @@ mdss_dp1: displayport-controller@ae98000 {
 					 <&dispcc DISP_CC_MDSS_DPTX1_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX1_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK>;
+					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX1_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX1_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_ss1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				operating-points-v2 = <&mdss_dp1_opp_table>;
@@ -5478,16 +5486,20 @@ mdss_dp2: displayport-controller@ae9a000 {
 					 <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK>,
 					 <&dispcc DISP_CC_MDSS_DPTX2_LINK_INTF_CLK>,
-					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK>;
+					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK>,
+					 <&dispcc DISP_CC_MDSS_DPTX2_PIXEL1_CLK>;
 				clock-names = "core_iface",
 					      "core_aux",
 					      "ctrl_link",
 					      "ctrl_link_iface",
-					      "stream_pixel";
+					      "stream_pixel",
+					      "stream_1_pixel";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX2_LINK_CLK_SRC>,
-						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>;
+						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC>;
 				assigned-clock-parents = <&usb_1_ss2_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_ss2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 							 <&usb_1_ss2_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
 				operating-points-v2 = <&mdss_dp2_opp_table>;

-- 
2.39.5


