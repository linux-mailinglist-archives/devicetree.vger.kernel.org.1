Return-Path: <devicetree+bounces-167185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC88A89A0C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FACA3B059D
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E93FC2918DE;
	Tue, 15 Apr 2025 10:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j5VKr/pE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63265291162
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712813; cv=none; b=juJZ7Z6rFOdaG+8U48PPppjOqv3ncHlPGzvrZFBfViiYkNqw4sVt7kvAaSuwOfZcmALtrNXm5L5A8B3OSI+Zy7zsxzIfu4OI2O9YzC9pBG/WctFzw3aDh2zOUsDdqMt5ym8hzLM6dkF/RBww3ktM6X8d3rI9yaJe3k1KWAXP/Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712813; c=relaxed/simple;
	bh=m5iCFVyVqfnwHdtvSJfoafx6xtG1zH7P84KluaY3Cpg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nZl/PDfDdwsokwNFH9I0Ttn8yJMl+VLZkaMFvSAYnjdty6ZVezCu0lzVtczDphW3F/cLKATfSBD3dTUA7wxZIe+qePxSiXYrW8X1gEq6eiyD6TOwbwwElwpvdEgarNQGDfq8zTcN0ITciR1Gq9qQUT6/rrbMjHhmng2zVuzkgzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j5VKr/pE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tCee019549
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dCvhu/9W0Gi6UnFFngAKGj3mECQvGYTjgnbXd9mZ39o=; b=j5VKr/pEi2+Rx26u
	bFeGMYMUR6OSAZV+gVNWFrb9VHQxTEheR6d1XADmVxgFUHDnse1SUtS9ppt8ljT4
	2018XKpkx7EMZmy7uBbhjVI7TGdNh3mgEHNyrelp/wKDQ5Cw8wbfp67rVGzSywCK
	4yNSPC9KnHbQ/fllqdR9tVuWF5EvJJqyJJF/b9F1Ob24T/jjoMJ8DpKJyKHpBCc3
	Qe1VV98/WQL5PPKvQ1Dcwv/feD5cF7BogeHl+7NN3exeA8IHXjoQ8igSZhj/x5FW
	zjp92U7RwsqrzWeWWjsDSSf4X2nKmdvicqUpeWz7ewQ2IDW33GNZn92bmEQN/9eb
	dvEIbw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhfcyjfh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e905e89798so83673586d6.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:26:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712810; x=1745317610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dCvhu/9W0Gi6UnFFngAKGj3mECQvGYTjgnbXd9mZ39o=;
        b=weKRbMreVy+hATjWVy9H94xPF6Y88EsF73fuIe0KvNej7Zh+QH+9nHEMsR1FWf/1M/
         01cgLJ686bj3jm/oKct2xsDx8N5GaGLtLhBXS194pH4k7ixu9qCbZVErTWxU97RyochZ
         yhVGgi+t3hZ/f5lRJQde7+BJp/wSFbfHf5XjGOMWzUENj175TOtr/Ij22e5ELQTr6AfN
         hbeyPOyKVHVPDdDUqY/R00/2jAP6oofaRFbviZqgM4oOUcBdpvsb8fq9pdEX05o5EBM8
         sOf9Jp49wvCxbfzSximpc2rR4vnezRxD6xwo1u+cLYdF89t5+u8/NIhmfAi9m9cV645V
         GJ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVWRP6YK5QzkzZPYLG2UPLTWiVwx/ZXNdqYP6mgmkX1S8W5cO4JFBgugIdhwACaw1IVfQqYcJmGif7I@vger.kernel.org
X-Gm-Message-State: AOJu0YxIhlEG70pwKdZPkGTjX+zlo+SRm3fkPihyHGKYDdC9hpMRA+Rj
	76zBU2CWVqeDdW8yDS/17HOZRnQN30dWZQ8HRAKlSu3RFtJYoj5vIjmUrkVb82cvb+rWZ/DTCsx
	LZzptuFJ2X05N9GafDjnfe4uKTnZo6jHKILUq02SS1RBx3E0XE5nCdpXJ0f/o
X-Gm-Gg: ASbGncvA7I9+BRrfaf4Nj5DOK5cXeKHFYk8ZQuh4SAUCaAEsqKikVOM1y0j+2CCLdx1
	BjtvigXKJl+Ip3nvwz9kG1DLwyNNmm3Nc12E+1/Mm+w44ePsflz3+WD5Z0UqPHsEVMggQA1twPW
	3ADF3OxvKV2oKrAM2vrH95tb/R0nD8TZ1r0nNz2BOzU1TqGnGO3FdBuGHe3dV8aknTfuapZY2zf
	rLWgSt9KF8tWKonNY9ZFGrz0aY3zMxEq9rsriZkjaIFk9Mxr7sy+hpKJVaM0tWJhRXsNJHYHzuv
	Y/4SAn1F+Eyrn2wbaepdLaAFWZbCKnFAodSbiWI6OTVaWImdf0FjY4C9cuvonaq9+Ri1JmQqAR9
	4HFnIvx5aBo2DCEpgWp0kuPLA
X-Received: by 2002:a05:620a:3944:b0:7c7:a4b8:5753 with SMTP id af79cd13be357-7c7af0e0f9dmr2546568785a.30.1744712810463;
        Tue, 15 Apr 2025 03:26:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+lScsqhqNcM5wMaa6Nng1ZFIiyrvNhp2kn2vLSMOYK7W3q5wesY2Xv4GMV7/4RXSn9h6AFQ==
X-Received: by 2002:a05:620a:3944:b0:7c7:a4b8:5753 with SMTP id af79cd13be357-7c7af0e0f9dmr2546566485a.30.1744712810094;
        Tue, 15 Apr 2025 03:26:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:26:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:04 +0300
Subject: [PATCH 06/20] arm64: dts: qcom: sc7180: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-6-90cd91bdd138@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=983;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=m5iCFVyVqfnwHdtvSJfoafx6xtG1zH7P84KluaY3Cpg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRb7mHC0zMnNPPzjGqiVl3oxAGYFScf1bxn2
 ato23Ov9LWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40WwAKCRCLPIo+Aiko
 1bcPCAClGWCTHco2b9swj2qx6PfYtiJpI6lxng9qrRDeFeLMmh29od55mP1dNdeGjJ4ypSBU+Yr
 udDeEv8+P3WgWWPk5/YrFab/1al2NBU3bHd5fOJa1Bq7LSNGYaY3xpjr7kcbAFGjEHsoplkPEis
 U04mfi9XoP//WhtY0bAXywttqyKakVD0TKVDuKyYNRcxBuDi0447fkrj40G24K08qRkI/dAO61p
 9uNRIP7YbraXyjo+r5Uc+e4dBuxBKswLSW0NfnSlkWLyLxBw/G+jbfXcpy06mVpGeBaWrve+Y6M
 1MkH+uz6M4NSjeXy9CJTDoaj1NJl7UlsJtny4QH6mbhPmfjP
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=CfUI5Krl c=1 sm=1 tr=0 ts=67fe346b cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=e59Rtz-e4fPQ83KgERQA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: qh-Fl-spKFDXpTabzhC45ib6MyOuH2KV
X-Proofpoint-ORIG-GUID: qh-Fl-spKFDXpTabzhC45ib6MyOuH2KV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=782 mlxscore=0 clxscore=1015
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index d157863dbc4a18b6861060579a148632f8ae9e3a..bb1880a9458b8c570e3fda35d3c289a9a4ce29e3 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3196,7 +3196,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			mdp: display-controller@ae01000 {
 				compatible = "qcom,sc7180-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,

-- 
2.39.5


