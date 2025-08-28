Return-Path: <devicetree+bounces-209989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B16B39C7B
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:12:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4E031C816EC
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE037311957;
	Thu, 28 Aug 2025 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X6SlWyIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2323930F7FF
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756383034; cv=none; b=pC4M1H5XLgnMb+Bv48xhZAKVzLmsq+TOobwv/TJHDqr8qXhwmeHnJRXp6L1VGqlA24BUbzhiK3AgjrRmIhiez2XbVw/hqtplDfV9Wvh2FVRIXVYFKjyPExwzIGrsWC5U4csJLf6hWyiKT6X0ZocU3axOA+3Dvj/PJ5gmgPIynl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756383034; c=relaxed/simple;
	bh=gJyZo4+y70cAtQtM0l94BcRRIWPsTYGyCPIEqvg0Um4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oYpBXmSvK2qFUdlzdyxdYHLEXzfiunK5aDzqEfLhPM9lwoob4jVRnI8PkLUBYOCfNLWM+68gmcyMMv81mlWEcxBkL7IQQrUVYTuMd0nR2K5XVtg5SvYMRYtiz7spW59Mjr6WFWkj0nPbCvfREo8iryZdaHWh4mAZHp4Y5BkCazk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X6SlWyIh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S5nudv015950
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ed6L8eMIvW0AbHtn3XR+t7FYjsouaycVZOPUWpXRCik=; b=X6SlWyIht6MY+2gP
	qkxTu5ixJm3zsW11mJocaFzzjYBQdC+f/n27GVbArjDiLhkqOKQdYSO4a/Jmjdfw
	OODYV/YUs2rVylt1xpCErJEtfCa0pjBtsGlxh0QQ+Q448Une9VaKo2zaUW2r8ZM/
	cR4aOZyuv6NJXhGSBQ7ZOW3tPpcnTfrTP2VZDjv9HSFnCsZtQ38ZUp9FSGGUyqXv
	EYQvKLvK+MZTET2y6J+cC7ImGdCHCHCOMlvpawYyol/FJvcrmMY7tRS+ZjrpszBe
	eVptmnBLGpTj9i7XlQJIj5YcxOaCf5uILR2aZCwXz4lqKWTYXM78ikmMqy+0OwS+
	olqXTQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpf2dse-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:10:31 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3251961140bso893909a91.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756383030; x=1756987830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ed6L8eMIvW0AbHtn3XR+t7FYjsouaycVZOPUWpXRCik=;
        b=gKi8AjjGf3njx19+XQSOFcYfUYDQf8Pw3ySleyHdzZHPLYFImTYNghwdobOZ0Fg1NY
         WTkzTeSXAaCwJSycGwsyDBHANNQWBitefTpwHliYl0RLIw/PkVfesaYq6tx/Ooc0UuOn
         0LuXiMkZi/zPAXv5V9MVmhX4VIZnd146hROpZBJ68RfOsZyb/9/3WI1gXs92vVPgNXUi
         11fddXxf3X+5bqmpLKMJ4VXulTxmqnGqUzUppvXa+rB79smZ8Gyp1mrsgYXZ6SjIyO+H
         EQlvJJHPoFEzVk52cwVqEMkdmuuS5+mmZ0SFfBvC9U9hJxmUUWoP1c6iAvUR3dk4BUIl
         xUkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHS96zZsKZDVJxusNNwY6iOPq6JmKFVVDZNzaNbaC92YLWiQ0HRmDG/XB6Ev94EIzXtCVu8wxYLVht@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj9mksNXLIlmovG5SlPeMrDdo9S57K0k0mSYNAdHImgQOi/Jau
	nEF1Yg1de0X7X6awoCN6UyebHocyk/95nb26qUilCqfujoHoPNjUs2OlJ5sAxYQKWemD8q90qrf
	0+qZrmP9+WRwxn/HCy9ub57JeikMmZ79rmd5PS9BmgMqb/95GNe167Y5WauSZcvAy
X-Gm-Gg: ASbGncu3sWl1llMjaGAT8tRIOVtDnGfEC9q5fibtt3Zuv3AQHvV02XS0ODltvj0mZrk
	XC7RPqOTZUtQpkzF2aGP4OWcNPMOSYaKQenMsNDcm9gds+a3NZ8kArlGazHfhzBo3GLaR8ayqHU
	Vz5tvnlRTH0bAOfdYjlnGAi/mihjPiQYoIl51tQwT6qszyGiIn4whTMSQWiLPEr4RiOcuGxa/fg
	KUJtZFwVUnJ3unhhRoPTuV9qp6gLhTb4vGkbk6NFQwZH6TAiO7SxDip4VDwAp6KX8I9hhuBqtYD
	bE+rwLMzPiZfIX88lvghgHzufAfszaCJ/2hhpRzAMqNEOVzWpG/yREV55j8odZIr54x5WjNyDNY
	=
X-Received: by 2002:a17:90b:1f85:b0:327:c0c6:8829 with SMTP id 98e67ed59e1d1-327c0c68a2emr1602886a91.24.1756383030475;
        Thu, 28 Aug 2025 05:10:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLqn7GbKDipnvW7wO7xyl/z3nxMSZZtjcarpD2Fv56UXUJZ4TTQws5DQWp7lRiXQXSlA/Unw==
X-Received: by 2002:a17:90b:1f85:b0:327:c0c6:8829 with SMTP id 98e67ed59e1d1-327c0c68a2emr1602844a91.24.1756383029911;
        Thu, 28 Aug 2025 05:10:29 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32741503367sm4019070a91.0.2025.08.28.05.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:10:29 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 17:39:01 +0530
Subject: [PATCH v6 4/9] PCI: dwc: Add host_start_link() & host_start_link()
 hooks for dwc glue drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-qps615_v4_1-v6-4-985f90a7dd03@oss.qualcomm.com>
References: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
In-Reply-To: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756382994; l=1587;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=gJyZo4+y70cAtQtM0l94BcRRIWPsTYGyCPIEqvg0Um4=;
 b=m3Z83ZVY0UwHl+oGtMxjjvp8Cwj8Qi1oKlZ+0jAtkA1r8ZOAULJQJy/HJIbx09SyD/w0CwAm2
 oQLd0oEZ6nmACuGRfvCySXEqKHoqu3pc4HcgTAkcz87/6u3scmYEyk8
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: ph4ZPDXEOQNL2G05i_Gg7mllNVYkeWUt
X-Proofpoint-ORIG-GUID: ph4ZPDXEOQNL2G05i_Gg7mllNVYkeWUt
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68b04737 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX9gcsULi2pQhU
 thCeMZ5ilL1lJVh4V2DSBnhZbQc3Xcqlw1IRJXu75A4FLjh4TghPeV0M8OCVbVDpL+xsRXq1zTW
 i/v6GQ6ON7Dt4EWzV1JulwQ24ptXqFlyF6rvHYbUUMNy27X5CAT/CNdb16MEwKVhBNTzXh2RrYN
 cJ/iuszUmZmcVAt1+E4SkoOPYQpeWTSicFEWVfV/yAhItLrCLKtH+EfIsWE4bt+YppFip0AtKcM
 1it8Lq8TBWkREFZYHDIgj4wzOMCdlBfokyffypzd3fD5ePbeVr3DFM6d9zFYmutAkbus9Q6EtyB
 t00BHM50FYJJQ1LoQ+Pz04Fh6iceyJlX5hOvaEUKMDIZ1MwPlnNB9SPQyGTcCufPKu7JXj3jPzK
 U1OytUGQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142

Add host_start_link() and host_stop_link() functions to dwc glue drivers to
register with start_link() and stop_link() of pci ops, allowing for better
control over the link initialization and shutdown process.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 00f52d472dcdd794013a865ad6c4c7cc251edb48..1ed7a75501bd516ef704035a63e5edd35bd7e0bd 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -479,6 +479,8 @@ struct dw_pcie_ops {
 	enum dw_pcie_ltssm (*get_ltssm)(struct dw_pcie *pcie);
 	int	(*start_link)(struct dw_pcie *pcie);
 	void	(*stop_link)(struct dw_pcie *pcie);
+	int	(*host_start_link)(struct dw_pcie *pcie);
+	void	(*host_stop_link)(struct dw_pcie *pcie);
 };
 
 struct debugfs_info {
@@ -738,6 +740,20 @@ static inline void dw_pcie_stop_link(struct dw_pcie *pci)
 		pci->ops->stop_link(pci);
 }
 
+static inline int dw_pcie_host_start_link(struct dw_pcie *pci)
+{
+	if (pci->ops && pci->ops->host_start_link)
+		return pci->ops->host_start_link(pci);
+
+	return 0;
+}
+
+static inline void dw_pcie_host_stop_link(struct dw_pcie *pci)
+{
+	if (pci->ops && pci->ops->host_stop_link)
+		pci->ops->host_stop_link(pci);
+}
+
 static inline enum dw_pcie_ltssm dw_pcie_get_ltssm(struct dw_pcie *pci)
 {
 	u32 val;

-- 
2.34.1


