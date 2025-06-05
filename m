Return-Path: <devicetree+bounces-182938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD86FACE940
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 07:25:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97F31173D26
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 05:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6029D1DF982;
	Thu,  5 Jun 2025 05:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EwJhctS8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70BD1DDC0F
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 05:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749101101; cv=none; b=sw2s5neZECZ1ZfzWDthMmfHXOkQqcYc7xb7Yjfhlv5kiqgEMdAHCRj2TXp3tjK/Mh2XG92xBawgag1Xrvcfcv3P5bj8qmqopN78Ouq2TaSngfL1Z4LZSXFqVwYvoO65VBCoVzzJ8AN3AAC9ikn49jgoxFTRTCZoutZiUk0CkY8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749101101; c=relaxed/simple;
	bh=zxxTXJJZhh65kKXR6vEVPLJAxn7l7xAFnunmCh9UKg8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=k5duAdEChsK8WwQ7Wfnk/22SsK2GRyLwvvFYMWhgiV6G2rHMzWcitgsOffGC6J4c972KvB1X0u3AunJVlaZy1kXozVuMFUoqzStp0t8N6q+1QJ1Ms7ZsySG9sRLn8XV+eI8/SNd3IQEvgWZM5eFP0uKPEMy7uVq/lqZpgdcBfJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EwJhctS8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554HIJlg004213
	for <devicetree@vger.kernel.org>; Thu, 5 Jun 2025 05:24:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=f1j4ZSPrzmBEocor+zp0yy
	po0Ly70nYX+6BlcZmKgAI=; b=EwJhctS8gsAw2d6PuXWC1/APejCBRB5IVGxJLv
	U7tK8jyyK6iFbMqgRfyetsfx2nOpluU13d6mtx8wcVoq/R0qrrhGINaRunE1It1+
	+qJxE0p9KQcOOQhktQtP+I7qCWCJhASyo2HT5JOowG1agw1oAoh1+S21VfMxxfKT
	o7Zg6IKdshPznRmTHg664KfzZdvadEiKHob7aY6wA2LZ+fPLdrE26873HlKcHTwn
	1t8246P4++mINzRAvjXZuuX4yTHtqC9Pri7JYqJXzfnPbEbMMbW/75c2eg34ze5a
	sX9T7q4ruH1NWEK5LWcLDAJcSr2fjuI00uzS2RyRogXw38ZA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8s07p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 05:24:58 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31220ecc586so611566a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 22:24:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749101098; x=1749705898;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f1j4ZSPrzmBEocor+zp0yypo0Ly70nYX+6BlcZmKgAI=;
        b=POx13VG1EqZY1Dk1zNWstjShXCniaJbB1bWGE0L0XtDUZ4UVI/JlwZXKpibOAi+tEU
         alHcOIoee6uSPOu5F1CbGweJ1AIw9dD18+92W/sthb+az0xjwkUVF0fPpItohqwdhc5T
         kkhaYSetsPIWKtJfg5YSSm7D/prywU0Yx2vAu5SKZVao9B7K7rSQ9RglX822IMwxjvvq
         y0RQHegomaMYq2WRSYZnBKIWugh7Zd5V+KQb+yId+aSz8aiGTwh+VT53q2VHCywo5YSy
         5yD0SP3TONcduBt7A4B6itm8E1CytFX3Azg594oX6NeB4uyGPY6LKlt9oerXr+0zqi68
         hG5w==
X-Forwarded-Encrypted: i=1; AJvYcCVv/jzYFXXO9R2hTPaqh6CKplsijnw23xbXI1hqMdXmHvMNAmIbO05p7ZIIxbL24E+pIswJ79eyGi78@vger.kernel.org
X-Gm-Message-State: AOJu0YzC/R/lvzSXWQ1YdekahnBgus+O//1RbpLwWkVBJbjrVdEHyx9x
	AuVj3ytZVJiGB99hJI0VQBX1zUpdt+lgA9W8UNexDrir0DYJih3d+2wE/wqwcbtl7wmcONK08sN
	t30RiKe0MS6j6wTXXgOYVi5BOmI2v7oNL+yrtPkLU8RtGQ4MEnRa76s2xRutUgg3d
X-Gm-Gg: ASbGncvtYMTgf1Yz/bj5MUvAb4gfswh/9mkFSCzAnVlyXvlOlbSRVNdkE6kGjTA/Fu0
	T4+Px3KNMY/YhTkGJfeB11m+CAWkc0qNLiV5vrtFuHBGh0MzyKlEMgr3cmVFcXMjEftS78JhwDE
	m0YAtQn3Kdq6N9Gu6NKv/a/6Tnj7bssg3rHGlbFvgwMSxdtMca1CrWkZ50RVUcTDsCTwFqwsNpg
	C1+OfOUpKiWesztgmE9s/FeBOwjnODAuekZ9DT2kYVqTjmFkfg1DlcxGvrPMkAPHWWdVtVNfYha
	g3JWWBNwaWgViIsSolpyha6iGX5CJwkWJBjgNd4erKqCnGk=
X-Received: by 2002:a17:90b:4fcb:b0:311:f99e:7f4e with SMTP id 98e67ed59e1d1-3130ce68a9bmr9236218a91.16.1749101097916;
        Wed, 04 Jun 2025 22:24:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHmGnhnQm1zpjI2lKVuzNvK9cPm639RcmIk44l1LsUIpI417hltM1yehmbAHOKHA1NS5iamQ==
X-Received: by 2002:a17:90b:4fcb:b0:311:f99e:7f4e with SMTP id 98e67ed59e1d1-3130ce68a9bmr9236172a91.16.1749101097451;
        Wed, 04 Jun 2025 22:24:57 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3132c0ad55csm621815a91.40.2025.06.04.22.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 22:24:56 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/2] PCI: Add support for PCIe wake interrupt
Date: Thu, 05 Jun 2025 10:54:43 +0530
Message-Id: <20250605-wake_irq_support-v3-0-7ba56dc909a5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABsqQWgC/23QQW7DIBAF0KtYrEvEYBPAq96jqqIBxg1qE9tgu
 60i373YWbRSsxnpj8T7Gm4sU4qUWVvdWKIl5thfS6ifKubPeH0jHkPJTAqpRC0t/8R3OsU0nvI
 8DH2auLZay84bH5qGlWdDoi5+7eTL6z0nGuciT/flL9xWOwsC+EApT9w7Y5RTeARp2wU2zmEm7
 vvLJU5tZUyoZUNHS2i7Ggk8WKEItQoatBfGBWcIFNuKzzFPffreTyvW1rzXNaXu3xULcMGDJCm
 7BgV14bnP+TDO+LF1H8rYzUX+ceDBbyyyOOLokIJFoxEeOOu6/gBDuADUeAEAAA==
X-Change-ID: 20250329-wake_irq_support-79772fc8cd44
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Sherry Sun <sherry.sun@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749101092; l=2878;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=zxxTXJJZhh65kKXR6vEVPLJAxn7l7xAFnunmCh9UKg8=;
 b=IZcOgC8nmitlfrmtcZL1Obj1+2m4EqvTV//JU0kriQbXDrs3VebrfZ1/r5+LL/r6/ctoUTIUB
 rDuNJtRzzQ/AzcYH2mQ2Xpy7Lw0FI0ZYVDTRSsOKwOe+Q4nyw0z0GLk
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: xdlQ8p93XzBktnGBAfVYXbAWdbsBA8VW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDA0NSBTYWx0ZWRfX9QB919Sx/zb2
 rdInlXJrMJVnyIKtTi3SC/ZvXbvrLDPTXdS90Ls4sbvuFclximr3R9tyMqJQgg+smfFYvOM0G3z
 OKTfoCyEH7IajBFaqrZKWbBEyhWhRpmKymiNW14650JewvtpM8ZXtW1P67G9wgDTuANUFFRq16K
 cnWOdXVD0UYkJjhTFV+Sy6sqepduZGNcbwhHf6mTA0b6MTcPAqIUy52EgKo6TukJmC5srMd0/oi
 5sLuMBZuWpiBXtb2/0N8P893e6M+TLQD1DvyNvxKM780G3++MG69y33Gte+8bB8GlnSvzncDAE7
 vPoNfw5EjqVjbYuBEujFcNoQgN1ZbYp1cO4Za/KOb/VdzAkZG4n4F63b9w2d7pib6w0MpD20S4W
 Q2Enf6tGZ4ipWC/ZkO8iqXoiT9HN5sDFmh1Tg1PURrLqfpuh9puTTtlIsdn0/qH7xcGKlrrA
X-Authority-Analysis: v=2.4 cv=RdWQC0tv c=1 sm=1 tr=0 ts=68412a2a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Ikd4Dj_1AAAA:8 a=s8YR1HE3AAAA:8 a=l8mvWsQ0dvX29tmygDoA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: xdlQ8p93XzBktnGBAfVYXbAWdbsBA8VW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 spamscore=0 mlxlogscore=552 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506050045

PCIe wake interrupt is needed for bringing back PCIe device state from
D3cold to D0.

This is pending from long time, there was two attempts done previously to
add wake support[1], [2]. Those series tried to add support for legacy
interrupts along with wake. Legacy interrupts are already available in
the latest kernel and we can ignore them. For the wake IRQ the series is
trying to use interrupts property define in the device tree.

This series is using gpio property instead of interrupts, from
gpio desc driver will allocate the dedicate IRQ and initiate the wake
IRQ from the port bus driver instead of pcie framework as adding in the
pcie framework will be applicable to the endpoint devices also. As the
port bus driver is for bridges, portbus driver is correct place to invoke
them.

Add two new functions, of_pci_slot_setup_wake_irq() and
of_pci_slot_teardown_wake_irq(), to manage wake interrupts for PCI devices
using the Device Tree.

The series depend on the following series:
https://lore.kernel.org/all/20250515090517.3506772-1-krishna.chundru@oss.qualcomm.com/

[1]: https://lore.kernel.org/all/b2b91240-95fe-145d-502c-d52225497a34@nvidia.com/T/
[2]: https://lore.kernel.org/all/20171226023646.17722-1-jeffy.chen@rock-chips.com/

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
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
Krishna Chaitanya Chundru (2):
      arm64: dts: qcom: sc7280: Add wake GPIO
      PCI/portdrv: Add support for PCIe wake interrupt

 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   |  1 +
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  1 +
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       |  1 +
 drivers/pci/of.c                               | 67 ++++++++++++++++++++++++++
 drivers/pci/pci.h                              |  6 +++
 drivers/pci/pcie/portdrv.c                     | 12 ++++-
 6 files changed, 87 insertions(+), 1 deletion(-)
---
base-commit: 88d324e69ea9f3ae1c1905ea75d717c08bdb8e15
change-id: 20250329-wake_irq_support-79772fc8cd44
prerequisite-change-id: 20250101-perst-cb885b5a6129:v1
prerequisite-patch-id: 3cff2ef415ec12c8ddb7ce7193035ce546081243
prerequisite-patch-id: 820dbf5dc092c32c8394fbc33f9fe6b8da6e6eab
prerequisite-patch-id: 7f87f54386a87b39ca346b53d3c34ff0d0cb7911

Best regards,
-- 
krishnachaitanya-linux <krishna.chundru@oss.qualcomm.com>


