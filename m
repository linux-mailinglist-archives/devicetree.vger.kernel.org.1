Return-Path: <devicetree+bounces-220991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0246B9CBA3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:57:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0AB81B274CF
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65CA329D289;
	Wed, 24 Sep 2025 23:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VYGsU6/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA9C1D63F3
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758219; cv=none; b=TQTTZ0RYNjkZP+cFdFrAA0Mgbv0rcY6KZi+xqecUk0UVEjB3qPQ8J492t1gjc8loFUpv7QulynXq5sXEGIZO+ntusiZ51ibSJfcI/vzc5B1tkgTP/NLtz+hk/TuKaaq9e+WgRkzTWSNn/Sy6n1RPC/3lpBd6RbXVZhzz7+qEyX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758219; c=relaxed/simple;
	bh=zuun76wqTxfr0E9KMvOfXXE9WAPE5crgdVIf0Pmi2yA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DVRg9I55+0cBrvExFCK3SbVkWz4SKMD+23WitZuvU8L+r1uy8ooCp/BW51T24uBNiBJ6cChp1+XJeiXuR4+GPxzwFUngkHxzvg/EQQ5Tq74ikrngZm1CSXcri8aE7F1D5y4R/Hy2CXuHvRvjduqQiK35/ALnsZANAKsWJDm742k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VYGsU6/H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONaxE2018026
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:56:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=0HNP1gFppPHSf0xqi+qP+S
	k49znPKJdoy6R6/U+ZjdY=; b=VYGsU6/HFqzRsGWtkNv/AU8zPPvoBJdwgerQmD
	k+6h/w6Dg5vjO0QocRdME6RB8oq7dt0nOu2jkihi5eKUExqdInu40wwqrOmnU/Hr
	GcJpfRo4FNSOC2KH3L51FE+ObsWE0qK9qlefKWjr4VRQ3zmB+bO+rrBfqelJOZuC
	VECkrAtMzT9cXrjSW/522DF8N4VV6G9fjC5pxwS2pI+JL8OyyscMmgwVKc4338Y3
	OOHUt9Tm86wd7kY9zekn1NEICcG3fMdXk1MkbYb2hKxXQ/tynhnXIIw9xUDvtpPm
	V2eKaQcQPaEMf9Hx9uvkhCCq+ATaPZG9f/CJ/lZYfcboQuww==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka295-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:56:55 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2697410e7f9so7653205ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:56:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758214; x=1759363014;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0HNP1gFppPHSf0xqi+qP+Sk49znPKJdoy6R6/U+ZjdY=;
        b=YQhoYmF4XRouqImtZnir79cj15xss8sSY0Ta8Da1292VEGTQXHnDBv5aWafAyK++FZ
         H3T9Lu8xQLXo3ZegR4Xg0ki4oX0099OmsKjjX+atV1+P+V8P/TeWnBqs5gFQsmjaf+uT
         z21PAwDu2816KXZgMK1CshL2UuBpNYzlLv1pMWEPE3E8rg+XcBiU8cJty/KG7559Nsew
         UVEGNVHpTkF12/VchPzMqY2mATJduMWPOaA3sO9Cx5A5GltoLUWjEXOZCCq2xEgl9nV6
         +KMcITZgH1af90bSrtGk3Zg1jQFtIkGXAJ6DintfPNTXXIZe2cxuat+bxw6J6kIklagA
         5FcA==
X-Forwarded-Encrypted: i=1; AJvYcCWiSmKAbjh4d+7TKXuKiucM8AovsyiJPP6nqteBuqWY+9oobmJmeL0hT7I/SF7vwmZGSPPhEPPyQJEI@vger.kernel.org
X-Gm-Message-State: AOJu0YxPTLbluj/ib6IZ5DVzfP62PYyIh7KAMM6R4xVllesz++2LLNRO
	y0aqAchi/8GBm9GDR+RWC8XEyGMxGVDcprO27YYA5BH39BO3OEp4gLyz6686HF6HETqvgbGxmHD
	7bcw/fEXtGmiuBMiTf8VUIJExuiiwwx/Ief3HayI8KYo5t/sYQX8JIylf/7tyt7V6
X-Gm-Gg: ASbGncu1XhtAL3wpXwZ1VPhZQXtlan28S1n3UXRgLXJGi6R2MbbsFteboiusxREGM6f
	BNbvppXHW6sqwR4sEFIu9cUHBgSHctAzMHOkerV/El6MKtVMo+Xe1RCqJ4xYUPdKHzB44hCEqpr
	7eENt1v1c5P+U6RxCekYMch7hSXsg0ZFJrXndZXCYS5d0q6TsmKRyG2vH4j9HaEfJYgbTaFAi1u
	ELHffiNkyxEjeM0WfM/al7TjoAEgq/rZCZSGqM8CUUYW8+F65OJPzpEpXtQ6bUcblR0Wo+Alk3M
	W55H5uVcujhWJshCygLGYAwj8QIOYSw+d6OIi0eBJGU2IjTzEzHHtppl/HGSfSYL/0uI4VnFZNd
	Lx113JmnFYTPPeYU=
X-Received: by 2002:a17:902:db01:b0:264:8a8d:92dd with SMTP id d9443c01a7336-27ed49deb24mr18743465ad.20.1758758214132;
        Wed, 24 Sep 2025 16:56:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGuXpQ87PpiUVqxhBpphiYJD8lJPb8xabQqGHfuiSSPYt/ISD0gfkaw01Z386R6Y3IXmgxA7Q==
X-Received: by 2002:a17:902:db01:b0:264:8a8d:92dd with SMTP id d9443c01a7336-27ed49deb24mr18742945ad.20.1758758213684;
        Wed, 24 Sep 2025 16:56:53 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6881fd6sm4557185ad.87.2025.09.24.16.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:56:53 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/9] Add support for Multimedia Clock controllers for
 Kaanapali
Date: Wed, 24 Sep 2025 16:56:41 -0700
Message-Id: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADqF1GgC/y2NQQ6DIBAAv2I4lwTXIOJXGg8LLJVY1IJtmhj/X
 lp7nGQys7NMKVBmfbWzRK+QwzIXqC8VsyPON+LBFWYgQApdd3yaVx6jvU9cewtKSQKPkhV/TeT
 D+9e6DoUNZuIm4WzHbyFi3ij9xUSPZ3ltp32qdokxbH2FBA6EKEPVOuh0Qxa9B+lM4xR5XWuBV
 piWDcfxAXEoDAzAAAAA
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758758212; l=2526;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=zuun76wqTxfr0E9KMvOfXXE9WAPE5crgdVIf0Pmi2yA=;
 b=htJ6K9g7jj5V9bOvCfCGRKnlr3PiOUcrSOdXlT5I0+7V9VD5wCueNm3RniYGdPvwohf1716Fo
 IAKl0lsQs40D9KXhUkLe7pO1vS81ndR/4Py/o8wjsJVE2UJqY/oWjA/
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 8STsxIWI4GRIktbSh0OH-VuyOeNqD91v
X-Proofpoint-ORIG-GUID: 8STsxIWI4GRIktbSh0OH-VuyOeNqD91v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXy7X4qgCvmUWM
 2x2H/J/Wd6Xrj+0ug+FvWOOo+s42dCrw6zyiIUELh5vvWGbLaNIcLuUjOPMfsFA7wIesaCZIWTf
 RDOmJd/QzaadB1XL5D5QNX/S9QbI+yOLKGLV1ckhSJvDpkHn4VGUiDitn1V+bfKKUDp1CckOYNt
 GvtXTnkRe3DNuPyuDO7EhCSEjJJAPXZqNkTXtn87Nf/N1HgJPV3amw6GTMCDDruDIVJfPajebrO
 nmuA1kp+j2tPUPv7Q+UiQYgofeR539FsuZYl4CW9/8ZoMOWXYGBBrh4XW3i1JlHrT+AmEbgfPLZ
 tevcsNd7P9o4kVUQpYp0iAM4I0m5Vg1Tey1J+wbpk8qkqmFD9UHe73+l8H7QJvaIC+m5gEozeqg
 9XV8QCis
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d48547 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=0ZJa7YLzid_87pQeuMgA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

Add support for Display clock controller, Video, Camera and GPU
clock controller for the Qualcomm Kaanapali SoC.

dependency: https://lore.kernel.org/lkml/20250829-sm8750-videocc-v2-v2-1-4517a5300e41@oss.qualcomm.com/
context dependency: https://lore.kernel.org/all/20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com/

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Taniya Das (9):
      dt-bindings: clock: qcom: document Kaanapali DISPCC clock controller
      dt-bindings: clock: sm8450-camcc: Remove sc8280xp camcc to from sm8450 camcc
      dt-bindings: clock: qcom: Add support for CAMCC for Kaanapali
      dt-bindings: clock: qcom: Add Kaanapali video clock controller
      dt-bindings: clock: qcom: document the Kaanapali GPU Clock Controller
      clk: qcom: dispcc: Add support for display clock controller Kaanapali
      clk: qcom: camcc: Add support for camera clock controller for Kaanapali
      clk: qcom: Add support for VideoCC driver for Kaanapali
      drivers: clk: qcom: Add support for GPUCC and GFXCLK for Kaanapali

 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    |   63 +
 .../bindings/clock/qcom,sm8450-camcc.yaml          |    9 +-
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |    2 +
 .../bindings/clock/qcom,sm8450-videocc.yaml        |    3 +
 .../bindings/clock/qcom,sm8550-dispcc.yaml         |    2 +
 drivers/clk/qcom/Kconfig                           |   38 +
 drivers/clk/qcom/Makefile                          |    4 +
 drivers/clk/qcom/cambistmclkcc-kaanapali.c         |  437 ++++
 drivers/clk/qcom/camcc-kaanapali.c                 | 2661 ++++++++++++++++++++
 drivers/clk/qcom/dispcc-kaanapali.c                | 1956 ++++++++++++++
 drivers/clk/qcom/gpucc-kaanapali.c                 |  494 ++++
 drivers/clk/qcom/gxclkctl-kaanapali.c              |   86 +
 drivers/clk/qcom/videocc-kaanapali.c               |  824 ++++++
 .../clock/qcom,kaanapali-cambistmclkcc.h           |   33 +
 include/dt-bindings/clock/qcom,kaanapali-camcc.h   |  147 ++
 include/dt-bindings/clock/qcom,kaanapali-dispcc.h  |  109 +
 include/dt-bindings/clock/qcom,kaanapali-gpucc.h   |   47 +
 .../dt-bindings/clock/qcom,kaanapali-gxclkctl.h    |   12 +
 include/dt-bindings/clock/qcom,kaanapali-videocc.h |   58 +
 19 files changed, 6983 insertions(+), 2 deletions(-)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250918-knp-mmclk-9fc2775e2fa5

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


