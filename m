Return-Path: <devicetree+bounces-230598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F63C04534
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 06:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B7F7F4EB564
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 04:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646B226ED2E;
	Fri, 24 Oct 2025 04:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O6Qu7Oev"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34321FC3
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 04:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761279877; cv=none; b=LBlKla/3n4pI8pNdoirD8f9Gzhq8j1XKCZn3wW/8mzdnEKMdDDyCDsd1JCW8rDvzxK0HjTFaC/7sQgdJJmCt+VNWwk7Xjcm+Hy5BwFWOGkmt1RIb0mkyehvgrSCMPndz/8V57hMwL8qtB7pkpNk5dH+JMByWPI4FuAoV5J51oBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761279877; c=relaxed/simple;
	bh=tGAnsxVqZ1qFVesJkjyC9fOf0J+rr570DONtErHUzuQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=G08dHT2bdtzMsj9JMQQqyspnQBk98uiK4Q0gUo21urtY5n6Ah9aQM5y4YBg69OroUM1UElc2X9zfB1WDLAQ5uSPV8US/Lk8F/34OaShe16BqKahypcMS+/AVKc9WzqwJ1Duc8t9GJksI6z3IU7/LkUa5zxCk4qz1goX4t0TPq/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O6Qu7Oev; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3MFnY010330
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 04:24:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=kz1Ixhzrfamiim6k99Hz3J
	JL+7qgj8J0kxsqetjMV1A=; b=O6Qu7OevskHW2JkdvLynQZdMVSR4goEvJQiqsU
	6yN2OXgCcdaPHp6Xxs+JMIdiKtYZY+OudUgWaDxuCG8iV3BaCeQqTydEDrnMR+ea
	FU0pTK0NkyiFeQG8Nd7eX66kVZmv8SI5xP5Daz6yi8TMKlAbkx9oyHk0z3RD8oli
	LlW8m6IT8+TpOAoxYBQkiFjK0/YaIMFwgov8U6oZDiFT/ghAYo+Hj05HAxKmnbAY
	DhKxtP8IKv9ZMq+wLAKw10QpUNakpEGJ04uKfJvM4xQsdPQVIp8gDJCKIrtNK6ij
	ztFzF6jAC5k7nxao2K3Bnh8c8j9DRJFcbpm2C7oInTeh6KYQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524cxy1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 04:24:34 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-290c9724deeso14788795ad.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:24:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761279873; x=1761884673;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kz1Ixhzrfamiim6k99Hz3JJL+7qgj8J0kxsqetjMV1A=;
        b=U3l4JQmf6FLUAUOKSa9ZiEavpnj/EztPvizMsKx5jvsokA6s+JhfprDCOEWS0KWl5U
         qyc82Bnzriz8xf42888lAOzwIFRsfrA1pQ/E8z2hE+TPpJ0U8O/BpqBejYdnsvmKZvo1
         bKo8LPVWJEhAz3rEtyUomcqlWXLGZGJevP5ytbxwV9ImQCAMrpYEATB5qT01DivzO2+S
         ViFrX12XjxnhqEu4z9gPGlzbXaVFymX94hKR+oNMZDQaY+UTInFI+nOwsY1fHdllKH/E
         Rd6BFoZhzf3ZCeHh5FPTO29g3cggvJ1LLvUG9bUz4pvAmWS7J9ivXcptQBUKxgMcgAz8
         bpow==
X-Forwarded-Encrypted: i=1; AJvYcCWoJv49VA2VdWCV4niH9OQZAD325kUw6jB+8Lg3/XsVa38PjITsiCnBfWohByhBB+BRwitgy1tWC22U@vger.kernel.org
X-Gm-Message-State: AOJu0YxGQ6ZyJfzf/JTpj3OmlM00H5KMz+uLUTh4EuIZ6guo07Ims3T0
	8PewZ9y93x/3HfUbjs6YIAvZCl3xy6Nm0We/GtTDicDhgjBdf7Lqbl71qWR/PzvvYjIJyE7wDlR
	gwe4zNXZ2HeecN4iZSI+H7WdcyMC4AuNKisQoATW7Czu1i4EnTxa52+fQJHp6pCRH
X-Gm-Gg: ASbGncvbgnrVsNct7v1+gK4f3kHwHE7eMbPsabW1jGbuWY2ZA7xJwcZEHzLYsb5xf/p
	UJ8/JBunsd2xF0K1o/KtwSRCXBssGbTQIRfiQnjUOPODt5L7vf1jj+nTOSBm2wu278yQcy66RPh
	89JiSUEHy8RlrI4CWfde5gzzs7Lm1zQEKyheao8NVaRrto30PKbN4YuO3lKG9a3P+hlhOhsHgvj
	kVlgALLBXeCWd+kGV/2i4En9J1dbWnxKBAtmech4pljnhXbv/MecmsMTEN23xKxA2F2sa2oGpTH
	6roCx/wPIf5WNuUOu2MxAb97EH5IhSmA4JoWQXVuCfp0DednsZ6pruO5ywB+YQlJAyFZH3sRoOa
	yjqwwKfMlu+42wwq4902MJBI=
X-Received: by 2002:a17:903:2b06:b0:272:f9c3:31fb with SMTP id d9443c01a7336-290cba4dbb5mr344374435ad.58.1761279873245;
        Thu, 23 Oct 2025 21:24:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEw6FT4ACDLV4j5sAg4XbeH0ScrROVimqV0RjPACCbizARSrEerK8lT2E4YB5UHI9gIweZj7A==
X-Received: by 2002:a17:903:2b06:b0:272:f9c3:31fb with SMTP id d9443c01a7336-290cba4dbb5mr344374085ad.58.1761279872753;
        Thu, 23 Oct 2025 21:24:32 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dfd0576sm40259805ad.67.2025.10.23.21.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 21:24:32 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v3 0/4] Add the support for SM8750 Video clock controller
Date: Fri, 24 Oct 2025 09:54:21 +0530
Message-Id: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHX/+mgC/32NXQ6CMBCEr0L22ZL+UAGfvIfhoZZFNhGKXW00h
 LtbOYDJZJJvkplZgTESMpyKFSImYgpzBnMowI9uvqGgPjNoqa1sdCt4amorRaIeg/ciaXE0Sl2
 NqYbatZB7S8SB3vvmpcs8Ej9D/OwXSf/Sf2tZUlRW1c4aKbFS58BcPl7u7sM0ldmg27btC5eLV
 Zm5AAAA
X-Change-ID: 20250829-sm8750-videocc-v2-6311b334f7a9
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX0Q+88VbOD5Gz
 cM6sYJisHwaa+MUdeuzNxO2eNWXJ4URM/ukPqDp0577HiFMjZrXdKhEReFYFhp3Ks2F/C5aYNoA
 wu5KkxJrvIgtQJi9eIwRXDE+ohi4nYY82TzSuFKUieggV5lnm3rzwGusIUUpT9gR9BN7S02BgSl
 7N9nLMeMPIUGk56smfG/wU2JQP/ALd8Cymb5ih6H3s1Mce2+fVX2Yau+40RfqwZ/7IKaymNsKYm
 hnTO2YPIE3llFxFKtKduImvlGE6pRHRqfVn+QyEffTR2kbXNViKNG9rs79Jyy8o74+TCKLRZno4
 46xJngnnpBZ+3jfoQj45qX47DopRQcPZkgXZ39XWM2dGHDPGsKUMDs3BsXwl36RPcRpc7VOfLAM
 iPntZudqyLrKJGqfgJzytswYCbktAg==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68faff82 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=1P1wqcGgztCMLUttUvsA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: sDhlbP4YKc-Hd_vDFylfvR4793kvKkRQ
X-Proofpoint-ORIG-GUID: sDhlbP4YKc-Hd_vDFylfvR4793kvKkRQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

Support the Video clock controller for SM8750 Qualcomm SoC. It includes
the extended logic for branch clocks with mem_ops which requires the
inverted logic.

Changes in v3:
  - simplify the logic for handling branch mem ops for non-invert
    and invert logic [Dmitry]
  - Due to the changes in the branch mem ops the ECPRICC which also
    requires branch mem ops are updated to align to the new code.
  - Update to use new _desc infra and use 'regmap_update_bits' to align for
    better readability [Konrad]
  - Link to v2: https://lore.kernel.org/r/20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com

Changes in v2:
 - Update the commit message for the invert branch mem ops [Dmitry]
 - Update the email to 'oss' and also update copyright.
 - update the RB-by tag from Rob.
 - Link to v1: https://lore.kernel.org/all/20241206-sm8750_videocc-v1-0-5da6e7eea2bd@quicinc.com/

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (4):
      clk: qcom: branch: Extend invert logic for branch2 mem clocks
      clk: qcom: ecpricc-qdu100: Add mem_enable_mask to the clock memory branch
      dt-bindings: clock: qcom: Add SM8750 video clock controller
      clk: qcom: videocc-sm8750: Add video clock controller driver for SM8750

 .../bindings/clock/qcom,sm8450-videocc.yaml        |   5 +-
 drivers/clk/qcom/Kconfig                           |  11 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/clk-branch.c                      |  10 +-
 drivers/clk/qcom/clk-branch.h                      |   4 +
 drivers/clk/qcom/ecpricc-qdu1000.c                 |  30 ++
 drivers/clk/qcom/videocc-sm8750.c                  | 463 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm8750-videocc.h    |  40 ++
 8 files changed, 559 insertions(+), 5 deletions(-)
---
base-commit: 3cace99d63192a7250461b058279a42d91075d0c
change-id: 20250829-sm8750-videocc-v2-6311b334f7a9

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


