Return-Path: <devicetree+bounces-167198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C07A89A34
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3350188A71F
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD6392973D2;
	Tue, 15 Apr 2025 10:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KlEx2UYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792B62973CD
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712837; cv=none; b=gc0GrOakVtVd/GbVPMnKNAk6njYSpqYWSLlwR2AarQZeGY+vajUq32dm4Z2rNuQCHXNGZEw1DprSZEnq3svtXirv33eD79t70RkYlpb2tQb1wxk7gzi7ci0P5Ks2t/ZcxV4qqTVezdb+8UXwoIxJ1f2wMuGErqvlcTgaHqIJkyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712837; c=relaxed/simple;
	bh=KELtz8ob2ZzRep7a0wePrUpfyM+2sEdp3wy1V6ivoLk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Pgg6uyrJe69fYHag3Nqyy4YFpW2Q8qS5mRbxGfAs0xhiBiSgbRRciHHmnvVqPgB0jgMoAbmz5I/m3nJMd+FuzjiagfoZ86g8wTsqJtovR7KvtziFXAal7KqgnIWyTF5e6L/E002Uravhub9ZW9r4jtgYRigOGiUIr23PnpMhCig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KlEx2UYU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tHlF002239
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AKSbdHDgLNcxRydljy9uBOE50Ulj6C49JJ3eGVcbuW4=; b=KlEx2UYUXL8y+L8z
	pLbiyNoBSnoIgfy06w0FBbm2laK/7z7EvVbIJWE5HQ2xSNOm4RH1V7qIzNdCyHgl
	uTAnoEv+dcsIsqEDyarl2drHvYu6J/qukXvKDESV4+tjGRfp0cdfbBmsWd2R3cG9
	t9RBdc/W6zYjcYreuM8UKELQL5VJVfOyhWMsCxbWOXZCRbpQF6BdYFJ+PwO48eIW
	gLcCyXneNRJkhz51LaBB95y+rRWMWsHJOmUwxCWV0LwrMVNNMFAk8ovcksWrF2tj
	v+02Cbx5KwDesu4xeNtr+PRVqQIyG6CdDey5WiVVTNpp2Ggk4YSkfqY38KbbDobV
	OvPvbg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf4vfs51-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c793d573b2so960418185a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712834; x=1745317634;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AKSbdHDgLNcxRydljy9uBOE50Ulj6C49JJ3eGVcbuW4=;
        b=vuhS1AZpSPKUFn++2ZzHkKcUUHvdJgIL1qdGmfw4Szw4pnhCbpbrJp07DgphC9SqDH
         3F9bdqAf5qFFCPjQZmMgDsLUjX7BVr9Dwee9tOTh5eyP8HszEhjW2OXzNcXag7muWEx4
         qgwjyZxRQ8Pq728sQJ29q53k9SOwE1C8ppym1yHmX5jmrTLzSZ+NM+uT9FP2CLlZMSp3
         E1wWKSPUzAtD+fepxY8ObxQWqswSig1liMZUcAjfndgItZHEurVKatbTL983E7SINqBD
         L/yyqWBqhwg6/1bifvDxDvCTeTrQA70yosKj+BI+1h7eWfQwPGsnxGes27BBLwEhAAae
         BGQA==
X-Forwarded-Encrypted: i=1; AJvYcCWq4X51A6avaF3/ts55TNUNlawYur6iqIFFJefytpyVZHZay9WzczsPQlI/HkAv/ejcFhE4X+RtJkBS@vger.kernel.org
X-Gm-Message-State: AOJu0YwWIRLjP68oPi2iJYlQNUXd8/AqTgBL+xnp1BSpK+ivAXWBVL1v
	cYJXlTbs7/ydQfbwcmIKZqpxia9h2bFdSDRjybaPx89V4HTSPd0z6vD+87ou6h7lgHHZh0Knx5D
	dT+W/4KclJkyu4XqalVoILt9zfwD3TsagkVW65JLpCQxzqB9dg5pZDJQeDRvj
X-Gm-Gg: ASbGncvtyN4s3a/uEtwrKVNq/u4IP5qBHiESSmm2moj4RczvfdFG9W+LNt6UHOzpyxc
	loyRZFJxz607iHK8Lj7m66y4AnKhmjOSyfZUWsaPzZhTwd9gJkrYrogKSOHtRqZCkkRJs/iaX4S
	Z5m7Xn6RcHibeaMHCjlzY/Hfv2FJw5V/cdOR1JPBsxSrAY8pTjsUltPU1RounUiVq3TZGsm2h8L
	h7MKoD04fLaqyLPI6/pq2nvuNN4uAPQiNbY7TXNtyX5bjkJwqZ5nLFe4IL3U/oOadAnujalPc7H
	BlhVXCdqwfAv0x3QzytG8us5T2CZRR9I34M5RLlZKc2x6z014YNNkjWcSoUYCmBKJpCjPPU/gqr
	wlSOIP0Xy8GsJBtG9DjzgwDPN
X-Received: by 2002:a05:620a:4612:b0:7c7:5387:c754 with SMTP id af79cd13be357-7c7af0d4118mr2154009385a.24.1744712834598;
        Tue, 15 Apr 2025 03:27:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7T+zAHYbny5i5GpuXRzLvMHFio7NdiP86hKgKjDx19aqmayx3LmFpsyAJTMtE/8RdiP5idw==
X-Received: by 2002:a05:620a:4612:b0:7c7:5387:c754 with SMTP id af79cd13be357-7c7af0d4118mr2154007085a.24.1744712834192;
        Tue, 15 Apr 2025 03:27:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:27:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:16 +0300
Subject: [PATCH 18/20] arm64: dts: qcom: sm8450: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-18-90cd91bdd138@oss.qualcomm.com>
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
 bh=KELtz8ob2ZzRep7a0wePrUpfyM+2sEdp3wy1V6ivoLk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRfxmPQmQf+9hIQmhpXMrxm12S2BwBqjYSh8
 2Ja8bZnwfKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40XwAKCRCLPIo+Aiko
 1Y8RCACe5+C83W6Wstk098pYu+cQMteDKzYExBVAA/jb5uotZNGEB8uezY222FCeb0m8eZ25KGP
 aiM0fFaTnS9SQ+xsqKNEmNpfy44tO3cZDKYS8ZwzC+mcVo1mDcRTFTyF/TqD5L9fS1MDWbPzR8U
 T5H29kulqH4y0Ah9UC2/aFB/VWvb7Cymcz9iVTpMT1LQev8eZtZiWK41t9PzKNcqYIYp5oMkkJC
 98i0QOyriGMYNvqx34fi2FqjDHSIRiueytvTSg8xBf+YfplRLgiymmZA6WiEWr4eUkpyV8+dJFR
 G6qadu7lJfS8tn00xf6PLDGbuWSMXLjqUqTw1aCmgW+W7B2f
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 7nBHgT2pK5MLcYplTcIwf1CxJPCidGMZ
X-Authority-Analysis: v=2.4 cv=IZ6HWXqa c=1 sm=1 tr=0 ts=67fe3483 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=_A7C3GztTW9IHkz9698A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 7nBHgT2pK5MLcYplTcIwf1CxJPCidGMZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 mlxlogscore=789 mlxscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index edfde85a2d0c7d6ed572e8e5363e348a516cc45d..a94188ecf3841f539399c2bc7b5db52f01ab4d0a 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -3337,7 +3337,7 @@ mdss: display-subsystem@ae00000 {
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sm8450-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&gcc GCC_DISP_HF_AXI_CLK>,

-- 
2.39.5


