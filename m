Return-Path: <devicetree+bounces-141352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A719A20769
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:38:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BBC87A3EBE
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 09:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EB33199FA4;
	Tue, 28 Jan 2025 09:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aSzp4ye3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B45C1990AF
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738057074; cv=none; b=rhjVLjluPsOWSpFNTkULn04N3aY5qfXulwowEB3RZhQXiAhjKZIlzzLFUFx5uab5tdsOwPAVTHEignOuw5Wc9RH18pa4xIAtVCp+rUN7One+ctahMWa+r7TC0M8PSoTOanQpcLUGC0Gztug2YDdU8vBZtxleHOfaxGtS3L7YsQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738057074; c=relaxed/simple;
	bh=hpAH+WwYNbw9r5RUCI0yf+vqqPIA2EWAQQ7ln/nF+L4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ls4OTpWdqchMZlx7ayfWRap91ThlFGJanEmZOQpCdEvXS4mZGQrUgamex7xRPidg/oU0Ji4et4uUpuf9kdnwmgJug6eUEk2IaRk8YKCsntmHk58Y096698I9sn42jU4VXVvgKIBVqbsbExR07GDEcz2+yT2Ua430CqcyFf2Z0xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aSzp4ye3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S8haw1015086
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=oQvh7zvTTOgEEoqniA4qTl
	PJ09kXTBtV6qmLydUraAQ=; b=aSzp4ye3SWwW5lhGBPPyISThspMF4o1ZfdZgaF
	ndvJVA6iJ6p2kHps3U4cEeTCeDYoxLyeP7/U1au+L/1e0ml0yBP2cAbrBTH2qqrn
	oTOMoe9mtvtPgIEtavOZHwRKrAmk5CY6+Gqrk7h6bt6q+kSpyPr189Zb80xZqwew
	kQ8MLe4588JyMcjkIZ+ZpPR6Sn9p4STP4Liix6Cpq3jvT5BO52XgVdaLTf2rVkbz
	SU/dfgL3k143WKiIlXYJtCn8ac7/bXoQ7rTQPv7nVIr7C7hwcceQpMXvBWC/bRCs
	5PSbYiiJHWGQ+oY6rX9so+lEGHQOs7WOdassLaeZGj9GtkKw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44euyq83g8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:37:51 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ef6ef9ba3fso11065574a91.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:37:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738057070; x=1738661870;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oQvh7zvTTOgEEoqniA4qTlPJ09kXTBtV6qmLydUraAQ=;
        b=bmZobVTgvVbgzZFclpN3DHrhrgjkr7Dhh55G2hyf8sLpmaWJHGK7KbttO+3/87SJyM
         lwlrqh30w/s2DF7iC/3CHZRm+TBVU7iZSe9T1N+X4KlX3Rx6xHgBX65LcGk2Pu8uzLUP
         i6/XIcSo5sDXQbNGrSGC1aMrzR0pxU8crA6u4SCTwRqATzNHz6t/vyjKk1mhh9Y4IAYN
         kvjv6eG39CrUzhKdtnbtwmsb3jIH4Nnr/tnGeuh2mGzf6EUSuToA/HYnpbCD3Unk7EvR
         xpJXNWON88YQ0BZBOvuaeLVSkUj2EzDq77+NGcoYQfQM0FVnhxqXHN9cT0XpHDCL0gWR
         071Q==
X-Forwarded-Encrypted: i=1; AJvYcCWDj3JA8jbMJ9t3JXBlgfE56NN/bJ8W9uzWVJvoRvt/JAa0F9KjUseXZ9ssUk+fOHqo7LI35rLfqsRi@vger.kernel.org
X-Gm-Message-State: AOJu0YyHRQP6AEjx6QToH9nfOvZzuhge2np9dN5Nn5cpk36Zs/y9M2js
	HRPOMrV+Yi0VuXiIZAGLAG7I9lpPVBV+c9pdLivxuPcyOTAP7kHvtwndoKQkNjDXgOhTz1tUc2I
	O5MoQuQx+vkCVJVVml/ha/AC2biXkJE2i1/r37RW5OimDMXoaQh1Z8TiRosi+
X-Gm-Gg: ASbGncu55vJVeobgqLQ0mRjI0kF3pokxgUPx566Fz6ONzhuY/CImRgPar/HEDKFbCQA
	KWJE8e97tVV5XYSUgVTIjrU500lNzsm64oGZ1Yu9R6zhvLz5O9/HhHrRgzDlBoXsUI0QtaKEiCO
	WlyIrXx+NF4kHAMTpWzXNFNjP5eUfBb8Szry4EJ8hrGPM5TR+NI3DcwKjFOVfZdny6YITi4b9VW
	Ms6w5E5btZN5JBUwcm4yGY5Jv8pjWlcHG/LQv7+kKGzIYeaGSS0m/t7jqCa6JXeHykExQZYi64L
	EeMWMSRsHhGn5u1QfJ/XDMP6tPGrXqh+xu2OLbCD
X-Received: by 2002:a17:90b:5206:b0:2f4:f7f8:fc8b with SMTP id 98e67ed59e1d1-2f782d4ed77mr62886299a91.27.1738057070635;
        Tue, 28 Jan 2025 01:37:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE15aqjVwYiahGjBkVRV2RlcfmwBgtEJjF/5UWDs2qobFaNXeuBeObk2SjZdYteUg28uwU4cA==
X-Received: by 2002:a17:90b:5206:b0:2f4:f7f8:fc8b with SMTP id 98e67ed59e1d1-2f782d4ed77mr62886277a91.27.1738057070299;
        Tue, 28 Jan 2025 01:37:50 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa456absm9749501a91.2.2025.01.28.01.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 01:37:49 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v5 0/4] PCI: dwc: Add support for configuring lane
 equalization presets
Date: Tue, 28 Jan 2025 15:07:38 +0530
Message-Id: <20250128-preset_v2-v5-0-4d230d956f8c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGOlmGcC/3XMwQqDMAwG4FeRnqe0aYu6095jjFFrOwvTbq0rG
 +K7LwoDDw5Cwp+EbyLRBGciOWYTCSa56PyAQR4yojs13EzuWswEKAgGDPJHMNGM1wS5FHVTKt0
 qHAT/8WLde7XOF8ydi6MPn5VOsGz3FCyaA6OCU9votlInH2PxfKm79n1fYCMLlvgGAL4FOAKK8
 9qKUmpl5R9A/ABJGYgtIBCgjWSgVUsrw3aAeZ6/OMhvPSsBAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738057065; l=3199;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=hpAH+WwYNbw9r5RUCI0yf+vqqPIA2EWAQQ7ln/nF+L4=;
 b=8wXDf7+whfQi+QPhHVsUs8DnjqKBLR4bbsQ/9iE//q8jOwCIK7GMYBYaESetan4USwM2M5knv
 Lm3DUMZCT/EADKbzTEpw8+ZD/shAcQ0Azfo8DmStkszCVzL4Dsbk6hs
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: fbG3xIPjJtzLolJYtDJAO9ZKORe_e51I
X-Proofpoint-GUID: fbG3xIPjJtzLolJYtDJAO9ZKORe_e51I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_03,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 suspectscore=0 bulkscore=0 mlxlogscore=898
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280074

PCIe equalization presets are predefined settings used to optimize
signal integrity by compensating for signal loss and distortion in
high-speed data transmission.

As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
configure lane equalization presets for each lane to enhance the PCIe
link reliability. Each preset value represents a different combination
of pre-shoot and de-emphasis values. For each data rate, different
registers are defined: for 8.0 GT/s, registers are defined in section
7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
an extra receiver preset hint, requiring 16 bits per lane, while the
remaining data rates use 8 bits per lane.

Based on the number of lanes and the supported data rate, read the
device tree property and stores in the presets structure.

Based upon the lane width and supported data rate update lane
equalization registers.

This patch depends on the this dt binding pull request which got recently
merged: https://github.com/devicetree-org/dt-schema/pull/146

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v5:
- Instead of using of_property_present use return value of
  of_property_read_u8_array to know about property is present or not and
  add a macro for reserved value(Konrad).
- Link to v4: https://lore.kernel.org/r/20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com

Changes in v4:
- use static arrays for storing preset values and use default value 0xff
  to indicate the property is not present (Dimitry & konrad).
- Link to v3: https://lore.kernel.org/r/20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com

Changes in v3:
- In previous series a wrong patch was attached, correct it
- Link to v2: https://lore.kernel.org/r/20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com

Changes in v2:
- Fix the kernel test robot error
- As suggested by konrad use for loop and read "eq-presets-%ugts", (8 << i)
- Link to v1: https://lore.kernel.org/r/20241116-presets-v1-0-878a837a4fee@quicinc.com

---
Krishna Chaitanya Chundru (4):
      arm64: dts: qcom: x1e80100: Add PCIe lane equalization preset properties
      PCI: of: Add API to retrieve equalization presets from device tree
      PCI: dwc: Improve handling of PCIe lane configuration
      PCI: dwc: Add support for configuring lane equalization presets

 arch/arm64/boot/dts/qcom/x1e80100.dtsi            |  8 +++++
 drivers/pci/controller/dwc/pcie-designware-host.c | 44 +++++++++++++++++++++++
 drivers/pci/controller/dwc/pcie-designware.c      | 12 ++++++-
 drivers/pci/controller/dwc/pcie-designware.h      |  4 +++
 drivers/pci/of.c                                  | 43 ++++++++++++++++++++++
 drivers/pci/pci.h                                 | 26 +++++++++++++-
 include/uapi/linux/pci_regs.h                     |  3 ++
 7 files changed, 138 insertions(+), 2 deletions(-)
---
base-commit: 87d6aab2389e5ce0197d8257d5f8ee965a67c4cd
change-id: 20241212-preset_v2-549b7acda9b7

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


