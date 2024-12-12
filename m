Return-Path: <devicetree+bounces-130205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E35669EE439
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 11:33:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E0381686F2
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 10:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AF92211A19;
	Thu, 12 Dec 2024 10:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gYcEND1q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DF9211486
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733999596; cv=none; b=PSDyxatFi3m19e2wu3iKjA7d0Yob5XzI/uacimHjVhodm6nAQBcKx604qrkz61xwcgruo3DC8XX8j6mrfIbpIAQG/5HLXiqQrWhwQ3kO/bgvS8F6uxnL0/WOejv0maCTcGjFOAuh1PsL1qOQK0XOKQcBgRy53ym6b7dlN0Q68sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733999596; c=relaxed/simple;
	bh=qILE2MwnvWLTTp/FHW54YyhNKkXwUyxZSZEtY+vSDf4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VBBW3fakMeP7RQQJCRnhX+eMoN3I7s9mzYKLIl2/CcEE9BZm6HT2vJogctFyeGw1j5ptXmz6R2ledNcHBs2XKKKwJ6nXgLdrnezUalpNscWwREonTCBwt56uNIYXq9B/jOSqQxPBJ7Ilt1GrdjJAa0vSnkV+qCDcPquKNxgS1g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gYcEND1q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC7SGe9028278
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:33:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6DzLT8XtApn5HmF8cK1fM4LQEaxlwdnk14GwV5KnT9A=; b=gYcEND1qb8s6Qbeg
	idIfo7Y2QesDdo17Cnfe9RlN/nYlRGamCcHMM2J4g2sf7iCl69lxWgs8bpkgjY/K
	lPLCakima6ZIO8HVra05Xg3ZW8il68rvgUcSOw4oOS+HC9WA2aPScdYJzgr/h49u
	d42LTVomy5fjbjbQmqlh3MvfAPbwrbXAM5nRn1bm4pXho2zJHL6Q9OGRT0Q68kY3
	t1PbBKxNogEBmfTaxXNuz8Xqjh4ZyMkF+TcUxaAxSdsJPKSZorYvgVFl5cFJUZpH
	p6y46FS31IBAN+XgecYodsNy2Ql7ZNOGGzCNhXKrFosGas4xoVVIUDQA+a7XJIsG
	rVMqbQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd4xtk0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:33:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2163d9a730aso4649435ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 02:33:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733999593; x=1734604393;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6DzLT8XtApn5HmF8cK1fM4LQEaxlwdnk14GwV5KnT9A=;
        b=VYEv5OESa9vKNjuskOR09l9lClUYrxz2h0v+/xhCqsdOVd9zuDei81GoyJuLE7aTxW
         xtPGi/2DuZLUN/sAJknp3lB7mX9hQRlRBCZ1ssgZXGMaN6NDAORnjB9wMkmGbxdBT6mw
         YKyeJszMXvIqRcpaKAS8qFdilw+v6kWhe1UoCVXMxGa7+NKHXz8XkpDaW9UAzAfHhqmR
         6jJJZPuRCZfMrsJlPfoa1KcIBAUZorrZO/10SZOuHVdxaW1jwN0+Rz5VXNleT1bv54kg
         sgS6iRIocJnK9qY5FOVC/ZOqOZYCFA3sAKIHV3AkT2lZrX32uILJzg2LfRgRi1o8veE2
         LNxg==
X-Forwarded-Encrypted: i=1; AJvYcCVUdxz5EKxgjjjX0i5PQVe2xb2tdsWKSTi2mvgTzIMLK4OeM+cKntV2Omq+idElageGFzG3QDoWwbTr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2i/7Wo/zAkG8tZwSAM1nS/8jOVaDCC0d6AJ/xXMZPsQPKYSnf
	g8bedTRCvq4Wb55XVTf4ZN8W2oiLA0xyiNXDperX+mlCPalaVztM4iS7iPbhhkSmhRg4fhNMAeF
	x3jAD6pFkrsViyI3fi3KsiFCCr4DLTIBK11a9bXP82qYKfZ67EZqbE8t2Kma8
X-Gm-Gg: ASbGncvs9k690evI/IZZmrVv3xJ+8+JOUjy6d4mbdIEI4AQjddZZvoffy3wF473fpxI
	0VbXEkKeo3z68b5bbcY6wyt7gQxS+xeyW0ZEdDhrlJAV9ASvpgw8yDRLdo3Eb9tnRPSKAwg5LFO
	e1KUNdW8s5IwDxXKXR2MVPkg/bpF9aya5pt7+lpKvGusQi3Hwxlqky4lFRPYC8b7uGMMvS9ySG+
	LD6gSeSPg+MoE+aWJf/IbAd/GVdWRQUHhyGtT3me0819gi8D0rxWIIvAxsoXag4tXZn9fFdsQ+Q
	inLOq4PHZBBRZl3G
X-Received: by 2002:a17:902:ce8d:b0:215:a2f4:d4ab with SMTP id d9443c01a7336-2178c830379mr36932165ad.7.1733999592696;
        Thu, 12 Dec 2024 02:33:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPuZmJVKvHCw+BNqGloDAUOaLcCy8jfzRck/CYjpB4SB+sb34PdsMiJMPNS5MD+Am5CTu0dw==
X-Received: by 2002:a17:902:ce8d:b0:215:a2f4:d4ab with SMTP id d9443c01a7336-2178c830379mr36931845ad.7.1733999592320;
        Thu, 12 Dec 2024 02:33:12 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2178db5b42asm11102335ad.244.2024.12.12.02.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 02:33:11 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 16:02:18 +0530
Subject: [PATCH v2 4/4] PCI: dwc: Add support for new pci function op
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-preset_v2-v2-4-210430fbcd8a@oss.qualcomm.com>
References: <20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com>
In-Reply-To: <20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733999565; l=1378;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=QUbB/2D6eOehtGMpEcAKcKS9W+U5FvUncY+bTnczvqs=;
 b=dwQ9PTO2Bv5z/S/aCvfgxVoeCrgNK6mnv0Jy5dawXlny01Mm/B7PVNX3KXk2+UTwPUUkFBXwS
 9NUkkj79tS8Bl9pr9Pe8Qw45Ly8gvMVvTGFPIW60WcJ0AQPicvOMchv
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: X2SpSlxUnyvjyu2CjT4U_z8HtQYQtORU
X-Proofpoint-GUID: X2SpSlxUnyvjyu2CjT4U_z8HtQYQtORU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=888 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120074

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add the support for stop_link() & start_link() function op.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 2cd0acbf9e18..5f017b7ab932 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -694,10 +694,28 @@ void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus, unsigned int devfn,
 }
 EXPORT_SYMBOL_GPL(dw_pcie_own_conf_map_bus);
 
+static int dw_pcie_host_start_link(struct pci_bus *bus)
+{
+	struct dw_pcie_rp *pp = bus->sysdata;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	return dw_pcie_start_link(pci);
+}
+
+static void dw_pcie_host_stop_link(struct pci_bus *bus)
+{
+	struct dw_pcie_rp *pp = bus->sysdata;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	dw_pcie_stop_link(pci);
+}
+
 static struct pci_ops dw_pcie_ops = {
 	.map_bus = dw_pcie_own_conf_map_bus,
 	.read = pci_generic_config_read,
 	.write = pci_generic_config_write,
+	.start_link = dw_pcie_host_start_link,
+	.stop_link = dw_pcie_host_stop_link,
 };
 
 static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)

-- 
2.34.1


