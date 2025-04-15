Return-Path: <devicetree+bounces-167197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9996A89A2B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:30:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBCB7175972
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6522973B9;
	Tue, 15 Apr 2025 10:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bpgjX93J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD102973A4
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712835; cv=none; b=aTxXlTFHVh3e/wlugJRukRksIzfpWPt5hy8w1QVDkuEqUoVZtXhfIRpGbfDaIjS6dDfTY+nJqj43wF3Nvm3Zefqc7yFX9hA70pnIPyDDmYk++S/ZTGxkkEcaQNXX6HVdakGWqNeFEmWoP6nNqKBEHmR8vEpCTGhwYI5nir1S8qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712835; c=relaxed/simple;
	bh=dtzNTL/P7Z3WOvVQ6jmGC0/vB1bL9i/jf34wEQn+z/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fOo+T5sAXkcM3MCPGEwn5UzNMBkMX3X+hw0o6uH1I8OiTysP0uK9hqwoJqzgPsAild3QH0MAy+EI2yzcpkTf0MAkTUPiEmkARN6YLg5p/lLDc3Xu8v+wlhKZhfAZSMxZPIyYOtgT90tRHkq5RhdnapCP8tV4EaZja44RcTCILX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bpgjX93J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tGlZ005840
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b5d/UsG0pIA+uvzIpXztXk4xghk/A2mkKgHkgukE1W4=; b=bpgjX93JlbNKAuLL
	xdlLPDh3OMI/c0PhbYFtve5OUHVf1SyDkxs4YNknNDvejlpArpeZ13Nk5hlvLXkC
	wiuw3LoUwAEnawboPYuCVA0g3z4h0lWI1Fu8Els2ZgJyTybMLIsG0IPqVR9a1x9D
	aCydGdfDjMMpoc5V58LPHkr9jhZofNFC33aRZYxPc97qwUVHlo66q63VNDmpkZHg
	RoyRELlp7b/dJNGnTfMoCYvZxXVpu/aNg12bUQRS277nsVA8KGAfend08Si9T+Uj
	dGsVNmqCzE9owTMw9W0E7SgQY6nx/GqQGKaCvWc9JpAlLNXbftAnV7veA/b0qF+3
	nPPgUg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj7v3v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5750ca8b2so809330885a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:27:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712832; x=1745317632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b5d/UsG0pIA+uvzIpXztXk4xghk/A2mkKgHkgukE1W4=;
        b=KQ/eDjxQPNHnX04oYonkWHU6LzCM3/F2t/C6z2wuVlfAci7U+53AH5NbeZrPdtrM21
         hcj33j1aUhlnPPoLBVWz3C47TUAOezuJi6Qkjo8DmF8i9WfQMziyfWEsNvwBlHUgxp8N
         +U9keeFY1OXRUS33stXZ6ap1wWwbMUxoMU2iB829oQekUBnmMfUvs4fNqGQN1maBmKPS
         6V1w99u/r3em/1Hj8N5zsbkPtZdenjC9v677qr8XkoZE2Gx/TXnpEEIDO39nQpA/0RXf
         XHbJjcSERRo3KJvWVwBeagd6xmOLu2NDcToXRBGlLA59KDgzgbUPkLCeJOiy6VxcNZBb
         NVDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbYkRPs+3+JDu4jDYMnsBNV6qGFoDLCqUqt88MUvdYgg3Crqe80fefu4TrWVTJY03XzV4QyEKy66Xj@vger.kernel.org
X-Gm-Message-State: AOJu0YyvWxIB7Ih63fP0QChN896/kD/COQ+x17vItvP5w+HOJfehFXT1
	fcuDa6OBwbrVox9AZXqrqJflnHMitTn+TmNSchUeapa767V1qyr1DTTOAV6Uh7a3MgB5e1+bkoU
	dRMbNY56zvyL+vBRY8rUtWjqGrnspiazvYH04WTpxNCJhZmPgDv/ODEESrL7U8+N2/TLJj9C2+A
	==
X-Gm-Gg: ASbGncsOXE5QB5lfCQqoAc8i6SAUDXGUDd/kB2pwGbK9v77TCYplicrpKpgNePF6twv
	T7qhr1w3JfURuHxTkJ61DS3Smb2y0qzOggMNIR/dtdWwyOny+ey/ingXWnYxH3WyalPw23GeRu/
	iZpx/8KNVVoPso2UrynbQ4smNqhcoKS2KYfwquRAR2ft/Z1LCgazqFNaiVbQoOxy5GaKs+TDr5S
	Hh6wF/AmmU6Cujs3/SMrC+tgIzTv73Q2bwl9nAmtYX5rwkGjYuFmbSkhVzGH9BcG7fxzlqhfRli
	23WJexqJYsVrpZzSoopJddhxOaauKD6e1CmJpcu9Ghydn0ROmAjPJSsDStiHcSCT7Rrq2NPev7M
	jHJf0zAOdhbW9TE1wYb594YYN
X-Received: by 2002:a05:620a:270d:b0:7c5:96a1:16c9 with SMTP id af79cd13be357-7c7af0be2e8mr2574554185a.5.1744712832059;
        Tue, 15 Apr 2025 03:27:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELC1n6MgKcI5o9cWWzmy+FXwbP/jC/AFfBTBfKcM6HLd9b+Mb32aITycJagbMF9aMyy1/92Q==
X-Received: by 2002:a05:620a:270d:b0:7c5:96a1:16c9 with SMTP id af79cd13be357-7c7af0be2e8mr2574551585a.5.1744712831740;
        Tue, 15 Apr 2025 03:27:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:27:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:15 +0300
Subject: [PATCH 17/20] arm64: dts: qcom: sm8350: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-17-90cd91bdd138@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=980;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=dtzNTL/P7Z3WOvVQ6jmGC0/vB1bL9i/jf34wEQn+z/o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRf+17BaTI39SVGRKDwaOV/BqmXhF2+gZqAk
 wf1Sf/fwrGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40XwAKCRCLPIo+Aiko
 1UUyCACVVc2ZDpq8DMvO9kYRPGQGETYWnDHdiOKGQWf1bZbsRmoZl4BxbHr9AcZH4mTIwVEADke
 qI+nrvhmiY08p0CnR9T5hZ347XmxCzymzKwfjiHHcf1+VqkXfSplQCxoJWA0BLp7eZ8nBwzCx1m
 QqfspQuFYtBkss0/eWpmfvGHJvrsb9IRsuUo+lIiZnlpD+pVwUBObp7N0AZFkXx3BUTJZ8I++p6
 vLvgk+M2s1ydxAlDWGT/OIY12E5JVyuTQ1Ceqjo/r8VSXfuIcxLQJBW3TouP1HAmAr6rHMrEYye
 9nNcebS2zLQCrybjgPsoYBDdi/+rbj82X/Tixo+Qk3pX+0Zt
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fe3481 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=u6SFSMcxd92a3etOWaoA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: ZvIqVcEQOkyzVpfit5wQOswSL1jROqH3
X-Proofpoint-ORIG-GUID: ZvIqVcEQOkyzVpfit5wQOswSL1jROqH3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=789
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5676420bd5ccd26cf0fab87195b076a782675db9..279a68a7146e4e71d31944c37465c2bfc6dec3a9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2775,7 +2775,7 @@ mdss: display-subsystem@ae00000 {
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sm8350-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,

-- 
2.39.5


