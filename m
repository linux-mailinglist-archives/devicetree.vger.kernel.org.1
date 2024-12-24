Return-Path: <devicetree+bounces-133856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 476239FBF0A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 15:13:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F51616409E
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 14:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090671DA634;
	Tue, 24 Dec 2024 14:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kw4xKlcd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6506D1D6DB6
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735049463; cv=none; b=kqWINk3XVMayk0+qqytMmHCljv1+AHDqez7Q9ZBgeTVSTeFf+pPisfdqbWfPPu9sOr1B/SKoBO157fLD2jBP+U7tECZnKkJhl8wtHvJkdSjKj+BQ2k+NQwdE2ysczSMQDTM6WPTxUpoTLBfdDX+uYiGBk0WdL6t/PajRUU5bhb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735049463; c=relaxed/simple;
	bh=0Xx6GMsAw+JWlDoTPToHHqQOG07yIdiQ1yAV7t7FJ5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bp7UBi5/oNsTT09AuLeZoGyovpCmfY5b8uLn76EmpGTUbE03bZ/AuvOPraYnkY/CZ204+43p7i+h/Q7/ylv60Hnt0i25EgzATFgm/DdBHUR3lZo32Oh4nT74cTnMWFZuUi4ciSvadj205BbJbnPh4oFsi/Rlv4FPh2w+z6dMmhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kw4xKlcd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BOCFvmj019683
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:11:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1HEWmjXS5JJuGEVhkOT6pTbnHC1543u6z3ZHIx/4YjI=; b=Kw4xKlcdv0q6shJr
	8wbDHZ4JxAhK8qDD89fkkmCAoW0eiB288/ND7iBJJUcyS6wgpvZb43pqBb4x1sV+
	x0ewTCdNGSqhr6tTv3AbKUzz5XWv0BoNmL9upGavoWT0Cld2FWh5rixMIL/A4S8U
	rZy0hnMifucNyFLXX6uPqGE0vgHg/2GM8njHpqqWm33+EKvI6mbvm8MjVDpKwkeV
	wHX9OXYVUQ5SQf9HCXkPiyRmWwM1GHCrOV12AOs7+KAXbOODE464jSCue9vI4WpI
	d6Qc+c68jK7AvxMm0GPwdVlENCQmWBoBwjxUKsDRaQF0xoP82UHDskzUqeo3Kkkv
	uyg7pw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qvt80jrj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:11:01 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-21661949f23so84487095ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 06:11:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735049460; x=1735654260;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1HEWmjXS5JJuGEVhkOT6pTbnHC1543u6z3ZHIx/4YjI=;
        b=J4/e3HiHiDf8PnwYxKLWSKy6UYQIZh8jGMXn2J88uxZONLNcQrEQJxFc3YIumSm+Zc
         EK5zhZYqQ9R9ONgG8jXGvYVBPFkEDO9UOOyJyCBkIR03I/oZOs3BNeuZius0BtTCT65i
         td27wNPCQmL39wLCCZmT8f9SVvUYChZcHPuvI78SS9qe55dzk9Uva2eAYoTTHn6cYnLe
         1uEE9223fjXfJ2N8z/StAph61c777SjIu079zz2s27RX1qRxyHAisYRvqi4uPf+5G+Cz
         jKJ7m9uK8dYOtQvkeil6mHk3Xz/80yzn5pnxVeh0aLgb9oKgbQAZeypikOREmBhABP9n
         HURQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4XDII0BsR52CfPtTzG2sPcHpbZ8ZavYFxCucpbSikJsLCx/domGFW3NIyISID5F2hGxRfA4T0ljsT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4s2mHaJMlNVuXPpr+kUYG5nJ0bJrbT5oNy20T9SGTkHGCY0vZ
	/F1YWCz6vFzpU1HKIOsM+3pCcK8YVgolGyx+xx89g7K73L46hFrRlqsxhJ4yMe+dfjSvH5fo7UZ
	6tArbE3XNJgrvcTmPrwel5iZMDjM+GPlN88wYbtbljfrJJTUgo1DOdhML2miB
X-Gm-Gg: ASbGncubPHAb7PiUC6egB5XQHcsBKC0awi+mQ70NOndaI4jhJ/47vg6NO0Gg90+Q7GG
	zs7hzo4qB7+tvwl3BWxoJ7WRuB+R2nwOfZI3qJFoqkWjJIcDIvcRVwXWx/X1pXhPTE3q9B+qfwQ
	ekQE3Ww0uCEOSxAmEAhaXJVz1WzGFH1Ob7he2ZStEXDkxj506jiJ/6ANPMcQBr0xFUxmYNoPJsh
	+ks4VHO9cA0c11k5kO9ZOSmN1wBSOrZBRn4Yag7C1e9oEZm5PY9RC/Gz1CVZ37biO0cI7zK2Umg
	IVyVGDTcZ9mbWgl1
X-Received: by 2002:a05:6a20:c907:b0:1e0:e07f:2f01 with SMTP id adf61e73a8af0-1e5df939d84mr24516997637.0.1735049459545;
        Tue, 24 Dec 2024 06:10:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGxQd/3dtpr+emjaEkW2pVkPDwgEoBoiqsutuMOLha1DB7CG6CsiB1HWQkUaeJk6s/Y1o24Q==
X-Received: by 2002:a05:6a20:c907:b0:1e0:e07f:2f01 with SMTP id adf61e73a8af0-1e5df939d84mr24516828637.0.1735049457329;
        Tue, 24 Dec 2024 06:10:57 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90b8f5sm9691216b3a.194.2024.12.24.06.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 06:10:57 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 24 Dec 2024 19:40:17 +0530
Subject: [PATCH v2 3/4] PCI: dwc: Reduce DT reads by allocating host bridge
 via DWC glue driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-enable_ecam-v2-3-43daef68a901@oss.qualcomm.com>
References: <20241224-enable_ecam-v2-0-43daef68a901@oss.qualcomm.com>
In-Reply-To: <20241224-enable_ecam-v2-0-43daef68a901@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_vpernami@quicinc.com,
        quic_mrana@quicinc.com, mmareddy@quicinc.com,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735049433; l=1397;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=0Xx6GMsAw+JWlDoTPToHHqQOG07yIdiQ1yAV7t7FJ5Q=;
 b=7URn+oI+BDdjhibv3tPY1iSYtX0PuA28lSzDe0WICKdg6iuIrn2WCFUaD3YHsFVZ92oGowk1M
 0p7lFy9UkSiAZ77yj2PuzkIh0E0M25WXzVf5qzR5qpsJD8rfbc48KZP
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: TyIUAk4bkw8Tn_VcKkaRSrAfdLLNgZ86
X-Proofpoint-ORIG-GUID: TyIUAk4bkw8Tn_VcKkaRSrAfdLLNgZ86
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 malwarescore=0 mlxlogscore=868
 impostorscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412240122

Allow DWC glue drivers to allocate the host bridge, avoiding redundant
device tree reads primarily in dw_pcie_ecam_supported().

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 4e07fefe12e1..c3f464f128f0 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -479,8 +479,8 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
 	struct platform_device *pdev = to_platform_device(dev);
+	struct pci_host_bridge *bridge = pp->bridge;
 	struct resource_entry *win;
-	struct pci_host_bridge *bridge;
 	struct resource *res;
 	int ret;
 
@@ -492,11 +492,12 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 		return -ENODEV;
 	}
 
-	bridge = devm_pci_alloc_host_bridge(dev, 0);
-	if (!bridge)
-		return -ENOMEM;
-
-	pp->bridge = bridge;
+	if (!pp->bridge) {
+		bridge = devm_pci_alloc_host_bridge(dev, 0);
+		if (!bridge)
+			return -ENOMEM;
+		pp->bridge = bridge;
+	}
 
 	pp->cfg0_size = resource_size(res);
 	pp->cfg0_base = res->start;

-- 
2.34.1


