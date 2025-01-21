Return-Path: <devicetree+bounces-139951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B32CBA179C6
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F151D7A43F8
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E29621DF26F;
	Tue, 21 Jan 2025 09:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OUZuLFpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9221C3C04
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737450182; cv=none; b=QeHdqSVf9XWPonBSHbalpyVUspocLkMwR0zChf+Kjaczh1XDS5pjEobIQiKPebRM35FyGXFl5APZXBjVNdN/MqYJvNOjah0Jp6fT2D7CLPLY5uCvTvgh/h/Hqbhoy1ClXlYpTOC61QB+HKxhbGnv1eEf0mJ0kgmDrzuuYR1cYIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737450182; c=relaxed/simple;
	bh=Xw+VZv7plVVf84QWlAJzJ9vukaGc2f7dJdnQd/hTs+A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BT7Eoai3UMCXuWlPbVSu+BjVYASHQygmFpx6vsKSIYeqaD73W8sKfeAt/ler2Ej/UK94Rn213hWIahqI0BZIg5qLq9rZLOkMVSG3WFVUBzl1i7ubU5wf2Sbl7C2RoJWchv5aSa/EzISGVgwQCQv35cogfAhtJ5PiJL3d9yJ/BW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OUZuLFpt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50L8YjLH008407
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pV6pt4qdah3z0/Eheyvwkytw3y4c48rjsQ8GwVxVNIw=; b=OUZuLFpt76FkWi/0
	lSTaobfuSfQGNbR1yx/86ir2vMSIAZbizyFrRk5gfxDkt3sBmoEsiM7WYEZ1DzHQ
	z5cEXhMVIc4LsTbRlEwuSs+duG2THsc/8c65nxy+5Ra2yYDnwhlcxSx0nZyb76e1
	/KkS/gIV5O473obCMofyR34m+LyRPyxdXTDzsrr/z1UVOpbXUSGW12WfqUho/Wxl
	Jytx3LbZ8RT/FnmnJewa6Ht4XOfk4nsxCTfTLZrariKILjaABtk5AMa3974J6dm7
	6uR/IGSqsq2leZyHQzUaoq3FE62G+bBXQ6kuU16Vc6kgA0vqJ/4uufHhmBpPrF7h
	soyllg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44a71nr87w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 09:03:00 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-21648c8601cso96126905ad.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 01:03:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737450180; x=1738054980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pV6pt4qdah3z0/Eheyvwkytw3y4c48rjsQ8GwVxVNIw=;
        b=Rwr30D9JEkHbePp+G3kX5rR9mjELpyMfydNtk/CpEviN9Rfi2a20IyciX7UT2xUtI0
         ulQSyBq1yIuqxCjo13mSCkBcQz4VuLqTxFkafNgg9wN6Jky8QIFcl5QV5TK5GKtKulQ0
         aSk5AU575FGbDK4HzoB0m5KpVlhyxdIDnvRyCKNq7fd8Uz/QiSHCJ3h7wNotMlv9KjZW
         4qX+p5d915xULCK7n2/KwZVnmqISi2kAQCutRuWB8sr8PCUqnFrzH8B5Uff14F0AdQ9J
         TJfUJmjvEjZiwu4L2uibTaTO7NL2KyZjtjCJUoBb2fKaSezQiaR/R2VeQUsKVdvNv9gu
         Fd3A==
X-Forwarded-Encrypted: i=1; AJvYcCWBtUba/yE3rVvRtBxk9/5d1+BbgO73yozchogVpXkFzdbkfFuJ0aa6ZzXose9nPsfOBLMKt0vtaOX8@vger.kernel.org
X-Gm-Message-State: AOJu0YwzMLbisiZjHqPr7j1b6Ce0Oln1w7FlFLfJ06iRc48akLlH+TFf
	pm6JdOR47FRnIOwxXp+25gBn5d1G2nNjBex5IWke+God2xqGJxBSofubTMy3FocwM+PgMguQfCW
	rrlHeliRGk460GiPGdzcDaXkUdI0HjyA1v84wu/fCGoYOkiOjGlnVkGRT7Afa
X-Gm-Gg: ASbGncvmW9Od5HdynbZBmeRqMC2SYRcjuTrF50zXvgpftAIpM/JWCmzpHV7kuFDmrco
	ZkYmGJgG/teERH4D3PC3vlAKlGVdULT5bKZu9g1+y8qa+sLJ2NDJ5spu9WSu7Lwj+/YgVZsWn+b
	ZCIexx5iAQII+LDnOfawq3TD+iZQXEYglN1O//G23OYPViwqjKFEuW3Oh3pxss4i4Fx0EjH24Gy
	PYjKT5bRmeBTfUm2jiInFzlPvkjHG/jZXps9xHZrWl/i8zct9DLBU6tUZiQ48b89N/AbFppUTRK
	pH0NZ5ubS8Mx34a9zdEzenGlX5HHkQ==
X-Received: by 2002:a05:6a20:9191:b0:1e6:8f10:8ba2 with SMTP id adf61e73a8af0-1eb2145eab3mr25538937637.9.1737450179684;
        Tue, 21 Jan 2025 01:02:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFq4jA9iR+HQ4wqUBhnk2hj9HKSSdv87TbMdbKCo1JdvY3ee12qSYfiZQ6ZnHPzRacDwHWITw==
X-Received: by 2002:a05:6a20:9191:b0:1e6:8f10:8ba2 with SMTP id adf61e73a8af0-1eb2145eab3mr25538906637.9.1737450179330;
        Tue, 21 Jan 2025 01:02:59 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dabaa6407sm8528378b3a.163.2025.01.21.01.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 01:02:59 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 21 Jan 2025 14:32:21 +0530
Subject: [PATCH v3 3/4] PCI: dwc: Reduce DT reads by allocating host bridge
 via DWC glue driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250121-enable_ecam-v3-3-cd84d3b2a7ba@oss.qualcomm.com>
References: <20250121-enable_ecam-v3-0-cd84d3b2a7ba@oss.qualcomm.com>
In-Reply-To: <20250121-enable_ecam-v3-0-cd84d3b2a7ba@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737450158; l=1397;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Xw+VZv7plVVf84QWlAJzJ9vukaGc2f7dJdnQd/hTs+A=;
 b=BElUgXGJQRQdQipipRbIH+0DLZUc3m6PjRIiLH0rOcHdwbcrpRc0dEZIRLCA5fC48k37qSi6U
 QNiCP3PX6iaAkfHHSwQxX2AI5jh6fIOLDqxaRJxGkP82UxiQ0DWPlDV
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: 8oeF4CWU2_Deol4Fw55VMCkQcCNmZxYw
X-Proofpoint-ORIG-GUID: 8oeF4CWU2_Deol4Fw55VMCkQcCNmZxYw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-21_04,2025-01-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 mlxscore=0 clxscore=1015 phishscore=0 mlxlogscore=863 malwarescore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501210074

Allow DWC glue drivers to allocate the host bridge, avoiding redundant
device tree reads primarily in dw_pcie_ecam_supported().

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 3888f9fe5af1..0acf9db44f2c 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -484,8 +484,8 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
 	struct platform_device *pdev = to_platform_device(dev);
+	struct pci_host_bridge *bridge = pp->bridge;
 	struct resource_entry *win;
-	struct pci_host_bridge *bridge;
 	struct resource *res;
 	int ret;
 
@@ -497,11 +497,12 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
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


