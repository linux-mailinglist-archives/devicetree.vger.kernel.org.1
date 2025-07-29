Return-Path: <devicetree+bounces-200368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9144AB147B5
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 07:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC80918940DE
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 05:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E482367DC;
	Tue, 29 Jul 2025 05:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G04He+T7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E42723535A
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753767768; cv=none; b=sm+PBSB6XjxcTvzVlQth4NOR9VpjPskCr5rN7fuT2/9M+8yEI2Q6O4aDUyhqmwSf7YGp4qpT3dLHK2L/VnH65sdlYD7JNqs2tAmP/Q5i5xjvNZtXDQNCku6eOO29njcQBvTWA22SUEfX1WWTR2ZkBebroIdlgrpwL5g0K+yUTQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753767768; c=relaxed/simple;
	bh=/IujoMCgpHvB5od3UwUdgqmMRDG+mqj8IIvbVLFN+PE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nBemlwRL0ReDzE5UajFp11JvY+ES009Ei7zxTt4KqIA8inFzzvHOAU1mmCRtMNi1gHYK3qKbQU5SM+PayknE1JH0Nt9SzqkBm71fN+j/lYo7AjebTAAbp2AmmeUXDRGwWa08NJIFYYwLKBXwHFIWamjYCpI+D4Jy0aJzSZtsh0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G04He+T7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SKx06i013440
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=AG7NaHq5WQUEvViAJgTGG3
	xYv6ymQm/8kzXY4UjKG0w=; b=G04He+T7hpAGG7q/AQHRPuvb6y7OFZwR6wJm17
	5zKIzsu9VuVfVNVOnM0p4gEi5Vcb/jrioHgxNcdrO7UTlZbHlZ9pBVI3NiDRu2hm
	hW5qOD/wq8Ss78ljPUIYXz6+vWg9Um9vuRaCukxzKXdBDtc2ixl/VPRxVQd2LKIn
	y6zY0D9s1GfNViqFvMY/jFZgwQQiNtbo1uQesFQa1B6wzUhVluvRApZxYBpsh/8r
	gGskBwjilKHnfm/DnsAujxsrK2mGsX1Se9ZL8EhBZ8ebhMo1vuxaCvFqkkM1ZV1r
	dohzlexT+DvJy4ojKU+N3N3Gz2W1iWenClDss6gh4jnLMtXg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q3xpvj6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:45 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b31f112c90aso564094a12.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 22:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753767764; x=1754372564;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AG7NaHq5WQUEvViAJgTGG3xYv6ymQm/8kzXY4UjKG0w=;
        b=VseOKHTH3yTIodNX3iKImfx0tLFcXNSj9PgHf/lmd1oKj5BfLRreGnQClU0bBUoO4q
         jFDeeKAeXFyDvCYIsav1zO/QRCspttgtS4eUbIrrmLBU1MBr9PUqZcfMNQ2lDqZzORZT
         YbeB85dWl8cz7hb+fnzsxa+ZBu9yZViVE9IIBviTguqJOEKl8oelG2SWitWffroSoSpl
         0LYilBjdu6+5+LDOWgZPwJtBcvMfrFgkURUsXv12o2+M2bifZrZ5ObGzOWiRdPCk3czW
         NvEHdAGU9BpAJZaC+5IhRq+a68mL7rCnI5p0Y1TX5BCe+HmrU13Nwv3TkpCh7vjJpzUB
         wAfA==
X-Forwarded-Encrypted: i=1; AJvYcCWotQnqX6Kvl0FTSbGQo3So1yNtpgmKgvI+Hw3TOp83gSA20TNnMc7rTncYUPqDHtGzwzNEd4oWwsm1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6iC38ntefgab+iwCSlbRTnlpecjuis/t825nMsAB6mB3+IQbL
	ykGDzhXxLk3X36IKlZb1rhhhn7H4NLgLlhsYPS0FIyWF/H47WtRZ3HNcbzSjFX+tE1NzuD+b0iS
	tpLzU+MBZNbF1N1SwUmMlDWZ7AuwtraG6oG7Z+88IMXpJYVsyTfJeQ3hNHLNQM0yf
X-Gm-Gg: ASbGncuXp0CJ21na1nGX3Th0wFSWzuvSXLhiqe1DJf9lY+OG0WsHkhwaPSZ/MWZ4w8e
	/CW1c0/QKG46zUlv9LBdPIlzsw40Xg8Za3rgrEohgrOHzoIxPUdOE69yzia39kwTAcDN3loXMg8
	B8uM6crh6CRd2BhHHvr1R4IMfw/apWMHBzLIB8SPHNmDNEyL1lnQLyiy4vOT4YpdmgdSb+EQtFx
	wRgoJA8jDoKi+dsRIPBITeX5mLyT3I7sYPDEFR/s8jDdLjzNXWDD+yNPTaFCAeeo1zMxhxaLtxB
	cTwNncuVxRKUHa2x0Gzt1e6QVvAA5DLEu4/Z/fsnIB3YktNZIgqXaLb4bezAexJj
X-Received: by 2002:a17:903:8cd:b0:240:3f43:260 with SMTP id d9443c01a7336-24063d89224mr31955875ad.17.1753767764423;
        Mon, 28 Jul 2025 22:42:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOD25qBKkceay3LVmkyVdEy2O/b8ns9oFNIofVIFjvfbriSkPvJc5DfOeOeU5vFDPmcuc+QQ==
X-Received: by 2002:a17:903:8cd:b0:240:3f43:260 with SMTP id d9443c01a7336-24063d89224mr31955495ad.17.1753767763930;
        Mon, 28 Jul 2025 22:42:43 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fe9b67485sm54505235ad.47.2025.07.28.22.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 22:42:43 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v3 0/7] Add support for Clock controllers for Glymur
Date: Tue, 29 Jul 2025 11:12:34 +0530
Message-Id: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEpfiGgC/6XQwW7CMAwG4FdBOS8odtOGctp7IA7BddtIlHYJV
 CDUd8dFm4TEBoddYv2R8tnOVSWOgZNaL64q8hhS6A8Sso+FotYfGtahkqzQYG4cgG72l+4UdUO
 kj5SilDh0rRTrye2Qy6IgUPJ8iFyH853ebCW3IR37eLl3GmG+/UHxb3QEbTSjNyjyqib72ae0/
 Dr5PfVdt5RjbvXt2DdOTjWbzFd56av/OK4AxzvH1larZ2fedcTH/V55KJ4vrQcgC1Twi7kwe+M
 4ln8iQEPO/TLXNE03UXS2Pu8BAAA=
X-Change-ID: 20250711-glymur-gcc-tcsrcc-rpmhcc-4ac7b2e966c1
To: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=JovxrN4C c=1 sm=1 tr=0 ts=68885f55 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=QUl-1nhAZW_gLhHCYq4A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: Ra_bGvx08E3WyUqi1EtEgEeoLnGNmaRG
X-Proofpoint-GUID: Ra_bGvx08E3WyUqi1EtEgEeoLnGNmaRG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA0MSBTYWx0ZWRfX8p5/9ISUNUOw
 3bRXcK61jTQ4r8ljGD70Ef/Btx6/xOLsDE1qmz28l6tPMHySgtaKFn6Fhp62b54Y1D6vx01V1cp
 BsFMKQMLITsm41BluSZ8HlL7iVnsjGrUgAmtDsFAiINe/TY89YgLKyUADZleQ1IUfvcFg+j3WMk
 VNqas1zl1FGy9TJakyvM8T+HF+pzd35qS5LX8WBE589YS1XVWiDjevvl5QbM7VhCR4Q2rW2LdNx
 FuWOrJuRohUsh3o50o8wYHBL6DvABz5UQFCAnRTkRuu7pJtA5hyXXjuNsDDsoiO/DTTP2rDDTKp
 sLw8izK2g5k10DgnYQ1BLDLMAtwk6ha7jnkFC9yBKRDcMx2QVUpojMkoYgnN21pUNC9ic3PQdy3
 gJQZvo7chOtBVJVgy2vKw5nDapEw/z6lqHMTRHOT0YdCGXGqvosZ02SsXBXY3a8h16Xvtbau
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_01,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxlogscore=999
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290041

Add support for Global clock controller(GCC), TCSR and the RPMH clock
controller for the Qualcomm Glymur SoC.

Changes in v3:
- Update the commit message for all the dt-bindings [Krzysztof]
- Update the commit message as required.
- Link to v2: https://lore.kernel.org/r/20250723-glymur-gcc-tcsrcc-rpmhcc-v2-0-7ea02c120c77@oss.qualcomm.com

Changes in v2:
- Drop second/last, redundant "bindings" in TCSR and also align the
  filename [Krzysztof]
- Update the year to the copyright [Krzysztof]
- Align to the new Kconfig name CLK_GLYMUR_GCC/TCSR [Abel, Bjorn]
- Use qcom_cc_probe() for tcsrcc [Dmitry]
- Add RB tag from [Dmitry] to patch #5
- Link to v-1: https://lore.kernel.org/r/20250714-glymur-gcc-tcsrcc-rpmhcc-v1-0-7617eb7e44d8@oss.qualcomm.com

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (7):
      dt-bindings: clock: qcom-rpmhcc: Add support for Glymur SoCs
      dt-bindings: clock: qcom: Document the Glymur TCSR Clock Controller
      clk: qcom: Add TCSR clock driver for Glymur
      clk: qcom: rpmh: Add support for Glymur rpmh clocks
      clk: qcom: clk-alpha-pll: Add support for Taycan EKO_T PLL
      dt-bindings: clock: qcom: document the Glymur Global Clock Controller
      clk: qcom: gcc: Add support for Global Clock Controller

 .../devicetree/bindings/clock/qcom,glymur-gcc.yaml |  122 +
 .../devicetree/bindings/clock/qcom,rpmhcc.yaml     |    1 +
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |    3 +
 drivers/clk/qcom/Kconfig                           |   17 +
 drivers/clk/qcom/Makefile                          |    2 +
 drivers/clk/qcom/clk-alpha-pll.h                   |    6 +
 drivers/clk/qcom/clk-rpmh.c                        |   22 +
 drivers/clk/qcom/gcc-glymur.c                      | 8623 ++++++++++++++++++++
 drivers/clk/qcom/tcsrcc-glymur.c                   |  257 +
 include/dt-bindings/clock/qcom,glymur-gcc.h        |  578 ++
 include/dt-bindings/clock/qcom,glymur-tcsr.h       |   24 +
 11 files changed, 9655 insertions(+)
---
base-commit: 835244aba90de290b4b0b1fa92b6734f3ee7b3d9
change-id: 20250711-glymur-gcc-tcsrcc-rpmhcc-4ac7b2e966c1

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


