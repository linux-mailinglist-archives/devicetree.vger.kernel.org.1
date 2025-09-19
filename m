Return-Path: <devicetree+bounces-219293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A13B89DB7
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84F103A5082
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04BC3313526;
	Fri, 19 Sep 2025 14:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="otQm3Lgj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E353310635
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758291293; cv=none; b=GOgJidXpHqOti656NHsSdIuNOYMkjBVd8Dz/LDq8utjgYDaI9JI351hqRKh8ewM17FlZ6deHZoVg65GcRTFJgaBN1gFHHQAfeJwrUc7XVISiOzbIB/cnvOUH+wOE/HEna31F/v0+wk3jRo2z39sh8n0CLzXCsN5bdDxjMtu9ffw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758291293; c=relaxed/simple;
	bh=H18JYOxIyEwenlKHPH3Q4sdgZATPQK3L6NM+azc19AE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MeC8YlnVI8bk9drRi9hfyZDMXaOPrdNNE5xhauGa8Acs2kunf4UJwreJslOlhjWFv2WXLFOHkJjQK1ns50KQ0XDzqAwJ8DFc4brVXyDWW8LoUtMZwLN+R27ymFHplcdB9EQEIOri+T/lRONvvlXnqg1bKbE3VT+7PbJ8VVOtSuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=otQm3Lgj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J9BPG9027215
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:14:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=9EEP86bPrEuFPhyrGPMSKAxoE/r/N527VzL
	IseJvapk=; b=otQm3LgjLRebVNhPqwJ2r4P4UwvdHcYQW0UiPpHqaB7xzV6HyM9
	vKzvnzwXzb1wnT0cQiae+vzW+nGogSHtI8Y/yk9twjffddOQV9ORTjnzAgoOYnBY
	/LIQYPBNpULBHrlS45de4tmaymkz/V9OkN4byh4X/LKbO5/ZxP5CXzUDnJhD7T5r
	EMMwSNDvPTn0zfqt5u5BGnVIomx8pPNxVUgSwzVlNAy8lipcnaLmC98DrPxTW5iM
	vKA0+YsKPkjByEDVsFkuU2fv9VS5oanzav6ZORXWagmzJ9x9hHDFo+YawtMmRXyO
	HETV1gbCN82wR2OYXo0yoi5rOR/IVfupU0w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1jgp78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:14:51 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b551ca103d8so494652a12.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291290; x=1758896090;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9EEP86bPrEuFPhyrGPMSKAxoE/r/N527VzLIseJvapk=;
        b=HKPuP/PDzddddeLO24p2i/Ln59CMOU0JH9HrndvYbUJ0/44IPpi0dFre0IlgzL0a74
         uCBkflEqmL0QLKZWc7ELBmq4NRkceczoZxM/aTTeUr5DEgvxBvxo/u/jqEIHBqi2fhR9
         k25npzTQciJt10uBGCoFC5OQqx8Jey3EewFQvL2zAjN7Dfy85MG/lgQBUreh1WKyuIaU
         YURprM4zaEJASNxF8Ix73QtHIvtNNksNSkqDsxNenq1rCQhGeBikBR0W8U04HRmgtGAD
         Cg+8g2UTsW5yZ0QiH2G8CnOCTo6YzG3bCQduHxmXLP91Kgy1Iz+y+XDLhLAAuMT0CMDF
         Kh7w==
X-Forwarded-Encrypted: i=1; AJvYcCW8MUK1/vD95ZA7fH3ts0d3s8rlulqpEMPPSoMRXXYiiQHMeu9WhYGJpLP77fY0z1jgrbR3d1ZDZ9S1@vger.kernel.org
X-Gm-Message-State: AOJu0YzQzGIOcvS3b88XXVVplqSpiU4KdI+2kjaDe4L7B++NW294vCT0
	tqYR/FxOjL8eDUo4lEOAGFRI1qUS3WBHjUk3Vt3LmegR1zKioaezzhbj2nVzBCRqcH/1r2q09sR
	2IIPe2R+8AF5jbuBqY97gkoWl3na98rVwqbFIE/E65vDqQOgk/gyOu3kXfTnRIQxd
X-Gm-Gg: ASbGnctiJ0/24D6I005+VOHCmlw56EN1zbx4uwv+0RXNUcMh8ASLmuFoBzzdxYXfqcR
	tDdqDxjvwhOd1rJ1qTWIfYzxs4RcxM+U3DzPyJcCWxCiQGtACimeI058kkMrKkYGU+ZEWx9JVAC
	r//f8IMndYrjNif4wQj5v0/XOlPcF1cv9iE9aPiOWhSR1kyyBPiCSVsvXe8bHHlGL8/YeGBHXZq
	kTFGuUw05DfJKrc8VBFLHufXoP2oxkUMTnlEWGnMFcvJJJXL+jLEDZpn0dLKDMFb+Y+LZAj2k90
	K8Le9jCiGfi23ZOmuRzvEyonvq7S1FsGsCdeGYPB3tMtZTvhM/0yFMZUxvLxLQwTsfCGh26+/qb
	jNlJ+lZNDMN017r44UaYLHkKGkOibjxKwjDgrEhDGRryhEX+jXPL59gjngYAX
X-Received: by 2002:a17:903:2341:b0:24c:a269:b6d5 with SMTP id d9443c01a7336-269ba27020bmr50046095ad.0.1758291289598;
        Fri, 19 Sep 2025 07:14:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZEoV1JBT8ltcQHOk66+9wxwccfdS5Zcfmesrj8v0ZFx8i90bAAeizJjd/qgTQvGzs2XP4SQ==
X-Received: by 2002:a17:903:2341:b0:24c:a269:b6d5 with SMTP id d9443c01a7336-269ba27020bmr50045735ad.0.1758291289091;
        Fri, 19 Sep 2025 07:14:49 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016d9d5sm56456845ad.53.2025.09.19.07.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:14:48 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: qcom,pmic-gpio: Add GPIO bindings for Glymur PMICs
Date: Fri, 19 Sep 2025 19:44:40 +0530
Message-Id: <20250919141440.1068770-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: JSSC5R07v-iz4Oov5BfdzccrT76rB-ev
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX647DIW9TQsmX
 7s3Th6o+AN9o/yUJHPagAdstEqrfQsKo0xIkz+H83jOYvmdDgqaUTo8pMoPklwajfeWw+2lJqOt
 pkQ9/aPQcuyUy2OuTS461YS+CF5tY1Ts7jWl8nkcNEcP7WXUnXgw3vdYmwwY+hUCD1KQ3DO0P0k
 4nqzbVyw04GimnIpY41lzrjH61UgTJ+FAf8E24og63vPv0RygHs85qRubD6mmhtxs1kEbgQ9s1T
 XJrvoXh3/8wYY9S918Op+xtNptj17gJ7PhglJZZ5upqGD9/ASVfbKzi/m1gvsbBQszvDzZVyHAh
 zmu2H2N1NsZ0q7woHTR++CPPjXUZRv/0kwU6uu0V8aZpJVYuTz75GjFUjk6llQqLL++WZgl8COM
 X/wAULtb
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cd655b cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gVt0xI4JxzluFwnjjo4A:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: JSSC5R07v-iz4Oov5BfdzccrT76rB-ev
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Update the Qualcomm Technologies, Inc. PMIC GPIO binding documentation
to include compatible strings for PMK8850, PMH0101, PMH0104, PMH0110
and PMCX0102 PMICs.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../bindings/pinctrl/qcom,pmic-gpio.yaml          | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
index 5e6dfcc3fe9b..8ae4489637f3 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
@@ -59,7 +59,11 @@ properties:
           - qcom,pmc8180-gpio
           - qcom,pmc8180c-gpio
           - qcom,pmc8380-gpio
+          - qcom,pmcx0102-gpio
           - qcom,pmd8028-gpio
+          - qcom,pmh0101-gpio
+          - qcom,pmh0104-gpio
+          - qcom,pmh0110-gpio
           - qcom,pmi632-gpio
           - qcom,pmi8950-gpio
           - qcom,pmi8994-gpio
@@ -68,6 +72,7 @@ properties:
           - qcom,pmiv0104-gpio
           - qcom,pmk8350-gpio
           - qcom,pmk8550-gpio
+          - qcom,pmk8850-gpio
           - qcom,pmm8155au-gpio
           - qcom,pmm8654au-gpio
           - qcom,pmp8074-gpio
@@ -191,6 +196,8 @@ allOf:
               - qcom,pm8950-gpio
               - qcom,pm8953-gpio
               - qcom,pmi632-gpio
+              - qcom,pmh0104-gpio
+              - qcom,pmk8850-gpio
     then:
       properties:
         gpio-line-names:
@@ -303,6 +310,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pmcx0102-gpio
+              - qcom,pmh0110-gpio
               - qcom,pmi8998-gpio
     then:
       properties:
@@ -318,6 +327,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pmh0101-gpio
               - qcom,pmih0108-gpio
     then:
       properties:
@@ -481,13 +491,18 @@ $defs:
                  - gpio1-gpio22 for pm8994
                  - gpio1-gpio26 for pm8998
                  - gpio1-gpio22 for pma8084
+                 - gpio1-gpio14 for pmcx0102
                  - gpio1-gpio4 for pmd8028
+                 - gpio1-gpio18 for pmh0101
+                 - gpio1-gpio8 for pmh0104
+                 - gpio1-gpio14 for pmh0110
                  - gpio1-gpio8 for pmi632
                  - gpio1-gpio2 for pmi8950
                  - gpio1-gpio10 for pmi8994
                  - gpio1-gpio18 for pmih0108
                  - gpio1-gpio4 for pmk8350
                  - gpio1-gpio6 for pmk8550
+                 - gpio1-gpio8 for pmk8850
                  - gpio1-gpio10 for pmm8155au
                  - gpio1-gpio12 for pmm8654au
                  - gpio1-gpio12 for pmp8074 (holes on gpio1 and gpio12)
-- 
2.34.1


