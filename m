Return-Path: <devicetree+bounces-166482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D3AA87771
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 07:39:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1904F3AA7E6
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 05:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A1931A2544;
	Mon, 14 Apr 2025 05:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DjWtnlU0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB7A1401C
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744609170; cv=none; b=AOZZUDZIrvW58CiNSBkaEJ0n3HXV7tDe+MtW/iO9tN3lBW0oGGfikEOJkiQ6fNM4q6OelOySFq1yIwIqxFZ/6y1MNZmrpuy7iwPulsFauShPEugEOiDmgWmhaDjnrboDs/n7tGcAHW5/h2wIltyPkLngSQpUAIWB/D2mfjQLRQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744609170; c=relaxed/simple;
	bh=/+760mFSCqUDEICMonrn2/ZViXzydBURRAKE9RXLKOU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fRmGi0iMv7yY3vSurdXe9A96qakq6Sl+cd3kOFWuVa5JLr6+tXw20adnycb6fbS6GZoNo7UWBKAvAmgV4Om4OxgYOTpfMy/5g5eLJL+5sUyGYygPqi3mV7gPLz4cRbQjCT0glmfsDoVRGZfYCg477q8UIZM8jkuoK5/nzXpmn4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DjWtnlU0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53DNJnwQ001781
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=O7DvdN6lKzkstGBPIiGMNR
	gicLNuAj8nHKTQNXLEwlI=; b=DjWtnlU0k6sl+3V2JtBoCaipwROoa0LlruSqga
	pQo4W8oLc9Qz7qtCVPSlaO6tV3Spk1TSAa4vYuyEq6d/OEwr+YfdPeRQjxaMG2t8
	TAzNnYMyS7Dr2dPEQYNbdp9Dsi270RdF7CZqx+ZFehHAhFhrQlgzRUcZSGWvn+v8
	F8VXqlwy1DgOlSN83Z00byZ3ZuEWRcj9hPcy+GJfj1DI9w5Kf11ZAOPDMnMwx3N3
	g00dYyfVDl91Gbu0qRF9iZtaDYemEft5IAytElLqYOPAdnmzImdNgcGadVfEgTM6
	7AV7k1Hrzgp6QHMLCIkoV3osK6hIHeDf5oi66SeZCTEw3JhA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs13ff5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:26 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-736a7d0b82fso4727660b3a.1
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 22:39:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744609165; x=1745213965;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O7DvdN6lKzkstGBPIiGMNRgicLNuAj8nHKTQNXLEwlI=;
        b=jocNJhSScEWnJjVdkVbY5GwM012wJXLItMM2HEasJkrd/IjU5ZTqfKUTRKlpCHJO57
         tf7O0qWzPaon6iRR7ajx6tBhsDHNFu9wkr/WYxdglzJ0yvW+8HgA77/QPqi64mcbMKTe
         L7/TT2g0Kr7Dk01Zrrk7x0eW122iIAt88o4cnZagzi7g1D7oZaAELG04+OwBMvHt5x+D
         bJN4sW7XKZNzSFJM6fYdXOrJAPkacDBx73K61QqBsI2WQScJYHvQb9fVZqCTdatnedn5
         swmLC0N0uPY2wDC3L3ZnLx+Hehew7XMKefjsD15OYRusCc0+XP/he9EqNXeGHDlfK+S0
         IDXw==
X-Forwarded-Encrypted: i=1; AJvYcCX1LofexUlWXfMRVIF/RM/iQQD+UcSmySzwTy2czk3TSDYlKW6/27oRIS90dTmW28DOOTYWAGzN27nM@vger.kernel.org
X-Gm-Message-State: AOJu0YyBycwL7SzbQhT+m7pkPDLNkoJvA8iTARLVV4Lgp4iFyPCtM2hk
	qD8hNfJWW6ep3J8HeAwEZIMeyOtgyBKvraPMhxPdZThZji7lewVGM/VgcR0lus19QIDFDrocpeC
	BsXOcuo7r6Sgq2LpSZShxyhqEOOmIcv6Pw++DcMfzfCpLLa24oMIPyclX0OJu
X-Gm-Gg: ASbGnctimUCmfz0KIejr+N/yqf/rBhoCuVugLsbbWVh3zrUeE/Os33+ns5ryiU0/76n
	bPalhvEL3EzONghaqmatSLGT9OIH6y5cEfIC9nUF+WBS9X9/wTy6CdVJJkW3UTFG3F+9xiZ3Ejb
	aQi1eAcyPRX1hqE08hVKDW2lnvzuFWiKDOyIKdKm/699Z1BqwRwyDojs95Uo+ZUcnXyKx6qF+a/
	305lD3NaMvOqJMV9+hAuSCm61zVxdOexmGB4Pcn1ZUx/EAW/4adEnG3dEor1yX58ipDZiIsGzn1
	G6gqpBMfUE5fmqst0HUup/JD2DkBqKn/Gy1FgCy6ZL9rnZE=
X-Received: by 2002:a05:6a00:1484:b0:731:737c:3224 with SMTP id d2e1a72fcca58-73bd11fa27dmr14689876b3a.10.1744609165420;
        Sun, 13 Apr 2025 22:39:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFb640B4oos4p3ocUe9+u0fOPIBIyFLBaM60q94oJHuSOl3Pd0nPnEKcEYbSZRRedxDNTO2g==
X-Received: by 2002:a05:6a00:1484:b0:731:737c:3224 with SMTP id d2e1a72fcca58-73bd11fa27dmr14689842b3a.10.1744609164796;
        Sun, 13 Apr 2025 22:39:24 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd23332d2sm5824559b3a.159.2025.04.13.22.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 22:39:24 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v2 0/3] PCI: qcom: Move PERST# GPIO & phy retrieval from
 controller to PCIe bridge node
Date: Mon, 14 Apr 2025 11:09:11 +0530
Message-Id: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH+f/GcC/32M0QqCMBSGX0V23WQ7btO66j3CizmPOUhnm0khv
 ntTCoSgmwPf4f++mQT0FgM5JTPxONlgXR8BDgkxre6vSG0dmQADyTjjdEAfRmqqopCV1IrDkcT
 t4LGxz61zKSO3NozOv7bsxNfvt6A+hYlTRpkoFGKGwrDs7EJI7w99M67r0njW7iZlwPZSw7WEh
 hcyV/BPgr2EEkWtc6GBiV+pXJblDT3YTXoLAQAA
X-Change-ID: 20250101-perst-cb885b5a6129
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744609160; l=2160;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=/+760mFSCqUDEICMonrn2/ZViXzydBURRAKE9RXLKOU=;
 b=LBezZsVzbGh2j4zeHLTmFgFj+VJW7qhNZDUuHDwWaN8Gha+fm2lKEUheY0fKi3+evP7G6V/Dp
 KVQFFQLE+1pBXkg2EFZyYjNVnzmJPS04WtdHg7PkU9vHrvDG9AStcoA
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fc9f8f cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=zkpMToBQJcapbifWyZsA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: WD7X6dlL1JrZwtH65_vS6UzOy4bGc_U5
X-Proofpoint-ORIG-GUID: WD7X6dlL1JrZwtH65_vS6UzOy4bGc_U5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140038

There are many places we agreed to move the wake and perst gpio's
and phy etc to the pcie root port node instead of bridge node[1].

So move the phy, phy-names, wake-gpio's in the root port.
There is already reset-gpio defined for PERST# in pci-bus-common.yaml,
start using that property instead of perst-gpio.

For backward compatibility, not removing any existing properties in the
bridge node.

There are some other properties like num-lanes, max-link-speed which
needs to be moved to the root port nodes, but in this series we are
excluding them for now as this requires more changes in dwc layer and
can complicate the things.

The main intention of this series is to move wake# to the root port node.
After this series we wil come up with a patch which regiters for wake IRQ
from the pcieport driver. The wake IRQ is needed for the endpoint to wakeup
the host from D3cold.

[1] https://lore.kernel.org/linux-pci/20241211192014.GA3302752@bhelgaas/

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v2:
- Remove phy-names property and change the driver, dtsi accordingly (Rob)
- Link to v1: https://lore.kernel.org/r/20250322-perst-v1-0-e5e4da74a204@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      dt-bindings: PCI: qcom: Move phy, wake & reset gpio's to root port
      arm64: qcom: sc7280: Move phy, perst to root port node
      PCI: qcom: Add support for multi-root port

 .../devicetree/bindings/pci/qcom,pcie-common.yaml  |  18 +++
 .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml  |  17 ++-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   5 +-
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi     |   5 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   5 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |   6 +-
 drivers/pci/controller/dwc/pcie-qcom.c             | 149 +++++++++++++++++----
 7 files changed, 168 insertions(+), 37 deletions(-)
---
base-commit: 8ffd015db85fea3e15a77027fda6c02ced4d2444
change-id: 20250101-perst-cb885b5a6129

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


