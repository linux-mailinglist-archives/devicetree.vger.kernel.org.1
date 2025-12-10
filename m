Return-Path: <devicetree+bounces-245627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3B2CB35EC
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49CB9301E236
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA12281358;
	Wed, 10 Dec 2025 15:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YJcxgI8c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NvwvFq/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FDD27FB2F
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381862; cv=none; b=GQRCH4+Mxi6Ii+S9dyedr9bsW00XuGLb8/+XjfoO/Nax8zpxtMJekH2nS66yOYnvXpkh05Uc6LsfYewnLQ1W40hyIRLvnJvS9XaCC44js7k35BI2iRCEbezqbXgWVYBuG0S07IfNWMr7TA30KFzDrcrHenwT/fwIEkQm5gw0B5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381862; c=relaxed/simple;
	bh=qjGkXyff0JOzXHAVjFAg4DNaOzEfBoQYUyu5QmS1S7g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XH3g8u7O0YnD+hWn3qZ13/OmUduSPhdFQ+gm5/DRvlQjotHHx3N+EHuHIECaqkwfvw92Oqe3COSDiPhOSCHVZQ17foNruNcIQmVAva+DnLETxIcrL0ZdbebksqVeTEbhlz3GPoOYC+PwauUiJC3YBoS6AUAdNx1jLB+9tvQNhoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YJcxgI8c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NvwvFq/s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e4xQ1817903
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+rUCr121SZ+QerPYflBRYtTCStaRS4LPAaBzx1rPUmQ=; b=YJcxgI8c/0JePLcl
	Gw2od2t9DwnaVf4yvQGjLt2Jexl5QtiVQqAZREIQjZ7fMDcjkcMTuNkUXLeWivbz
	02sxMeDB63aiLUX9W2v91LVBTkQQVdAhxQ1FEK5pMAuW+m07TTPjXIy1cG8395+A
	4y6HSi84gitgPorsuzRiRGtGHr6q+0vtY3sKt7TWu/WgYOVc3BZpCmkA08LtyjN5
	wr+s4dd6HvgZPsvLBIBMLavU2k/90SUrw1qcfTIPAyy/c1O4Lz8sjWpeVBpAmhwi
	aZ+zxdtWgoBGKatyAToQ6GyhNLbE6cZWaDk0IDNrIewQ6E7AGDWwS0BNrQyshKj9
	u0HDOQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay2e0htxm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:50:56 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297dfae179bso71625ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765381855; x=1765986655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+rUCr121SZ+QerPYflBRYtTCStaRS4LPAaBzx1rPUmQ=;
        b=NvwvFq/scNTyASHWb1QN+iqrtTs8s6p3dUtqUi9bV5eev8kna+n+FJ6p+n5kiW6Mc+
         Cu0c/VlmmywBpSfcMu4no1TfJZxjMDSPbvvh2Fv3b1PXnmCQYo5fetsQS1rSc8Mu0yP9
         Eq2iu85GLFopwnPURRZPWdVLn9asVTnm7ALy392I37tL3vAtUkkHOojgPFac8iCd7CZ4
         Tp+GrRMmNzgqeFTYtylC1u2VzvveNiwYCGIjWnJvsrt4vpUEUS0D6ucoDhWDY7haHzrs
         QN1i1az8UvwcvW245EILGNf/U86zn9VvmGzMOvEamTN7zBJ3nQAUr4ZGir1qCZAOMW4i
         dIuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765381855; x=1765986655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+rUCr121SZ+QerPYflBRYtTCStaRS4LPAaBzx1rPUmQ=;
        b=hH86SvUTiSBdYvhBq2o5VXCo9JBr2b8RnXXwaz0iFtkGrQg5SAdA58LpuL5gXdmpOh
         ssxIG2XpGPBJuGjAUrjCJADUBKpDbui20u0MtCgB9pDN1U7iFCvk5IlIokai7xm6MSsv
         qHAdTRxmUM7AQLeR8vEJyMFmm9/bF9OvgnvhI2ufoYRrXDt3DhcM7K3cGZfJ5YOszmyh
         FZrCpEMfRkpqe3l5t6hFlFl6kHNL6fay+p3KP1mFWZWZuR7DekWTu7Ca8WxcWTKtiOSr
         QgA2JA6c7PSdky5KnhzUi4pb8uCgeRftqyVM3eomSro506Z/QVx7guc2vhko5buIn7eg
         RnkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUovcSNmGM4JsuLlOsCu2gSSYo4Ifrh8ikBv8ZgS55TG9ai0nAsrUmYn4r28iaGjpHkfWW+Y+AlQtDT@vger.kernel.org
X-Gm-Message-State: AOJu0YwlfW6VvS5uaQn2hPo3pFqyosxwg6cRU6pL6qJCaMlDo6JycAfU
	SroPJMOHormB1sTjBdJt2sDrzgD/f5/HphZhNGtkffPqSWffESDDLTwVwZ9SdCrjF9iQzqdlF5f
	nD1YlqkgH17Hg59AICEU8cytTupgmllWB5GZEntzPf9UMSQoCUAWKgyPrFa4PCcxa
X-Gm-Gg: AY/fxX75GRtAKygIQcdnjjfvy23WgSz38/NNeK2/z6h+UTA6GJZM2wZKnbz21qVhZBs
	/ASDqUL2FwlMSS0udUBr2u8m0QLuC9ytVaiP86uJUFlAGw+2Rj2GpcfHMawf1vxx6PS8G3v5TF1
	1clbBk1BPTCl1+9HoLSmvi90u6RPAF43bNx89PqHDofMvf2+PMMJW8D9FwMGsrqgrr/CFF7jTmx
	kbTM/o630lC3zYlgaX1xXO9/4KHL8GQA36P1el0A4hwlFVO+oZ5pWKGhh3p0Za6hKQJgWKsd4MO
	1To6z1YB4M5j8zf1Q96QhfvZUSj45f5BlH7pJze45mvq+Uoo4P4H14uB/y2ho+oR9PpyF5rAOId
	8jmAFwHvtANFZo8iQkvZ0WcSEMzUXSaWgxDmxPygo
X-Received: by 2002:a17:903:178e:b0:295:596f:84ef with SMTP id d9443c01a7336-29ec2d3516cmr30281135ad.31.1765381855066;
        Wed, 10 Dec 2025 07:50:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBZg3CDmb5QXrh/vHnqknn5K8usGXHeluV8lbexssAYjUj5YTX6hrPcmb2zIpMYU2GXSoGfg==
X-Received: by 2002:a17:903:178e:b0:295:596f:84ef with SMTP id d9443c01a7336-29ec2d3516cmr30280815ad.31.1765381854620;
        Wed, 10 Dec 2025 07:50:54 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ed93e470fsm7780175ad.41.2025.12.10.07.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 07:50:54 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 2/3] dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
Date: Wed, 10 Dec 2025 21:20:32 +0530
Message-Id: <20251210155033.229051-3-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
References: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyOSBTYWx0ZWRfXxVPiqP51RVeB
 2Kotr7xbr/bObFq51lOdF3ET1p/7TKcWRW7swzv9sqCOLF+0jiBXn9iJxx2FJai2JJgKps3ZTPx
 g99b14L/W+XmeQaj5UymsmvoiJA9gd/9OZW+1zQZLqMWVeICa8DidnslJfURVqzHZUnnVHWLf5g
 nZ8GEk7UwmRKpkdXQJ8h28Ifmc5u5eKyZRNoRdGLsHdpXuGvRwEm/TFPaDQ2lVg1q+1P1kC5T6l
 N/KEWZVW56rKkq7AmUxLkluT26xVdZbRAdEvs8PVxd9EmJfMFUc2aBnDYcojRAqnBNMbEkOSHMU
 JKqZ75HqFPtiIGh0f/h9mW6FILGKmnTRadPQSvSnfelS1MGjVM+4w/O/27vxxo0aZJb9BAlNdcj
 x1wUv8Q1WQwPsYuD0Mi1CMkDGJUbLg==
X-Proofpoint-ORIG-GUID: kpEQVisFk3zHIHzoqufcSybYbLHtXh5D
X-Authority-Analysis: v=2.4 cv=G5oR0tk5 c=1 sm=1 tr=0 ts=693996e0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VcM-S10TGioI4za7RKgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: kpEQVisFk3zHIHzoqufcSybYbLHtXh5D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100129

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
 .../bindings/ufs/qcom,sa8255p-ufshc.yaml      | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
new file mode 100644
index 000000000000..ec006f7de752
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
@@ -0,0 +1,62 @@
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
+  - Anjana Hari <anjana.hari@oss.qualcomm.com>
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
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        ufshc@1d84000 {
+            compatible = "qcom,sa8255p-ufshc";
+            reg = <0x0 0x01d84000 0x0 0x3000>;
+            interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+            lanes-per-direction = <2>;
+
+            iommus = <&apps_smmu 0x100 0x0>;
+            power-domains = <&scmi3_pd 0>;
+            dma-coherent;
+        };
+    };
-- 
2.34.1


