Return-Path: <devicetree+bounces-210227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C87B3ADD6
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 00:49:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2BDC583941
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 22:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 294E82ED159;
	Thu, 28 Aug 2025 22:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6BlvEHF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A522C08D6
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756421319; cv=none; b=SO4awuxRY1L10k5kNOE7Jupwa0VJFBwAqZ8nRTL14WEmfISdj5gtYTmctazSKH2HaCJ50+R2mSFsGgDq3QuEsJNEQZEkHVSJmre9H3l3nzkl9HAKeXpBd3qCmuK5zPwwynYoDmMxUTEjuX7QEu2ivJWzTufiJofccB1HXp6DfIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756421319; c=relaxed/simple;
	bh=ZkVsyVv2vIclITxHSKeCRDNao5rKWcCBXSWeGP43FaA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Es5mMNGH1X+IPLz+WFEr0L+qZ1r7ywivMXKihx7BucahWoznyBQ+PpVgw43oJmOhhl5VFCSJB6tXOzc1qBVWDPdz2aLKWwWTtlsL45HyOAGcFCmt+hf7Qz6HjHIBLKo5i4ETqfyFL1VD63LIje8VwiT79EReufCYUzJe924wmVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6BlvEHF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SLWdZP025046
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G+WQfJRfJ+ojjNuByHH0CbbmaQV8ss9XcUKP18Ee7Z0=; b=B6BlvEHFZ2mfXJia
	x8Y2FH2KPv9Y3Yn4r87ZmUODfQXjhnMlCGXFaNDO2mCr1S/j9Qmn8PTeOYixJtH5
	EREyJqsa/GIIdNWAgMsQP87srTHGmj0xwgxl1WzrhtsJOBu692MuU8tKcWOWFRVM
	Xd7XD8ccqcIx0ZS0PNfC+8OGnAzucl1rXzVfku6ECW2CIQASX8znxWvztLU92AQ7
	+r5TjDEY75qcEJEIFsZBAgVk96QGYhN8XyzdbpsjPVzKKZ0J+NEOB4zjbzy1nBF6
	nQK+u0sRAPTU35Jf6p+vmKclNV+rGbmli5b9BUYeO6IHU6AWmiwxPnWOLrAEL/+E
	Qj7N8Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615sya1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:48:36 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b30d6ed3a4so2562561cf.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 15:48:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756421315; x=1757026115;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G+WQfJRfJ+ojjNuByHH0CbbmaQV8ss9XcUKP18Ee7Z0=;
        b=Qcq20YZ9Cmi8rl8vEWZwW3blsoRnAt2Lx3ITRpPtLyw3sGC5RducJaGcBVupc47ts6
         E4dMGsgHFkqNcbUay5GVo3zIk5x55mxf6Kk2Y7TbRc8LAvPFS2V8p/iD2DqNsdnCRFcO
         RHg3w3G7CJ5hnPhWdCZksc9+3MSf4SEP3AqJ0h6jzbrx9iz+nMOVrMW3Ae6kBIfHXT6K
         gSaHQ2QRXiFDNEcTLZo5B4pFkUGMNIiDH3TovBvtmtm7awHtViE6/qrXI2/jEQDbEt4C
         Of3O767MWESwraoOH9IbcTdCMQ/UI0IsaOGPQr5fLMzaVfIlNm7MeAaxqWpOMWnsRf6C
         OZbw==
X-Forwarded-Encrypted: i=1; AJvYcCVoVuu8DxKrPkfO6YiXmIeLDv3X7vhIqUi1r4MlI/HN+BSaUiTCSyVaU7xiB//Ab28ujJDxOkJiU+DZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyBlK3e4DYj0j9Ta8fLS20S7NUejyH2OPLp91JsKpgKARcNWzQW
	QKkxkS5nglh4H0WIy4HSeYFJMuRon7cx6n/OQQcVyoE4CD5WCWWsQtJ/fwgUuNN4e86EipVzav3
	ER35hcPhw+2uSabOJFZJmO5wAW0WzyQX8jAW9hqCRwNH6/Je4OPrmiUNqpLBnPnK9
X-Gm-Gg: ASbGncvLyghrXQBYALHl7CKsngwnDLMnSkIe9RTRFxZBW6luBYsPiH9WDDNxPLPTpS/
	pYkgA2Oe7lb5OOl5fW5aVE4LKwiylScpH3TDYYxsNj+riUNuruUSln/ISzb+qQfJmrxUlcpTjLh
	4pMF8oDWVbPRzHeueRsyFZgDWQ+1x+my6D67QRaQxky+zyCoq+sqt7feU7FpgaYfonSrQo33Gtx
	WarB25MbnnLjyMjzrXKFxOHyG6//Zkg4eKWp61f7r7Es8FQhnfEtOsRMJawDiVvRrAAW7LE9rE6
	+arPNWvQQYI6X9pyqiadSVZUJjtURgXYSqvhOaAzY9Qef4zbAkI7CTs6SrpnVSQbf5YQjeBa6vI
	+4TP84vG61misz+K1qyeBZVebMM53Nmo34zyadruZbzZOKM3SH7/k
X-Received: by 2002:a05:622a:428b:b0:4b0:64f9:decf with SMTP id d75a77b69052e-4b2aaad0920mr343641451cf.41.1756421315549;
        Thu, 28 Aug 2025 15:48:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFm1EpMVEwDrDbJgOawMde18SyT48ZLYFgZYxxlnkKlKJBpSV8cG8pnZW7P4h8bSc3I/QCRBA==
X-Received: by 2002:a05:622a:428b:b0:4b0:64f9:decf with SMTP id d75a77b69052e-4b2aaad0920mr343641131cf.41.1756421314975;
        Thu, 28 Aug 2025 15:48:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f678452e1sm143807e87.85.2025.08.28.15.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 15:48:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 29 Aug 2025 01:48:21 +0300
Subject: [PATCH v7 8/9] arm64: dts: qcom: sm6350: correct DP compatibility
 strings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250829-dp_mst_bindings-v7-8-2b268a43917b@oss.qualcomm.com>
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
In-Reply-To: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1018;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZkVsyVv2vIclITxHSKeCRDNao5rKWcCBXSWeGP43FaA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBosNyxmDIKU1FWxpw5qkI4IleTgCRIf37TGB75q
 y/8eWDgmmSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaLDcsQAKCRCLPIo+Aiko
 1Qn4CACvdDokyDQ6C7VsJFvZZmp5DdMfytpyhmZAZh9fT3RIKIlB5h2RiTJdcd74uapEPVpke/y
 UI3uJ6RbN5Sj4pS8kEwnp0iz4EkgRbgAzLOEEqRGTXv4UjH8danqFRirlJ8jJPNM6xbx9oFIYrY
 yqeT39+MQjSKmf1Insyxfe4LOdu3TRjtT+XYNir0f89cOk6SfQOHBP/b0mPA/IqtonvVo8hiSn2
 +s2ZQ+9xCpxGMdHfz33C99dW4ayKouSOFmcbtfZLllIh5zSXwn3yOMnA9J5sY7r4Y1AHWo5fTDC
 Qpz/7QAZPCOL3tgTOozM0Wnoodq+JQAOF1WB+mw/lmXcWXbz
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfXz/Rs3EPSFUrC
 Ojxcb7N/eKH+PjiJjbceS45FHtp56HwBY9+00s0XXYCx+sTpgfMv0RYmjeqTbsKrzA8NlXsFPDW
 tCzLAd1VqEE3tI2haNM6pbWjgNEJ+ORCFIkOMRURSXBKLp2fV9RkKQTaXVooplAFASspPE9WRrl
 ZLPtP+dvuPzYP2ZdOI5yeLekh+tEBrtZEbPvxHTxtmlJ2jkdrJE6eqvnTI1xyFZByd9i50YkkGM
 GTVduw7bRzLdqzoebhGCXp/Gav5r80Jm41olBae8Qt69RrJYA02uZP9oz3Hw1YJoieK7YOChm+L
 pc0eB14734z8qdk+QzuPN+XJeG4woRM1lui74uHqrJ9K/S7q2Rv1Cek7iVfeqm7O8n81pF+DMW5
 lagPoFnO
X-Proofpoint-GUID: wXP2CxraAXQPcTwG62DHpZiDK2MSg6py
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68b0dcc4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=P5fMS2Mpt_njWCDp3nYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: wXP2CxraAXQPcTwG62DHpZiDK2MSg6py
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034

SM6350 doesn't have MST support, as such in DT schema it has been
switched to use SC7180 as a fallback compatible. Make DT file implement
this change.

Fixes: 62f87a3cac4e ("arm64: dts: qcom: sm6350: Add DisplayPort controller")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 2493b9611dcb675f4c33794ecc0ee9e8823e24d4..8459b27cacc72a4827a2e289e669163ad6250059 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2249,7 +2249,7 @@ opp-560000000 {
 			};
 
 			mdss_dp: displayport-controller@ae90000 {
-				compatible = "qcom,sm6350-dp", "qcom,sm8350-dp";
+				compatible = "qcom,sm6350-dp", "qcom,sc7180-dp";
 				reg = <0x0 0xae90000 0x0 0x200>,
 				      <0x0 0xae90200 0x0 0x200>,
 				      <0x0 0xae90400 0x0 0x600>,

-- 
2.47.2


