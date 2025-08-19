Return-Path: <devicetree+bounces-206263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 246FEB2BE1E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:54:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F00355A14E5
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A53331E11A;
	Tue, 19 Aug 2025 09:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AnVc0skG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D047231CA6A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597168; cv=none; b=tvPEE5dITrsgjcFDdKbhdaJSu1MttfcDow4VH11i1lmgmQeR8sI7Eg4vmCD1Vd+Nj/Vht6hxihMo+2QjYWxbKMENfvxAjbdBLTZALSeqZUwn/lO8YjqWZkYbiggkiKgUwf7RYKNd2SC6e3JpK9ba2U/BTt3lfQI9Wl3S3Jct7qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597168; c=relaxed/simple;
	bh=38N9I0VKimRfRVnSSj6djIRevZawE7ZVJqiqrTU4J9c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EqDPV3X3I3m9jJJTs2MgBgbjHV4nb6NcYRhGOpBp/MDj/uqIuHrKDLm9GtyMTM+xgjz/JgUdFBcsJOIN0B/sgEkCdYqzZ1rFfDN2slGnX5k6IiidDnQYSO1F+bC9sd6dXC6fgn0Xmv+7j0tSCKu6pfgbyu4KznoPijrsY7Iz9fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AnVc0skG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90auC030852
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yMSbPrOON3TNvIQidDDgr1
	8fW3sn3LB1WNCcBukXkTE=; b=AnVc0skGkGbGeM6mkSFhPmkSGEuTKXM48DiEa/
	6gsoXIzhfSHQKOoRiRWgP/l/GAqKitBBsvQKUalksHdShEZs63dYGdeKDVBDRzh8
	AKDvMRCHYkg9MNkZWMVldaWofBvd5Bb7H4aqzctmkBkYE5+nbBvZ/q9+CmZfnd4I
	XCWRsOiuU2MtOO9cqt5m9IjcQzcwEXSG8OB1AHQbqW24Z8ss8Ut+Q7QE/SpzlNbY
	hpbeImAYmUzrk1mDP5mrbH1j0JLIukiXTwP+28l/0vGNVVjC+xIG03reg/TMWuO1
	IB72dV/PKlNk/InFH7ciu46wfuiSnS2Aigu7Mzp+NLpC8ljg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jgxtg96t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:46 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2eac5c63so4458884b3a.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:52:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597165; x=1756201965;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yMSbPrOON3TNvIQidDDgr18fW3sn3LB1WNCcBukXkTE=;
        b=ILz0LsXCq3CgrNgjGLmlMylT84RuT2m3Nnp159mmjfMZA2ZhZH9/675hsNQ3gz2rZo
         uJFXqxAkpxOFoQ74h9TwXT51lXmSvjiFezdX+AyitM9lZTCmWn/D/c3h/GcB0TxbzyMk
         umuGsypey8cZuXPX4vmCBkdafSkSh7JU23h4B819C3x4iP3hYal+F+b3nrI9kFMmElKd
         BZIeMU170/GiPXypT+oHebRMS3mzjvQfiaqZ84C76TKuXBIwwEWWbCqrPDssx/YmGZYI
         lhL8mumhi0OnxDKPW+KGQyEnqZJ5ZpKZawNQbAp9uB1SPY7m7r75JY92EtjhahsAECor
         CJEw==
X-Forwarded-Encrypted: i=1; AJvYcCWgW8QTGAoLrIxKtY8SkeNA5EkRJCSlY4SHvJKkS41w81XFoLeZHkoWnK13jDS4j3miSkJKjBjFxZFl@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn6Cn+1mMFqxElUYjYVAVCXPvwa5oa/M6/FpnSQVnxTsHMBPu6
	FrwjKkIjs73dho32Yom03IkA2NmcVCGOAPpiWCR4a0mq7XKL9EOzll4lVxkwsa9kJY7IP7Izn4u
	GoRpp6QXRPa9+x7oB+UGxt2V/Gc7uzZIR65Mx9qWdRIXKCqE1p4MNU1JHtJvu6DSM
X-Gm-Gg: ASbGncuZtoCNF6ca1MywILXCxA9uQ33xnGdA64rWVOOUr+nODZ60QgKgbp+BYh3bxV2
	rXQ3pByDL3NU1R3umFu63yFLtZQ6XNo7gnM4P5IodbNqav9ME/XHEah+PoHGdMZvQqTerrrOktc
	5QahqGepNWX3o9u3U0gfAjeYrI+6OCxZ2BbnYXoNUWt8EUVX+c0ov2NM3maclHvaxbQwqJKn98i
	NKaSgt7AsgIeMLVz/07P5WBouLreC/8rSXwb1l3m5AcYAJ/Eh5VsWPavLN3xdne6cpwVYPX7tzd
	1cpc+qnmZeZfcXn1hrOT6+xHdANaeSosG/Zejz+OobdRrgVQ4S5Fuhpuaa/MJiHZsvaoi/VKNcZ
	TgCzAeE5EZ4qKAak=
X-Received: by 2002:a05:6a00:1406:b0:76b:d75c:8a76 with SMTP id d2e1a72fcca58-76e80e900f7mr2238854b3a.1.1755597165148;
        Tue, 19 Aug 2025 02:52:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERARc6TEVlJ3blrIMH87ei72Iq1vvtNGAWDumq2BbBlVBab5p3465uV3MClzQxCQhrzchKPA==
X-Received: by 2002:a05:6a00:1406:b0:76b:d75c:8a76 with SMTP id d2e1a72fcca58-76e80e900f7mr2238809b3a.1.1755597164687;
        Tue, 19 Aug 2025 02:52:44 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:44 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Subject: [PATCH 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
Date: Tue, 19 Aug 2025 02:52:04 -0700
Message-Id: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAERJpGgC/5WMywqDMBQFf0WybiQP46Or/keRYuKNBtTYpEpF/
 PdG6a7topsDc2BmRR6cAY/O0YoczMYbOwSgpwipthoawKYOjBhhguQ0x0239JO7jcqAwLVMQBP
 OgHGOgjI60OZ55K5l4Nb4h3XLUZ/p/v4IzRQTnBUSdMalSFVysd7H96nqlO37OMyef7vFF1dnu
 iKMUikz/a8rEg1pASAZkZ9uuW3bC53ppuknAQAA
X-Change-ID: 20250818-glymur_pcie5-db4ef032e233
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=1518;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=38N9I0VKimRfRVnSSj6djIRevZawE7ZVJqiqrTU4J9c=;
 b=02RxM9rKPE1R1Nls2PZIH1ASO0SdWMzgA94+HFc7dUqJpc1XOl66Objos0mlbgQbHDrb9KAmJ
 6FRtmuG8KDeB9tPlMz02LBa2wEqxsntUipQ+k5undh32so5apmj6XXd
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-ORIG-GUID: 5JjB17x5AsDr4ZjzKSLdiqf41pVWvHLB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX9ea+kAuq7Xe4
 VgdcnuC5Bs0QkyxJ+d+7COzB/NV6IjHGhevgKbLh/NaceukMi+To85bmuEnabsBlnIcPgbpYr2Z
 E93gUQxipqdK+5SmDO1z/YS2gO1JQrhzUrzT1Uy4YFhtv2+gIiGiir7EPk55YUTQDG0m4avdosp
 rTGkx74tyvWIT0QydMyT1UV+SmUwbX6l+l/hfOrA5rrDk55Qm/D/aeZ7cuNVRfCIjNoqT31IcYh
 zBab8g8LepSC0rGUQI4xYRbXrlnQpDaP3BkSjMYUGtIzeIhV3bzJ8Ykdrv947YuWnj7z9qbfEhG
 zsigFsTNaW7FY0KLN2GPwqavJ6IsYKtS5UHCamR24AZ1l7gkX+eh3yVdyzD+eZiqgk4FP0M5WS+
 bHy0JdLG
X-Proofpoint-GUID: 5JjB17x5AsDr4ZjzKSLdiqf41pVWvHLB
X-Authority-Analysis: v=2.4 cv=V7B90fni c=1 sm=1 tr=0 ts=68a4496e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=450xJL59MvcON_dSg4wA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 clxscore=1011
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160020

Glymur is the next generation compute SoC of Qualcomm. This patch series
aims to add support for the fifth PCIe instance on it. The fifth PCIe
instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
separate compatible and Patch [2/4] documents controller as a separate
compatible. Patch [3/4] describles the new PCS offsets in a dedicated
header file. Patch [4/4] adds configuration and compatible for PHY.

The device tree changes and whatever driver patches that are not part of
this patch series will be posted separately after official announcement of
the SOC.

Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
Prudhvi Yarlagadda (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

 .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 +++++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 29 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 ++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
 5 files changed, 53 insertions(+), 1 deletion(-)
---
base-commit: 886e5e7b0432360842303d587bb4a65d10741ae8
change-id: 20250818-glymur_pcie5-db4ef032e233

Best regards,
-- 
Wenbin Yao <wenbin.yao@oss.qualcomm.com>


