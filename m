Return-Path: <devicetree+bounces-207154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8EAB2EC10
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 05:37:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03ADE1CC23AA
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 03:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 877A02E7F12;
	Thu, 21 Aug 2025 03:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HCHRZkIe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D359F2E7BDF
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755747423; cv=none; b=oyAM0Gkh/YZ5QbkSMEGZ0+N36gtTDZ7vSiw/DwNFYyg5ZKXQzrY+oaT+rLmskDmadilmnF3OljDt3RXG8GsmSTrsdh0xZzkJwsbZz14nEZRJAxPFmGDH1shldGu6xZDFxv9vZQsmirsfSMLunpe1P9i9wsiy5MhL3S1+ROSsIUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755747423; c=relaxed/simple;
	bh=Vcbndb0BitXQXBCCDy5phydPWg7MwP6Brhlf2YVSZNE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EaeoDdwt4a2CMqqvnNe8erreBpyF9y2ohEstRW0tzqtv0RahkvoewBCIHZ4uUnrk1kzq2bjYqT74ewaI/OQI5Q/8gWxGru+kaKM508rDANlRuN571wx9JFKhDmB5v7DRVLEA0/YSKq4e1RHftGduEfC+2I4wPqOzIJohoE0maRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HCHRZkIe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L3SUnJ021480
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:37:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0Yg/2s8cwpHYy/pmAzzHeffOyyjabiwQv6sxOo7TaLA=; b=HCHRZkIerCrMIhrc
	87VO+DoEZ6hB0/0EeyyvC3X4A3eGq5t6RZDk2aw6QOCt1EYvaT+EYWhiM+LE0bnu
	jGRnHpleK5IPrsILfVxEfQS/se6idJMqUK5LNd2LqAc4VEPdMBr5fIOYepvh4vFm
	IfeNnzpzz0MptC2e+sOnQXXVxQZ3UwrZnXXwR4Z5qkYQZ/cnm6eI43agHp+pX0oY
	h+tJggu38AV589419Hk2pHHVeP2lHPart0Q64cTCF/oQgXcd1bCn2ifYDBbzySZZ
	mBQueGiLaiPADakgYGThtmIIjGyAfOShcr05MHC/EmlEF9mM7NDomKZPPvZ4iLqB
	60PumQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngtdhq0w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:37:00 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b4750376ca8so339875a12.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 20:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755747419; x=1756352219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Yg/2s8cwpHYy/pmAzzHeffOyyjabiwQv6sxOo7TaLA=;
        b=qlYU4R1F9AI3uV0Bm5R1/lxCgfyQiu6vaWrapLNJB7G1JB5475ySXGT5Xoo3eyu0gU
         VxCyNzMMHBXSirjJeuWooomhvRXARBQ20AYS1NQP2AHVQWAlyuVjQ63BFUpX/hJrEKar
         9n8OEeBDog2apHksuPe0dRcigkHD23+fs8sGvEzBCPH8T1uFJvX+jIV12z2WdJG0Suxw
         XACndnMKEjBEYYUM9/7iI7+KOBctLjg0FWGMgb4buQ8G4zow5Offi6IXAdMuwhvik2yL
         rmjkEH4DtsgmNcDt21LGxj0dm614VYRrh5jcFApsdlP1pAZG2OWwBLuswqA1Mpf5bed5
         9eag==
X-Forwarded-Encrypted: i=1; AJvYcCVphN5dQKOIAVWKpTfis2pMWaPfkcyAcEhzlN86p8Zte7GR2FgRghtfOlmT2T2wqDQC10WMzPs0JGgV@vger.kernel.org
X-Gm-Message-State: AOJu0YylZCa4iB3nwhPapA/has/SaAhsFKbxm0kDvls9ArpWVqFQAQUH
	z5VBXtHL4ZzySBIxrpo9wxokAZSsE15oylNuXl8nQUBVEP0B02pOEkHpFOMq1XUt6FURmMlMAND
	UaKu/+6FNg6PYZGP8aJhB3LyzmQ3XKxQvhPQVuDncdjvj2bFVQcfgxBIZNfJnu2dm
X-Gm-Gg: ASbGncuKwqt+6CuFYXoPiA3mkODqX58afv29+eB2zQu814STDOVpBKMdZN40vlk/zUw
	2uFZMmBxPYvp9+mSthjaDLdjkOrPZbB0JsYHVwI/AqIZrGLVbjmEZS408ClQg+ApXYs75EfjuGR
	bueABPHKB0rJ9Y7VGV5osOEFnwbXDh6cRt9l22k2nZKg6/dmRrcuQqdDdfsJ/dOmREHr6pzpLt8
	e1vf1QayNVGi5hc835ClyVzZihOS7eejNkPaw9Qw6AdRuCsfon2Ny60dDNBOGKlL4aN+ADRFFMG
	iFCjYgE0ArOA0OKXv2brz8HLhbjTNwtvI8NoCBagpEPZ4ZLCC0YHKb4TTtAZVefCGetGPWY=
X-Received: by 2002:a05:6a20:939d:b0:238:f875:6261 with SMTP id adf61e73a8af0-243308a4f58mr1229002637.23.1755747419156;
        Wed, 20 Aug 2025 20:36:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRCZqNHbcoR5WRlRmiFsb0AFvSf5jLDkfv0v1YD2XuyCm5lD5AFBOU5mVx8s9zqhkJarHeSw==
X-Received: by 2002:a05:6a20:939d:b0:238:f875:6261 with SMTP id adf61e73a8af0-243308a4f58mr1228977637.23.1755747418755;
        Wed, 20 Aug 2025 20:36:58 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47640b6554sm3497780a12.48.2025.08.20.20.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 20:36:58 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 11:35:56 +0800
Subject: [PATCH v8 1/6] dt-bindings: display/msm: Document the DPU for
 QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-qcs8300_mdss-v8-1-e9be853938f9@oss.qualcomm.com>
References: <20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com>
In-Reply-To: <20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755747401; l=1231;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=Vcbndb0BitXQXBCCDy5phydPWg7MwP6Brhlf2YVSZNE=;
 b=mOoNvDKKUBqUis++AdmyjQhAhpayazMlyAI7h/rxX74lbKBENchjmD48LzidbrrwemcyCDR8E
 ikJa/jGaKlYCBVOdRSYFe87K0ezatz8sbGSHwxJljoVUp4+/RX7rYnL
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=LexlKjfi c=1 sm=1 tr=0 ts=68a6945c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=5ixSZjX4nqodb9qzXsEA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: qsiJJ9lzj9xeCUkKqap3WdgEQVdo1o7T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNSBTYWx0ZWRfX8MMCrl8Qwte+
 WWn/s37rR/rKdNuPY/JXMgN7e/MN0KhWlp6Taz/8GYspgDtJ08bCU2Ge3Lbo8Ko1b7sfBOChImX
 G6jimqgnrDc/cVT0lpyibX/GSjo7jaxEqZlK+WaPy01vPMxXHXgxLLpmJQoEA54AwnytfhWCblC
 fc3gkO73fUQnDwYiY/KX5zdNUs4yk9a1C1uA49X2PDfrm4Thfbvoq6uJeaIi2CIHsn5EAv8SVTp
 qbIk6uaHMFdZniW+NtQLLrqPjy3AO8ckuOI4qdRi+yo3llHNKb7WXrcEZVs/pl6bcdJjvGgxv0+
 WJMtAHBEZCdJrnUN+zzSmWxQyu8gHlDDnTTqcGrNa9dFQUUeFc8MYgkGD/T1lfM0FGTVKYQVcRX
 UTRDlrBqKWsMfnmpQVozrQoxmCIzyA==
X-Proofpoint-ORIG-GUID: qsiJJ9lzj9xeCUkKqap3WdgEQVdo1o7T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_06,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200135

Document the DPU for Qualcomm QCS8300 platform. It use the same DPU
hardware with SA8775P and reuse it's driver.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml  | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 0a46120dd8680371ed031f7773859716f49c3aa1..d9b980a897229860dae76f25bd947405e3910925 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -13,11 +13,16 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-dpu
-      - qcom,sm8650-dpu
-      - qcom,sm8750-dpu
-      - qcom,x1e80100-dpu
+    oneOf:
+      - enum:
+          - qcom,sa8775p-dpu
+          - qcom,sm8650-dpu
+          - qcom,sm8750-dpu
+          - qcom,x1e80100-dpu
+      - items:
+          - enum:
+              - qcom,qcs8300-dpu
+          - const: qcom,sa8775p-dpu
 
   reg:
     items:

-- 
2.34.1


