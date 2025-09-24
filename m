Return-Path: <devicetree+bounces-220981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E63BB9CAC3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:42:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28EBA16A749
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D5F27991E;
	Wed, 24 Sep 2025 23:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NwuBS3cz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62D220C00E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757356; cv=none; b=tv4fApZqoo4AHybaQV3uVilLN1BnY0U0pIbq94G/XKveeZONsElkESg61HRRsOUsAKuqoO+IlvV6IlXy960vKpcIlvbMeEtH9/7lMF7A01nr9IQFNy8wusEml4lI7agZ3ssfSAuClGNUL5RdSqpOoqdTzQnEoWunrAsSO7aO6+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757356; c=relaxed/simple;
	bh=jC4ARk4/BGMQkPobGqNsBp0H9jAmYJqjCkipkBKj0c8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=oF4+B+fn4bFdURj0z0iizLAemkniyP/nUdXFtVzU046P1bpUptkuo8FssYeyeGe51GkcyTrCRK6IrtGBBazAgo2IvcPyKvUDs+kg5PCg1hzfppG+Yt58T+RZDepNcVlnb/K5K7sdnRcenlbuB8um7mhEF4biQl+aZgAQZRqOEWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NwuBS3cz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODFqMT018751
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:42:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Qol0uJ/DjY99kV2fcBZLPu
	bkOcStGcswt2KRkk/UfFk=; b=NwuBS3czIexMJitB1kHr3SK31DeAKjuitWevU+
	dccuDvx3KE2EU8surtCASLGqVOnH5ARE5tKjlsZK6zVQs89nKkMy5wnZ4AOBXtxM
	bL++h+ykwT0vAu8ABnI1GUEpl8Wohb+JFM4b9PuDvzhiBh0MpmFj9IHDMjJ1p6jW
	xrQCiF5JBN6OTo12JkVThw/41RAltXCgMJWrA2Q/gCN5NCTQZAyTicavoabzgdjj
	Dgf+TOPukQ52Kjk5zXqc3ZOrrKnMj/eww2oplCznrlm0EuokPWskbs6DeN3UgnXK
	3nLM04z40MUzfMEKewtxzvLEVaqEhA9ProopwBmG3IonQ44w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjyd7b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:42:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24458345f5dso3900035ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:42:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757353; x=1759362153;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qol0uJ/DjY99kV2fcBZLPubkOcStGcswt2KRkk/UfFk=;
        b=ppMRV7b6Yv38sIQBgezciiR9MZtuGNuqLz8j8GT1nsWAzMtYaL6WEP1muG96MtdJnp
         /aCLFyvo79WMN0JsY38p139PZgWQ2sHNEGwlQj0QxDcGGQWTk8dPZ83ykApO3buXeVID
         5uzpR7JeTe6fAoRXXfrNU63Tself8mdyWgd5nTyeUjCdYpM6s9UjA6nUdfoFocyjMS01
         lRG6k6UR2RCHR9DX/jqG7Ptr1sU6rDgUxXEhocxu9ObSi/2TwhOke4v8tErIgA+wqBzm
         /dRDuocdvOMvxBbGvYHsKJNozEr7/Kl1wRztdBqivuJfO0txYVz08jtuCCnA9hU7ssW8
         X0mA==
X-Forwarded-Encrypted: i=1; AJvYcCVIIz2xD7/Ops8KBpGIwp5B7As6IR52eghW7r16EZ/n/UwSmbI3kEb3xdY3umNg/yMA7VPXphEWtS4U@vger.kernel.org
X-Gm-Message-State: AOJu0YxoZ+wCAiLv7MuogVsv4JV13W6hkSdjRaR56NOa407R6l7/RYFF
	HNaL9dZCDbQuKKsp50Gs6Dj+jaIfXKrt+NLG9pF5Bl3wcHQUD1dsDMEkIxCBflrjL0UIB5qu6wi
	zMkkpZponzwclQL8SLXCGG6MCs0PR27PCZVFMHOL8MRJZo1DfoX65GQ8JrQr9GgEN
X-Gm-Gg: ASbGncsGcSRc9JxH/2BhUV96r4XJAh3+5Vm8RmQbKF2o5cObYiswVsixUA50eG0pZ7n
	3IN4lLw1rfoIvjHtPbKRYrqtqIr/wnYfVpCYrP80OgrwLAOl0jxEqgB6dM80HMBPfKQrQCafaKQ
	d1NPyaN/xUBw/nZKwcAqor2SGce6OFj0q9IEUJ4mi7bPP/JrMRZPUizjHEiPtOYMcJ0a1ZBrrwW
	/IkXtz2c+tae3mgEGtVHdgfhZKQic3l3AAGtrC8jb75EpneQc20KtL4wAtb9DXxb0USYilQzDfj
	0fSU1OQJIWAwnePtD0uqP6HMxf9/pbaYCEdCvFdD2Em/PXwH3C+O4VRYnwqbb1UOgrz1roU2bCN
	hwqzLEcpMwMS30LU=
X-Received: by 2002:a17:903:3884:b0:274:3e52:4d2d with SMTP id d9443c01a7336-27ed4a76e00mr13607235ad.37.1758757353002;
        Wed, 24 Sep 2025 16:42:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEp0ELExHw39ifx72JdOIvm51XVaQYe4XvSjpj7wId74sWV9ba8kb7eCIuoI3H4RYdXKNqZcw==
X-Received: by 2002:a17:903:3884:b0:274:3e52:4d2d with SMTP id d9443c01a7336-27ed4a76e00mr13607015ad.37.1758757352572;
        Wed, 24 Sep 2025 16:42:32 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed65e8e89sm4984905ad.0.2025.09.24.16.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:42:32 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:42:26 -0700
Subject: [PATCH] dt-bindings: spmi: add binding for kaanapali-spmi-pmic-arb
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-spmi-binding-v1-1-b4ace3f7a838@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOGB1GgC/y2NQQqDMBBFryJZNxBH1MarFBdJZqJDSbSJLQXx7
 k1rlw/e/28XmRJTFkO1i0QvzrzEAvWlEm42cSLJWFiAglZpaOQ9rjKvgaXliBwnWSO0iOigdyj
 KbE3k+f27vI2FrckkbTLRzd+jYPJG6S8mejxLcjvtU3VLCLwNlSFAUKp0+w7hqhtyxvvSsg325
 HWtlXHKdmI8jg9VEEVaxwAAAA==
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757351; l=1290;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=jC4ARk4/BGMQkPobGqNsBp0H9jAmYJqjCkipkBKj0c8=;
 b=bUOmbq9O7Hpb3ld92WPfktpqQhKSchaIuN4V/NH9ki9iiYHe2NOMscIvmZ74sqhTYAcAyAUdv
 DNjGcAJpk9KAFn7Ja8qj3RSgxcuYgaBewlHn0xoFi9kHwCv4YHKPBco
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: VeKYOnrGa6uPKb15gTB9jFEKX2OnXEI1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX+drX5ZXh4dgK
 ENPl+MdNzhIH3xecdhCQH9w1uuHEQ8JyhMVr7w4jy/lryQPmHmg8p3UaAw1RxMTTNx6kr0QQaer
 1iiXZjt4H7rZtGnOONco+tH5GnqQE3Ep54haEhuy01C8JsTzbrA6PN/uybPsjpz43nWXGMplpL7
 G08/I9dzM9MBrYN4KmAW44C+ptNWNSViC0cste5XM4zsl0cXSath/x96sYNrQZV71ert+3envId
 xKij5sO4dyWu5SQlp1MLFcUDKmk55gC4axGmAr6t5sBAxKa62T0YxYKFoeoF0H0HRMU9Hk37yn6
 Z6zl4en0kze/m8FiyAQJkNnI0S/+oLhFmbyuOcIaVeCbc5Rd1URXPySs7sVBCwoqlc7epzR+PFL
 2WR97Yr5
X-Proofpoint-GUID: VeKYOnrGa6uPKb15gTB9jFEKX2OnXEI1
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d481e9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=TXiNhvdN9S-nxoxCruEA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Document SPMI PMIC Arbiter for Qualcomm Kaanapali, which is compatible
with Glymur, use fallback to indicate that.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
dependency:
https://lore.kernel.org/all/20250919140952.1057737-1-pankaj.patil@oss.qualcomm.com/
---
 .../devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml      | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
index e80997a5fb4b..1d2424f27b65 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
@@ -19,8 +19,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,glymur-spmi-pmic-arb
+    OneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-spmi-pmic-arb
+          - const: qcom,glymur-spmi-pmic-arb
+      - enum:
+          - qcom,glymur-spmi-pmic-arb
 
   reg:
     items:

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250923-knp-spmi-binding-1d25dddc27cd

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


