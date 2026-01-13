Return-Path: <devicetree+bounces-254315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CD9D17265
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 30A1D30188C3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ACC936BCDF;
	Tue, 13 Jan 2026 08:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bkywUfzn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BRWIAQm+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBBE324B23
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768291288; cv=none; b=crS4VA5/L2AXSQsiwwNe3JRgLqaAg+Vs7938lLeYqjO0ll//iRXuy3NMoyck+5QEwFgeZEcjSDrxBiVK8YOWQuoP59yULk72cRVQgmKxhpQAi0q2SqWcnTrAIFSiN3l5BhK5Jg2Dr0taYhSXy+t0EMiJOLvEC55aDYKSWQJg8D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768291288; c=relaxed/simple;
	bh=ZGFg0op8BVgENGg3aEwasvG/p/jStVsIO1p+IMgzA/E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=py3Lp2Ka2hiYgGbbXnvom25g+r+tpXa1u0TeZhxQYOC4nsPRpVDbWIJiISIDxVTNBtT3UsNgb2xbZXe+2Ji6Hjjk2M0VFE+P620WT9X2zbDfmtmWWdBqeKcjOOWIH5pwxJL+Xs8oWj8gDnqpLOC9iQfqVgUOi6u55DJwrjHhCi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bkywUfzn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BRWIAQm+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D7nNcN3299965
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sGUsW9Nlhn7+0JuXr6dJYsO9rnx5Ii6nJqsMTG3srp0=; b=bkywUfznucgBxJZ6
	50/TNCi40EQ1Trx6W5XJdQtVEjCgdUgR500jczcm99y8g68NgMLlgB7fdxxIVCz3
	jCCMgkNo4tqJDm/TZNBqFU7hr/T5v6O9mCYxL/xlvs+RbDoWeXptm4ylbEnKv1qe
	Hb1kCTDdeltOoJWlaEybDlE5dsOYYxatUBBnwPGyL92+rGJmQMIaHFVsCD+pTgLW
	p2VGmRidkYZywKDodHw2Ox3WhK+TVs5/U7+tAE5/r6HAvpY74P5deraqr10K8Ej5
	xTDi2bAFag8NSJL8PSar6oWiNWYa66D4QGKIPYoh7LbJhp1d+bcxinrXZmj3mlYF
	oGjGXw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jm9w58-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:01:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f25e494c2so65797545ad.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768291273; x=1768896073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sGUsW9Nlhn7+0JuXr6dJYsO9rnx5Ii6nJqsMTG3srp0=;
        b=BRWIAQm+OFf0mG84MOFEgauiTrziDO0srPdvHsEdjI/ebUnW6+tG3pKCk2wA3/9BSc
         rmFM7lM8K6mRuypWWji1jZ4LODGHgCflUsUL6IKIjEaMGclfTysVr4tPoN3Vqc4DUU4p
         66c8vLN1Ln5Jo2Nrhhjt0IQcKfNkImg0xx5qPA5A7klV1WN7o90yCmwv4eo/cfdrDjii
         NiWrmt3NyRePSd7WlnefwAXCXORzn7qVDrOrk5j3UAoClSoMl0a2aAZh3QfON8SoQeQn
         eVFkd0ec24fOOAfbjUtOrNUmeAi6GSv5N9wXsw/TJsRIeBBwQJUnxqAIbAlIcPHc2zvb
         o+pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291273; x=1768896073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sGUsW9Nlhn7+0JuXr6dJYsO9rnx5Ii6nJqsMTG3srp0=;
        b=wcdO7MBttO8tbDNTRY1xy3sxo1KxaAu0mo76o8PqJLOJy2WyxtqWmBLE5GW7Eco87Y
         VFce+Dux8tMXWIfxvVODzreIsldVDVPopTY2QJ4RlrHsjlfWV6RPzRgfNRyDhGXplgEC
         AkIL6Wbe+6xJktH4re83bHXW1hfOVX8crG3JqDjQ/y1onEPOMz8i4Gi1ZU6QvwSn4Ka5
         il8PjQvyEjtWQ8UINUzCLCUy3nadkulFf//dh4scYycoB65m1DrnrYHKyig/TRF7NHUn
         qc7ZL7hbuwRVELq490hFdqIDOdkehV+KuP8dAqhdYe5+Jpqto/jLjKP5JAXJKj/+APur
         W5+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXaNNlIuUxmIKEQf5UpE718C+ZFmcvsjaA2zNq7b1RN38RWQiqDpL6DHCFqzKqNR9QYqEFXW8Ux+mJp@vger.kernel.org
X-Gm-Message-State: AOJu0YxnpdiJ4qFane01tWt/BUtQY/Bq9Tc7iEykK0aCQAU/+VMjLQpa
	NZWcbyTbFO53SiJ8/Y+Tkc5+z8EKdCnOsZsXdF06848UyriXNRx5aC+8mYr3HnVv3g5XQ3cFD7K
	ZtAJvPNgXjUUAU718cSc/fb3Z8mfQZgoiijISExr/aBd8OhCKaBbPuzQFMmoN39Vk
X-Gm-Gg: AY/fxX7YkOHwUW0QINqaIL2eg1375e/+o5TbrCiPdSq/gtfI6jsTJ4+xaUcst4QXpxa
	8ygg9F3AaaGahSvqwKEwb03RUUaRZych4nmJsB2eQuRCHIug5xWEvDTvVVeLnsELRfNfrgo0gTi
	+LcKpPTTdh/3b0tpLzxsrTr1dG9BlCQCrvII0mmopQRMEorLglw4Q8mKIo3m52LR53P6RgsOvUj
	ArFZ8J4H3K9Of+hlTQfeTsOHc2KpYBOfsg+iiwyAI8/5CjNJpsjFrRECubF2PUPBVVD6wB/uWxD
	MWl/h2ocOgvuhTsaHMu1cTLLlvsNR48Eqqzo00TfmXhUERLjg4BvbRGHrI47UErSNJ4lE5KaORx
	djPx/CVmgaFMOmUrdSl2NMBmuPvG2JFM6WBwOqLyA
X-Received: by 2002:a17:903:32cb:b0:294:f6e5:b91a with SMTP id d9443c01a7336-2a58b4c0c2bmr19650205ad.13.1768291272892;
        Tue, 13 Jan 2026 00:01:12 -0800 (PST)
X-Received: by 2002:a17:903:32cb:b0:294:f6e5:b91a with SMTP id d9443c01a7336-2a58b4c0c2bmr19649745ad.13.1768291272318;
        Tue, 13 Jan 2026 00:01:12 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c15sm191132725ad.27.2026.01.13.00.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 00:01:11 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Anjana Hari <anjana.hari@oss.qualcomm.com>
Subject: [PATCH V5 2/4] dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
Date: Tue, 13 Jan 2026 13:30:44 +0530
Message-Id: <20260113080046.284089-3-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113080046.284089-1-ram.dwivedi@oss.qualcomm.com>
References: <20260113080046.284089-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JmfGHhnM2LVjXxutVeePI-ZtXzdm8F42
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=6965fbc9 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VcM-S10TGioI4za7RKgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: JmfGHhnM2LVjXxutVeePI-ZtXzdm8F42
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA2NiBTYWx0ZWRfX0UOaQjGZvg50
 lWNQqtKQXGKoZYfKtuFRvpavBcKvLo/Ies+FADdGKUnxj+xftMw63s3z8mtFotXRj2LOZphtJhs
 jpGbDOUyEipDKIFpimKkFbiqrcsqw5OJ9bKrFSv1XndkFum/CE0VB/BBj4RtBnggWh1bovub26z
 gJ8Swn7a22oywMpMW+xTD+rRTagQNQMQz9xyJUShi3TZja39MWbeoSphYOFViMTZZZdqOhaRkhb
 pDB+802E8ToYZIIYXsykZB6u93Lw80SFJXtYwlJD+E6XP0rYvzex53+9gz+bkFisLby7B6Htt3/
 zzKsq9prRK9AftP0kkjr5WON7bPJTk1DEnH8fD5aVo3Imw6qJUY1UA5dFFzWRrRisY4kNcbOA5F
 vjIUB5cB2zBRQmvZwO+9dCwyvwboIu6amK0YbUJ9LqkwDbr52AUa3iSzjuyjtALDHcszzVLR9AT
 WqnAQ/XJRi80qQAsEUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130066

Document the device tree bindings for UFS host controller on
Qualcomm SA8255P platform which integrates firmware-managed
resources.

The platform firmware implements the SCMI server and manages
resources such as the PHY, clocks, regulators and resets via the
SCMI power protocol. As a result, the OS-visible DT only describes
the controller’s MMIO, interrupt, IOMMU and power-domain interfaces.

The generic "qcom,ufshc" and "jedec,ufs-2.0" compatible strings are
removed from the binding, since this firmware managed design won't
be compatible with the drivers doing full resource management.

Co-developed-by: Anjana Hari <anjana.hari@oss.qualcomm.com>
Signed-off-by: Anjana Hari <anjana.hari@oss.qualcomm.com>
Signed-off-by: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sa8255p-ufshc.yaml      | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
new file mode 100644
index 000000000000..75fae9f1eba7
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ufs/qcom,sa8255p-ufshc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8255P UFS Host Controller
+
+maintainers:
+  - Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-ufshc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+  dma-coherent: true
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - power-domains
+  - iommus
+  - dma-coherent
+
+allOf:
+  - $ref: ufs-common.yaml
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    ufshc@1d84000 {
+        compatible = "qcom,sa8255p-ufshc";
+        reg = <0x01d84000 0x3000>;
+        interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+        lanes-per-direction = <2>;
+
+        iommus = <&apps_smmu 0x100 0x0>;
+        power-domains = <&scmi3_pd 0>;
+        dma-coherent;
+    };
-- 
2.34.1


