Return-Path: <devicetree+bounces-150814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B492AA439AC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC669175B52
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B412661BB;
	Tue, 25 Feb 2025 09:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NqfDCFVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F54266188
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740476103; cv=none; b=GmryQCOcQA6R3y0kwCogVakoATeMrdgmQy5Ll+a4/QA819TFMokB8eSxoNduHhYmVReDIf3Ip9Bu0w11zbxwh7HV7rmbxgc/3N4t7s+PIR1LstMzFLRZ8Jd/yE9zE3qAU0UOP/GH40lkNyA/8+5KP79EhYNSZlCpE98lIqlFzg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740476103; c=relaxed/simple;
	bh=anf9aES5VhlHQXEjRPr1CNKZ1r3sCkn3cMg87xu8Ys8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LPvW4flgPgYdwFxRSqBdENNCmC3rhrfRjTqgg07d+plzE4B4lQ7uimfTL5Dwr/8f4Cgzu0q4s9xK3MLzVo3QmvaGFnjd6ZW7XUg1lb9P9HWJ/XjG3LZ/Tgr/FKmA0Qqr9V+uK+GupfT8mEenFlib1cfSGMZy1ac3OXCmAiA6V6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NqfDCFVe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8PYTA013305
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ge8koW1LzXsU2LDTX9IJK1G1lfUQz/8lAGyXodJy67g=; b=NqfDCFVe9mR9XKz+
	rhX0tmEm40EMKO4dO2+vEKutID3Ojcu0UZWy32jjdSO3Sky3fmxtnCbjtlmWc0tM
	gxuvDfkLjq/ZQAHUcm6gpiMY94Cyt+4iYnh9VvdDE0+Nw3Hye0+Xa0LSclgufp3u
	cv7ttbhPJKuOgL4mF8lWBd0D4AxirtVTQUySrpLwvP7HC6nbfCjUrZ43jnXEloGm
	Zm6ZoOunjetiRYQZuU2A13pvGFmsf4iCLPYpgVBYNOregHP+Ws6PHU7d0DjD0nvv
	NuIcG8aDSEjJjQwL3HEKnftS5OTnwPIFKRqhZXegqOXtc3cwSaHnY1500VnQt+5o
	FnHbLg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y5wgrdsx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:00 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2fc1eabf4f7so11901641a91.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:35:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740476099; x=1741080899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ge8koW1LzXsU2LDTX9IJK1G1lfUQz/8lAGyXodJy67g=;
        b=Ijyeb9+IQ71BsvmvOCpd/n+TQ13uIGiC6I+xO97p3G01+Cn815X34TguJw4avJ8vW1
         2hv4VBLvwcI63GduIw5WYvCuQ7abmeFqQUGzq4S1OPYkJiiLH4M5XczCp6f9J2BAkrq1
         aFO2HfgNDmGbfqRxdrWNP+4sJDSQu2Zu8zePgDtZprppb5RjkL4jUG240uYmkcRBQMwJ
         rbiW+OwkF5AGcxjTcSYiAYMxGchNL7VG8EZfGIOAo/HX6oHA7RitBsm1Mkr7blOjJ6PT
         VuiOOxbNjnj8L/Y2t3D4f5EJU3Hpx0uW+3t5JGE1STebI+wf38LqcPDNkCKLyU39HDG/
         3vIg==
X-Forwarded-Encrypted: i=1; AJvYcCVS8R3TxXAxfSPAZ85+74anUuEMbTi7DcTkrNZePyHg80VMM0lXzMvIo+GlUiyhlSv+3o9/xzSlcpvj@vger.kernel.org
X-Gm-Message-State: AOJu0YzXDMMrDAgWV0mWVJv57Di8O5dNdw+Eqs4m2oHTjJNcqZqBPvco
	cTT2BiX6z9N+CLISm1Yy7gBSthlaTb7agzW/OsvrzfAZi/RLnh5PszUKo5HSryipJwOuYc5V0F9
	JPiyS5jjyZfz2IH/fhiGnI8tdXQZhSA9GFk4sSSQuWdLpwv4q2A+GX8NVd2lg
X-Gm-Gg: ASbGncsvY6Fi1qzU4MASObJaWeQecdKuE0z6nxPEQYNwS42jM6trJhWS2iXOMTUh6VP
	xuAwCgzGvV4BC2IFBfJ1BoOM0Iay7Jw3BMhFX7MRZmHLK8lkrXQzgNW/HR/um2CkaJFttiEEITJ
	C9pXClOE+HIxqh1pVEvVkNfxBKcF624kimH9r/O2UhLtRGRwCjMgQQaZbd2fnJpr/QX+FAJd5vt
	VPH2FYYU8F16oABkqZePsu52uz8NAIO3300EdgTC2yEecIz6jxkEHYK1rsanSRyPG5Ak2ORAJFT
	BsZPdU6KDtuEepC8Cwk7Ifl8aEbYXRSHhz1Kj/lOS+JQhN8ggts=
X-Received: by 2002:a17:90b:2590:b0:2ee:d63f:d73 with SMTP id 98e67ed59e1d1-2fe68ada4cemr4459010a91.11.1740476099377;
        Tue, 25 Feb 2025 01:34:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5p+lzZNoFjaemc5VbMk0MbdcpM4QkivSaX2gkc3c/LlopmSOWnSKhdc4+K7HgRdXVaU1feA==
X-Received: by 2002:a17:90b:2590:b0:2ee:d63f:d73 with SMTP id 98e67ed59e1d1-2fe68ada4cemr4458969a91.11.1740476099006;
        Tue, 25 Feb 2025 01:34:59 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fe6a3dec52sm1080770a91.20.2025.02.25.01.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:34:58 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 15:04:02 +0530
Subject: [PATCH v4 05/10] PCI: dwc: Implement .start_link(), .stop_link()
 hooks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-qps615_v4_1-v4-5-e08633a7bdf8@oss.qualcomm.com>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
In-Reply-To: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476062; l=1397;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=anf9aES5VhlHQXEjRPr1CNKZ1r3sCkn3cMg87xu8Ys8=;
 b=5UT8HaUdIyhECHts8RbBpBg87VX0b41ZXHl1X708NVXDjT+yLnC2S4Z5rMgprTKmbIQIryU66
 /JtnQchHFSZCZ0pnFaKkUREV2argu9a5WVblwDnyNbBb2+FV11HvWa2
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: 1iC5Sl6PiLWDhBSGBNtuUyzKZ3kl-CR1
X-Proofpoint-ORIG-GUID: 1iC5Sl6PiLWDhBSGBNtuUyzKZ3kl-CR1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 adultscore=0 phishscore=0 mlxlogscore=781 spamscore=0
 mlxscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250066

Implement stop_link() and  start_link() function op for dwc drivers.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index ffaded8f2df7..2d3ec61e8dfa 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -697,10 +697,28 @@ void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus, unsigned int devfn,
 }
 EXPORT_SYMBOL_GPL(dw_pcie_own_conf_map_bus);
 
+static int dw_pcie_op_start_link(struct pci_bus *bus)
+{
+	struct dw_pcie_rp *pp = bus->sysdata;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	return dw_pcie_host_start_link(pci);
+}
+
+static void dw_pcie_op_stop_link(struct pci_bus *bus)
+{
+	struct dw_pcie_rp *pp = bus->sysdata;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	dw_pcie_host_stop_link(pci);
+}
+
 static struct pci_ops dw_pcie_ops = {
 	.map_bus = dw_pcie_own_conf_map_bus,
 	.read = pci_generic_config_read,
 	.write = pci_generic_config_write,
+	.start_link = dw_pcie_op_start_link,
+	.stop_link = dw_pcie_op_stop_link,
 };
 
 static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)

-- 
2.34.1


