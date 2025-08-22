Return-Path: <devicetree+bounces-207930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F152B3131F
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:31:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0C2F1D02242
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299012E8B61;
	Fri, 22 Aug 2025 09:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UU5hftSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AB72EF66F
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854881; cv=none; b=kAnMAd2Xkg37YNofiMr+wz+Ljr9+QMdvOJwIhEtd0S45yTrh5lEpuxGY3Cpx25+eojJ1qx2dzs215e/EQ+8bjIJchsyFFMKq6ROB55lbCYrZX/vASzSIzliUIzQk7liWbO2kAmTC5wb3ghpcKGPqHh3sl7YTyx3ju4NTJ3IfnZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854881; c=relaxed/simple;
	bh=baBIAb49MxduM5gBqS+AIR83kaKzbO1n1WU9xKYWh0E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mDsNbEsJ5P6u5GwetlpfAzFkswJSMyfCOmRbIu5pHJtX76FwuvbFtOAVnKWUKMNIwLzOdrllEkWpIDefDiEW8x/KM/pBa36VCUBo1WVw9lKhgvnY6k7iuvhgE3GWP208kG4PITPOt3ZKq2zRUP1zSwx0cvXNkaPjl+VYwgXwLdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UU5hftSe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UIbf024042
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:27:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bcw8SVGU6KozHp+cFpIEECdCat+/J3psNgrGaj/N3wI=; b=UU5hftSeVNEfLhDj
	p/UzSOnWfW14x2LWeU0RINQOHFT+QKWHHx34PGCFvy7lv/KU2ka6sbZfI8Yyv3iH
	p2ARBm7gS4KHuCYkVlG9O1uQ2VBcEE0GGicHTGuUQNtT2QI3GdA1U8JsuT0Rg1hJ
	hwexmGyWhBmcmShwQWcBWR1zTTuW8SYewH6OWYSMzaNj4XbU2X4Gq/POe9PWDPgO
	7QSc9+bkWtZ6hUVEMs0/yQ4QaMy7FSGK1rtC8sbAOH9eWtsfsQEUNvJE63ZLrKYn
	QX6ILw1IjpX+IH7Ne+6FdQeheopRq2jWkTga80QYfSBuMWh1K6jHBfCBOwPujvve
	gYCzlQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52agrdh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:27:57 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-324f81677d7so1509561a91.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:27:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854876; x=1756459676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bcw8SVGU6KozHp+cFpIEECdCat+/J3psNgrGaj/N3wI=;
        b=J6rzxOFVAYwrxmda6lGmlUslW9JCerU+0yUBlpAcFVuEseQblVSAo3f/aYOyBUhKqH
         hUeF2pCwWuUZ7xgtaAqBmHmm4pOYa9Tyfn6yd+ysa6HZFXqFoJSbrN3Fg3uaMe7yGU2i
         JUG2jCHBpuTg39Cdl0uFDKSNaMOSWiy0YuciLuy8vvZyh+r0KDWYH88kwiZN+EfBV+zf
         Bnv/oxVbCrq0DYVdgvm1FLgVR/TDO3Ruv19fbQXuHxm/57HG5GTsWCVUnsEdAR/ufuPW
         Kd6rS4hCpFPzrow0lYfdinDez/5bez5Hiq7YsXm2/RUE4sZrV1aUoorX2FrMOKjJYqUy
         VXXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDPJNILs2jt9JC/ST4D1OHu/UimfMmsJEDzAoS/7zTYfrGvWBKpgqQgglG4lOJdLV0AmdDFn7nXpbq@vger.kernel.org
X-Gm-Message-State: AOJu0YxmRVE7qzCSUZ06ckeYVpmDlG5u4wp5MQ0+9IthZJMaXYkB/r5c
	P8gmTz9T9cMxO6AM+dNFYaJ2l/bx/yN0cSmYLKXMLiXybCdSVUS3l0ju8X49QVcXUrLgRtuhLAG
	BxzSuK6R4TfOMp/vTH0JkfynsypOQ/2YKr+BlrOOCPvGBlEbKyhqxVxbRP5/NbnDL
X-Gm-Gg: ASbGncvDD3iwtTCEJyNPmCmhS/oGzcXu+WbFwLBGB7T718ZSFTphuyPQQ5+dF8EtHmh
	+khJ76tRjo9yii3n9nFdT48ljlcSOT++AP+Ydysb2c0zfu8Bw2zD3zUOtcqtTsdK7dqa+8NFMKa
	89uCwTEt8/qtNmx51RGeJY8A/f+JH4wKuJaa/HyAhc5FihCQzm91O1N50U8F7WN9/+XghgynAvg
	ny378yqh6hH0tx90KD5q8UAxwEuCtbPj+5l17uPfsv76yM13lsxmAsfAgD7Ifl3Xsq1WUVL1SyX
	VPYbWV7HCBMEMiQtgqkc26reVfRo7woAc9G6gLDW2cEK8emAv3ibbXb5wLP4MxQGqcPGg4iyXl4
	=
X-Received: by 2002:a17:90b:4f46:b0:312:ffdc:42b2 with SMTP id 98e67ed59e1d1-32515ea1b15mr2922310a91.23.1755854876287;
        Fri, 22 Aug 2025 02:27:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQzEsixmiVSG6w3Smkdjye41raP/je8tLu4iI/hY5iEnx3qE/0y6dzcklkJy94HbXxWk/r+g==
X-Received: by 2002:a17:90b:4f46:b0:312:ffdc:42b2 with SMTP id 98e67ed59e1d1-32515ea1b15mr2922279a91.23.1755854875750;
        Fri, 22 Aug 2025 02:27:55 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32525205d1csm549417a91.4.2025.08.22.02.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:27:55 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:57:30 +0530
Subject: [PATCH v7 2/5] PCI: dwc: Add support for ELBI resource mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ecam_v4-v7-2-098fb4ca77c1@oss.qualcomm.com>
References: <20250822-ecam_v4-v7-0-098fb4ca77c1@oss.qualcomm.com>
In-Reply-To: <20250822-ecam_v4-v7-0-098fb4ca77c1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755854858; l=2000;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=baBIAb49MxduM5gBqS+AIR83kaKzbO1n1WU9xKYWh0E=;
 b=wZHp3pV6DH5iYpPZ7QLC8GPmauykJCj63LFoLLTeSzJbQA3go0zVgsMXUJKJAEhk3GPB/0XG5
 SxqZUAo+D9LBA+uMp6pjl3QHiU6hJ0eq9mp5s4oaUHcFczzuvHl/k2M
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: rBXNVO_xzaFyw02p40B2489ReDAejGhy
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a8381d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=De8H20xVS9kR4mXr8yMA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: rBXNVO_xzaFyw02p40B2489ReDAejGhy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX1tXVzew0XSK8
 pltmXeL37xE+OMxCUUlwYm4+CK/oGXbTIc031av2dyktV3av3kfW3EGFPmUuJ5Gx90FL9ab+v+0
 Qmqtm17IaWq4U+j9nCi3Y2oMFj28f++vsiS1ZXsWdQWRMP6GXrq7Xi0FBLJwGyPAwwYqTfjobPV
 mC4ayvzB+JyzbIr+EtpQ9eaEfEbdUDm7wSLb7K3RkexhoX+JwcK8T9M0Zw918tDEqQdZXKVZ38j
 sDtha634fCeIPeKj4FRzncXhlzZU+GPHFDmBFMFdhHNj4gWzgNzjk8nNIadfkJJkI2FEKfriH1A
 ZD4rph8OEXY/Pyh2rJzOngH/nSX47DkbOsjI+3UvCfFwpDn6kgio0sWk9MTZcCptH82nCUZ4Lv2
 YvDavJPmu3ujRjvHkf5SA1pQK3UdWg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

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


