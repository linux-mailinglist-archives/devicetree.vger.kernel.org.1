Return-Path: <devicetree+bounces-232475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F3C18544
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 06:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3458A1C63F50
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 05:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5602C2FC890;
	Wed, 29 Oct 2025 05:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kdIXPXdg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hd6zmdD5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E60B2F99B0
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761716681; cv=none; b=YWNqq1qCQnMMfu2D/z4gZmPhngCDfzxq5HHP7Dx6Nk8eRrCTS/5AgH6qkf2xuo82p2zqy4OtkeSElARMe9to5j2D4AlI2KGi9HKC6DnFE0fPqTzC9NJ2esYWr8uLx+A2KCFSHW6DocJV3zE1oEJ3O6us41rItrBW4XPAX1cxW0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761716681; c=relaxed/simple;
	bh=8EYw4Z/xo44OuLOyMYzMxoyH1Vg1YfWbDmeqootUJ2Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TCregrKkg7gkM9ulKxEvZFWjjg8usFJG2wdWIUDTZWN+u+QUw/k69FmVfBpkSSiljfNKpz3nUJ3iRMi72iks24oEkDl9tQuozIf69ilrynhxUR9DtE20yEIwzjd59EOuHm0TYgK+SS3c2GkHtA8ClFVekPD9G1/s/eQky7ImPD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kdIXPXdg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hd6zmdD5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v2Wu3695914
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:44:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XTxmlmdDSChoSRSdcE+3TPbG38v/AJn219b18ubKG3g=; b=kdIXPXdg675R7nLw
	eNA3k2CWFJGOjt4VyGxz77QnitMcmcjHh05HeNq2KQ3wnQ8lqjIp/KG+zXWBTI/h
	MzhSU7sSq5w4n0OR1nubjIlTNc+iqlXEtRiV3sOMvR+9Kv6xvriuqX0iyZX6pSvm
	QTKaWs1G2MWInlIfI8PnFzP7pnSEVegV0zy5n777ryIZeIkADnEVd6KddEqalslI
	IRvuwhQtLF1sJxsVti9WyQDyOhpIt+GhyKF1VhXV7xKKybQqvuk7MYR/eBNBITc5
	X9dlflBh2CgQyAMIMmZpw2ddGO2kUuG7noIcs2NcraP2py3mLRRF+/ult//kNAnH
	malvZw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a11ang-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:44:38 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b55283ff3fcso4346957a12.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 22:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761716678; x=1762321478; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTxmlmdDSChoSRSdcE+3TPbG38v/AJn219b18ubKG3g=;
        b=hd6zmdD5k5DTzL0DQj2T9A5LqRBtlHo0kxQbKmFq1JfIKX0NhVR7tuBjHkpcfbZUiW
         gFcWoG/cnVp1Z1qDJnwDwxKjDKNLeissYP+df+9afqS2uQxOTlC8p9HPUVc88ykFRNcf
         s4tGHPYC4JpEHwF/8BY4frC0RIW8AnrgiCpK9iLTm9j2fos8X2pa516CwHmuK1foCz3V
         F48p73ulxShEJ3zpD90Qa1CEK9lEu9F9W/bVb6U0fxXMufMw9F9PVEP8FhUppGGlDGQ0
         SHq8PQ8OtnJ/bI24XseWL2ePsYDC5/GgeWHX1SsFDE5EXwMD1L1DKKm2iHThv/br2cMT
         0gKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761716678; x=1762321478;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XTxmlmdDSChoSRSdcE+3TPbG38v/AJn219b18ubKG3g=;
        b=FTAtDnR/Uz2c2Sqwfmyok52RHadrL6Asmx+4X8UGOOe4PqcktyTr+hVWQc/H+UpMYA
         /OiITYorXxykO3TDgWUww93LFnuoPgRZRjM83j7gQ2vEGMwCmimZVB8XBlywR48yA7i2
         cKCfO/4H9Z96qhHlbqSs5vboEfEkJVWu3ktb+fpCiRqfaddAsgHdBAXWVlVpULeJApLi
         a+ySSrJGYw8tnhGdGR4k5Ptjza+9vL2AeyrLTiw4EQ+Hhgq8ukb3Z0wW+JoxBsnUd1U8
         pbt9kgG1NGDMbej/48aV7oi7nMZrD7iPU4z2qc3x7KgdXeyATWOeiiyJm6ALaxJcsQ+7
         ZH3g==
X-Forwarded-Encrypted: i=1; AJvYcCXihKurpoBL8M3XH5pSr54syGTrMpoR8bAYczO/Emx+dgWYyoNs72A2O9URhGUbf7jBZuEgZgdcygA+@vger.kernel.org
X-Gm-Message-State: AOJu0YzL1xlzZrYlK+26kQ3baMbjuJ/vINFKQmglpMZoe9BkYI0ObRZL
	Ku99IEROywJcqeGiem/0FDV2KNyHRFnF22KHF+gxAAQsz2yCS823im8qiYzCeH02EkyirgcUCJ6
	Ncq0W4soMsNl6bqYjej+kvPthdh9EQJd7nqTqxe4ZY/O9+JCYXXm4EB+oPJhK5Uey
X-Gm-Gg: ASbGncuLyHhw1oYtBkinOv18/vyfOnP5RhD5hmALlQSu1oze+lqvcNY5qJ31MQD3zMh
	5mB0GRN4lZhpMyzxkx0PVE9cSRR23nV0mnaW64BrkINpfeAGcd+2rJ3j/QBpqIptIlXxDxXI1Lq
	6+06qVVDD/qWyRWpNm1qt98TFbEQXWw+z6iQYzPYdYzzRBBwTxiMMFh5us1Gwu/TuVPYYhL+OXp
	2yMVWLeeo4v0itbydr7n9CQDQlyFZktJZ1opQu4AduKD2D1SGfWBdj9WrDa+yjpGC503BXm0lYt
	gsgm+eZthWJZUJAVNvx4spm4cAdye/2YNtt/dhudFZS6Q/sDQbuxbAFEQbiSCog/mjSzytFqZzF
	9e8zSqc+IdWzrMEsX71m7L5RFZxDmMyLY7cIJDvK6QpQUxgbQ5LfVAA==
X-Received: by 2002:a05:6a20:7484:b0:33e:6885:2bb8 with SMTP id adf61e73a8af0-3465194d36amr2031607637.19.1761716677658;
        Tue, 28 Oct 2025 22:44:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHovUlmrVJkkaucwDBUohnxJ2/8kIowbroT51EdTdDwL3bnqzoNBt7zdt8B8WwFJ7LGIRS24Q==
X-Received: by 2002:a05:6a20:7484:b0:33e:6885:2bb8 with SMTP id adf61e73a8af0-3465194d36amr2031566637.19.1761716677050;
        Tue, 28 Oct 2025 22:44:37 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7d1fdesm14280643a91.5.2025.10.28.22.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 22:44:36 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 22:44:11 -0700
Subject: [PATCH v4 2/6] media: dt-bindings: Add CAMSS device for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-add-support-for-camss-on-kaanapali-v4-2-7eb484c89585@oss.qualcomm.com>
References: <20251028-add-support-for-camss-on-kaanapali-v4-0-7eb484c89585@oss.qualcomm.com>
In-Reply-To: <20251028-add-support-for-camss-on-kaanapali-v4-0-7eb484c89585@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA0MSBTYWx0ZWRfXyLpjyEkGcjY4
 D8QmeKXbVvaQWjkT6WvJZkJl+z8MFQn7fKzFTjWleQ3JlzV6HIEF2GUVWtfGSRktxiQx+LZDQYc
 KV+eXodCdc6EKrUr9QQvKAxkqmwZSw3Q4bGlJxYkbRRd9+bvVkX+242eS5DNdRa8Mpp8PiDL6fN
 yb8Qpba1KMoba0j3FUsQxqnLpVU//lrKdQQMdyFMh1FZaQ2d1Cj+eMlMpaTJZau0zypsLrpOB3m
 ZJSVM+h++UDvLB8cN484nIWqoAgWQbVSBqTYMsA7P8WvppOtZ7wc5/6AGHUGQXZvM/OeQEd6lCy
 B7ollmeIzGHs/Z11vwmqJZqkZV/bMZ+qEBMF6JqDFwQ6gpuKPV6IiY2EKjJTQzhojgpsWnnRGa1
 jikvXxNWDmzfYim3vdym5eEaWiToTg==
X-Proofpoint-ORIG-GUID: ewBmuOnBaj7SqS6wuVWEj0_VfW-Ri8Ik
X-Authority-Analysis: v=2.4 cv=EKULElZC c=1 sm=1 tr=0 ts=6901a9c6 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=7Lj6VqmjGphfb2gh5wsA:9 a=_yrEaYCZQzJ1sirS:21 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: ewBmuOnBaj7SqS6wuVWEj0_VfW-Ri8Ik
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 phishscore=0 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290041

Add the compatible string "qcom,kaanapali-camss" to support the Camera
Subsystem (CAMSS) on the Qualcomm Kaanapali platform.

The Kaanapali (SM8550) platform provides:
- 3 x VFE, 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite
- 3 x CSID
- 2 x CSID Lite
- 6 x CSIPHY

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../bindings/media/qcom,kaanapali-camss.yaml       | 406 +++++++++++++++++++++
 1 file changed, 406 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
new file mode 100644
index 000000000000..c34867022fd1
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
@@ -0,0 +1,406 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,kaanapali-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Kaanapali Camera Subsystem (CAMSS)
+
+maintainers:
+  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,kaanapali-camss
+
+  reg:
+    maxItems: 16
+
+  reg-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: csiphy3
+      - const: csiphy4
+      - const: csiphy5
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  clocks:
+    maxItems: 34
+
+  clock-names:
+    items:
+      - const: camnoc_nrt_axi
+      - const: camnoc_rt_axi
+      - const: camnoc_rt_vfe0
+      - const: camnoc_rt_vfe1
+      - const: camnoc_rt_vfe2
+      - const: camnoc_rt_vfe_lite
+      - const: cam_top_ahb
+      - const: cam_top_fast_ahb
+      - const: csid
+      - const: csid_csiphy_rx
+      - const: csiphy0
+      - const: csiphy0_timer
+      - const: csiphy1
+      - const: csiphy1_timer
+      - const: csiphy2
+      - const: csiphy2_timer
+      - const: csiphy3
+      - const: csiphy3_timer
+      - const: csiphy4
+      - const: csiphy4_timer
+      - const: csiphy5
+      - const: csiphy5_timer
+      - const: gcc_hf_axi
+      - const: vfe0
+      - const: vfe0_fast_ahb
+      - const: vfe1
+      - const: vfe1_fast_ahb
+      - const: vfe2
+      - const: vfe2_fast_ahb
+      - const: vfe_lite
+      - const: vfe_lite_ahb
+      - const: vfe_lite_cphy_rx
+      - const: vfe_lite_csid
+      - const: qdss_debug_xo
+
+  interrupts:
+    maxItems: 16
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: csiphy3
+      - const: csiphy4
+      - const: csiphy5
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_mnoc
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    items:
+      - description:
+          IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description:
+          IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description:
+          IFE2 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description:
+          Titan GDSC - Titan ISP Block Global Distributed Switch Controller.
+
+  power-domain-names:
+    items:
+      - const: ife0
+      - const: ife1
+      - const: ife2
+      - const: top
+
+  vdd-csiphy0-0p8-supply:
+    description:
+      Phandle to a 0.8V regulator supply to CSIPHY0 core block.
+
+  vdd-csiphy0-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY0 pll block.
+
+  vdd-csiphy1-0p8-supply:
+    description:
+      Phandle to a 0.8V regulator supply to CSIPHY1 core block.
+
+  vdd-csiphy1-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY1 pll block.
+
+  vdd-csiphy2-0p8-supply:
+    description:
+      Phandle to a 0.8V regulator supply to CSIPHY2 core block.
+
+  vdd-csiphy2-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY2 pll block.
+
+  vdd-csiphy3-0p8-supply:
+    description:
+      Phandle to a 0.8V regulator supply to CSIPHY3 core block.
+
+  vdd-csiphy3-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY3 pll block.
+
+  vdd-csiphy4-0p8-supply:
+    description:
+      Phandle to a 0.8V regulator supply to CSIPHY4 core block.
+
+  vdd-csiphy4-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY4 pll block.
+
+  vdd-csiphy5-0p8-supply:
+    description:
+      Phandle to a 0.8V regulator supply to CSIPHY5 core block.
+
+  vdd-csiphy5-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSIPHY5 pll block.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    description:
+      CSI input ports.
+
+    patternProperties:
+      "^port@[0-5]$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description:
+          Input ports for receiving CSI data on CSIPHY 0-5.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+            required:
+              - data-lanes
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - interconnects
+  - interconnect-names
+  - iommus
+  - power-domains
+  - power-domain-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp@9253000 {
+            compatible = "qcom,kaanapali-camss";
+
+            reg = <0x0 0x09253000 0x0 0x5e80>,
+                  <0x0 0x09263000 0x0 0x5e80>,
+                  <0x0 0x09273000 0x0 0x5e80>,
+                  <0x0 0x092d3000 0x0 0x3880>,
+                  <0x0 0x092e7000 0x0 0x3880>,
+                  <0x0 0x09523000 0x0 0x2000>,
+                  <0x0 0x09525000 0x0 0x2000>,
+                  <0x0 0x09527000 0x0 0x2000>,
+                  <0x0 0x09529000 0x0 0x2000>,
+                  <0x0 0x0952b000 0x0 0x2000>,
+                  <0x0 0x0952d000 0x0 0x2000>,
+                  <0x0 0x09151000 0x0 0x20000>,
+                  <0x0 0x09171000 0x0 0x20000>,
+                  <0x0 0x09191000 0x0 0x20000>,
+                  <0x0 0x092dc000 0x0 0x1300>,
+                  <0x0 0x092f0000 0x0 0x1300>;
+            reg-names = "csid0",
+                        "csid1",
+                        "csid2",
+                        "csid_lite0",
+                        "csid_lite1",
+                        "csiphy0",
+                        "csiphy1",
+                        "csiphy2",
+                        "csiphy3",
+                        "csiphy4",
+                        "csiphy5",
+                        "vfe0",
+                        "vfe1",
+                        "vfe2",
+                        "vfe_lite0",
+                        "vfe_lite1";
+
+            clocks = <&camcc_cam_cc_camnoc_nrt_axi_clk>,
+                     <&camcc_cam_cc_camnoc_rt_axi_clk>,
+                     <&camcc_cam_cc_camnoc_rt_tfe_0_main_clk>,
+                     <&camcc_cam_cc_camnoc_rt_tfe_1_main_clk>,
+                     <&camcc_cam_cc_camnoc_rt_tfe_2_main_clk>,
+                     <&camcc_cam_cc_camnoc_rt_ife_lite_clk>,
+                     <&camcc_cam_cc_cam_top_ahb_clk>,
+                     <&camcc_cam_cc_cam_top_fast_ahb_clk>,
+                     <&camcc_cam_cc_csid_clk>,
+                     <&camcc_cam_cc_csid_csiphy_rx_clk>,
+                     <&camcc_cam_cc_csiphy0_clk>,
+                     <&camcc_cam_cc_csi0phytimer_clk>,
+                     <&camcc_cam_cc_csiphy1_clk>,
+                     <&camcc_cam_cc_csi1phytimer_clk>,
+                     <&camcc_cam_cc_csiphy2_clk>,
+                     <&camcc_cam_cc_csi2phytimer_clk>,
+                     <&camcc_cam_cc_csiphy3_clk>,
+                     <&camcc_cam_cc_csi3phytimer_clk>,
+                     <&camcc_cam_cc_csiphy4_clk>,
+                     <&camcc_cam_cc_csi4phytimer_clk>,
+                     <&camcc_cam_cc_csiphy5_clk>,
+                     <&camcc_cam_cc_csi5phytimer_clk>,
+                     <&gcc_gcc_camera_hf_axi_clk>,
+                     <&camcc_cam_cc_tfe_0_main_clk>,
+                     <&camcc_cam_cc_tfe_0_main_fast_ahb_clk>,
+                     <&camcc_cam_cc_tfe_1_main_clk>,
+                     <&camcc_cam_cc_tfe_1_main_fast_ahb_clk>,
+                     <&camcc_cam_cc_tfe_2_main_clk>,
+                     <&camcc_cam_cc_tfe_2_main_fast_ahb_clk>,
+                     <&camcc_cam_cc_ife_lite_clk>,
+                     <&camcc_cam_cc_ife_lite_ahb_clk>,
+                     <&camcc_cam_cc_ife_lite_cphy_rx_clk>,
+                     <&camcc_cam_cc_ife_lite_csid_clk>,
+                     <&camcc_cam_cc_qdss_debug_xo_clk>;
+
+            clock-names = "camnoc_nrt_axi",
+                          "camnoc_rt_axi",
+                          "camnoc_rt_vfe0",
+                          "camnoc_rt_vfe1",
+                          "camnoc_rt_vfe2",
+                          "camnoc_rt_vfe_lite",
+                          "cam_top_ahb",
+                          "cam_top_fast_ahb",
+                          "csid",
+                          "csid_csiphy_rx",
+                          "csiphy0",
+                          "csiphy0_timer",
+                          "csiphy1",
+                          "csiphy1_timer",
+                          "csiphy2",
+                          "csiphy2_timer",
+                          "csiphy3",
+                          "csiphy3_timer",
+                          "csiphy4",
+                          "csiphy4_timer",
+                          "csiphy5",
+                          "csiphy5_timer",
+                          "gcc_hf_axi",
+                          "vfe0",
+                          "vfe0_fast_ahb",
+                          "vfe1",
+                          "vfe1_fast_ahb",
+                          "vfe2",
+                          "vfe2_fast_ahb",
+                          "vfe_lite",
+                          "vfe_lite_ahb",
+                          "vfe_lite_cphy_rx",
+                          "vfe_lite_csid",
+                          "qdss_debug_xo";
+
+            interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid2",
+                              "csid_lite0",
+                              "csid_lite1",
+                              "csiphy0",
+                              "csiphy1",
+                              "csiphy2",
+                              "csiphy3",
+                              "csiphy4",
+                              "csiphy5",
+                              "vfe0",
+                              "vfe1",
+                              "vfe2",
+                              "vfe_lite0",
+                              "vfe_lite1";
+
+            interconnects = <&gem_noc_master_appss_proc QCOM_ICC_TAG_ACTIVE_ONLY
+                             &config_noc_slave_camera_cfg QCOM_ICC_TAG_ACTIVE_ONLY>,
+                            <&mmss_noc_master_camnoc_hf QCOM_ICC_TAG_ALWAYS
+                             &mc_virt_slave_ebi1 QCOM_ICC_TAG_ALWAYS>;
+            interconnect-names = "ahb",
+                                 "hf_mnoc";
+
+            iommus = <&apps_smmu 0x1c00 0x00>;
+
+            power-domains = <&camcc_cam_cc_tfe_0_gdsc>,
+                            <&camcc_cam_cc_tfe_1_gdsc>,
+                            <&camcc_cam_cc_tfe_2_gdsc>,
+                            <&camcc_cam_cc_titan_top_gdsc>;
+            power-domain-names = "ife0",
+                                 "ife1",
+                                 "ife2",
+                                 "top";
+
+            vdd-csiphy0-0p8-supply = <&vreg_0p8_supply>;
+            vdd-csiphy0-1p2-supply = <&vreg_1p2_supply>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    csiphy_ep0: endpoint {
+                        data-lanes = <0 1>;
+                        remote-endpoint = <&sensor_ep>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


