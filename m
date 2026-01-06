Return-Path: <devicetree+bounces-251921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E6BCF85F3
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 13:46:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71A233043F56
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 12:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48EEB32B996;
	Tue,  6 Jan 2026 12:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZzCn7GqG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OclxdEJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971AE326958
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 12:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767702907; cv=none; b=k+lCdfTmzfyQxSq88RpuaJYCTWLTFheeJrEViUdp8olpbcoRjbAM5tI5dMJ05EqqBvraej44dL+Kqqc1w0X194uXl6l6SjbghkyuDkuILb3s+fPfRjirRT7ffHu72KCo5yXy0JCRKAzFXGyrJnkWPMMHBNHjq5Ki7p8MaX7w7II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767702907; c=relaxed/simple;
	bh=2RDD/rzxwkAra6ZrjYNETweAEEQKDMYqwdqSTtF1kJs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aTWTCPOq38beeUHuoS8/buXTyYOFYYzAZLboYNfssdhrM6x7sVnJXVxUIwEtS7H0P75hNZCcv7RuW6WvKrs69lEI361IHBp8VqEFk7jXjY/I6WR7zKKAnj/R4T/hvpSZawxKKctVSL8u262J7CSnoCvv93MQqbdcolNF9MlP0ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZzCn7GqG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OclxdEJ/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606Aenhu3214044
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 12:35:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=H48IToLSo0oZ7+JTTa9/pt
	0c6xxpM1rP2eGa/2HD16s=; b=ZzCn7GqGr1B/Sh0DSsZiDuNGpIqEIJefsbVN9w
	J2y8p5RJNw2H2i949qs+jpboc3VbTUwPGxP2ON07irNtwT56YMCFRHePR9IX5JVM
	OJneITMUEzTtN/5OokgMkuGqp/gChQgEUsdnIkTyFxFSb9n11mnYJ3LIhzo8AJf5
	9YzG0PhGE3UrdOLrXgm0Ohr1Na8dY55mvjZ19NnTCefnZBbvHlUNI8Osuyq+QXhN
	PivvQ9fLRczfil+HQrUrZ2i1UzLAW7BZCOHOOck1htcu8Ln2lRxnTWS3Roz4045O
	RbFgff/+oCQ2N2yiSijD5NMNiCaaumhHmV3Dq7f+jkGV8MfQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpnda1q3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 12:35:04 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b89c1ce9cfso1103194b3a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 04:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767702903; x=1768307703; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H48IToLSo0oZ7+JTTa9/pt0c6xxpM1rP2eGa/2HD16s=;
        b=OclxdEJ/kOZBOtANFrLR1faLOeO2uEg9qny/wqvct4ayMHDj75bj1MYs9TF4+InQNm
         m0Y40ttbJVEsMfbhrAFzbKD45+6N7tFLTetgZAjEYUU495BS6gmnOKOOxgkYVMhDWfk2
         S5bue51H7QyanVKqXkl0MI0XKNAnuB5Cah0RGxDgLngc35fA3WuiulX+cgXfbc+gbHlO
         SWMFKQHW5faBIFJFf6GjbZ+ScA8FhjTD7LM2gsGxpXNJLsLibgfHNUmGVG0t0+nhd4oJ
         we0Stx8dQpi/nUd5M7EGjWeZyvcSSRiswHQO2LpXVe6BRWddWs9rDYNVmxxoncABgcH2
         YhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767702903; x=1768307703;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H48IToLSo0oZ7+JTTa9/pt0c6xxpM1rP2eGa/2HD16s=;
        b=Qu3b+X5QCFgiKDnaGFLUwIgsooSn+CmTckhTr6rpZl6HIe8RRrXlsEXguW76Y6qdv/
         yRh9Z82V1FGzUTkg2KAujI5Xf6gvlkUxwiDRQYk1cngD2fwmEX1V/WJriupIGAnVl0Lp
         RZhqc/eS900o8C37DHG7SkuNz9fd3dmvL9SgwwQmpDPiQRqEfnkO3cW4XOUk/y90IAsc
         dimzzRINTF+wJVE8mXPlolUTG+ZjCF9Nohx1EnWdjobN/4oOKYdkqL9vCvR/s/aQ93Hk
         b2mpn2sevlpg7p9/rk/9Y0ONRs5hLaVdZabQVFwN2ZdbV88xB6WyaazWWpFc5Mt56KpF
         VikA==
X-Forwarded-Encrypted: i=1; AJvYcCVEbGVe5uVY4IhC1Abhna1SMtSY7hGPjwlCRqeyx6vSJP3eXus9bFIKOiRabdLmnUoVZbhM727XjwMb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0Y53hLg9JbpSgEguZ+NsdgNsXwAuEh/61lADouQLrfBJYT5Na
	EU5HUO7i8uVenQvFnI/sexf4pe6CBgCABj4WjHqybTpMtI+ZJAVoOpeW4hI2bAJVEo2dIB0Obe7
	O+8Or+aMWt9omY2SLnelKonPVkpZiV4qFXHXce5Db9QdilygtfJ4CzWvX0BgJA3Om
X-Gm-Gg: AY/fxX657+Sv23qXgbveiB8ri0cVvE3aoAvgCgF1LgKYHxSgAVC3vlnGF2vV4ASkd87
	1Rm3XOV6iVTd+VqlBw3dkOxJBPSc6CkL4/cGB/N+5NaILr/jo0FXYPYHB6YJwJnlJ2tQUfkfp+A
	dMwaEL0ox8Z60058SqcOw7LaDv+aYS3btcEzRFky8NhW9+IOOBK9qFt5Pm0aDmGFash6NTVvrsf
	ZrNxR2IdbGeFNMqxa8l2kWi3lG/Eo4wGCfkix13AmxWqq4YA6hwYLw4RVEzyo71LOHnw3R9Ib3D
	dzstTO5WW7v35tsgJ/N6T8/uQ+8YVR4+UOWmCInwoE3JgMqMDkf/KpX7s4nv86ihUl1inxAD/5b
	yk8z1h5bfjiY9nVccW0WhY8leahdE/MiExIulPYcJrtM=
X-Received: by 2002:a05:6a00:3016:b0:800:8fdf:1a54 with SMTP id d2e1a72fcca58-81882ed4e63mr2747029b3a.34.1767702903178;
        Tue, 06 Jan 2026 04:35:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOpXYXpBJuyP7pW/B6ADInveqDxUCY8PGABjDrGn2VzGcMZufzwWDAr64QqHfVmjl12wUTow==
X-Received: by 2002:a05:6a00:3016:b0:800:8fdf:1a54 with SMTP id d2e1a72fcca58-81882ed4e63mr2747003b3a.34.1767702902651;
        Tue, 06 Jan 2026 04:35:02 -0800 (PST)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59e83bcsm2161583b3a.56.2026.01.06.04.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 04:35:02 -0800 (PST)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Subject: [PATCH v5 0/2] Add firmware-managed PCIe Endpoint support for
 SA8255P
Date: Tue, 06 Jan 2026 18:04:44 +0530
Message-Id: <20260106-firmware_managed_ep-v5-0-1933432127ec@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGYBXWkC/33Oyw6CMBAF0F8hXVtCW/rQlf9hDCnQgSbysNWqI
 fy7hRULdDPJneSemQl546zx6JRMyJlgvR36GPghQVWr+8ZgW8eMaEY5oURgsK57aWeKTve6MXV
 hRgzAa05ULjhXKDZHZ8C+V/Vyjbm1/jG4z3ok0GX73wsUZ1hqyQijkmUSzoP36f2pb9XQdWkca
 GED21Jyn2KRAlCSlFooBeUPKt9QlO1T+fIVyIqUitVCHneoeZ6/n279Q1MBAAA=
X-Change-ID: 20251216-firmware_managed_ep-ff5d51846558
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        quic_vbadigan@quicinc.com, quic_shazhuss@quicinc.com,
        konrad.dybcio@oss.qualcomm.com,
        Mrinmay sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Rama Krishna <quic_ramkri@quicinc.com>,
        Ayiluri Naga Rashmi <quic_nayiluri@quicinc.com>,
        Nitesh Gupta <quic_nitegupt@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767702896; l=1972;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=2RDD/rzxwkAra6ZrjYNETweAEEQKDMYqwdqSTtF1kJs=;
 b=RcRXJTuHXS3IOCpT9XJohvlvjxO+96rSlKeLrn4BV2krx74hIryOnirhFt60X+Ez5z3jbPLH1
 s1edtGTgzxNB48cNCGfSFDK2dwrn99aUr6/rZ9NSNMhr3k38MHyji1v
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-ORIG-GUID: PAJa92gYevpXNMvqUJw8TsI3amNP28C6
X-Proofpoint-GUID: PAJa92gYevpXNMvqUJw8TsI3amNP28C6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEwOCBTYWx0ZWRfXxfyxeI6uu1eD
 uofo+z+oWkrP3P0qXAM3yX5RIH9GXHPw0i33+l0djDz70L8z+Dy7AFjC9KI1XtV9nFgmyAWPRTm
 AKpR0uEbFc5p5aOU5jfiaz7xAPg6BKS4fxFFcVZ3e2t64hkc8vhuPknUp3t4O9JNAL/Hl5WYsYq
 AJbfg0YgXo5nZMy/nIXgz8bvnOYIJSmLncLgpMnveOCBUCs6FDkxtWCz+q9wlCbXHgWG1fG8gX2
 tRt+b1vSgBlMHhRz9ylnaFKi4qAHk2abDwkoNCDmBGBE42WyKXyZJDyaQfc3lU808l3ga6qfI1A
 WhGwpDnID8XMY3Yw2WZnHTjMx8ZeFPmKuJoU+PCjqiCdY0PdgC0yqz0RLJQwNNMyLJKKHobaGwK
 rQBrF8Smzl8tDb2F8/W10mXakKbc0EVaFgxhDoTQaTNb1mWcT26KMtA+NKMrRjirYLwYqAHUW6/
 QFMNCC8/ohEslRd3PFA==
X-Authority-Analysis: v=2.4 cv=Jpz8bc4C c=1 sm=1 tr=0 ts=695d0178 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=3jyur01tNAjp9li57p8A:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060108

This patch series introduces support for Qualcomm SA8255P platform
where PCIe Endpoint resources are managed by firmware instead of
Linux driver. So the Linux driver should avoid redundant resource
management and relies on runtime PM calls to inform firmware for
resource management.

And document the new compatible string "qcom,sa8255p-pcie-ep" for
SA8255P platform in the device tree bindings.

Tested on Qualcomm SA8255P platform.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
Changes in v5:
- Added Reviewed-by tag in dt-binding patch.
- Updated patch 2 as per comment by Mani.
- Link to v4: https://lore.kernel.org/r/20251223-firmware_managed_ep-v4-0-7f7c1b83d679@oss.qualcomm.com

Changes in v4:
- Updated compatible string.
- Updated dt binding file name to match with compatible.
- Link to v3: https://lore.kernel.org/r/20251217-firmware_managed_ep-v3-0-ff871ba688fb@oss.qualcomm.com

Changes in v3:
- Updated compatible string in dt binding example node.
- Link to v2: https://lore.kernel.org/r/20251216-firmware_managed_ep-v2-0-7a731327307f@oss.qualcomm.com

Changes in v2:
- Updated dt binding as suggested by Krzysztof.
- Updated compatible string to match file name and compatible.
- Updated driver as suggested by bjorn.
- Link to v1: https://lore.kernel.org/r/20251203-firmware_managed_ep-v1-0-295977600fa5@oss.qualcomm.com

---
Mrinmay Sarkar (2):
      dt-bindings: PCI: qcom,sa8255p-pcie-ep: Document firmware managed PCIe endpoint
      PCI: qcom-ep: Add support for firmware-managed PCIe Endpoint

 .../bindings/pci/qcom,sa8255p-pcie-ep.yaml         | 110 +++++++++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom-ep.c          |  61 ++++++++++--
 2 files changed, 163 insertions(+), 8 deletions(-)
---
base-commit: 563c8dd425b59e44470e28519107b1efc99f4c7b
change-id: 20251216-firmware_managed_ep-ff5d51846558

Best regards,
-- 
Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>


