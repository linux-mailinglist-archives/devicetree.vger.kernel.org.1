Return-Path: <devicetree+bounces-141355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB41A20779
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FC5818817F7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 09:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C6C19E971;
	Tue, 28 Jan 2025 09:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k3vWDOUN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD65319E7F9
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738057088; cv=none; b=lDTvNrWSuuf87t+SZ/zDhiwLvI4xvtv3iGrvbAhV4ENBEUmb/KfHIbjitLE2AIvH+/F8TvwRyXlvkSrGPB3L6oiBZbNlJUcfXkoDff5MTNOu8TKX63EXGXz9yxgj5AQGWmjaiaGzb2xfRASMA46Chyl+8DueGPsFMrvYLUVJTws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738057088; c=relaxed/simple;
	bh=aNUEDnnBXJmAjyo+Rv+xBzm6n/bBygSEIE3MuD7dTNE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=toCVuxRJ5RxENzzYJKkwFGSxDOZqQiOVkxqlSrIt5NLshLehaTbh05Ebgh3YhgjTuYI9HelQmzQc6ZQRNtAdYu3ncyYmv7GLLWLhUvMX6xc5q+EXusy/lWRQ5s5XUf9OYmtn903D/cmdgeh5m2qmX1fEQ4UUHLmR+pRaBdVyjIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k3vWDOUN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50RN7ecQ032462
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:38:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XSzEhIRdosnOQdlh1gNHLhzWcdv9LO4gzDz9oRpq27k=; b=k3vWDOUNzKbltxew
	+htQSftzkCD+qxLObLypik1EJhnN9qVGUEORriupWZiy3nGcqG0XWEzGSSUpztOV
	0OMBPTaeoLq7TACVcOXg3snufgWFMJUWDrhnvYqkwQnQ3FbnfHQOvWvK2HXjdizx
	21qTePgO1h9I1ZTV6xq1zjJFt3irnm4FL2l3qr5WC4IpNcZenlZ9mRTat3qF23hT
	h4nLWCwWC1Jr5598pJoF9Sa/e0e0vrM4uIfp7rR1TuIQz5StLO++fa6+15eftiWN
	xHcV2fH6xWgfNl+yv1FmZHHs5gg6uHQL6RiBnRvJKb1Yt/T5wNITL3h5nSK+n5CA
	ZoDQmg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ekhw115n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:38:05 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ef35de8901so10121239a91.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738057085; x=1738661885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XSzEhIRdosnOQdlh1gNHLhzWcdv9LO4gzDz9oRpq27k=;
        b=XbcVGyiqWZEDvfTfTTXY+7LPO77wbW0jxq+jLfGOH/fQ43aLWVletcwL9MWoOVPUDA
         kzlxvPJ8zFUTD8B8TR9rK4/QGkkTAXu4JJ707HMJSlxRZOb1fcav/OEwCW7x8IVMJEtQ
         jxha7eJ+pJj2FJdi7Cr7pmnCJ4ayZ45UMvaNwNUFWoAdiLgoKC+cFP44o08B2oWy85ly
         lmCsc6UEf5eDvE6hxExpp3WPEc5I4GyIRrvvo6CbWPx2IdViViz2VrJNj5Qyv2su7kvS
         fY4SoZbGXsR3LAjnJ7cZw61EZGhkw1ksZpLfF88s10zQ7xCDxKHXvm5kZeYCvIMcwPtG
         sqpg==
X-Forwarded-Encrypted: i=1; AJvYcCV6cREAAmWHyB2ZTAPzjPKA0bWrp7YAOl4iy0mN7sRFYZxWdxkk4h+OgGhqcKtXwGAXWWeL7qkuXDmE@vger.kernel.org
X-Gm-Message-State: AOJu0YwyC56GDr+EEW3LayPZgzR20Huy++cqXrwW+GvQg74qgjDfAvQk
	qNTU6OUU5CKhbJ16CwDssGPV1DUO5eD1p+1hP3FhiwCdjBO8zsPcRJE1LBRUiYp4T8yVlB0nf9N
	yHuYuE2/NEfSb+M4jXziPs5rDOUfJANUGD4ec6630vjvUtqAZ5lJh7FEW0PPw
X-Gm-Gg: ASbGncsrvKYKC9Ea8GdMEoiwHxHVZ5EiIkCo0l8bD6wFPaILObE828tyBZkPmjg5eY8
	EjY77SN0L0GH8brF6Fb7ErmsRLGj292gVfiAnX/9Mtion/FZOdUwmuRvSRqcYnEu48yyDMh+FE6
	QzEdabj3RIQVRV+korIO7d+IXDq+YtBn9oJIKZkj4RWOPJ3cNn94lXNmUAQ0B2f2fGwyXDsCDJv
	DzSnyCD9dLNsRo1C6wjcOLtySXC0rfg7Pt4b26BP/BgW+MSvdX8NWz/5jF/nEdP25nGnkvs/dtZ
	2BDDuojuGLWLjUiC9BHaM+qz50NAvZA7Fkk5hKf3
X-Received: by 2002:a17:90b:270d:b0:2ee:863e:9ffc with SMTP id 98e67ed59e1d1-2f782ca5d86mr59282597a91.21.1738057084956;
        Tue, 28 Jan 2025 01:38:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESpE/6TmYCtn7vt9b8+M+eOqAHMi7X4Aa/jIxEhceUkinauqe95Ek3jOdkLhDitwInRCGZ4g==
X-Received: by 2002:a17:90b:270d:b0:2ee:863e:9ffc with SMTP id 98e67ed59e1d1-2f782ca5d86mr59282565a91.21.1738057084592;
        Tue, 28 Jan 2025 01:38:04 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa456absm9749501a91.2.2025.01.28.01.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 01:38:04 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 15:07:41 +0530
Subject: [PATCH v5 3/4] PCI: dwc: Improve handling of PCIe lane
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250128-preset_v2-v5-3-4d230d956f8c@oss.qualcomm.com>
References: <20250128-preset_v2-v5-0-4d230d956f8c@oss.qualcomm.com>
In-Reply-To: <20250128-preset_v2-v5-0-4d230d956f8c@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738057065; l=3427;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=aNUEDnnBXJmAjyo+Rv+xBzm6n/bBygSEIE3MuD7dTNE=;
 b=JcDyBKDyG0bP7cftM+W5ncKic8gdrE1Q9GqpbicZFepKvWWI1N1o99MUistpklv6aAFxq7qvQ
 zfrRJu4ShbwA9/G7L1H+z6Al+NvOzMVbk8ufaKbB7qgjF673jagnjCD
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: Xj7gYCQoWJBJ-Co0QswkmXMYjkXEm_ne
X-Proofpoint-GUID: Xj7gYCQoWJBJ-Co0QswkmXMYjkXEm_ne
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_03,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 suspectscore=0 mlxlogscore=999
 clxscore=1015 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501280074

Currently even if the number of lanes hardware supports is equal to
the number lanes provided in the devicetree, the driver is trying to
configure again the maximum number of lanes which is not needed.

Update number of lanes only when it is not equal to hardware capability.

And also if the num-lanes property is not present in the devicetree
update the num_lanes with the maximum hardware supports.

Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
width the hardware supports.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c |  3 +++
 drivers/pci/controller/dwc/pcie-designware.c      | 12 +++++++++++-
 drivers/pci/controller/dwc/pcie-designware.h      |  1 +
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 3e41865c7290..2cd0acbf9e18 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -504,6 +504,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 
 	dw_pcie_iatu_detect(pci);
 
+	if (pci->num_lanes < 1)
+		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
+
 	/*
 	 * Allocate the resource for MSG TLP before programming the iATU
 	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 6d6cbc8b5b2c..1007248d3525 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -736,6 +736,14 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
 
 }
 
+int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
+{
+	u8 cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u32 lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
+
+	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
+}
+
 static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
 {
 	u32 lnkcap, lwsc, plc;
@@ -1069,6 +1077,7 @@ void dw_pcie_edma_remove(struct dw_pcie *pci)
 
 void dw_pcie_setup(struct dw_pcie *pci)
 {
+	int num_lanes = dw_pcie_link_get_max_link_width(pci);
 	u32 val;
 
 	dw_pcie_link_set_max_speed(pci);
@@ -1102,5 +1111,6 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	val |= PORT_LINK_DLL_LINK_EN;
 	dw_pcie_writel_dbi(pci, PCIE_PORT_LINK_CONTROL, val);
 
-	dw_pcie_link_set_max_link_width(pci, pci->num_lanes);
+	if (num_lanes != pci->num_lanes)
+		dw_pcie_link_set_max_link_width(pci, pci->num_lanes);
 }
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 347ab74ac35a..500e793c9361 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -486,6 +486,7 @@ void dw_pcie_write_dbi2(struct dw_pcie *pci, u32 reg, size_t size, u32 val);
 int dw_pcie_link_up(struct dw_pcie *pci);
 void dw_pcie_upconfig_setup(struct dw_pcie *pci);
 int dw_pcie_wait_for_link(struct dw_pcie *pci);
+int dw_pcie_link_get_max_link_width(struct dw_pcie *pci);
 int dw_pcie_prog_outbound_atu(struct dw_pcie *pci,
 			      const struct dw_pcie_ob_atu_cfg *atu);
 int dw_pcie_prog_inbound_atu(struct dw_pcie *pci, int index, int type,

-- 
2.34.1


