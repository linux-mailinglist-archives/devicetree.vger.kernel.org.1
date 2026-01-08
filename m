Return-Path: <devicetree+bounces-252562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4E6D01153
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB667305CAAF
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD4C27B4E8;
	Thu,  8 Jan 2026 05:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d592vm40";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kr2K6Op3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEB21F0E2E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 05:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767849915; cv=none; b=pJFGcPa6w2ByQjfRnxYvYXoTS8pVXJo6DdXqhX5vnb9wuFqecRetI9KwEwYfRfctQSZ/6T+AXviPL9TPmd5OLAKsuaX8bYdf+drbou/BOJ4U/buA5BKfG44YnG2TqfHCLsgfL+XoWfKSOrFE7LL0mcZ0unrFHLEag9vMtnIyQQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767849915; c=relaxed/simple;
	bh=rZxcuRMFvn9seq8EZmJSUEszxkH8Qa+HTYKjCVP6T5k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mQf9MvBpxdvVyOQbRaE6uoQDXPE3itvL78oS9SS9o4yhjCz+fglByN2Im/wGRdzuOwE6kk8bLQRYlAb15jFlw70oQV0x2WPTXQ8EyQV3rqOxXseYwSYqEEGEPKW7PvS5k5RsW2H4ujawpAXL2zk+SWWOq8S9NG+ra/IQ27wZIC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d592vm40; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kr2K6Op3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6081wsse125951
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 05:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QiKK49SklwY
	0WsWCb06XGTvckoM6EZlMeHafpb8hvoo=; b=d592vm40mu4/0DACTDUa4lEI6VO
	AjD8LoscyxcC+ucmuTlZlyWzI8i2JcwlryW6jWgizcyZvDKx/PWnkVXXBGeMHZzq
	tte+AOfSMrdKL76uXRe9lStD/YQX9x9L9DyJfZRfLLHyFizzDyD7lIWitFGMr3YY
	YAO/OAEEUpk5kRrgXp9DK8Q1PmWl0642J0+nhp1yHI7fmzrIaDbZvDok+jXWw8Hm
	P9vDO2FygZvZ1Eg0CWY8joK/AVqVmBImpTyRjB0DgmMt2/hGKqjB+ek7OMzGemJj
	6PKPEuXto1dmdMZn2RX3PZ5CmK0RDjdYXZkhmR/QzNtx5QKM0cEOxEVqCTA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj3d68hpp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:25:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7ba92341f38so2957785b3a.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 21:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767849912; x=1768454712; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QiKK49SklwY0WsWCb06XGTvckoM6EZlMeHafpb8hvoo=;
        b=kr2K6Op3q+dVN2qcJfzOWKy6LwAYWPYSGkfomBqfJV4U2wy6TuTnlSiuWPok9isJq+
         JWFh1YJvv2SLNgNPIZfYiic45x/FITajzD8xi/CRtH1aaMgKAXBKGUumYmiCGJHl0Yng
         FJn6KIUCakGj/lIHSZ21h0y5Bi/VW1gY7PZdKJliYF6csW2B8BXb/c8O6XlTwT5YE0CJ
         giKGoo9bjQire+yZ+COLdVUkPp3MnaarxQJxBBDnwZmdTYyyJiYzEYHgCGegrCWeT+sS
         DGj4T8PgrgDxlkKh6Wt03i/BlocVvvwdxt36xDveNhnbalFbR8SZoaphprM6eIpvZE3B
         PZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767849912; x=1768454712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QiKK49SklwY0WsWCb06XGTvckoM6EZlMeHafpb8hvoo=;
        b=OJCbJoo/mGEkJlm4IuuDbXQPvihQTc/5dMC9d7qLzE1nRh89bducMlBIcd06GmeOiO
         uJfKOvNAUQ0154yXJV1zxspTkWstZUCbvWng/TBRD0ZU5KsEj7KRPpUf1WTUhFNJZr7W
         6SLqQEhc+6qxkEQE1GD8E1krt+CgzujyTTvUAG45GkTGkPVkk5+clej+3r4SHW6w1nMt
         AcwX0KC4GtLnaVwADF7X8PZwJ9GAj3idHn4FygtSLX+lhiS++9zkloyl6QNufcXlharw
         B/GNhOvwPf4yNvQ2W5FDpi/lGrJ1rrgyf+9GZpydJqUseRKTXsyXFsldTfR+o7h6c66/
         n9QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWi2xLHjA98eqXAHmR3bufLV+7ridOyOy/8UT7NPVU0Y7erVvIXm/W/xyR1iVio6SfS1paD8RCdD3lO@vger.kernel.org
X-Gm-Message-State: AOJu0YwQvhN4vvuoC1GJhxAHYoFR/EMw223Eh6K0sCJgMcZGd5ygSBNh
	+T4+4nhWQOfboK9EDrFS+3Z98uZaxS/DcEgAUiJTY49oov79GRNAmDGfV5oYdl7lOFCIweRr+2+
	41ALtnm8+iRQBbb6kJJPjVgzUAO4xAHN9L9fYV8czrHwXnHnpr/fMU+dOTkVnIkAE
X-Gm-Gg: AY/fxX7yK26wTPAwMbwMglTEHT8/lUlYniWEMeGgltdOdpQ/WNlaZ4/wqMz6hj149+K
	5ziqu+eowis1ClmOq9srR/Pnn0/2H//cHGmgrcnKtMSQ7kzaRlearTn/8EeC6Gsn6X2UeC8HNBo
	Hcxcq2muarAvheR46nwaLYF92aZHpPrZ9qPwWOIMe3jVKdWpt7tm3jk/yUT2T7R/ZTB/y9MWodi
	0/o3ZnymPWtvoBx3fNUxx2S68S4RIJ2GrMH9PhuqiCWTaKJShPx3O4yJayszrYBkXaeCqAKOc3F
	oFuiaIdxJ19r1mh3bgIx6VfITp+3NipEMiWMYh0SJlgLoxJ9bkecmv+9ix12L8UDruBoDPjE7hy
	TeykxGgJU02CZ+wENwxKgvO2EPWGiZAR8mbXikXAobOSEjKo=
X-Received: by 2002:a05:6a00:408e:b0:7e8:43f5:bd56 with SMTP id d2e1a72fcca58-81b7ffc240amr4257811b3a.66.1767849911874;
        Wed, 07 Jan 2026 21:25:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMMICqXZmh5lDhdph4jSvCPF93/oOPQz1jvkoxDvv+bv35kxRIrQZx1Te7T+E+L2liK0qy6w==
X-Received: by 2002:a05:6a00:408e:b0:7e8:43f5:bd56 with SMTP id d2e1a72fcca58-81b7ffc240amr4257783b3a.66.1767849911380;
        Wed, 07 Jan 2026 21:25:11 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb0de2d2sm6415534b3a.27.2026.01.07.21.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 21:25:11 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
Date: Thu,  8 Jan 2026 10:54:58 +0530
Message-Id: <20260108052459.1819970-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: rxU4RD9mQOInvWI9mMVbDNUmGis_UTuj
X-Authority-Analysis: v=2.4 cv=APfYzRIR c=1 sm=1 tr=0 ts=695f3fb8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=2IkYd7TCTIqYiAcLhPQA:9
 a=OpyuDcXvxspvyRM73sMx:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzMyBTYWx0ZWRfX9MyVvFPUSLD+
 sH6YxRpemAvrCeYAR1S+UdCbeNXTvt+mFsKxDtKKbtaTxpDjtJrUOeYV2M4zBgbPtG3EF4OfThz
 82203Wj2Qcg4CYcvyj7XMFuZohB+EV/AIB3RVGrNsweWLi+FS80nv6NAVx31paRBiqVT+xfVpcV
 FXoSZGT1RzehTT/9yvVKHOcg5kI5LUri/rGVp68fRWB6t3/Bm38P3nbswAQ9d+4ghftPFjh+0oU
 UDtXOKlWZF62+jhMAIYPFy7orDg7BPDLmnnpwXmY+6x2dSXRF//tECCYXP/IimBUlka1Kwi2WtM
 q/9v3cO7ppjniCiCph9kSyMMAvrPf9K/7V2Tb9vea6/9X2YshsDYTuFyagqfmlQLQuJhE6DRP4v
 q68nuK3a5Ydibo7aVmI9idSHMrNdzqXOj17k9ccWszKjVAfqdhYdCyBptVckkyR9bRbrmm/cCmg
 An2Cor503aA8xu4EeDQ==
X-Proofpoint-ORIG-GUID: rxU4RD9mQOInvWI9mMVbDNUmGis_UTuj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080033

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document QMP combo PHY for Kaanapali. Use fallback to indicate the
compatibility of the QMP PHY on the Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 58 ++++++++++---------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 0568f0a1f356..3d537b7f9985 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,23 +15,28 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,glymur-qmp-usb3-dp-phy
-      - qcom,sar2130p-qmp-usb3-dp-phy
-      - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7280-qmp-usb3-dp-phy
-      - qcom,sc8180x-qmp-usb3-dp-phy
-      - qcom,sc8280xp-qmp-usb43dp-phy
-      - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sm6350-qmp-usb3-dp-phy
-      - qcom,sm8150-qmp-usb3-dp-phy
-      - qcom,sm8250-qmp-usb3-dp-phy
-      - qcom,sm8350-qmp-usb3-dp-phy
-      - qcom,sm8450-qmp-usb3-dp-phy
-      - qcom,sm8550-qmp-usb3-dp-phy
-      - qcom,sm8650-qmp-usb3-dp-phy
-      - qcom,sm8750-qmp-usb3-dp-phy
-      - qcom,x1e80100-qmp-usb3-dp-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-qmp-usb3-dp-phy
+          - const: qcom,sm8750-qmp-usb3-dp-phy
+      - enum:
+          - qcom,glymur-qmp-usb3-dp-phy
+          - qcom,sar2130p-qmp-usb3-dp-phy
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc7280-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sc8280xp-qmp-usb43dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm6350-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+          - qcom,sm8350-qmp-usb3-dp-phy
+          - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8550-qmp-usb3-dp-phy
+          - qcom,sm8650-qmp-usb3-dp-phy
+          - qcom,sm8750-qmp-usb3-dp-phy
+          - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -197,15 +202,16 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,glymur-qmp-usb3-dp-phy
-            - qcom,sar2130p-qmp-usb3-dp-phy
-            - qcom,sc8280xp-qmp-usb43dp-phy
-            - qcom,sm6350-qmp-usb3-dp-phy
-            - qcom,sm8550-qmp-usb3-dp-phy
-            - qcom,sm8650-qmp-usb3-dp-phy
-            - qcom,sm8750-qmp-usb3-dp-phy
-            - qcom,x1e80100-qmp-usb3-dp-phy
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-dp-phy
+              - qcom,sar2130p-qmp-usb3-dp-phy
+              - qcom,sc8280xp-qmp-usb43dp-phy
+              - qcom,sm6350-qmp-usb3-dp-phy
+              - qcom,sm8550-qmp-usb3-dp-phy
+              - qcom,sm8650-qmp-usb3-dp-phy
+              - qcom,sm8750-qmp-usb3-dp-phy
+              - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:
         - power-domains
-- 
2.34.1


