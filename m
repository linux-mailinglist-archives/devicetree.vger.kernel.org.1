Return-Path: <devicetree+bounces-206106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A36D1B2B8B9
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F055567940
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE9B430F814;
	Tue, 19 Aug 2025 05:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TAGhn60E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD2F1D86DC
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755581699; cv=none; b=pspy8AnwGzLthmhT2q0AVVV8GaKMY04E3wUZFw914Pox77vPom6vl2Y4IbQOzKHAzjYyAI51+6xEQeLb/Oagq6uIu/r6ZBH+ha4reVijLGjYrrs4I93CvQoILfAvUvRhzOKrEBpXrM6oYxowhSrZSmS5B9HNFAM0UlE/iIY6UgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755581699; c=relaxed/simple;
	bh=OIx1Iyga7xol/jnwq90PT1IW2G315NN22lx0c4JUQlw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LyDvmAeRWfiMQT1DWpZAlyYgGX4/AU/xBD774+3dje3PrZC2fOP6RxYzjuFRXyMxe6C50EqUaCKzzSNlgY3m6Sx5PwgC5OEoJ6YYyPKp4+FUDlg6kAUo7G8/84EZY1w6lZst9H2hJVIXMneT1phFAc/qd/23UP8oKB3er1dgUX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TAGhn60E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J0Vik0024961
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:34:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=sVZk2H67L/WBxeFp1Wyf1S
	K0wuc0uW8l4sg8p00ph1Q=; b=TAGhn60EuII4yC12Jeu9v8hyXggTV8P0sUwp0I
	vwNBWsdQrwX//qyt532pLcs8pyqFIKJDApkqNY9iMgSuxHu7+8VBxYm9HMOVadwb
	TPZjTbIrr1uD/KqLw5jZ+nwjsLUA89e7M4RjiyZfy963XOkSIp1SnGSGTMTMG6+E
	zkLyyOZV1DxzBilj5JYgHqkae/c6X1UQCSKkXFwaMpZ17T260v497sCo1FzfJot9
	kGnoTpF6282xbaC7iwoXM7+XjQmQDfXztTihJ/Ol6kF0PM/m+mL20/j3VOVzeh+B
	9p4MWQvtE50aEqkZLnLEErlUQ9XwB9o7dQJTdbovILYqpajw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk99q8k1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:34:56 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24458067fdeso59504335ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 22:34:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755581696; x=1756186496;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sVZk2H67L/WBxeFp1Wyf1SK0wuc0uW8l4sg8p00ph1Q=;
        b=tC6x/I4FRy0pxkcLXeEzVYFZXJ8cA/Umbwo3ElGHQeRPvyeDIrDJYgqASyJO+XmV94
         jkXHCYmR0LsTwY0BOaMqS55tT59vYw8Cz5i/4ApjfiC++YLMnkqow3yCWnNgmInVAa4v
         hSjKHsoGzu007YVAcJvJ0FUstW9XzmrQMGt8vOKyRoj3MZku5lJk4KGrWjT9OLIPG28/
         uSCETcvgiRiTzgmvg4YUC6P0AMEQWjxtyfy/4F4iccY9WhP2VUDT5EWWXVObY8NGoIxG
         /2kKsDipOauQBqWmVo0fnAHAVjI+eEbXu9OCeIi0dAMB9DDQAiHs/lHJCGJojcMQpkI6
         wOvg==
X-Forwarded-Encrypted: i=1; AJvYcCVIfLuJhlD4eQEGSSQtcSEViOysnPTijcnCtyxCnjig2Cr95P9gfRpMba6/m+VmnxPoJiVDTafWid4l@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv4BP5DQluimo2EP2rneCBTShym8u4/SZjyYpIXvP90j8H8qAU
	c/kKa4+M9gB64/TRTRHkUXeVORgX8gwFLjQNvVJ6Yp7MIk6GPc0QxHqnDuPZ89WZ8a16/TW4CVy
	iLu7udsNNRkwm62qI/8tGaQprj5ePf3oLvLQNvtI/GHKdPCcwnk7L1kSHTnD7cPUi
X-Gm-Gg: ASbGncu+ZR3CDYGTZxFOGD9IekPXvVQwRVMP2H2oCg/cLBsWS5Oi7RoJY3bR4Otvvvs
	7NXksR7MPGROSanYyIlsYZnJ9CTe4Jn/PPxZj3ka1bs405TdU8OvuIOWmYP6PO/tOUiRO522MA4
	ji3fzGAwHGTbxzR+coQ8gyi//MJWjS7cW2DRZ5lcTlKOQguW1RyGZ5FDF3QIbZD9Rzx99yXBzMc
	dKRSQ6BQshoulE4J0F9oR5z4iYb81IhUA1z/zMEJLjzoV7aDejO7ZIyUqKe3G/nCrUSPCXdgVCB
	Vs5mmt3Wwn5AlIUuJeRUF6EfqN67Noa98R5Fz0t9hTFxsR2T6o9gvmMMULwMdC1S5tZLu8amXn0
	=
X-Received: by 2002:a17:902:e943:b0:243:3c4:ccae with SMTP id d9443c01a7336-245e04daed6mr20517025ad.49.1755581695933;
        Mon, 18 Aug 2025 22:34:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5YDHiAEug4URrgHRdTWxQhKxSO/jr4WB7YjQEHWL09fZuEQUh2DeUWHL+iY+53aJtoaRPHg==
X-Received: by 2002:a17:902:e943:b0:243:3c4:ccae with SMTP id d9443c01a7336-245e04daed6mr20516675ad.49.1755581695476;
        Mon, 18 Aug 2025 22:34:55 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f710sm97004785ad.86.2025.08.18.22.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:34:55 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/3] OPP: Add support to find OPP for a set of keys
Date: Tue, 19 Aug 2025 11:04:41 +0530
Message-Id: <20250819-opp_pcie-v3-0-f8bd7e05ce41@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPIMpGgC/22MQQ6CMBBFr0K6tqRTKAVX3sMYA22RSYTWVhsN4
 e4WNrpgM8mb/PdmEoxHE8gxm4k3EQPaKUFxyIga2ulmKOrEhDMumARJrXNXp9BQ2RRQsY53AAV
 Jc+dNj+8tdb4kHjA8rf9s5QjrdycSgTKqtan6UnAhoTvZEPLHq70rO455OmRtRf7za6j/fJ78l
 BS81E3dVHLHX5blCwDYvZrnAAAA
X-Change-ID: 20250717-opp_pcie-793160b2b113
To: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755581690; l=1992;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=OIx1Iyga7xol/jnwq90PT1IW2G315NN22lx0c4JUQlw=;
 b=W2tUO+yuFOyuQQzlAiU6aTdVmNDccmjQW2ybg2rMLmNVV9fv8BkrkRBJAtL4lSdlXdX/H+XES
 PIOdHES99COBHlKljUzx+qf1rdMrwbc1GXFol29i1HcgS83xSTlSWoN
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: cELcdFpjURcOuInydYq9LZYdUPGhJPy6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0NSBTYWx0ZWRfX2NkR9rJs6pxw
 DYzoGw0dGUhPr/KZpuYaO6Dsuc+NfssRtJbxxLYrOI7aFqTSdoRgfoszCL7nqeFsL/8car6y6LI
 pS8iw4iO4+Z5xHPdJlAd5IS94PqXDwWanSgUEJogV2A54zih7v8hE25wnt+fi0LpEgqy5SU08R4
 V+4BLtzczDxVfKUYy9UbkkdGHlynBD/lYYPjdvtBY8EMKLgQ3GQaaE3TRdpBllf79UAqY9yjBa3
 ByLjeqZ3FOvdCnfT0zkgpvCg+ZovHwBdQRxCXIdoxdvl6cn1tQ41YC4ZlKbr6r+nkBIRKsmdJ38
 DHheSsmHcJ7X0Pf6afQyKvppEAhxMdNwyBXn9x4ahjaOPf4iIw/7HUkJ+pZS1z9jN5jEZbTV436
 owugkMJ3
X-Authority-Analysis: v=2.4 cv=IIMCChvG c=1 sm=1 tr=0 ts=68a40d00 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=76l3OPsZB85xAofE:21 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=RZHP3SvTWnTKgiXxB68A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: cELcdFpjURcOuInydYq9LZYdUPGhJPy6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160045

The existing OPP table in the device tree for PCIe is shared across
different link configurations such as data rates 8GT/s x2 and 16GT/s x1.
These configurations often operate at the same frequency, allowing them
to reuse the same OPP entries. However, 8GT/s and 16 GT/s may have
different characteristics beyond frequency—such as RPMh votes in QCOM
case, which cannot be represented accurately when sharing a single OPP.

In such cases, frequency alone is not sufficient to uniquely identify
an OPP. To support these scenarios, introduce a new API
dev_pm_opp_find_key_exact() that allows OPP lookup for set of keys like
frequency, level & bandwidth.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Changes in v3:
- Always check for frequency match unless user doesn't pass it (Viresh).
- Make dev_pm_opp_key public and let user pass the key (Viresh).
- Include bandwidth as part of dev_pm_opp_key (Viresh).
- Link to v2: https://lore.kernel.org/r/20250818-opp_pcie-v2-0-071524d98967@oss.qualcomm.com

Changes in v2:
- Use opp-level to indentify data rate and use both frequency and level
  to identify the OPP. (Viresh)
- Link to v1: https://lore.kernel.org/r/20250717-opp_pcie-v1-0-dde6f452571b@oss.qualcomm.com

---
Krishna Chaitanya Chundru (3):
      OPP: Add support to find OPP for a set of keys
      arm64: dts: qcom: sm8450: Add opp-level to indicate PCIe data rates
      PCI: qcom: Use frequency and level based OPP lookup

 arch/arm64/boot/dts/qcom/sm8450.dtsi   |  41 +++++++++++---
 drivers/opp/core.c                     | 100 +++++++++++++++++++++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom.c |   6 +-
 include/linux/pm_opp.h                 |  23 ++++++++
 4 files changed, 160 insertions(+), 10 deletions(-)
---
base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
change-id: 20250717-opp_pcie-793160b2b113

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


