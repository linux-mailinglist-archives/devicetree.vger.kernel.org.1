Return-Path: <devicetree+bounces-234581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EB3C2F130
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 04:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 126043A24F1
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 03:08:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E16D2727E3;
	Tue,  4 Nov 2025 03:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P6QMXVc2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NxtmWqqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896A726ED3C
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 03:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762225701; cv=none; b=Ki2MKpuGyKQsPxedljSdQabv59oVSCsjjKNvXu2NMmiPaPxEr1E00q4+KmFe2RM+MAur2I8ZvfpLnJiqsmyQVq5e+8EvRgyzdF32f7OxP0r9wj7IRuG3KudsQzRqiTZ1TF+uqRGQXJkbgIlbVMfObIqrPjalAARt6v+n+S9GgBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762225701; c=relaxed/simple;
	bh=bBLHxQuM1GBIsRk5ssQ/N3zpyabEzj2fcdhAh1XrRpo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qDf5GeAqV3O9BMkUe4H+oC7UY7RxtsXxGp3SBaZsdGHHs1j6cmrwM6uywgOAocup/AXP0WkXqV3yMkU8Hfusz2J3KbWVb9JnjSjwTeN/40QdSewbKXVA+FF5kwo7IP0HNbOTvuY89k4w0DAxYTZfMpQ7OLGMAEQPz0UZfYvo+Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P6QMXVc2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NxtmWqqW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3H4aFM3617207
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 03:08:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZJfQCItFekv7BPewHYz0hztHPj86Mo2BtMuiedOKNZ0=; b=P6QMXVc20cI7wswy
	1p2oyldBmzDR+1tPpmDMniHSar2O0FEZkzAsoXWa2JZG+WUJhYJC+RTXRLsD4IVc
	bQmYE2cUqfa3UjlSZfrhujV7AGOejlbpSPoJULbyPdjpDqcii4mGHRM4WMzHXccr
	8r1Xnr6brfP+vwJcvopJK/GtP/fkVRtVcJxFG4ggIp3KdnHqeLKuTyd83bxnKvHH
	YzTkIln+eMP+XqBLV7k6VBXTdhpheYQVTsz6cNwf2ii88sY477hk4zrLKgbWGthp
	4iQPtP4+cjoi4AqfefBx12LT3KWTSbPBtWy8SUBcGjNXZGtk3tMb+YhF+ErXtCZb
	FK0gFg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhse56-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 03:08:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2954d676f9dso22299875ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 19:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225699; x=1762830499; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZJfQCItFekv7BPewHYz0hztHPj86Mo2BtMuiedOKNZ0=;
        b=NxtmWqqWhEO1wxo8vpLtW6Irc83YjGSYhUWcOTHYUwE8IxZyE9YlbQAVRpV2VH5Ybj
         BqrIbfxnaaIFyAfQHFyyqqI2V451UejlkBuxlYwLcfDmEmayZZq7WGPDAQx+7GXfDAOM
         13IYUO+CBAPjT52/3YPOZGqcVmLfa17I8/Xoh8Sol2weukx4EIqRh4nh6ATDEhJiKsLk
         nRylRjzlL8wBBxjz9U1/wPGZK5gbXyNMAO1vTumkpj6DLVQ34Qxe9iQDsRdVgKvBNKTI
         D9p6aTfwx/MI4qqXa4K3mcAC7TBXQLvqgxa5eIRx4bnpr7bv5puwNCGrurCx9RJOEouk
         XwRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225699; x=1762830499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZJfQCItFekv7BPewHYz0hztHPj86Mo2BtMuiedOKNZ0=;
        b=JA+MRAlhyzV67BAuHqZz9GSMyU0fQo0O1lOafLDpXsDV1TTRkPALBiPiaEmQPNjIt9
         zZlbap++i/OMP4ivbUg3g/QSsyPS61W2NOmCJymB1Oy1knBEXefNcCuZm0HXiRSntRaP
         eWsfY72+4/gyPTJac05ZY9vYsj5QHLbshnttH++HDcFGA0FsC0XAQfqWJamaEtl7s1Ho
         +u4I8VS/mv+1pGJQjPFgh0FIiT5BW9Sj+XKtkTUQdWsSPufyj+pWpaNaxejA2wQoHNou
         TBiNm27YMukKbqbWhPOR6K0+HpRMZKxK+PR3PGvhMBh+LL3FPUc/PKKDJWaE2udWubEr
         ml5w==
X-Forwarded-Encrypted: i=1; AJvYcCUR/9FTH0Gfgp67NOhMG9btcbAnUigjxA8PCoRPX9p0oKF/GEn1fkNphrSkP+6Up6VH3s6JOJtte1ZI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq8eFkmtAAEqhIm674FZXQQtF4Acvhh2UQvl1B3THDY+KDmGKA
	O/4mL8xHxvjzgdcSb0bNgUkzQb9Ov2dID5LJUSVx6pqDTlZLeuAKkIhGikQYdx86pa9ealh9SGW
	uElC5QpvirhqZYPCQN5TFlUjRDTSYDMLDqrA71OWOW5zKyx7IC3eOf1ObXD5Hb81Ockud2thNBs
	1hng==
X-Gm-Gg: ASbGncv2SO2u4epY3dRXYQPPzti1ZOF81nJEoaKWz8LhTdiJT+FTpsXcQbWerUZtXI/
	4M0dEpFIsND/Kc91jPReJYS32yDYtqkRlSrqljTuCJB6XTlNVR7eU+9yZnx8xBYDBMB4LyYa+UK
	mBD3bboaCqtBxLXJv6W9OYsVFeGv/YhDhreb+EAbr0L0180MAeq0GxSl3NSiik6ZW2Zkl01eNI+
	2fFMylvKa9kzyUIi2d+YlWNgtuOJOwIB/6RdM4h9w8N2Kl2Mng45V3iFqhkE9MZH2VnEYPv2yx8
	wBfCdDNMQVRuCU44lUO1zcjx/MgwdTtqxZ2qnzPiciCHaatQBg1Hv1X6fOyt1xdmMYykjCyi9Nv
	h0fAIgK/U/9sSLo9HgcMxOgfDIDzJt7QjTopwbJ0A69j0ZQ==
X-Received: by 2002:a17:903:1d0:b0:295:7804:13b7 with SMTP id d9443c01a7336-295780423bamr102733375ad.10.1762225698617;
        Mon, 03 Nov 2025 19:08:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFc33UcGGj818Nb5860rgoAVQmkdRQZhMR5WsMnCCgiIk8toFOEB9JkcQezjOSGJAdvv5lKiQ==
X-Received: by 2002:a17:903:1d0:b0:295:7804:13b7 with SMTP id d9443c01a7336-295780423bamr102733105ad.10.1762225698122;
        Mon, 03 Nov 2025 19:08:18 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:17 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:13 -0800
Subject: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Kaanapali compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-kaanapali-pcie-phy-v3-1-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=1624;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=bBLHxQuM1GBIsRk5ssQ/N3zpyabEzj2fcdhAh1XrRpo=;
 b=UR0fAkpFpg39EiW6tJyXORWZjgSKosGrazWYHiMcY6NEXRUM58c1S4Zc6LVABbVW7aYgV67Df
 q7bEYhf1qAqCxK1QhxyshVbYhVROzmz6fx2XcfOewJP5RCmokUlplb8
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX9LBOqztyliS+
 krMLUy5FAey8VpYmzs7MMV8xirQQQA5BaixCGS6q5H41oq+rSp3kV9Ls9Mt9NmrVPrz/19+09XS
 xr4xOJotyFU2Sxb5DaBP6tMFe2iP4LOEecp4/64YBcRJ39y/BlVo+NSYsbmV2oTDeiGcxR2TpKu
 0p5PhU6IKHAO7WmygrGqaQ3cD2u+MDp/QXFBl7FEOKpPo2mvUfx1pIifFB21FqUAxl2/NMiqmVq
 Qjs4jYRop8zJcyZdYzn1M4rSINo1DvfTFZPpk/0bL0VCCCe4HwH4gEq7gdoQEsNd2FXZOujJOqQ
 Jurjs68cFWunR1S0itLZsW95JYMOXmwVZ81pZqNgbknIDxwrYOngb5OxKWsklVH15MWZaY/lKBK
 usa+y2Hs+LeSGQ+y1DjqOv/irE4/nw==
X-Proofpoint-ORIG-GUID: jp2NkVlPzsxjklocL2T8IVQEjPdQy26t
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=69096e23 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=A6CI9_SKnrlR1hncxxMA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: jp2NkVlPzsxjklocL2T8IVQEjPdQy26t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040024

Document compatible for the QMP PCIe PHY on Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 9f5f9af6f6cd8373358ad7ec8303a62f006c1f95..ce06882cfe6020976759225d1febee1b31116052 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -146,6 +147,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,qcs615-qmp-gen3x1-pcie-phy
               - qcom,sar2130p-qmp-gen3x2-pcie-phy
               - qcom,sc8180x-qmp-pcie-phy
@@ -213,6 +215,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen3x2-pcie-phy

-- 
2.34.1


