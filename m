Return-Path: <devicetree+bounces-207351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A751B2F465
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26C7C3BFFD9
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244912F0666;
	Thu, 21 Aug 2025 09:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OLN+NZp8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886462E62A7
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755769495; cv=none; b=E0n6gTwJKXgFMEhPX90+9axWh5xfmuuuY9/Zk3MpAK42XYfWm4ECFQ1FPh+ChWMuRSlVlr9yHjcYAw2+iiFOn19XHfZNN6I5MUq5DKqD7xpznN4M52yNG37ch0C3oqto7wi9y2ng0vjZzkfcgEyLRb03bZLo1bvxQlXdXcyniZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755769495; c=relaxed/simple;
	bh=QAfC8/GKZlOXKe0IiJ9ssRTYFtHubuURyiBbBpoQUlE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ErYROS/2Mn+ppi3sglqBE0I1dfHgEYywG7Qi9aXWYq5kZrkTP+DoW8VF6FwLO7AUZtwDf3YYVk7DJd2ml3jqCmXH/442jkiI8X98Vfh6krf0sAVxYvDaay1Vy1PY/Ar2jn+1Hx00lBuSivihjR6bp1Lg9vBpqoBMmZWNRnzsf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OLN+NZp8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b7Yi012752
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=QR5+6bjiJwUUppAX6bVNei
	izyY9p2bkovmr5KiOMzjI=; b=OLN+NZp8h+L2NxVQWdIAzOLr3CzcNKJkAuN/aL
	fKBu15qNauNOPeK1GisS8uI9hsqE8tjdG5aN+g3Sx0fKIZNbmRIynjNQNv1m3YjB
	z0b3PvOKOtIg7zP4c1bbp2fdo/7EkF4t3AJJE2zLOQeiI2D60qsml/FnTe3KUleR
	hJciazn16GQ0W1DgUqhOy1XApNQCwG3+sD7UOkJUhaAdZBFtiBbZ1LOSN/GN4+FX
	D7/+NYdsaXZQM3O99rysNLqzWkUzr6/wfUt/yphVfEJTYSBCiB+tiXKIy+1WhgJh
	XBoFHd8fAa+KbvjOHIV+uJJLBqh2Qvp5ZpxgvBNHXmDST7VQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngt8ards-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:52 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244570600a1so10583035ad.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:44:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769491; x=1756374291;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QR5+6bjiJwUUppAX6bVNeiizyY9p2bkovmr5KiOMzjI=;
        b=XbtN4hQ9eYs0UKulPezj96DHpXgzvZbJprht7uvJVnmnTGmsZfyEiMaf3mJrC5n8nw
         e0uW8ILxyp/8zf8vs3Oo5t0iX4QxfZwh7lbEpkukIjr85S7oMoKh1yYmLnhXBlHv4o+T
         SAyYBevAnsaJSqDgD1I4pPPZRB83IfQgx2/nJbn6lRiezxPFWGaCI6SIcljMyKhiA1HM
         5j/6xdRXTa4/5jHRxDXlilJe34kss5oiz3nFv9FZNeosIYYv6O7anCNNqKEwcdCbHOLe
         I2dALlFvw8Cn+0QUNXOnSCV++/Zibv6scl7AgQqZBWQb1Q0SXf1N2MpvXD1fBYWLCh8F
         lQpg==
X-Forwarded-Encrypted: i=1; AJvYcCWfrJr57GAIDxry+ufPTyYzBJkatxZVncIAUZgik5nNs/mzasG+4cwYIh4cILb71R0DLNw6gsVVz2ba@vger.kernel.org
X-Gm-Message-State: AOJu0YzcdFpM2l412WqZKSzRCPzp1jdjRU9UFJRD/l3rBhcoSjt3IUXc
	RwXrRc8xoHoEduspzuQLJwzzuR+Ce+6uwv8MQ1ARiREiM7tAeZSRYQmHrB2zdoIoKd07lI0nxzC
	Y6LF3T17NB38Qb8/8Dr3TuQmhKYuX3dIscvwCBT9V0JY9chdvKNhOFZAhc+KwkB/1
X-Gm-Gg: ASbGncuGKA0IUXANROA7z0wfGGNfr+3e0BQyzGSAf00u4zA40KqqYqBLyBEIFr10CRk
	Bz8w9t94Qm/8LnRIfpzLLAAtFWapFkH4HZe0eMSltPEHlt3SYXnjGxWN1bXSGg1x3EaulczPnGZ
	U7a0BHLQltAwq7fzOldlcq7TAXQiVzSiEZ3UPj7HpVj/fS3s+bZ2hfiPgwxH971uZoq9YeT54JL
	2APolmkrIsleAEJKGbGkhc/0kiU4HzaIB1k+Llp1F+ppVb+QMko0CGkhyNJTnGHqd4dbqf+Fuue
	4Bu6UQF8YwS/aRXFJjty07/ycJfyqjnV1uPzdywTX1SN9xWObPQHeLqOyskfTiaChEz/DjJV4KE
	+4Bc7cCi1JwYWyCo=
X-Received: by 2002:a17:903:1a68:b0:233:d3e7:6fd6 with SMTP id d9443c01a7336-2460248450emr21737855ad.19.1755769491047;
        Thu, 21 Aug 2025 02:44:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMszws1ocRhnckkCp/+DaksXRFNJDySLzb7VqhWeHwwuRPUApCU9iQxTyzeCjI5T8Y7UPNIg==
X-Received: by 2002:a17:903:1a68:b0:233:d3e7:6fd6 with SMTP id d9443c01a7336-2460248450emr21737575ad.19.1755769490594;
        Thu, 21 Aug 2025 02:44:50 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:50 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Subject: [PATCH v2 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
Date: Thu, 21 Aug 2025 02:44:27 -0700
Message-Id: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHvqpmgC/5XMywqDMBCF4VeRrBvJxWtXfY8ixYkTDdRLkyoV8
 d0bpbu2CzcDZ+D7F+LQGnTkHCzE4mSc6Ts/xCkgqim7Gqmp/CaCiZhlPKP1fW5HexuUwZhWEKF
 mUqCQkngyWNTmteeuhd+Ncc/eznt94tv3T2jilNE0B9SphDhR0aV3LnyM5V31bRv6s+U/Nv9hd
 apLJjgHSPVRG0cakxwRBIOjVmDJcp1JBcC+bbGu6xuRjCjhYwEAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=1713;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=QAfC8/GKZlOXKe0IiJ9ssRTYFtHubuURyiBbBpoQUlE=;
 b=hjDHizvCmTAIWNi3O5kn7CLcEJfo89l/8R0D8hRr2p5iAeNmzVL6igb8B1gAi992fModJgPvK
 E2f0M+vVoyMABXxh3EesKONtWGN5B7B3jplFwJKQc8WjnC726wNGKuq
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNCBTYWx0ZWRfX8ytMzxw/o3Ri
 /OvxszzQ3GovYVgmXFrhLKAIbm2SoWOwtWt4vS8xkMbW0lyjXln28OPBv+Ce6A/sv3MlEk2LTPH
 nA+0X+kdY5JFxC3tecMuItzEw16R3gg2ObJdgjotAirh5lnjwMChYArPGD8D40FtAnTVgHlwou9
 YhJLlf9JlB7SaTUKC+3p0NA5kipWVF9d16IQbpXKwEv+/x7zTOdDpklPfn7lxxzs7uItKucpdQN
 DuogkUWg7m50uCQSqcKlOOzB4pCy9Ftz+9df1RpbX3euK9uVB4MzB/qdydbQLWj84BdkFhpFkB8
 srChJuTukhxUverxyBzmFkCFWsyNCh0hjNYjOGQtsy8TbZDYkAvHZOhV67FYf254rruQuA/19Vw
 17YnmeSJiqnZGUa8urGB8nYKG3vj6Q==
X-Authority-Analysis: v=2.4 cv=c/fygR9l c=1 sm=1 tr=0 ts=68a6ea94 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=450xJL59MvcON_dSg4wA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: VU1yxiVZN1lLg96TEba7sJjmzlcF7gCS
X-Proofpoint-ORIG-GUID: VU1yxiVZN1lLg96TEba7sJjmzlcF7gCS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200134

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
Changes in v2:
- Add offsets of PLL and TXRXZ register blocks for v8.50 PHY in Patch[4/4].
- Link to v1: https://lore.kernel.org/r/20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com

---
Prudhvi Yarlagadda (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

 .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
 5 files changed, 56 insertions(+), 1 deletion(-)
---
base-commit: 886e5e7b0432360842303d587bb4a65d10741ae8
change-id: 20250818-glymur_pcie5-db4ef032e233

Best regards,
-- 
Wenbin Yao <wenbin.yao@oss.qualcomm.com>


