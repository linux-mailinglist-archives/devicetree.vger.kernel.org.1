Return-Path: <devicetree+bounces-201309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32251B1807E
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 12:59:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53B65546758
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 10:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652C8238C2D;
	Fri,  1 Aug 2025 10:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WERKOMoG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D5C220F25
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754045995; cv=none; b=QLTky7a81XCZJrFCuC0XTAqyxQxhzsmNaMg1FWQOhIC3637YvGDj5PcIh10hP1B6kemW+EhPa/6yP08MSM5Qmx9xIl4mvz00EKnzqp3Dqepx3CplV132ksHCFHHidqm7AdGPFBoE+MA6mbM6AdSYaseeL+vVpG3MQjmuLPuQw3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754045995; c=relaxed/simple;
	bh=/4HcNsYuPuKqKa0GMfjXIWddRLLdPlG956ypUck+HYA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NJrPHamtC3umE/6wph/Bs01EQZkwQtLSS0GaD+jp02sy0aZxzzCMR1qiJR/W7kx8lIUQsPesFQ+n/zxBelC+KUQ3pYrI8R8lHb1FcShbYmx3ClshUmmxgwv/CYhHU5AXCmzlZkMgKObn4k5gEJjXtkS5JZa8PHLLWmqs3idpKkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WERKOMoG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5719B51B005039
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 10:59:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=zTFFAeIFTLiRy/i60mIiB2
	RbpJFjzSiBU0ApmUpYKnQ=; b=WERKOMoG00NbFz9aKmnIpQzad8au6L6g6DMvC9
	4O+f2W/xA50biPAgtzWOT5hVv838s15YjdJH7xPmSpUOiS6/rLrTAFuR1KaiBjxi
	urgdY6IUTYsqofYdzpjaLO8G5yk2JZGtqzWIMtsFnRDB6RFP9v9SyEXNn66SENyx
	eyOrj9wFK8TNyrSypFEMAtg6qjAksDi4dGHkqapiuahJdJbdEsqYD49i5q71bTh9
	YEmGPwaDshASsA8Sth90ZwvLlHj1nWobPRaCCgzlArllndJgSBrX4ZECCYFRTkp7
	p6DLUEodTJCxf+OUOvx0WYXpcDjj4EXksUuhQTcItb1a9Pkw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q86bw8m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 10:59:52 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-31ea10f801aso2663071a91.3
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 03:59:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754045992; x=1754650792;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zTFFAeIFTLiRy/i60mIiB2RbpJFjzSiBU0ApmUpYKnQ=;
        b=d5qZ4Kz+eoCVUwnHVWnX/yKyR5/f0XXFkjucVup9dmHa34tbPGVRB8exEhYAQwQHpi
         ZJW2SY9OXDCzirIAWCSSUIo8lPVGweL/FHVFjhuUdwx+l8yHuW0ToWBAtp+xW4YQGEQ1
         JES7Sxk21INM/tJzCbmY3aoxUUx+E1jDuQZi3BmpcgQj7zxxUKQYk5fXQkiGRJDj9iou
         EKT5l/2dwbsX/DdfXbnV3Haw6B9EkoEe3pgqoyShW8sT74vv9+ExWt7BTBxAbNH7relB
         3fL4v/wac/rF6O1Nx2NkLic28U0efTlkWTAP7Le2YT7lCkJdoS1vQGxKg4AcU9/LrgYD
         Gsig==
X-Forwarded-Encrypted: i=1; AJvYcCWkTX66xHxwBNTPXi3y2WKmVlLQMC/VNA4aitJRc54cTkV0pf8S/+G/+DgF/6O/6zFIpTeQNOfhEAyF@vger.kernel.org
X-Gm-Message-State: AOJu0YwqrDmbJaCt5GNcHDmSE+WyQJjKdR63GLaxG+QnJW920z0SKIj4
	qNv3PGFjqa0uzNQuQv8Gz8KGGQW67yPe6s685Bqpkwp/u6qBhQpVsiawKLQG7iYFX2CN/TKDqr/
	GNVWGeRTmx9u1LttCraHTNAl7Y+aOsmij1OI8Lgg9p4ZRFqXAy+eSqVhz3covQkgq
X-Gm-Gg: ASbGncsb+6A8VfYeDsyjyl3m6lZvIJ2Rrk8AqQ1pBTDTeXtgueCx+sSXQeSB1ESyThx
	F9EOlLcOsqMY8erxllmS98zURpHB/mhgat3PmlOp66cbMNxrGJmBTPSQ5ZGE0npHdXoNhz/4mur
	Ef3NoGKs3cabEsvL6Y6iwq9OjrrlqTX9byy8CO9xzY7VwbFiZ9mCI89Y0q5XbSl7yQNsoXeU9+D
	xwTopaJnD30+MN/T+VeubRrv5txarHRXRCRfBN8FSN3vkMGQq5RPMTZ1lopalnp0h0miT4NRIKz
	ohT9QqPTOsQm1PVymWS4JkTYvTs2uOyuwl29fN71BVR5YqYnolYFdqmZkIJfS43nviQ+SMAOb5Q
	=
X-Received: by 2002:a17:90b:4b83:b0:312:1d2d:18e2 with SMTP id 98e67ed59e1d1-320fbc0cbe3mr3394401a91.20.1754045991692;
        Fri, 01 Aug 2025 03:59:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6bONo1H4JD3Nq/jZ9zCujvL2MwG8Nx+GThjxrvIdSlYPJkARGgDxuNMI80MhgDVXQ2524lA==
X-Received: by 2002:a17:90b:4b83:b0:312:1d2d:18e2 with SMTP id 98e67ed59e1d1-320fbc0cbe3mr3394360a91.20.1754045991123;
        Fri, 01 Aug 2025 03:59:51 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63f0b4aesm7154395a91.26.2025.08.01.03.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 03:59:50 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v4 0/3] PCI: Add support for PCIe WAKE# interrupt
Date: Fri, 01 Aug 2025 16:29:41 +0530
Message-Id: <20250801-wake_irq_support-v4-0-6b6639013a1a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB2ejGgC/3XOwW7CMAwG4FdBOS8ocdOGcOI9EEImcUfEIG3Sh
 k2o774AByatXCz9lvz9vrFE0VNi68WNRco++XApQX0smD3i5ZO4dyUzEFCLCgy/4on2Pvb7NHZ
 diAPXRmto7co6pVg56yK1/vtBbnfPHKkfizy8lkefhhB/HrVZ3rfPBiXk/4YsueAOCKBVKKh1m
 5DSsh/xy4bzeVkGu5sZ/jhy5tMMxRHNAckZXGmUb5zq5TSinnGq4ugD1o2zRhisZ5xpmn4BPQm
 ZClwBAAA=
X-Change-ID: 20250329-wake_irq_support-79772fc8cd44
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Len Brown <lenb@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Danilo Krummrich <dakr@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com, sherry.sun@nxp.com,
        linux-pm@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754045985; l=4504;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=/4HcNsYuPuKqKa0GMfjXIWddRLLdPlG956ypUck+HYA=;
 b=+IKXpiXeiPS33FaFgO8OgLiygKkSZTU3k5pDppPOhq2n37xvJjg2voFkqfd06SghIU2IKSmMJ
 7RtYtHKFAGyBRBeX76k1dIIoOWwrZLa7HJcxzWKuhM3qVym6ACEewFp
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA4MSBTYWx0ZWRfX5216qINFGULL
 zxqqo+iRram9bJCLzuMy2ER42iU2erJzjF/eszwiVUlFOqsMIIDynlZfkPB7aEYUFy/YlSl8+ER
 q0nDr4rHACANJOmOh+t2yNO132BzNWb7fAXeW1nOBLMXGpc1X8uRfywY7DMbPBmomrYmQ/+xpj4
 OMxPIbT8S6l309F68ZMmZNfjYYpiiIB+UzjJDfOQhdS8eIuP8eP1z3YuoNDju/BxWDIfpM+0Ec2
 7y1sbWL79LpjlykqphuDkPQYKHT/JteXE3YV7blgVEdiv5o/2VBMxCAolZGRdZyy9eq+mQ00QUv
 fHuEC0vxn23XZqKAya2d8jupnGBHC8MHne8GDe7WmYkenHi5LQerch17RIlbFReTqWic6sODNjv
 F3gB8qIf5wsWUNro5hEU989yTMoOa1zMvNK+MI29N7vdBKkA9+UHzo3L6CKkAzeMIhELh/aY
X-Authority-Analysis: v=2.4 cv=TqLmhCXh c=1 sm=1 tr=0 ts=688c9e28 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Ikd4Dj_1AAAA:8 a=s8YR1HE3AAAA:8 a=CDPgDjw5ZRyPGz7T9_kA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: ZiPfNLma2YrxSExNvrSwhcKy1asOAxKj
X-Proofpoint-GUID: ZiPfNLma2YrxSExNvrSwhcKy1asOAxKj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_03,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=819 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010081

PCIe WAKE# interrupt is needed for bringing back PCIe device state from
D3cold to D0.

This is pending from long time, there was two attempts done previously to
add WAKE# support[1], [2]. Those series tried to add support for legacy
interrupts along with WAKE#. Legacy interrupts are already available in
the latest kernel and we can ignore them. For the wake IRQ the series is
trying to use interrupts property define in the device tree.

This series is using gpio property instead of interrupts, from
gpio desc driver will allocate the dedicate IRQ.

According to the PCIe specification 6, sec 5.3.3.2, there are two defined
wakeup mechanisms: Beacon and WAKE# for the Link wakeup mechanisms to
provide a means of signaling the platform to re-establish power and
reference clocks to the components within its domain. Adding WAKE#
support in PCI framework.

According to the PCIe specification, multiple WAKE# signals can exist in a
system. In configurations involving a PCIe switch, each downstream port
(DSP) of the switch may be connected to a separate WAKE# line, allowing
each endpoint to signal WAKE# independently. To support this, the WAKE#
should be described in the device tree node of the upstream bridge to which
the endpoint is connected. For example, in a switch-based topology, the
WAKE# GPIO can be defined in the DSP of the switch. In a direct connection
scenario, the WAKE# can be defined in the root port. If all endpoints share
a single WAKE# line, the GPIO should be defined in the root port.

During endpoint probe, the driver searches for the WAKE# in its immediate
upstream bridge. If not found, it continues walking up the hierarchy until
it either finds a WAKE# or reaches the root port. Once found, the driver
registers the wake IRQ in shared mode, as the WAKE# may be shared among
multiple endpoints.

When the IRQ is asserted, the wake handler triggers a pm_runtime_resume().
The PM framework ensures that the parent device is resumed before the
child i.e controller driver which can bring back link to D0.

WAKE# is added in dts schema and merged based on this patch.
https://lore.kernel.org/all/20250515090517.3506772-1-krishna.chundru@oss.qualcomm.com/

[1]: https://lore.kernel.org/all/b2b91240-95fe-145d-502c-d52225497a34@nvidia.com/T/
[2]: https://lore.kernel.org/all/20171226023646.17722-1-jeffy.chen@rock-chips.com/

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v4:
- Move wake from portdrv to core framework to endpoint (Bjorn).
- Added support for multiple WAKE# case (Bjorn). But traverse from
  endpoint upstream port to root port till you get WAKE#. And use
  IRQF_SHARED flag for requesting interrupts.
- Link to v3: https://lore.kernel.org/r/20250605-wake_irq_support-v3-0-7ba56dc909a5@oss.qualcomm.com

Changes in v3:
- Update the commit messages, function names etc as suggested by Mani.
- return wake_irq if returns error (Neil).
- Link to v2: https://lore.kernel.org/r/20250419-wake_irq_support-v2-0-06baed9a87a1@oss.qualcomm.com

Changes in v2:
- Move the wake irq teardown after pcie_port_device_remove
  and move of_pci_setup_wake_irq before pcie_link_rcec (Lukas)
- teardown wake irq in shutdown also.
- Link to v1: https://lore.kernel.org/r/20250401-wake_irq_support-v1-0-d2e22f4a0efd@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      arm64: dts: qcom: sc7280: Add wake GPIO
      PM: sleep: wakeirq: Add support for custom IRQ flags in dedicated wake IRQ setup
      PCI: Add support for PCIe WAKE# interrupt

 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   |  1 +
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  1 +
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       |  1 +
 drivers/base/power/wakeirq.c                   | 43 +++++++++++++++--
 drivers/pci/of.c                               | 66 ++++++++++++++++++++++++++
 drivers/pci/pci-driver.c                       | 10 ++++
 drivers/pci/pci.h                              | 10 ++++
 drivers/pci/probe.c                            |  2 +
 drivers/pci/remove.c                           |  1 +
 include/linux/pci.h                            |  2 +
 include/linux/pm_wakeirq.h                     |  6 +++
 11 files changed, 138 insertions(+), 5 deletions(-)
---
base-commit: 5f10a4bfd256d0ff64ef13baf7af7b1adf00740c
change-id: 20250329-wake_irq_support-79772fc8cd44

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


