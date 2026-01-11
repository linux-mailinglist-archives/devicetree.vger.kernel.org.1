Return-Path: <devicetree+bounces-253637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD1DD0F5F7
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF94030D727D
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3027A34DB7B;
	Sun, 11 Jan 2026 15:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cs4YafXp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d4hRpFNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D51B34D4C8
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146580; cv=none; b=hpisDXE9FlnVmn+308REm5ie/E4Vv7fo4St5BAn4skTURwgxfmRRRUsEVZWCSuWUxFTejxgaXFGSqALR2IuyZFM3A+/R95LP5qeMrHFWW76I2i0XNhwOLlue6ohQgXKJqsMFT6KvNCiC/5JQXctUCqZvqzOetk9eq4WX8iw7Ysg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146580; c=relaxed/simple;
	bh=H3Abm/5qhqqJ7XDAAllxWqCY0GnGn1zpTPFL/41UigM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MzSMLN4tBG4pg3fGS8X0+E90rVIuQQuBIsD6QneL0MjWPC7sISEHPP7HxcCRyI80VfuBAIFvcjE4VlV+LxSSRzbJ5hm0CTG0tzKDUAkVeoGpSnG5c02g8P81YZsILd3WKPJytC9tr7s8DdLouLCf836iM1oCMn+6JRwSuaOSy24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cs4YafXp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d4hRpFNp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BCKFmQ1796249
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8C0FNRGdYXJJ+V18Mg3H4pJ7DyDS6SIScnFMbejUkcw=; b=cs4YafXprBq0O3lw
	DglSa36lsQRqNVL3pmScJgqc9owe/FWwsB02phXKZVC0GY9DBYf/Dot70J2BHOF4
	zZf6IYGPkL7p4HDzjgNumMYAPrG1mFJVeXLldAjnZiDi7v0pEb7mEiWfF2uHYEv8
	k4NSg+rlLu3e1imCT2sYRI4Z5nQX16bHr3lUimlx6prXyl9KQjsbuBte7MuLHgDm
	a41pvFACssvw7dvkZbPrMUbcIHpAUms2iflo3ofaFrn90lprKkwdCNpBTbmeShye
	TsPu+xatvX6vVocUTLZgOb9yIDzBCpjda2lk2x6gCAy8K6EBqdhQYB7lq5qsA9ty
	C9LyUg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkmem1vvm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:35 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8905883e793so150196386d6.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 07:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768146575; x=1768751375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8C0FNRGdYXJJ+V18Mg3H4pJ7DyDS6SIScnFMbejUkcw=;
        b=d4hRpFNp7L5G11cv+7wRgxCWi01C4xUZMMQY+g0TJtq+seyu+sl2CD74A9KPr+EX7e
         5qvTrY6u0Ia9r1SG45Lt9ixyp6RNt+pH3NylYg9p27Mn7/uH5Qa8c+PEPiiTe9Re+/vc
         nP7td3j3IYE0rdu8N4WwOXaG8On91AbFKkdAJpxqtmqgqP4To99xM4JfczPvInsm/6C0
         VC7O9T3VbN1dv38zmbuSm3nKTOolQsT6B0sv4bTWkrTgRxKJCmexpw3TwUiLFa8gZAZY
         oFb9pqX5jUhdv4ROhcLnjJPUEb2f9qjupV0sE1JRyV2VQfye6OSRM9wWYU6H7M6Bc2yk
         LfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768146575; x=1768751375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8C0FNRGdYXJJ+V18Mg3H4pJ7DyDS6SIScnFMbejUkcw=;
        b=h3/UEPMvezB0ufDknMbuWIw/50HENnqLC/L3axXM1cZGMnK5QRpzY/27aDZJwj3Ffl
         jiW+IR5t2paj/y1bMnLLUoN2nEzVRWV9rLGiIRhjdrYF3m8TxO42rx6kBp3HmPBleRHp
         fsAMfoChmr4sR8FjFbulv+P78sIRlMRhRKm+U4u03QfTNN5H5EhH3s8BfoSke7N9ZRmz
         5jxZ9hIeIwN2KC0J+mP6NIbJKpmygxCcjjJMgXsBE9R+GYhudIgS7KtxbxtyIiMbdI1g
         Hc/q85iSfpP/lmyoi5J4KwtyZXFEQKvBINKFvy2cpcg17zrbYnRtifUFv7Wf6yeaOGia
         f4YQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIrYvNB/Ravl4qQ4vaGyonzCf93yG2F3cnYe177jxjiOzsnlXFaur1tDIu52b/gD93/pp/5CoRfCUj@vger.kernel.org
X-Gm-Message-State: AOJu0YyPq0U8nWiLZBWOgb6UpA52agGnXmxpkurH4TN0tP/K1HmDamTQ
	o8dfXsON8X+LWIiCFFCroWhILjf1IRvCsRNWDqb9SXfkVKknS6ne2wNvKLnqpw5EPvMlky1JBsS
	cQZ4JEeJ4SnedmOEGGenpw375sCOykhanVYFspIuTX6s/vX/vDrILe+o8FlX4/MKB
X-Gm-Gg: AY/fxX42D6N5j78zwvNgw94euAl+AhWhPAxUTHeUABjtBfnHDIBsSmAzEeBW/chwIJk
	v/tcAYoC/ifjDo0ccLmPWIyHa5r/WimR1GgYE/UDW0Bz95nsv+9eluB9kzRU0i7T1F6/1cQFUoP
	aTKX3S5CacCJ9crzyQlqZayp2u+KocmjjEMRNXu6K59EZI0SBYloT0hywxOqAuTDroDFz7Nr2OI
	/imYDtv0tH82RyZlpGC3Aq+GspC+dWtlROzuD7p7bkNpIZWjo60LJ8yvi91NVHykGHxl7S4Kioc
	1pOu/VzHZZ7LYcXRjTzpNdYUwSgVnptpGYhrxAx0cg+yrgXaP1VMZdAIgSrHThvwnOMi/RE62EI
	ZZ62hip3S3DVNzIHvWDSj87IhcTI9Vr8S6A==
X-Received: by 2002:a05:620a:290c:b0:8b2:ef70:64e9 with SMTP id af79cd13be357-8c38940915emr2208386285a.51.1768146574697;
        Sun, 11 Jan 2026 07:49:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqxRc+V8oiRKigL+N3out5N1QzLBKRFR4to7eoBiFh0+oQBLKnZoDornz5X7Vh9tg1lZHRjA==
X-Received: by 2002:a05:620a:290c:b0:8b2:ef70:64e9 with SMTP id af79cd13be357-8c38940915emr2208384085a.51.1768146574205;
        Sun, 11 Jan 2026 07:49:34 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5180bdsm1637163166b.57.2026.01.11.07.49.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 07:49:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Sun, 11 Jan 2026 16:49:07 +0100
Subject: [PATCH RESEND v3 10/11] dt-bindings: bluetooth: qcom,wcn7850-bt:
 Split to separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260111-dt-bindings-qcom-bluetooth-v3-10-95e286de1da1@oss.qualcomm.com>
References: <20260111-dt-bindings-qcom-bluetooth-v3-0-95e286de1da1@oss.qualcomm.com>
In-Reply-To: <20260111-dt-bindings-qcom-bluetooth-v3-0-95e286de1da1@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5142;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=H3Abm/5qhqqJ7XDAAllxWqCY0GnGn1zpTPFL/41UigM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpY8Z7KW0ly0QVGSDOASiDVl/E01O4NER4xNYK/
 M1Nkk+VIXOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWPGewAKCRDBN2bmhouD
 1zVdD/9srt5iHlDn8ntjJzJFn7JJhIeuTS7Ttlr7F29L6PQdZ8KMQs3cTXe/Qs/kwpk4kes671Z
 fs7YTKHmibSxng5dgDoHbjATX32/KQfwQ0p86s+owyY7bGtPeOXbVZN3zhHjk8AmAATH0LOO0fZ
 0UHzHDwWKioadomh26V8A5XrYE3Asfs1I0MZIySimWpcUUT9SCF/tHOlSLAqfXxhhfx2M0PWJc8
 lCblCm1zI30yUjCZqq8x7ivsJPkvsA1eS28z+blTprB6qeaw6RyVt/O7ipLkVGUFLd70SXYbRu2
 kLFsnT322DCwL01LyeNJMhYcLYSnF/tDTRBwAjUmepJ9g1G4PiwW3j0zpI/iVUhNJNs/xRKRO9V
 DBYCAGSXkdIH0/vVb5qjZ+MBVTfTdBNyR6cXG7pqZmZE8KWE94RUC1loULTDdgEawx+8A9knfnv
 2G4rkERr21Oi9585EgY6NC4JM3oSA8WBRUoAhep08I/TtGps5AD3xKmWtjzEpfrPEmSh4uHLSCN
 lCJenoYc5Hj5QmTr6L5NWzzTgsern/QlR66hWHObmxnwYRTq/TlSvpuWgVD6TbbpZSQxS63zjCy
 JOT3oUZKKTNWyfo8G3seNaVOOuOHDUXk8zh0roGqq51eLZ6odH7aDMPOtGavalM9jTjUpZQVuhf
 73ThwJ7eo+sSkmg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: ri9-9RluW3Kqv0IAV_C2a0sbcynAwPLc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE0NiBTYWx0ZWRfX5fMSgCbVV6r9
 32Gqa3R5Nh4oczctRrzq9uYfVaSPdot+6IBTf0H7x43ZWucs4zABCaAKRP6lqUo2rhiRyDx9Egm
 HwohITkoN1QFaMnal5eePkl9XmCWKvy3dIIY2K9hyDBVwA/DID6+mgDjFiHpEhUlcYj/rqMge96
 0K20/YZXG0TX9LH9yBWMXqOHkwxhVMA36SucjC0gkSa+fOE48fxMWGCrtyJvbwQboGRtl0zHvny
 W3m2DXNuPUeFVx7Tnr7zm3isc39j0/OLgm2iP4qKyUtWxbzW7CPEIh2il1/QqYc5yYncqPdtl/r
 T5ARQJbVrUTehh7oqqFCCpiz8VwU6pDBYWt7GfK+JBUATtHbCguZkZf6NqofYpHNljm1VRScqsE
 YD3vJ78+nyoD/ITwRGnfUT3w0Us9AYPjhlwm3ZJBpUvmiwg1JgrQkFi50gsXHbGpDdKLeXMayFB
 7Tb0yckEudLC/VNIsuA==
X-Authority-Analysis: v=2.4 cv=Z7zh3XRA c=1 sm=1 tr=0 ts=6963c68f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=qDj0VXvLrl1oAwiVHv8A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ri9-9RluW3Kqv0IAV_C2a0sbcynAwPLc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110146

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,wcn7850-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.  Re-shuffle few properties to alphabetical order
while moving them and drop redundant enable-gpios description.

This makes the source qualcomm-bluetooth.yaml binding empty, thus drop
it making entire change a variant of file rename.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Changes in v2:
1. Add also Bartosz as maintainer because he was working with this
   device in the past.
---
 ...ualcomm-bluetooth.yaml => qcom,wcn7850-bt.yaml} | 83 ++++++++++------------
 1 file changed, 37 insertions(+), 46 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
similarity index 57%
rename from Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
rename to Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
index 62d7cdb67a3a..bd628e48b4e1 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
@@ -1,18 +1,16 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml#
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,wcn7850-bt.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm Bluetooth Chips
+title: Qualcomm WCN7850 Bluetooth
 
 maintainers:
+  - Bartosz Golaszewski <brgl@bgdev.pl>
   - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
   - Rocky Liao <quic_rjliao@quicinc.com>
 
-description:
-  This binding describes Qualcomm UART-attached bluetooth chips.
-
 properties:
   compatible:
     enum:
@@ -20,79 +18,72 @@ properties:
 
   enable-gpios:
     maxItems: 1
-    description: gpio specifier used to enable chip
 
   swctrl-gpios:
     maxItems: 1
     description: gpio specifier is used to find status
                  of clock supply to SoC
 
-  vddio-supply:
-    description: VDD_IO supply regulator handle
-
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
   vdddig-supply:
     description: VDD_DIG supply regulator handle
 
-  vddrfacmn-supply:
-    description: VDD_RFA_CMN supply regulator handle
+  vddio-supply:
+    description: VDD_IO supply regulator handle
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle
 
-  vddrfa1p8-supply:
-    description: VDD_RFA_1P8 supply regulator handle
-
   vddrfa1p2-supply:
     description: VDD_RFA_1P2 supply regulator handle
 
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
 
+  vddrfacmn-supply:
+    description: VDD_RFA_CMN supply regulator handle
+
   vddwlcx-supply:
     description: VDD_WLCX supply regulator handle
 
   vddwlmx-supply:
     description: VDD_WLMX supply regulator handle
 
-  max-speed: true
-
-  firmware-name:
-    minItems: 1
-    items:
-      - description: specify the name of nvm firmware to load
-      - description: specify the name of rampatch firmware to load
-
-  local-bd-address: true
-
-  qcom,local-bd-address-broken:
-    type: boolean
-    description:
-      boot firmware is incorrectly passing the address in big-endian order
-
 required:
   - compatible
-
-additionalProperties: false
+  - vddrfacmn-supply
+  - vddaon-supply
+  - vddwlcx-supply
+  - vddwlmx-supply
+  - vddrfa0p8-supply
+  - vddrfa1p2-supply
+  - vddrfa1p8-supply
 
 allOf:
   - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
   - $ref: /schemas/serial/serial-peripheral-props.yaml#
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,wcn7850-bt
-    then:
-      required:
-        - vddrfacmn-supply
-        - vddaon-supply
-        - vddwlcx-supply
-        - vddwlmx-supply
-        - vddrfa0p8-supply
-        - vddrfa1p2-supply
-        - vddrfa1p8-supply
+unevaluatedProperties: false
+
+examples:
+  - |
+    serial {
+        bluetooth {
+            compatible = "qcom,wcn7850-bt";
+
+            max-speed = <3200000>;
+            vddaon-supply = <&vreg_pmu_aon_0p59>;
+            vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+            vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+            vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+            vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+            vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+            vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+        };
+    };

-- 
2.51.0


