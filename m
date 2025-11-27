Return-Path: <devicetree+bounces-242802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 30505C8F49A
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:33:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9189834706E
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773DA33769F;
	Thu, 27 Nov 2025 15:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R8cLx1+r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ay+tFXHV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6503375A3
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257485; cv=none; b=igzyOGNbrp0Q897vSCGvPywq9cmqyLhjV0jw33Xu7NQnnP0k4IHwvpwUg88009PNkVj3G7IHFEhwOLrAQ7tWHQh7r/fxiWZ071YO874esEw347nhPLGXzgtzMX1PvOFmFRXQAjN1qHOnBKxZyVym4PaXi1+Bg2JpNAd6hZzkyTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257485; c=relaxed/simple;
	bh=Tktq60NusPXL17N9tZWDKQHun91n1Lxa+GBNzW8axvY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rM/fX73ztGgyC2OD3Oe0cpFGw/d+O9M9O09YXcqJBBeRXo4ojKyWIqKp0CIBCglkPrCmWEW5hoNXn5ACt0isttGpEMzJIBMV/OpxdaHCY4DSjBqGhFouEz8WkBZ5HIJmAMivNnwOmZK97IFAUtNknsT9LnmG45a4hVuRQIaR698=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R8cLx1+r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ay+tFXHV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ARA3eQD848650
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:31:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eRppFPSWTmE4OfcViuVyX037cqqE/RI9YqLW5Ngzcs0=; b=R8cLx1+r/dSbwZZ6
	MBbHJD/7212ZjHt8N9OKpdHZDJxUQ7tFmwAWSLwqsDCbCIAEVGazMNNbcWVneHS2
	V/TDsBOAvBwaIj0VDDYWf35dZ/coGXCljXeDieBifQHY51uulfPKRBw2fSGbYvns
	/Dm1L7wx6c7AJDeFcHenI/PYt4InfwNfLFSya6efFpC2LEinMdCPI037fRoYwqY7
	pAb3vhC+txlvENlS16DWO1TkIz2YD33v83ipvl+UXW6Azj4BExd2KvUL6GUrR/Ej
	LHLGSEpV2ChY1plmhvWosgmxgcg6UgpkWtxVk0u8EsaJQPeRM9SR0mpxnsTM6PP4
	42jqdQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmjd8t51-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:31:22 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-340c0604e3dso944303a91.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764257482; x=1764862282; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eRppFPSWTmE4OfcViuVyX037cqqE/RI9YqLW5Ngzcs0=;
        b=Ay+tFXHVzez2ZT6zo9IjwspJVTWF2Sdv6hhKUwWii9bvStZgVIOhrJGhsUwp0vH8Mq
         /JC5tZ8H6WwkgasLuoKWk9n4gJCpKDeDaJQ8mFB1eSDw21l5QRMQMT/oZxVJe2y+yWcY
         WZvOa9pWjshLJutzEMqgxxpHTw+aWV0yH9bsWm6+CPnz721VTBtsC5gc57o/C9VZeNxF
         1diEMfFbHuzJFH7509zOEr/fHZxU3fnMDBjRiDnYdCfUfPZGEoIBp3oU/RLuQglUja3m
         X4yOXVQNqs43xxRKiZ5avtaqD6i0nlZFduwbq4VG6qCsH0kutK23Q5+yAwmj0loQRTJj
         xCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257482; x=1764862282;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eRppFPSWTmE4OfcViuVyX037cqqE/RI9YqLW5Ngzcs0=;
        b=l83d7OLekfOLxQZHB51T48t79FiB+G+sf8YiWCQSai7r35rL0beCcenMC3vo3CZkyz
         usFe6Nb8NCmeFBtmdkOodCFp2l37WYmGE94ciRmP2M46nKCbLDGOJAzdj03OwMLoUOn5
         sC7tFKy8huE7kabBTjUsyltfEPTS9Gg7BTKjD/S2DXcdoQrd0Sxu1Dv+3id+dCNNCLyU
         Fd1b9AMiAtZTrXTceWLzPomcnvBISmTVvu1mI93xiiyanebRqwOatA1C8WYPjd5VyV9q
         MWzeQPfGnm/mF2/Sv2vL2YcSMgiZohZCikdOzF8aJ8INwkP7LsB7RrgQmOxAl40e+Na0
         uQFA==
X-Forwarded-Encrypted: i=1; AJvYcCUvvHqSsEWg2Z3lvn1jsqS5WYpuq4ZOV5rtQA1sYstzZEnM5qnGxqKY9de7laKO79qnbn/yVgHrbasC@vger.kernel.org
X-Gm-Message-State: AOJu0YyNzbDxiBCWOCEHED0HRrO19mnJ7UZD1lnOWkQh0APos9dlUraZ
	GqV3UAAA18PfZnWk10RB6nO98h2rZg4IsFqAeh75KFryw79sCrEppQ9k8h/Ua+2TuRxGiY3tLrs
	DbsVhEn9j8zcyG6kvfF2qX1snV1+wuOXML1fqDpHdPovHbKmOi/g1ZR6ejywYF0WA
X-Gm-Gg: ASbGnctt6iM5LERiFHuw5E9ZEsFTbbIagRffZRW8imiKeY4Ectjg4qOruLdTrlHdQtj
	gLqo0QSpQSb4qvESciwYTjl3dmHVleRObw+C4RSk3rFwgaQIXSyAQAmxtU1smCSMzYf79feSvRw
	am8aJ++Sm6Fmn6s3VeV5jAgJqgknePH/c2ZRmaDJEd5TiPW+BfkEO4n3Ir7791zdfjhd9J9+yQV
	T8N/fQGYefVug1e/P/nu/57sZ9TSBafvk2G9eJZvBiCxXJfDqDA0nYGO7tPjTzBulKmSbe5IR8v
	r5RxzqzeBqABrgH+bVL8qdraOhkJKlGFlUAQAv1dZmHaQLqWC42EL89Numdn+C2XQBmnZbkQhNG
	lDOApUQQWQrlrcVA5xKeznhJhJ+7eDkU7xc7yZvq4lFXeNw==
X-Received: by 2002:a17:90b:3b48:b0:341:c964:125b with SMTP id 98e67ed59e1d1-34733f4ab3fmr25684541a91.31.1764257481994;
        Thu, 27 Nov 2025 07:31:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE62nvOTPLWq4/4MMTiuik/DAtIz2Cb1ehcyD2vsKQdu4aPIQPpB26ntbsewRJ1yYMcmJQ1HA==
X-Received: by 2002:a17:90b:3b48:b0:341:c964:125b with SMTP id 98e67ed59e1d1-34733f4ab3fmr25684505a91.31.1764257481510;
        Thu, 27 Nov 2025 07:31:21 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3475e889832sm3592940a91.0.2025.11.27.07.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 07:31:21 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 21:00:51 +0530
Subject: [PATCH 1/2] PCI: dwc: Program device-id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-program-device-id-v1-1-31ad36beda2c@quicinc.com>
References: <20251127-program-device-id-v1-0-31ad36beda2c@quicinc.com>
In-Reply-To: <20251127-program-device-id-v1-0-31ad36beda2c@quicinc.com>
To: Jingoo Han <jingoohan1@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764257471; l=1886;
 i=quic_sushruts@quicinc.com; s=20251127; h=from:subject:message-id;
 bh=Tktq60NusPXL17N9tZWDKQHun91n1Lxa+GBNzW8axvY=;
 b=31dK5IydddpHmltXOHFkG0DMp+UBt04Ba59rfLykpXqXmwiTEEZAC2cv2GrB2jMOCXSc2m/O/
 70JPiTYXNyLA2sWmIZaNvHb8rrZIky1yeHGIyW6Oywd5V0nMSekxROR
X-Developer-Key: i=quic_sushruts@quicinc.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-GUID: K6p_V2rZ4WqIiEgH7cMXHBMnv6DtABMB
X-Proofpoint-ORIG-GUID: K6p_V2rZ4WqIiEgH7cMXHBMnv6DtABMB
X-Authority-Analysis: v=2.4 cv=OPcqHCaB c=1 sm=1 tr=0 ts=69286eca cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=k65PBKbxA0_g_y9gc8oA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDExNSBTYWx0ZWRfXy06cy47IKu7t
 wmcI3YIgB0i03NqtV5mjMSjtAjyfx0VvFxqlgn5UzZ/UGNQfKv9JHfjAQMXERXi2wkoQDpa5PDe
 b3EiYlpnLUl0tlhPAfClfcyPXB8jeBWmRrtrQFAPbzbmxgtSXnrRZlwo91ni/IsRoocreqvyzCA
 ql2bNEm4wNqgxbQCWtpCicWuScH7Md/ITSzCSBlKnuwLuB195EJReZnwCZB5J0NAnZE8ug+gaJL
 sN6R+4YdjbQ7aGO1hyEhPRaUoRxZdw3ZdalC0Eq+DNmJ16gij38gRqBFCiwh0+W58VdWOslQzDN
 wX/K7Yvldlnqy+MzloO8/f7PL7EbfRgTajUWUdDYGxX1qJdxFpsveR+OAwzC4gIOP5fcpucAGrA
 I4F2F/wphT+hQmmqkmeqA2ovmVSZPQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1011
 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270115

For some controllers, HW doesn't program the correct device-id
leading to incorrect identification in lspci. For ex, QCOM
controller SC7280 uses same device id as SM8250. This would
cause issues while applying controller specific quirks.

So, program the correct device-id after reading it from the
devicetree.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 7 +++++++
 drivers/pci/controller/dwc/pcie-designware.h      | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index e92513c5bda5..e8b975044b22 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -619,6 +619,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 		}
 	}
 
+	pp->device_id = 0xffff;
+	of_property_read_u32(np, "device-id", &pp->device_id);
+
 	dw_pcie_version_detect(pci);
 
 	dw_pcie_iatu_detect(pci);
@@ -1094,6 +1097,10 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
 
 	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0);
 
+	/* Program correct device id */
+	if (pp->device_id != 0xffff)
+		dw_pcie_writew_dbi(pci, PCI_DEVICE_ID, pp->device_id);
+
 	/* Program correct class for RC */
 	dw_pcie_writew_dbi(pci, PCI_CLASS_DEVICE, PCI_CLASS_BRIDGE_PCI);
 
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index e995f692a1ec..eff6da9438c4 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -431,6 +431,8 @@ struct dw_pcie_rp {
 	struct pci_config_window *cfg;
 	bool			ecam_enabled;
 	bool			native_ecam;
+	u32			vendor_id;
+	u32			device_id;
 };
 
 struct dw_pcie_ep_ops {

-- 
2.25.1


