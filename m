Return-Path: <devicetree+bounces-242409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 38437C89F20
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6EAE34E33A0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359E8274B59;
	Wed, 26 Nov 2025 13:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mljQ7ex1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Thuy54kb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3747A21CA0D
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 13:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764162723; cv=none; b=Q5hgdCBImM+IRASR2VC2g+TQ8kJHo1XZlgQD+tf6F6xHG9AQcwU26i9ybxBaJTv1cxq3a3qNnSs1nS+LofjSOVQhqu8ERq4Q6BbvoDq8l6Ag9Jl3TFLMHRgtqB0TV3ClXY+Qmdo6AHxB/tD+eAN6wkSPaIvr2WSN3vroM4hw4o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764162723; c=relaxed/simple;
	bh=Kx6SDNGGmtR+vCY7Fvwx0dLzXDrGEhUQ+uAXXXTIdVY=;
	h=From:To:Cc:Subject:Date:Message-Id; b=sIjwW3Xf0FD0l9qK4p4E5pPVZBUJmv/yZf+WsHFxs+Af0Aq1oeNJmrP3DFIoKBiD0sBBKQjNrXz9cIxn4aE8DU5nxGiDK5Hl3z8SGDUnvP4xnhwM1UZc2z6HGxvu/A44YAB4/UpkruevWcb7+mZbWEBEOm8/OOvdz4tKq5xHikw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mljQ7ex1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Thuy54kb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQBNX7L1849222
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 13:11:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:message-id:subject:to; s=qcppdkim1; bh=atO2d0oj7Xnc
	utkIW7ClolzNmLa6YnG+2BwUOup5uEY=; b=mljQ7ex15eGMm5My1ngSgROk4Aic
	pc7M4q/4tEvIB8FtFsn3n5Pi5CJGMxHwd0vDI2UEc0mVvki1OmH1G3UqPyKyt/ec
	cIbHnR5mNpIw5JcMK6OgMEHHCuSHr/qNZ5Uq4jZ5wve8ssjnkYRCFHCnEZbU1S/N
	RXTJHxmBLv0sJiNhQM0U86cFRaWvkWAwCHJIcdkVNAgJqHiq2QL1z5FJ1aZpguUR
	+3RjVemxemxOfFdawEIIbjFo+KOoRzO3cdun9mPkBWiCIwil/03lkF+4y5GHTUij
	7cx4d0qly9tAOgn0Bn6KblE6c/Nury+oG9GFwlRlZEzyR+EVMPRfph7aRQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap0msr80g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 13:11:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297ddb3c707so55133515ad.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764162719; x=1764767519; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=atO2d0oj7XncutkIW7ClolzNmLa6YnG+2BwUOup5uEY=;
        b=Thuy54kbIyJMyUN5Ye57EvF0dCasKPBcXiYFUZNUSPyrXLGeRFTe+NjtmNX1/KmZDA
         gA7yROj0VnUq7JiH+GFWtpUnkrcCH06vU3dubi9lnXN6TvGYkethPWCg5z0IvHxIKLYO
         skD9XiK4A+HA7PTG6Ecv5O1Qwy2cDnK8wLT+jSIRVilBEPEgAXNvEm36Mbqgf0I5Ntzh
         imdpTivl7mU2BW2s69U7vYK820wn2rRGd9O4JWTQdBB4uxTXQUnqLXkFGMcnlxeNUa4d
         4KWTWgNRLD+RPGqCuanbpjQAw/UOEwvDcED03GOi1mQci8Gr1vd/bpdeWNTvzklfQD1l
         s1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764162719; x=1764767519;
        h=message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=atO2d0oj7XncutkIW7ClolzNmLa6YnG+2BwUOup5uEY=;
        b=hrO5y25mTDvXamMtk5hnwQPKHzcGUpxo/GsTE2z8M9+JQbHvjo/rluZQ0XMhlZ6dIC
         pfU7W3d3jhY25D+KS9+q8k8+RAGbODH9wPybBm2sWKF5r93V2nTGm6JGi3FS0nbfmfTS
         lceqM1e5g8TbntXuwFp7ABArLg2pDRSY2t61P3RfWRFgiQxpDaBuvA2qhpgZMJww3k0E
         yQ4kAcvwWJcBICHBrv4Qp8ToQM+7dSCKjyk5EmPPMfr3NRXH4ZzYTjK93Qfpn1b8oUTf
         fpg7BO/qjaVtaYL3pmwZ8RLVxYdMJwYHKMNI0VlxkAMjdQdvwlRoSBOh2okJT6c4taZo
         4vCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbqG2A8tYE5AOtbXtgTYIONeuMR1PZa0p15D1MDn17kAe7e4EwAHUzBayzmwLRLeTGqzlZmQUoNCgy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6EhIx83cLBgdg+nZZv4ao7dftpnHIJy8GUVpf16ql8SV+h5IL
	5LyAwmE4tv/WGRT4WwYoMrh1B3pFh96HUDqnoLgIRk0agiINocAJvIew9OHD/ln7SqA9QevOYWY
	UNzIyxdMggSOlQhzHBory/RDx01oBhb0plQ4+KA2aDYII7EeCaP0N02ssrjRIzQOQ
X-Gm-Gg: ASbGncsbryWBSppVIEIJTzh7+6toRc1yfOm3NKQ2Xocz2T+LV0Fm1ljbcDMgbYjdxtm
	/qt3kZnc/YualSlfcv/s+X3uvjdj2Jwf/8XPkjAKMb+RFjz67zwglDi3r667Vi/NA2h6a9rqYwN
	3d8nD8spw8v1Ne9IPoYbfyyCUNGKIFcK4TSp/6GkkO0V3M6DMXtMA/HcJRnd0zFrisxZJ0G0WRk
	ucaLZpOn5nQC4eWVCQA6BjXlyumqP27pviAjMiM9XPoYxICerfE/gHA4UQe0dtUEPwDbGRYv8Rk
	EmCaAnea4ubBSy5MidoCSULatTOXWd3YqJZBv+01y9Z0b5RN8QPRahkZoPSGOocbjtcLAdm9eJ2
	6VKdvNaM71j7etKRuBjvd6UDcIuzvLG5AwXn50mQ/bw3yC2fE5LlW
X-Received: by 2002:a17:903:4b4b:b0:298:35c:c313 with SMTP id d9443c01a7336-29bab30b2c3mr77442575ad.61.1764162718670;
        Wed, 26 Nov 2025 05:11:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGw2Uz2j8uYz6Je8kTb/xoW8pe2wn0hP1weQH0XaAMrTvugT5iKNhZx9dgT0F487YDp+nrf+A==
X-Received: by 2002:a17:903:4b4b:b0:298:35c:c313 with SMTP id d9443c01a7336-29bab30b2c3mr77442055ad.61.1764162718180;
        Wed, 26 Nov 2025 05:11:58 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b2ac81bsm200049395ad.93.2025.11.26.05.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 05:11:57 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: quic_sayalil@quicinc.com, nitin.rawat@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        stable@vger.kernel.org
Subject: [PATCH V1] arm64: dts: qcom: talos: Correct UFS clocks ordering
Date: Wed, 26 Nov 2025 18:41:46 +0530
Message-Id: <20251126131146.16146-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-GUID: 5_am9773c9cZ7BPdtn2wEMz-wrxot3AP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDEwOCBTYWx0ZWRfX1eLKk75jNlSB
 BYru/y9XNZxGyV1lVkyevXKdKV60FLKkju/NXkCTUc8JeiEC5amXHfGVYXbYW4TC9sNNDMwpSzZ
 WbAX22PUvsq9aG0cdIZbtIpAIFr86hMttSmxsVGKab+xDKxmI3UlzTIhrTzCWs1AHMkqj17iEGy
 9qDruRm31FBTvY0IvJsfBTSqDwKTQy1p8XR4+AzTKoGtkVqj57H+71mwJlpUUfKHb7VoPPFROrP
 Woi7vpi7aiICMTMMUbYmTbu8R0GGopcOTGIPdyZDDN1JtVGF4cunJh5lvDMVODN+90atTiEVc3W
 438VIdbsf09e4g14PjUT3QRInu+uT0w6jOUHtukWBwOb6HoazH1M2tyan+R/C/9tibGyJT7Xtr0
 5PIF2O199cmsWyqnDkLP0+0LKVmAzA==
X-Authority-Analysis: v=2.4 cv=N5Qk1m9B c=1 sm=1 tr=0 ts=6926fc9f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=LC8b3lGDU_EJS_S-YZAA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 5_am9773c9cZ7BPdtn2wEMz-wrxot3AP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 clxscore=1011 bulkscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260108
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The current UFS clocks does not align with their respective names,
causing the ref_clk to be set to an incorrect frequency as below,
which results in command timeouts.

ufshcd-qcom 1d84000.ufshc: invalid ref_clk setting = 300000000

This commit fixes the issue by properly reordering the UFS clocks to
match their names.

Fixes: ea172f61f4fd ("arm64: dts: qcom: qcs615: Fix up UFS clocks")
Cc: stable@vger.kernel.org
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index d1dbfa3bd81c..95d26e313622 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -1399,10 +1399,10 @@
 				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
 				 <&gcc GCC_UFS_PHY_AHB_CLK>,
 				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
-				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
-				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
 			clock-names = "core_clk",
 				      "bus_aggr_clk",
 				      "iface_clk",
-- 
2.17.1


