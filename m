Return-Path: <devicetree+bounces-209850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EB0B39567
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 09:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 606FC1C268A8
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 07:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C222E174C;
	Thu, 28 Aug 2025 07:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JgKGsMVc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876C73002DC
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756366524; cv=none; b=Da6PzRSvTKkzlaZNLXP4IGuWrkGrQLUvFugqRAwFvdfGe48w4AkywEAmua2NuJ95Ox5xy6OWAHjo3RvHJfdA79qRgYtRfSTaybIAinASRBURAOWAftk6x2UPT0aGtbzN1hnTJjeOIe2hkJEn/nN3VdpdZ7+rKNdaqW6l4iFsJj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756366524; c=relaxed/simple;
	bh=baBIAb49MxduM5gBqS+AIR83kaKzbO1n1WU9xKYWh0E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CIWls/XVfmq+GgD71bo6kiA/ucY83okl8VtZgRcLx+rC+U+voEeW+2Z2IJyGvmL6co9mpm2y4Bdu9U9H64w/N7RFQwFaSbJEgDFtW7+EnEaOJ9Ec/kDj4BrvDixNQ+4PAPrK2yBSJKv2HEJAIfPqQ1uXDiQH+zJy0X11wL/0Ys0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JgKGsMVc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S3tECb001015
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:35:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bcw8SVGU6KozHp+cFpIEECdCat+/J3psNgrGaj/N3wI=; b=JgKGsMVcsoSjqt6w
	eGpxCkbhBYgUxsiCAIlCDC9RdFYiiIKd2k8it/QJlcvCpPKx9GD67wpJEK85JFUh
	jeHYL0msL+Y+Yq4kf4YX4W5NhC/QEIO2tO+AnyVSLb6iEU5FnSBiYxm7qFrKXWo4
	hg6ksQKifCl8qzAkcjYINNX7mJ+V7PrwmnyYqIULegGZT2jed5EuLQS1kJSiZl1q
	M9fvfNovHXxO8tbHJxgAWf6pPeuhe39ZLSs2wl/+jMYj8+vlyyf2Rl87Vu8PWmSy
	IBP+HIr0u79k72s32KQgEUjiJ2S8Kfmvm2VeW/iKgKFoiTmIEzK4adxmphtHHAAz
	SV7oZA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48t47bac8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 07:35:21 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-771e331f176so637684b3a.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 00:35:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756366521; x=1756971321;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bcw8SVGU6KozHp+cFpIEECdCat+/J3psNgrGaj/N3wI=;
        b=OXar7wrEqtMVKl0417J5O5BdqxAoIE45qG9QXLOM8OeYoP9Vuphld+YAAH4c8JKBcB
         +kcRjflaIa5YmcyVoHQ7+Guwev2eqnPR1U31K1Vtc6a/cdpiwq6yyK86fuOkyTIC3YIA
         YS/AO204GFR6vi1g3G03qFOtyhB8/BPprcUDo6qXsUbL1bSj65NAveNVxGmaZv0nHJtY
         dycQKcDJ/hcuWqL1Nn6HC+PTngf1dA/f41S9jaXI03SGfrpPAEpfqM58ciA3OvHSBmz/
         6bXCRfpJVe/F+7yZ1/o08zGcjPaodLcg53BwyM1AmqASfKhNsyE3hRAgbxIzrRacaYj4
         ucBw==
X-Forwarded-Encrypted: i=1; AJvYcCVHtbt6s2NzZl7+RXmde0xIlCBEOqeWevGkftpi8oiHQxGqJEowZUFpJw4lwSCghecZLI4rqPl1SEGY@vger.kernel.org
X-Gm-Message-State: AOJu0YxEJ2Da2W+UscxpysEcHkgb3ISAfSQ77VXOaMtWVvgD72JE8EB+
	o5S06yq9DdjukgMtDHB2owxY+fkxywOZLLH86MjTY867YFhEkJinuMpz2Oz/Zk+k+kDVJ0a1dJF
	5OFZ0poUfDRKveBNcA1uqJ2DSmkb76JUesmLM+d1FtpuAPwSLSuIkBvn8dE1HdXgd
X-Gm-Gg: ASbGncuJkFjbIfx4ZqmV31ljy6B1FN3PERoGbSRSBz1l1mSd+DDYLBxLoyYQ88rGpBM
	UXLv8zuFZEvDelDw90typBGi6ryR48UHuJ8Jf7eVGU1Yoggp4/RkkmxzZBv+u74buTgTdaB81e/
	fF8TqlOB4OtGlgN78ApGwgByfRFY7YsmtYpdHSaoyuDbBGPgUeAbpEYHmim5QrTEEldqcc7Gu4G
	eXGHeTkd5gz4x+jEnPZyrYdZ4b2k94anOPW7WtdjUW29veL1qmD1jF4ONxiN1P6yPQWW8nHoR/r
	95Mxg+20OT/kDJK661hTpIiDxmxzo6vx9p1saINWFDAyQVVAQjMyLvz7gCyj/qP+LeKGgUdT/E4
	=
X-Received: by 2002:a05:6a20:734f:b0:231:acae:1977 with SMTP id adf61e73a8af0-24340c0faebmr33056234637.15.1756366520743;
        Thu, 28 Aug 2025 00:35:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGqKf6x0p+HRSdaIY6VwavENLliL5CVF/xXooan6+Zly5ChHdt0Lk95GVnS8O6Q9shJv13Mg==
X-Received: by 2002:a05:6a20:734f:b0:231:acae:1977 with SMTP id adf61e73a8af0-24340c0faebmr33056182637.15.1756366520161;
        Thu, 28 Aug 2025 00:35:20 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4b77dc7614sm9605810a12.8.2025.08.28.00.35.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 00:35:19 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 13:04:23 +0530
Subject: [PATCH v8 2/5] PCI: dwc: Add support for ELBI resource mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-ecam_v4-v8-2-92a30e0fa02d@oss.qualcomm.com>
References: <20250828-ecam_v4-v8-0-92a30e0fa02d@oss.qualcomm.com>
In-Reply-To: <20250828-ecam_v4-v8-0-92a30e0fa02d@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756366503; l=2000;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=baBIAb49MxduM5gBqS+AIR83kaKzbO1n1WU9xKYWh0E=;
 b=TKihAuNriez516iIXhX4LKVsLszp633LecGCi3r7p+3DZsS8S3yGRL0vmif4gG0HB2Cbd/Ayp
 Mv9FClckxhoCMfa+fjCqGFHUneHYfQz7l1ad80gl8dbYFoM/k97AAr4
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: YkEBgHfHpJJEetN8kfzfYuJrW1dZv7Tf
X-Authority-Analysis: v=2.4 cv=CYoI5Krl c=1 sm=1 tr=0 ts=68b006b9 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=De8H20xVS9kR4mXr8yMA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: YkEBgHfHpJJEetN8kfzfYuJrW1dZv7Tf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI3MDEyOCBTYWx0ZWRfX3MpO87MKx7ew
 TuGvop2CaP013XJ8+KdyYO5FovxfvEJSJYe8C17dYCX571Wt6WqWE0bW0I34oFZTom7/a/r/1cR
 V1TD8YQI5srYBcKf7BjqXQ9s2enyDviIDElNqmc7I2S9L1TIc2NwgCLFAeyXeoZKlBwCIiDL12M
 Nc+kaCMJimw5fNyiv44yWFP2aACuTEGbEO8qOH4JbS/StId+EnNb6nMwiHUvjRmOu7CCoShP88u
 w9Hogsh7R09lMSIiHWQkWhmoAv0nt+RqFs2YjCRcRCq8YDbPq9NVndqMMzrBhy++pDY671tCiHW
 CEqFcJrc4QvDbVKzZmenq26cFwU4Lj3uTxc1QT1xvpTATcsCLPOvgGw1PMdBkCoFP1jgAax3JyY
 rD3TLB6e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508270128

External Local Bus Interface(ELBI) registers are optional registers in
DWC IPs having vendor specific registers.

Since ELBI register space is applicable for all DWC based controllers,
move the resource get code to DWC core and make it optional.

Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.c | 9 +++++++++
 drivers/pci/controller/dwc/pcie-designware.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 89aad5a08928cc29870ab258d33bee9ff8f83143..4684c671a81bee468f686a83cc992433b38af59d 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -167,6 +167,15 @@ int dw_pcie_get_resources(struct dw_pcie *pci)
 		}
 	}
 
+	if (!pci->elbi_base) {
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "elbi");
+		if (res) {
+			pci->elbi_base = devm_ioremap_resource(pci->dev, res);
+			if (IS_ERR(pci->elbi_base))
+				return PTR_ERR(pci->elbi_base);
+		}
+	}
+
 	/* LLDD is supposed to manually switch the clocks and resets state */
 	if (dw_pcie_cap_is(pci, REQ_RES)) {
 		ret = dw_pcie_get_clocks(pci);
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 00f52d472dcdd794013a865ad6c4c7cc251edb48..ceb022506c3191cd8fe580411526e20cc3758fed 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -492,6 +492,7 @@ struct dw_pcie {
 	resource_size_t		dbi_phys_addr;
 	void __iomem		*dbi_base2;
 	void __iomem		*atu_base;
+	void __iomem		*elbi_base;
 	resource_size_t		atu_phys_addr;
 	size_t			atu_size;
 	resource_size_t		parent_bus_offset;

-- 
2.34.1


