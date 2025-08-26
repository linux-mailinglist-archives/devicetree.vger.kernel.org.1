Return-Path: <devicetree+bounces-209332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0C3B35A96
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 13:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 551CD1B66C6E
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 11:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F39F199935;
	Tue, 26 Aug 2025 11:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YQbJgUWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0C82206A7
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756206184; cv=none; b=RQFf6Vtw6Ie0vU74p3JMdwtyZ76N4MPz0nIlQWiZ34F/vP06//ia0CQQHNe03+3cFvGE7kjOUPRGsUskoXz+dHm+g9Yd5FQRZPviTzF/yuUsCJTPXmQYbFh7/Xk3OXJ3ZVWDbFZjAQkI7m/exBJ4GF0KkfsUbKUmjP3sXb+PWDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756206184; c=relaxed/simple;
	bh=dTps1W7yFBJgnc5AYKWxbmGHLBztW+e3CUQk4PYJS9c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TIQ4hGWySMdeRI7MAygxEZYcGujnq7ErhtMrFQshtiDyXsE+VBuGwhNKPWn5II90AIuH6aoKRBjRhWLhIVNZlY6I6831o9wrfRA2x/kBYUQQdaHIfIw3gZ0t5j182AL14CF+JmkqE2bN7bMdiZ0mselrJHjydywolpzabLoHnTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YQbJgUWt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q8jMMM027997
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=x9+0v50NQTkfI3P1V23OCP
	NTgsTLPjdF6d/vJu77srg=; b=YQbJgUWtzh9VARKrz6Y2d8IqYx5EfroBLX25cY
	oVV82xflgoLeCUiI0VlKW0KJbTq8GI3ksgpk4ZPbXWMdua+nz9FysRxE8f4pB5QK
	BoGfpEyXt0nS96doNvPficDHoKBnWzzR/v6X1N+NOb1sauJgV2a4D6nzFoHjRhCE
	dp0XSKXlY/IwIseEbe4OyddYVrpqF/HitUgPYSSOFFp0+cwBU/J0beelHo4YM8Gz
	Ea09s9ZnmKN/1MtZyUKPdisI3uFNt9Gs8xN91AN7UGOrPZeyNCIbGSEvrpCNYAvY
	mqOT+jwpStf+5KNoebVEJO8gTtRfI4jNPLtjQk7dwDVei0oQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpetvn4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b471757d82fso4218170a12.3
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 04:03:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756206181; x=1756810981;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9+0v50NQTkfI3P1V23OCPNTgsTLPjdF6d/vJu77srg=;
        b=P4MpGROEaZU5DGNmA/N6IQhFbCsWNfA8ADua1iMEo3a2YBLbTYt9Y+44q07phNxaAq
         kUQ/I9m8VqFumaYZpyIL3fzZ5V72mn6C52OxB/8CBMZHwKFuI/WXaLpQuUiQmskm4ehl
         VvGcJIQJXzkKBQ2zEJAHLJ+eZwJosBHVpuBnPokOzbjpQu9eBaAeFTXWI5gRtibg1+UQ
         VLA2JeC98REKdNMOV3Nz89vNGWwTzu1iDcZklAlI1PuJEwSs5CGeoKZPp7qTb+mxDOHO
         WIpfW9IH0baL+vIxwdQpSOlhwvwHB2+nWzaSK9c8qZYY3+fbuPgt+H56QPywN8GUPcZc
         9Bhg==
X-Forwarded-Encrypted: i=1; AJvYcCX5yNrZVTq1eHe9UpxpQpnZgAKoR0ETdM/EjoKa+KbJWB7Q+KwEKOIcEsh+GGklhaZSFyWwtQ/JT9Yk@vger.kernel.org
X-Gm-Message-State: AOJu0YzG4P30OXvxxTsA3CIZJKVMSH25ycV3iB2/FOXMgMmFdL73xWn4
	jvcQ4WYZVnVNJ4gqjEBVFPdp442LHtHZ2h4UK4sNn9XtwnBwhbGXY+QLJ5sZ33QAPVn3zenDct/
	GXdCO42ERUQNgUCCu61YY3zeqn0jn6neZqyIVbj5JHVnAjGFERjYD6QuGJZOWwd5s
X-Gm-Gg: ASbGncvK9OPpxL1Cvxyol6maQBiihmHZVe71uCpDAm2bmzsTslLPg+6P+dJgCcuOiM8
	Ujr8bP5HszVOgell5EL/6Tv/1R3xOekZ0YPAWCuwmzHAoJ/XMnyvrrLWEyWK20eMO2LBCF3ODM0
	stQQuGrE/iH5gOOBpCCZzMNnTlJ8ARKeeZCHz3zrBu9cxAy5SZgKzNErg46NDcjmel83tHD9sm3
	5chm968e8RlY2RgfLaW9sPbG35EVYHEcp4h4lzf8OaJ8x5ALDAF0xkDgKAk43L+H8bFUOxn6S4H
	6qfP5/cxo03lgUcgRytSGR8iNNrouAFZHqdrBXivVg37/inAADS2L/oRskvTzr5RYfosBW7KGN0
	=
X-Received: by 2002:a17:902:e5c7:b0:240:640a:c576 with SMTP id d9443c01a7336-2462ee02b9bmr194581095ad.15.1756206180767;
        Tue, 26 Aug 2025 04:03:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9KK2j15pPMLTu9NzWYSjjBpeWDIhm+qorXqLMJG7JM0/T+BAcp2bQtDU3K0U3p+/axC0CEw==
X-Received: by 2002:a17:902:e5c7:b0:240:640a:c576 with SMTP id d9443c01a7336-2462ee02b9bmr194580485ad.15.1756206180270;
        Tue, 26 Aug 2025 04:03:00 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688a5e5esm93207955ad.161.2025.08.26.04.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 04:02:59 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/3] arm64: dts: qcom: Add PCIe Support for sm8750
Date: Tue, 26 Aug 2025 16:32:52 +0530
Message-Id: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFyUrWgC/22MQQ6CMBBFr0JmbUlboaAr72FcDKWVRqTYaqMh3
 N2BhTHRzSRv8t+bIJrgTIR9NkEwyUXnB4LtJgPd4XA2zLXEILksec13bMQL9shkiZUWbdtgXQK
 Nx2Cse66h44m4c/Huw2vtJrF8fxJJMM6wsUIXQlEIDz7G/PbAXvvrNacDSynJL1uqjy3Jrgorr
 OKqUlr9sed5fgPes0x74QAAAA==
X-Change-ID: 20250809-pakala-25a7c1ddba85
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756206175; l=2165;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=dTps1W7yFBJgnc5AYKWxbmGHLBztW+e3CUQk4PYJS9c=;
 b=ORqzFVgp5adXJHIasbs9RHwU+iRtAM2wzhkSNTggapOaGM92dybSlm70kFk+mRAXNYgbs2HQc
 wFAt8sJbAseCRHkXVO0dDHAgFAkVcsMb39uenW1ggc6JKPRlsrUj2/T
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: W61EJYa9758fh2Wg_8EyZhh9vwJP23V9
X-Proofpoint-ORIG-GUID: W61EJYa9758fh2Wg_8EyZhh9vwJP23V9
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68ad9466 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=l8mvWsQ0dvX29tmygDoA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX0myo0NdhcHBz
 9/Q/xdq4aR/cDLWmr6pzDhkBB6QbdffFbVOVI+nW3YuDe3HlXgL1aHvVthJhUs9O3wiM+OQZUOr
 gmO/6Hj/TNr8eQl1C2Dmv6g2oFLOuxQZbJKstgMRnsC72dNvm1dw6vzdB3ixaWE17CZMnmvruG6
 N7pm47StN6JaTjscJhhkdxf+SBXiaSZuXN1Uqje7Xw9oxBdIG4fziukUl4nDoBZ5oGpC30SBucg
 0iM9tdDlmcHjEV8B5T+CLacPoqGzp0qOyADwldC6pBxz0GjhT10WOgYzpYUGFexiucg9Uo7j4ZM
 H0OujIvYdLxUb1rcyx8Sjvn7Xo0k9weLUMn5z0ILVgxhoz/yo57sRH+wNgfpTQX6yFroqGqqZR5
 M0iSqSrw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142

Describe PCIe controller and PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

The qcom_pcie_parse_ports() function currently iterates over all available
child nodes of the PCIe controller's device tree node. This includes
unrelated nodes such as OPP (Operating Performance Points) nodes, which do
not contain the expected 'reset' and 'phy' properties. As a result, parsing
fails and the driver falls back to the legacy method of parsing the
controller node directly. However, this fallback also fails when properties
are shifted to the root port, leading to probe failure.

Fix this by restricting the parsing logic to only consider child nodes with
device_type = "pci", which is the expected and required property for PCIe
ports as defined in pci-bus-common.yaml.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v3:
- Use device_type to find pci node or not instead of node name.
- Link to v2: https://lore.kernel.org/r/20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com

Changes in v2:
- Follow the x1e80100.dtsi pcie node description (Konrad).
- define phy & perst, wake in port node as per latest bindings.
- Add check in the driver to parse only pcie child nodes.
- Added acked by tag(Rob).
- Removed dtbinding and phy driver patches as they got applied.
- Link to v1: https://lore.kernel.org/r/20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750 compatible
      arm64: dts: qcom: sm8750: Add PCIe PHY and controller node
      PCI: qcom: Restrict port parsing only to pci child nodes

 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  |   1 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 180 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |   2 +
 3 files changed, 182 insertions(+), 1 deletion(-)
---
base-commit: b6add54ba61890450fa54fd9327d10fdfd653439
change-id: 20250809-pakala-25a7c1ddba85

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


