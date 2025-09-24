Return-Path: <devicetree+bounces-220968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F05B9CA2A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 371BD328085
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9702B2C11F8;
	Wed, 24 Sep 2025 23:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y85xpRhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21782BD5BC
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757055; cv=none; b=pNWp4+C6ziq2Ryg/EPMSplmgVaIyGHoMaUAEhGlL/YFqJO8fDfH/Je0Jqj8eMQNbFWgfiD9Z9Hr1zHo62HriaV8e5A2P32w1N6zKyyM2319KuQxTdwkp8qV0aPpfL3Wuam+ilVl6cLvf0Ua9KNFpUOAAqgZcwraimEkvYRQimnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757055; c=relaxed/simple;
	bh=MbxEjMIaUENf1P9WEPkEfk2L22A1VFwABKvQjLg/Xoo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i3FmjIy9IPOn+LfhNjs0v9xOoZP6Pb0I3el55bQF7XZtZUvjm2XD8lnt+ty0UzGZe27cGkcBTe78YDVseRe90TTdF3ZjwRRG4rxnSBXpCuyYqLxBD0rCO8gr5BrgRsTE6nyxa4LIzcFEupVIrCIDU9DZJXCPtPqZhOBUJiahyAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y85xpRhX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD4Zh6017453
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	feXVGRefITNODxeUJQMMl0Hw7fIAFVpnWml1r8rDvSc=; b=Y85xpRhXsG36zo6E
	0DiELzQtJBPqZexV9b+Eh6lTPaEtwMVostvBM38kfU6jTjjT3AZHkaPgcR1nN3Ij
	+uk0hyR0RVJPRxMOR48Rl2iO1U75/nqRQk4WdE8gQaqV3jL/j9wUo11TQBBhgud0
	mEoY9fIqgJ7DBQsKqU8rDktanUB8wjgquC6smOV7NVnBZZ3QHq+Ri3HEdVK+Sw3J
	GkIuKneaDBBSamMZDBno6dVB6ar7kfWCYUh2Oy/ufvJbJl2fhiAud71On0LmypQ7
	gpEE9d8KWMhBOYLrOLCvJFqo8l1XgyHqj2+GnyQyUzNCT6dbNTDHa+YauhSQNbat
	/1Rmfg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjycsc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:37:32 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eaa47c7c8so347749a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:37:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757051; x=1759361851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=feXVGRefITNODxeUJQMMl0Hw7fIAFVpnWml1r8rDvSc=;
        b=JAiNYYi1olg0xTLoMDJqLznx9u6zWhn14eXxRFWgrFykLX4UZFmr+vTj58XSQrrcdS
         HaSV/V241xmI0AEBiIEcKAmzWoq13BDZOdO0vjTsicTlLMv5spjrWDWzBHkY2RyPTxCR
         SpVoqustKxBxn5Jy7Dzj3JJmb6PB5DNhBFqHr1N3UbwDbdbppX61fwYuNLc/YRuNFwD5
         iR0bOGwFtFAR9KrtXnO1ctOR18TkDkJ3iqZSXvukvbZNa8LwT+dogdhOM/3GVgVMxaRe
         DtiGnyX5VMDiIGKIkDhtRNwsxwMCKEMFTzLSm2bTZqG+3sKqiGofWG/EXxlPhr3yWaZH
         6mCA==
X-Forwarded-Encrypted: i=1; AJvYcCV+42ktLFrLw7H29OzwBJgD7UX5Y1zIEm3z6Ql6/e/q1zk79df/ZyCqPOYP04pBVtFEDUBptqmEU19s@vger.kernel.org
X-Gm-Message-State: AOJu0YybiuXmosI6LniDGE4rw37UbU7buxBwO517/+AMlQVWu0+bfQDv
	y1AVQ4gEfwqQXTpO1ECg5fAbyXz9e6GYDc9qDBAR7ZpO9sdthRlpfvq9Y0KRV+mx4MUz++1kM+F
	0NpzpNHaCDT/0RZ5oShbjogbfq3f3xi2OEBSg8Akn5KbV8dcWAelf5jpF7R0ag/hY
X-Gm-Gg: ASbGncsBxRWdEQOC5FGvHBilHCTpR4mkRVLTX2K94Zdr3NQFZQ52GsD2Jr79zDYZ8xC
	5cTKL+z6t0e1QC35VN/yjCAMB8WmPUJy5ISER++mFO/ljbYZG5pBNFq7QfRwacPYtDttY4WuHdy
	xthrmMjMAmtxs8yDXmTDTgxQL9DZXmlhI3Vh3+xGnsDVy8JfvwP6/W9KNSH3Z/X3sskFbY5KNDK
	niodYgcFOG7BFlmRfBxgwGfImRrrQUmZZtL73bo5I4qHek+LjwwEdEXNDzFPKq1aFej76miarX7
	yEZQxr6WxaPV/2UbR7KYgFZ1OoV9FPgI8wU8Blp/a6FyFwFcbkyjuxAHVsZQ7o26OCcIjTZkMsm
	OK84s5/nTyeCCVek=
X-Received: by 2002:a17:90b:1b4d:b0:32b:aee1:18d5 with SMTP id 98e67ed59e1d1-3342a2cb650mr1454572a91.29.1758757051218;
        Wed, 24 Sep 2025 16:37:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb0KpgTvAPWQG9YQkzgc8DpK2qH8dPaSgf4xK0XteXzopA5zzTkpzU7C5BCgrqm001OepIAQ==
X-Received: by 2002:a17:90b:1b4d:b0:32b:aee1:18d5 with SMTP id 98e67ed59e1d1-3342a2cb650mr1454556a91.29.1758757050772;
        Wed, 24 Sep 2025 16:37:30 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d73550sm227187a91.3.2025.09.24.16.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:37:30 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:37:23 -0700
Subject: [PATCH 2/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-remoteproc-v1-2-611bf7be8329@oss.qualcomm.com>
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
In-Reply-To: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757046; l=1455;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=MbxEjMIaUENf1P9WEPkEfk2L22A1VFwABKvQjLg/Xoo=;
 b=42zVztKkOXeN1S7cXzjNRiEnLF4tGM0ToLX1k5yT5lVTdwOtBlNJ6D7wBlNwRkLIlOLGE6QLE
 d2VDs9mZdZnDEaV0TGMefSB5I/ua/j6CUQLjo0QfiLdd65ktRjM+9xH
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: 2LQw9X1WzXso4gTY7UZb4UL_pSS2kdwq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX4KocEzivq7BE
 V5PDRuVimKw7tGKARV/AH4yeFu8cw1P9Exr2M6fSgzFT7n9q8GMnnsHXQEyxMFkOs+jjLrPNzme
 jFLpp0xljI8FvBMxuxWBCqwe62Bov5V+hraOH0ZCwjJ7u+uqpVh0WDDJhTAoSAwIWadaNeJtpRn
 LfpK9AOkOS8vjitLBLBQpvjUExCsXMchIsVzgXdOJWTN8INnU1yG975wxPF4hio3CA52S8tLH5o
 F9yEbupyapB5UhauY/NGKmARuzDkg+5RMh8AGlCMWPTTe9/KYnCnSJV2tszz/cwmogUkztL6As6
 6fKIta7CsKVV6Il6+X0NY30O/OB+8nyscZJ+sabL4JZp2CopnqBJDQ2DxJHfYYiUJh7jQCDwYHX
 4ieesuzk
X-Proofpoint-GUID: 2LQw9X1WzXso4gTY7UZb4UL_pSS2kdwq
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d480bc cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=fQzFCQHg6D5FrR4bPmwA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Add remote processor PAS loader for Kaanapali CDSP processor, compatible
with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
interrupt.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../bindings/remoteproc/qcom,sm8550-pas.yaml          | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index be9e2a0bc060..031fdf36a66c 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -35,6 +35,9 @@ properties:
       - items:
           - const: qcom,sm8750-cdsp-pas
           - const: qcom,sm8650-cdsp-pas
+      - items:
+          - const: qcom,kaanapali-cdsp-pas
+          - const: qcom,sm8550-cdsp-pas
 
   reg:
     maxItems: 1
@@ -107,6 +110,22 @@ allOf:
           maxItems: 6
         memory-region:
           maxItems: 2
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,kaanapali-cdsp-pas
+    then:
+      properties:
+        interrupts:
+          maxItems: 6
+        interrupt-names:
+          maxItems: 6
+        memory-region:
+          minItems: 2
+          maxItems: 2
+
   - if:
       properties:
         compatible:

-- 
2.25.1


