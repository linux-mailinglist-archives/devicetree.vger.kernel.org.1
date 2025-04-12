Return-Path: <devicetree+bounces-166228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32388A86A44
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 03:54:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D713E19E2226
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9392C153598;
	Sat, 12 Apr 2025 01:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iUVyLRgr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21441891AB
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744422654; cv=none; b=ExryOYev3D7uprdVG0IExkbfdBt1qWbojZB3ZsR5YWlqDQ/YyzMfz7QrudQQhcdK1tOSSNmUBcEzXhsiZ6zj7eJdeH3YdcDm/W7/8IkRz8aQU0PeuxWErrdqj0IGu0gN+A728j77t3Xu7UNOAauDkSrZ93Gb94VEWyzEgWZxl80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744422654; c=relaxed/simple;
	bh=XchJ+I4Ear9gG/gPsK09+clneiUIEGvSpQq596I1TtY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tmGG4ICxbMRIKGobtXJ9fp2lGClyLUAQnWvcxzw/61VqMTuQOlVrmZUCVXkgsPf+UHFcqh83UURFIBhWI/+dP0oexN12UxQaMX9nb0+FvgS6tOZBUQUggwOYXIxVU9emh5sL0Ar/ZBl/8tRjCiC9Fl5ZWb3/i8/Cd98+LpRE83s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iUVyLRgr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BFar80032525
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oYOi44WO+zkPOJCPPKYoUWpuQQF+pIDf3S5b1isNpYg=; b=iUVyLRgrMPtfQKsb
	qKz8n8QgQAe8NRriMpubBIO0Xo6z6rJFmstIYLOWy/Ue4hYy7p0D8QSdJxBGaE7r
	qbncEuFjBpF7PubA5qJe/C4s+2uyFzIcW0Wn5U9DdFzQtyBNgqYiJ8f3EYJ8zcGv
	w4+IpgT+7fRmeLu2HQTgTDELAnoyEYhoQwLdYtk4bNELaP+MVikpeo5PyhwC6rVu
	yGZU43GghVaKS7ppjPAv+mhzgo9YjzX4kot1eX4OoxS5H9EOItHt7gPLQQfE5Vva
	RZ9+grN/ITLstOR/cze44JZerEkPTE4YDc1j3u1VSLb8lcRXUjeelNfpxEdCN/Xv
	DrS7Uw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twfkuutk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:50:52 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-af8d8e0689eso2720434a12.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 18:50:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744422636; x=1745027436;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oYOi44WO+zkPOJCPPKYoUWpuQQF+pIDf3S5b1isNpYg=;
        b=Hf26ROS4/PE+yiwCVjNZwMRO4OIOPupoCzB6kMKKXC5QZIJJ02GC/ysB3+ZNDXoBSB
         POck0uuRt62RSjzhXUKu+c15TydugLfJ0H50584a6Ujg3TR9C678pX9Y9Lq7IVpa+E1f
         LQxyox84CTUNVoNfxb9mQ7F+kVvM2O1HdpvLQaGrIkXLTloHM/gdjp5AzVYXqzP0MfYH
         rO+kEJkyV3azRxUIDIXtnVzuY7H53yCC1YBSe66EO8j4J+NtqRK5UiHCZdvDtYZh/jaI
         eXvk4htrB1jubB8BMOnSO9tfZIQaZfjxlfcPS5VzVnAbUhPOzYvm8GB9nSsiCGeFMzuF
         W2DA==
X-Forwarded-Encrypted: i=1; AJvYcCV4s3bnHcYw/PZd0L2te1GKeWZS8u/g36WYBL3UUsvDhLsAlojnuXFcaUxCkPj5l032dqIGNiqPgzjU@vger.kernel.org
X-Gm-Message-State: AOJu0YzoRMmD+CvTZWj3PhDvipeOiw1Lh0IJTPKAfxxuCNnPxfn8QL6z
	tnoVY/J3Vjk3ftg3BfT9GpvibLgKAGn6xdyRX5MWuIE4kwh1A/eb2PeveGUz8YvAbEhJyHqcS4A
	3ftzohk+/PXEF5d9bqot+yRYA35EUMQkbBog+6rxA724g1gd43LfsNveQ342r57h5SdgP
X-Gm-Gg: ASbGncvkL4TFFwBC/NeCitg9W9ScB2js2YqBIKMTX/RliNyWk25Gbn0Q9/3S12gh/Pn
	ERh4JTnghvRG8Y+xUOPMcxU8FiXNcCEEL/MwdXv5SPOhCa3KtZvJ3rgl1ecioQR/DmGTcD8wUyT
	NLIYxHHjfj+KuUhiaVqSfpf4fciKlHrrPxeGMk9sP+5Anv7KF7J9+B/oT0KRnT2G07D/VY7FU0P
	p+avw4HBLDN6DNRg+AEwQDw75U1dUKoE211xG2/1E70YA6K4I6TWyTfyiSm0ddJNRxtbhq3zeTI
	xhMzsIth+FPjFWmuEpTLipcvXKHrySWZZmN3MGqdgY2fcCI=
X-Received: by 2002:a05:6a20:c706:b0:1f5:7eee:bb10 with SMTP id adf61e73a8af0-2017978ef74mr7640384637.8.1744422635721;
        Fri, 11 Apr 2025 18:50:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEy1047R5RX/zZuv/NuW4Ly4u8E8wOw/508EQSTeQ25upBk1E7jkKhJZb+0VeQZCmxsbqlEGA==
X-Received: by 2002:a05:6a20:c706:b0:1f5:7eee:bb10 with SMTP id adf61e73a8af0-2017978ef74mr7640354637.8.1744422635377;
        Fri, 11 Apr 2025 18:50:35 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a3221832sm5516825a12.70.2025.04.11.18.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 18:50:35 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Apr 2025 07:19:53 +0530
Subject: [PATCH v5 4/9] PCI: dwc: Add host_start_link() & host_start_link()
 hooks for dwc glue drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250412-qps615_v4_1-v5-4-5b6a06132fec@oss.qualcomm.com>
References: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
In-Reply-To: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
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
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744422605; l=1587;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=XchJ+I4Ear9gG/gPsK09+clneiUIEGvSpQq596I1TtY=;
 b=wEfDVbJqT5k8/OZ/k547iX0Qa5pXN50JwZf/j1S7SDGoiMIVHQM1ePMT7j4SCMnCn6QscZUX3
 l7BYCLpHIFJDK4KC+oPntvIiau/RgyV93qAgFiTOo2Pz1EzT6BuZhh4
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: jpzzSAFsDxNl1N1OP-r8JBo1rJ4_Brw2
X-Proofpoint-ORIG-GUID: jpzzSAFsDxNl1N1OP-r8JBo1rJ4_Brw2
X-Authority-Analysis: v=2.4 cv=b7Oy4sGx c=1 sm=1 tr=0 ts=67f9c6fc cx=c_pps a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-12_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 mlxscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 mlxlogscore=723 bulkscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504120012

Add host_start_link() and host_stop_link() functions to dwc glue drivers to
register with start_link() and stop_link() of pci ops, allowing for better
control over the link initialization and shutdown process.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 56aafdbcdacaff6b738800fb03ae60eb13c9a0f2..f3f520d65c92ed5ceae5b33f0055c719a9b60f0e 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -466,6 +466,8 @@ struct dw_pcie_ops {
 	enum dw_pcie_ltssm (*get_ltssm)(struct dw_pcie *pcie);
 	int	(*start_link)(struct dw_pcie *pcie);
 	void	(*stop_link)(struct dw_pcie *pcie);
+	int	(*host_start_link)(struct dw_pcie *pcie);
+	void	(*host_stop_link)(struct dw_pcie *pcie);
 };
 
 struct debugfs_info {
@@ -720,6 +722,20 @@ static inline void dw_pcie_stop_link(struct dw_pcie *pci)
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


