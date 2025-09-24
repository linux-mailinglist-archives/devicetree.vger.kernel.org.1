Return-Path: <devicetree+bounces-220909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B2B9C6F1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D5A21BC33FB
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3503288C2D;
	Wed, 24 Sep 2025 23:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hs46tpna"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0F7286D76
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758754984; cv=none; b=ETjqZYZXRynkbk5Qu6A2D4hVI2OSDVrg+6EWAZiWpplEa2O7mB6Rd8JLvYN3PeYcCQ7PkVCWmG3+Ss6JWr1l0KBOoRk+VC1ZTYEo3xGhxgHrM2upT8jngAyKIxzzJjoSlr/T7HYo7dnVrucHvMQDlIv2USF99g1BMQSHCgnlJb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758754984; c=relaxed/simple;
	bh=nRwt3nntfCFNmkA6WdE1w/AtgfXKpttU/xX/NO2gXrE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BvuoifHj7K7rKymuLjwZREoaOnobI30Q0gEF7F8yHclVhgBBo9kQX2lanaCsTtU4q0JMPvfpgazIOuWQ3/1bvYESC/oX314wxFiLTzwAJcpyBqzrqnuGNnkZQCsdcwSFootma6mfI5eghi3RdcbhXGUpbDJbCt2aiui5z302AjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hs46tpna; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCiECN024230
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:03:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EEovNlQ5bCPkreL3sup3qN
	aWRrg/nYl3xLCiUK/1dNU=; b=Hs46tpna14/OGE0V9YcY97RUaYeJLUyDn72uTr
	K7Sz99NcAV3n9R7PTw8T1PcD0CeXeMP5mAFaX+fYdOqVHFDGEbOwg3n48IKK/6+P
	MAokNF9EwG4Bg5lE/r6nYxyl+KXNR9I7BcJChFtWGufjRqGYniw505cO/t7Y4HIb
	1bRuiFyvIV7dgesLaI30y2BdKUEwbptk7QVR1qrPm5gRVLNVjq0YIOHBn1Z5TptV
	AoamAudkg8IoiHUgXQd1XnPc4RIJbc1rwXA17kdcE+yhWGiWzM6ikPw9sNniEVfj
	+HqFCZO3Ma8PnEJg3Z9Bwvjk/m/jnn/ZNsDRHamPqyYKFirg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d0kn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:02:59 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-272b7bdf41fso3366155ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:02:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758754979; x=1759359779;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EEovNlQ5bCPkreL3sup3qNaWRrg/nYl3xLCiUK/1dNU=;
        b=DjwAnWU6UNyzLK1ZxUDD7G4+V/zG8duNM6q51c2zcCV9iUpaS1OE46TyYfQhzoKjl0
         EmNS5CwyseWk26Smn6485mRNuFFl3E+/wR1ro6+DrG4N07S84mOSm+pjQ7rYtgD3bk0q
         eC3GY/nccVh3i09DrE1WXm9+lM3NHrFTks/nNPbUCkIIaVudpA8Z+kvL+sOMa5EhLxBo
         YslxVzMwCrtSry6pNj3xx+C65XUgCXxcuJzD2jGMrL+CWBsAEberYT+5IycYT/aXL0pJ
         4Qt0YWEsPMV8PvytQkrnCJXEQXmG0FPNlOxayCWCoxBkT6aD3nVGn3WUEOk+l/sQU+eP
         LbUw==
X-Forwarded-Encrypted: i=1; AJvYcCW7TBR6g0+3XZcK7kqxl980jQkxcRt+LTXNKwCa7dIBoCyhnD/BwXiIBNRZepAE5xK6dgz0Yl9xscZy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7x0u0us1IH3GJKWli4U4qkZ9p6P9g+fAbi5lafzDi7Tvnj0jZ
	6lsDpIJ02wVde44aOC8UFVVBnpn1zqsmwXMKOnSKNVXJhQ79xTT+rGeggJ5z3YLbijjDN+/kf3w
	9iDdi0/AnxA5vVW6CsTry+KtgY19vFjHz7HkJilH7dZmOdAHbzuaz4oPf/J7Tiylk
X-Gm-Gg: ASbGncvA9MdqZiu8rp+w24EaxzhiB69r2A6So/EWKuIzJaNSERM+BUTd6j/IsD8pNcb
	EeGyZR6ij292c8XrukQ0psItZs3AQdjgkYQoSex/DkAjbmzyYnEsw/9n95WT3ordaL92ml4meE8
	JJGy74Z0MjncTRqD2y8OjCU8xdZEtSdqEIGRkVXkaV17dLQAfXRxuNgT9OKaj6TPe3p4vC4ZekF
	rY/+xAGWMC+bHhoSv8Y4kDXh0rbCgP9ocaHPQK3wIs+x2vt35N7SAqi3pV3Am4nttsGw7og0z3u
	5p7tuqcO9ly3SUOgJpCli8Drl+E+1w5B9IUnj8xRit8EEoD9CC0Bhj+Uof04rQCw58Dzw3d8TQ+
	zuFy7fa8vMJOF/94=
X-Received: by 2002:a17:903:2f86:b0:269:aba0:f095 with SMTP id d9443c01a7336-27ed4a3164cmr13375765ad.35.1758754978507;
        Wed, 24 Sep 2025 16:02:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWqE9Wz0InuUFJtaOLtEVLSMSYQX4VVL8nUER9WUlygGTuSzRC5iSu6J+VMjwX8Wrz59nCxg==
X-Received: by 2002:a17:903:2f86:b0:269:aba0:f095 with SMTP id d9443c01a7336-27ed4a3164cmr13375285ad.35.1758754977922;
        Wed, 24 Sep 2025 16:02:57 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3347472e49esm153255a91.21.2025.09.24.16.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:02:57 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] Add interconnect support for Kaanapali SoC
Date: Wed, 24 Sep 2025 16:02:43 -0700
Message-Id: <20250924-knp-interconnect-v1-0-4c822a72141c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJN41GgC/x3MQQqDQAxA0atI1g04Q6Xaq5QuZtJMDaVRMiIF8
 e7GLt/i/w0qm3CFe7OB8SpVJnWESwM0Jn0zyssNsY1dO4QbfnRG0YWNJlWmBa89RRpCLqXrwbP
 ZuMjvv3w83TlVxmxJaTxH31Q9hn0/AAGLlWt7AAAA
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758754976; l=1027;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=nRwt3nntfCFNmkA6WdE1w/AtgfXKpttU/xX/NO2gXrE=;
 b=EKTtxLaFS4Vb7zFVZ6YgHLsegqHVof070b+u26o6+YUPBWf6OZaQ5doirxHO8+yJ1pnli1Wtn
 sfLmYF8ecc2Cib0kjFMyxMCNLhVG3LN80QJDYYxRNgeTVTtEBRRBqNd
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d478a4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=_cDidGYXCDOhaqYtY5wA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: M-l1Qmras5_ZBAAU62Yp4eGEVdfPogeX
X-Proofpoint-ORIG-GUID: M-l1Qmras5_ZBAAU62Yp4eGEVdfPogeX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfXyOlV3dfQRmNq
 ePcDQvr72pOJSGn7lAw+ItMK703SA24p8sZz9TYAmvJZDD2oKh7toh5uxb/CZPmodEyvkCtV1To
 vPuiW9AjfF3PCpTjKvJ5ddCm8i8mq5x1jR5cTF4UxTvohZzhArm9LmQOBzcVDhIpBmiEmEONrek
 1tY60g3MeUP1htmeZ16hRvObH9LpCT0F9MEs8iUne8B2Z1TPuitRR8xmQxN6ye1/hOXJ7KDrMk0
 NUQPKwdcN/5IuW6fftma1WBomcNkYemvhamZkdlc8LE3Pv/S87Frg0bnysVLRarjuPE6SETbVsl
 a1itUAw6HKa2hvHV3T9Cor8D4mUi8ZtClQ6efd7PjO0R2DueBYbSfnO41ZlyAmLrI3biqcmoYTr
 EoiyebBw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

Add interconnect dt-bindings and driver support for Qualcomm Kaanapali SoC.
This yaml file depend on Kaanapali gcc patch header file:
https://lore.kernel.org/all/20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com/

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Raviteja Laggyshetty (2):
      dt-bindings: interconnect: document the RPMh Network-On-Chip interconnect in Kaanapali SoC
      interconnect: qcom: add Kaanapali interconnect provider driver

 .../bindings/interconnect/qcom,kaanapali-rpmh.yaml |  126 ++
 drivers/interconnect/qcom/Kconfig                  |    9 +
 drivers/interconnect/qcom/Makefile                 |    2 +
 drivers/interconnect/qcom/kaanapali.c              | 1868 ++++++++++++++++++++
 .../dt-bindings/interconnect/qcom,kaanapali-rpmh.h |  149 ++
 5 files changed, 2154 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-interconnect-48c2c91bff58

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


