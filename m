Return-Path: <devicetree+bounces-209335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 368C5B35AA5
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 13:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37B107B7150
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 11:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248A3327797;
	Tue, 26 Aug 2025 11:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jahjgjn/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA07C321F5C
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756206202; cv=none; b=PT2BkPa86D0I+SlU+TAyvxApHan8uV9Sy0Ud293CcUfPsCKq4XE7IgV/vh/uXP5Fw0T36VzyIIvP5AFrNyq5ZpRltfK4Xe45GnCY4gwV9kk8AF4wQQ5erBLdpxd9gyR1CFhCmOXMMwHDS/kO4Xoen3++sU2X1f5Z9R+hAd9ghZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756206202; c=relaxed/simple;
	bh=wjx9GMHTJv+sVXCnnpOXOAGgSyeX0KAgl8FPgsVCss8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mxo0OUObnAhJPN1aWERhkVrbykc1QtYXMtSFTh+Z+1LzWVIqxDzGEm9bjG44uhxipnXMQqbOSuAYVIrpSJZveuttOypnHIHSg433yR3d+SjTbGcGuuuidg1Hin4kcECw+kYASa7QDamxrVF02yio25BiziEl9SJNhlRf6hnlAmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jahjgjn/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q7tmRh029774
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+DPSOTrO4cYwZj0R18ru4Kcr+olXie/WQj6w6L3l2ss=; b=jahjgjn/kxh6JZTo
	n78k0lULURc8IHG/Robbj7CS9D6Ss9qepDv0yicP4w9Q1ahpv9UlZNb54wuGrtqu
	QUd0dBqXPJvHfP5MZTWZZIh6yisFRFZKXoSKQ153mLYOdPNHaM4Kfn0IMDZuOe9t
	idCvDWytRnisTRH+IhQJMG8a3IgYDmMvA9CbpCItsGw6vrtdAKsGUer210NkF/IF
	5sDZQxyL+tyN4Vu6k5OyBOeKBLER5C6KsbqO1zdA6vQeuygF9g2LZ2rfroTY/iAg
	j5SRGZIt/Q990yNdOHnxW1G+lWjEtGConyEJbv/r/WKjt0lect2qmm2rcA239SQ8
	bBFItw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5we0bvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2465bc6da05so48378855ad.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 04:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756206196; x=1756810996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+DPSOTrO4cYwZj0R18ru4Kcr+olXie/WQj6w6L3l2ss=;
        b=FrgjL1IsYDm34KoZb2vPUGTDFlvjER6p/xXK2vRdkdAaNbjuF9dce41Nl2Wk5GoMnr
         nqsfZChaeM5mgczIYo7EKGY3kR3NY1heTb0llRwwHIJJ+N7Rmkpj/0muwMVlGeLbrPKB
         /aDuSqtqZqwVZcfnoSeBUeJkp23Rtexu613RkIZfzZhyjLVRRN2x3EJAZeeNF+WKh/g1
         rV1q+LElllLS38O9WUHczvkHX8Idzejj9tWP1l/mYXwH45KqoRq+HSSEttgXA8HvjRkO
         HhuaCUgm88jlyGU0W5ogO4Gv6hXywoDL0YuZkXIKdP5OsPBEqvYHA+ReSCBvmC6YoYka
         D95w==
X-Forwarded-Encrypted: i=1; AJvYcCX8kENtE3ac/Gmrx/t3Z4ECK8c7/ZMBeZlxkJZtZkrgzfxPzvxgE3KOPvmBIWJsnAoSoinLL7apOwHE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx65P6kSjoomruzu5bjhpBkxJlggYKqSGXEXllKER2Ztd9ZCDa/
	plkdxQd5RUwv0Sazokp0ubBnTDiIlMFj+ts6jPfQb64LXlxjSYXwlEUQ/PvF9TnYI3FrmbWeHjw
	ZC9KRUangt/HpJRJcYqdTXi7/cnB2iTa8EDQtHcV+EcuglreWBJnoWNIY+vgfG5kF
X-Gm-Gg: ASbGncveA+MgxxRIXeMHKpy5MTJpnnRxBLvAohMrsTY+H1/XIkWvj5oRYhA/vw3mmNg
	lq0HOYrR3nt/jXtCLzzKv5KIPDWn/QoBrNPq2d3RmRkhCm08g4EvAkJV8jRqzmxpeLfKSkCa1qF
	bu0RQF4nDQ6178kaYbNOmgbsQjDabCra0+XVe2sYXikr/7/nFo+dlxSMO1hP/Rn53pLSlzig6It
	dC7xbJsTtumqopomZBEVum6eUofPUaw7Qx7dcdSu+gVml+ValpmXBS72HqJWqO36phOxceDEb1T
	GWMGcR3C5i1H0c8j9Vht0DIRhaq77EpBOyNm/6nnwr5Vx8DsF+DCeesQu81IQxtwKD/njiNgzfI
	=
X-Received: by 2002:a17:902:cec2:b0:246:61e:b564 with SMTP id d9443c01a7336-2462f1d82c4mr184212185ad.61.1756206196217;
        Tue, 26 Aug 2025 04:03:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb/AZx3XW6vrNMBVNQNlwghugBEj5Jl+a3IPk5UUCn6++1jKG/5K7QzZFQ/5XN3S+gDRMYRg==
X-Received: by 2002:a17:902:cec2:b0:246:61e:b564 with SMTP id d9443c01a7336-2462f1d82c4mr184211365ad.61.1756206195528;
        Tue, 26 Aug 2025 04:03:15 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688a5e5esm93207955ad.161.2025.08.26.04.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 04:03:15 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 16:32:55 +0530
Subject: [PATCH v3 3/3] PCI: qcom: Restrict port parsing only to pci child
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250826-pakala-v3-3-721627bd5bb0@oss.qualcomm.com>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
In-Reply-To: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756206175; l=1564;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=wjx9GMHTJv+sVXCnnpOXOAGgSyeX0KAgl8FPgsVCss8=;
 b=C0xBQUzGHEvIUVnt+TDkqiJDzJlJ3dBZwRdN3YqQCt7Cp8x8kuf2+DS17yh6DcNQNE0FJYI5o
 XBtet90TSDPCSMC2G8ETJoAda/ei6+0M0XJb054TozCWTN7TI3xe++D
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: ccDc8ed1zpXBJtaaUildyaQvVjCwNxg4
X-Proofpoint-ORIG-GUID: ccDc8ed1zpXBJtaaUildyaQvVjCwNxg4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX2RGkzpfSUraq
 R5ATNqfEtm7c6GDbh7fV3bb2S8MJzj83JO65CZISkUMeHV+54xfz6rDO3g5lG5Os99mZsC3ZEhD
 xyEioN2vfRbGTAE6CR+I2tCfbRJ/z6168P/FZ1g4E9qT7PlL+K+TatwU52EtjQgJIjYshwD5Ply
 wgxgPT4sX+LjGrHVddPtaTQ3bRrO4H0xi541VOD7KLRm1fVxtUOEnbQdLpOeXAfwo9ACW2+0t4X
 5gO87cTTqVgJNEz6YvA3+lP62qedwFam5oQCEtnCkyosb3IHUakjjTTqnxoFKYwmCHZEfr5z5Qu
 7d6rjPtMKNL/sOYCxyz/Ags5SFMXxYcvb8Zr1c8VzHogON0EQAJ37ZBfC+T623QJuK+xQIeQZGG
 eQkwy7EI
X-Authority-Analysis: v=2.4 cv=BJazrEQG c=1 sm=1 tr=0 ts=68ad9475 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230033

The qcom_pcie_parse_ports() function currently iterates over all available
child nodes of the PCIe controller's device tree node. This includes
unrelated nodes such as OPP (Operating Performance Points) nodes, which do
not contain the expected 'reset' and 'phy' properties. As a result, parsing
fails and the driver falls back to the legacy method of parsing the
controller node directly. However, this fallback also fails when properties
are shifted to the root port, leading to probe failure.

Fix this by restricting the parsing logic to only consider child nodes with
device_type = "pci", which is the expected and required property for PCIe
ports as defined in pci-bus-common.yaml.

Fixes: a2fbecdbbb9d ("PCI: qcom: Add support for parsing the new Root Port binding")
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 294babe1816e4d0c2b2343fe22d89af72afcd6cd..fbed7130d7475aafb0d8adf07427c3495921152f 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1740,6 +1740,8 @@ static int qcom_pcie_parse_ports(struct qcom_pcie *pcie)
 	int ret = -ENOENT;
 
 	for_each_available_child_of_node_scoped(dev->of_node, of_port) {
+		if (!of_node_is_type(of_port, "pci"))
+			continue;
 		ret = qcom_pcie_parse_port(pcie, of_port);
 		if (ret)
 			goto err_port_del;

-- 
2.34.1


