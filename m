Return-Path: <devicetree+bounces-250713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9611CEB40E
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 05:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DDA6303D33F
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E6430F953;
	Wed, 31 Dec 2025 04:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CheNtjhi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WU+tFXvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B557C224B12
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767156989; cv=none; b=mrQ0MsSBxDFPZQyiZhUBZqV6rvHXs9D/sOAnwWqqEXeXrJNLuofeKqiaKyNjeOHnfvGJeiRiArKsjWI/72ejoTASdaHE4KwSgfsIzMv9jQYv8P/90Uz0XoofKgHmwckr0j/WXPKY4hiyfyd8ncrMkraUBTpHRfS/PVG82f6El2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767156989; c=relaxed/simple;
	bh=RZhUJsCsLQ8did8MwMm1CGALj2u+dMNRhc+pjjIQnsE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OXLHotutL1a4QOJplEfOcyPbHO3+4eTlb650VJrHxZi+EiIeS5TvjoGidI+bvPvkkV8fppqvJcSf9p97IsmlXpG0VlPG5ZnVkTfWHSt4VfYfxyBgFGD9VRaEd6oDjsihV6TGtqUQIAVT6O5TFqOZOOAO/JN5lQ5l2h2Eb1ieJ94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CheNtjhi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WU+tFXvf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV26tnU3971206
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0DJ6ywmffk/NvVfS6DMQL/6EhTDM6B1Ko//XWCitums=; b=CheNtjhiz8hn4Ugo
	Qrv5Fo1H4M8RgRg/F1j+WozE9PPv4LGEXIbJC1Gn6Dkb3my9rbMrd1xhwfV1+dUd
	C3TStYk43N0dRPUfT3b8/Q8CnInTmBOFdD2bXvnI+Px5YNU5HBV7b4bIta25OItZ
	zBWTaIKGzprTVpmL20VqHDwEMj92M0OijeI4uhofNkBq4JZU0UNQmqhIKUrDNG/e
	r5TucjXq2Mr3ol+Z7hyh9L5bFp54wnsf81yEO4MrgqKPR9ZqhvCGGC7FyTmt8/xt
	LkFYUZta/cGtOqnn98RYRSreuwSVCC1bjlr1JXJS+H50qppv9YNSdwetspwX+BMW
	qFimgg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcdky1wbj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:56:26 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c66cb671fso14578637a91.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 20:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767156986; x=1767761786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DJ6ywmffk/NvVfS6DMQL/6EhTDM6B1Ko//XWCitums=;
        b=WU+tFXvf0mJnirdCR1i3W+s7aRCJLZGjCrBQCgV+08S5BAknS3UY4LGgniu9+dHkuk
         DRRQOdZtc/nWYiAtqS95kD20Vo+En4yzJXsM7AaH3YCoRYmsPLmBtHVQ5PhneCwzhPxr
         HXSN1bvv6jGAh9iVhk2jrobZbRbKT/wGsNTNMM9gdtMdxPuliCfiyrwAgKeAHPZclFCe
         nbYPwimrguUgIC1cBIGsr+E62qsGkGB8IHuarsDxMhAv8QBf1iQX33/8zOrApKAs4gX4
         NeWfsFSFzdyjL3FOYe5bYZiTc1DlLPIAbel6/Dfyh4ajNrl9Vmu8gMpjqgMfG1Q+7epB
         co9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767156986; x=1767761786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0DJ6ywmffk/NvVfS6DMQL/6EhTDM6B1Ko//XWCitums=;
        b=Ow3/Ros8a53taFh7m95bnPYLvHZChCYf9KAOYjROxk3BMHXjKAzgWYEH8wYHz3qbFL
         yBPuypH1T4fyuno/xqs5uYEqrY5btk4OdnFmvPXulDiqn+mI26/u/PJrhmENpmlyV4E8
         P9ElCt3uWZAVyhtvizPvNx6MWLd7CTRiqhzKXCW1P2NtIusvwvos1xeaQfw5O2osKWxj
         wxuotiF+IzRDB5C9F8Gn01vntQqs+MnLiBzk3mcV7hqq8qnjwwDoXYnturm0XtY3adPZ
         lTMo9xrsn/fcM3NyRdpwjaZKn1W+m3I5KpSbEhBMIzovBgj6sTT8IRTyHOg8fMtSSLNV
         2eVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWISs6mjB3P/cjfQ186bug7RK2PSymN+m5MBwdIjAm/Hw7C6tOnawx+n8XV3kZV5RKbYeInPinx+gvg@vger.kernel.org
X-Gm-Message-State: AOJu0YyyEEXFgf81o/wN1sW1EuUoWrq0KX3ufDh9aXDW/QlPU/uyZyZA
	Ie/xD/WaMCKPk6mjjmUl0vuFC65ognO4MbcoNyVJv9nkeUKBhtAcJvY+WKM+VHeRInY+x78ICpd
	zeA2iCA2MxrXR31BI3Zh24ld8yWWqWWTLsnyhgw+x0F+l7OhwBTC2AegijHWSbhFtis5Hz6La
X-Gm-Gg: AY/fxX6FQDDS+bOIow0jkMwZPZRmYWjjykAxC55J6b630fe2BGzm1XlY1G7HsxZg/HR
	9U9xCwh3tfIBAaVG/b9Sa02j1GX0r6bVVq9+dubI1tfMOUpa/BADqAWZGdiq8hvB5yLaZQL9d2x
	WPpcCqFFwpmU77x1z9SfOKSx3W4/egemDR2W4UhANgkjYnsreZoAUu/A17AqtJAmzJ5v4GK4ATU
	fAe1NmGXpTSHqfZv/AvN+F5gLgch81UtUy75Z1i0j2A7xoOpAadVgmNXph6SL6Y+pMQM8w/509v
	Ml6yxDthG63oF8fefejA9ukGCSwMOFg0YPQWuhGp9o5Lz50+RqLmkISOsSg3X+u+TOY71Em2qiK
	RlxrCMsWPpTkQ86jCJHkJPHj2l5g6CZX5xNUxk2oR
X-Received: by 2002:a17:90b:1d49:b0:340:c060:4d44 with SMTP id 98e67ed59e1d1-34e921353ffmr31607799a91.14.1767156986100;
        Tue, 30 Dec 2025 20:56:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJesyqrxp1GrNh6zATDoRhTiZKRBfA4mQENsxcdqx6gV8UJULOCvVOHwhRLwzkEnp6dYxCsg==
X-Received: by 2002:a17:90b:1d49:b0:340:c060:4d44 with SMTP id 98e67ed59e1d1-34e921353ffmr31607785a91.14.1767156985652;
        Tue, 30 Dec 2025 20:56:25 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d4f7d3sm34547697a91.4.2025.12.30.20.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 20:56:25 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/4] dt-bindings: ufs: Document bindings for SA8255P UFS Host Controller
Date: Wed, 31 Dec 2025 10:25:51 +0530
Message-Id: <20251231045553.622611-3-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231045553.622611-1-ram.dwivedi@oss.qualcomm.com>
References: <20251231045553.622611-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDAzOSBTYWx0ZWRfXwGzZqBFNQv5X
 cPhkvWyN6w5kFY6MBF2g4/aHtJb6siD7MllIxfPEGJa/dBtl1UmBjrT/AJL0IKLw6yXAmcx46uG
 rsjhRuKEAr4ETpe062RN2Fu5w56EuhZ24tw6vaz4CIfiktzIUMOIYeg8c6o2zu6Z6vjrxNZMjQP
 /IQXajLWBxVSjTN2jdZ17WpkqG5V9/fCktsrmtUcPskgTGfhBx8SNmV6XPnS+1nnXniYc/T6u2s
 UQOCmnXlien6TPPb7KOb1rVKV67tz03gRzKXUfKxHwVqD/+sPFi89iGruZd84vgHZnXGScMEs8f
 TZKjkOTHqrcUkcXYlhXGqazPjzb6W/h4Gn63ct2w6D3y363BOfhBU8RqZBzZUrqoInJi4632z33
 dx6cZSCJP1UcPzlHM97UvG/JkzLDjapUr9ld47rlYrwiN3XqbA/deEij08WtATUNpW14EvvCXtY
 i6Qt9wVIk9fUD10jcGA==
X-Authority-Analysis: v=2.4 cv=Wskm8Nfv c=1 sm=1 tr=0 ts=6954acfa cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VcM-S10TGioI4za7RKgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: Lo1GbSHRSiJt-ruvvNbxfio3264CPrY0
X-Proofpoint-ORIG-GUID: Lo1GbSHRSiJt-ruvvNbxfio3264CPrY0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512310039

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
index 000000000000..846a3552a9e4
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
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        ufshc@1d84000 {
+            compatible = "qcom,sa8255p-ufshc";
+            reg = <0x01d84000 0x3000>;
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


