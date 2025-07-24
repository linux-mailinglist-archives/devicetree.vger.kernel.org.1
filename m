Return-Path: <devicetree+bounces-199356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10214B1065C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7D5254219E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D53274FCA;
	Thu, 24 Jul 2025 09:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Czh6Jv/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEAE259CBA
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753349363; cv=none; b=WGdWjYeuEOOYLFk/pt6VF8dqR9tiI/MO7US8g16CI8cHON1viBifVK/VFSDyVkUfgW8rstc/z5krdWgEICSJtNVN4ZYbvWw8e0RpbGri9KvMR9Ae3kpUsen7yJW2lgr31E7uMHvq6CUSWziWdNA8YbJ8MBJoz7oOLeqKugzfuVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753349363; c=relaxed/simple;
	bh=z4XYXGxfPBsun4MslFBva4KC4oRciMbcWsWJLlwAFEM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QmMQNKm7lqot9ECAj0g6mx06RBh5HY+etqBfXBBsv2ezGtBZSdOuM4RANz3D2mtbF3ZAp4+LAKboSeJqg5Hd7phTdUPFO+0FFldG1lDLT4zHFvnaZZEUmIMJDmeDIdvk8yVhfuZpMlrUdY3ASE8QhfJBBqNqkxs3oIJflePFkjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Czh6Jv/K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9RC74028558
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=msStpiEk7pn9fF+TG6lMtb
	YY75N7MqJpIFNps/f3590=; b=Czh6Jv/KBXQZmcZ5s7pBUYdBEcZJi2Us98frrq
	YVr5Jsw3q7SdEK/e2scxXs1zCAyLQdRXtiwaZeiUbc1mIERsiZfGSpHoZ1+DnaVH
	NYyL84LFh/yiCSl+FxrW3KLzDMSgR0qUD5HPGiQHj4Z+1PWJT4arDMs81/AIv8Ab
	om+RagJTOmc0VCB6CJfAM1SnIlFUQs9sJNR82l8PCvaSWHcIy+cu2xHKzCyUp+nx
	qVtulTgits747x3RcanCC2NpnqSr1ry+zc/cD5N5IGv2Vu6+u2bHgDzoohgSJC++
	WfM1V2atqaDKp/JDVyUObd+C1w/sIVNdqgzHclCUCO0FlAQA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1fh5s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2349498f00eso17822365ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:29:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753349359; x=1753954159;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=msStpiEk7pn9fF+TG6lMtbYY75N7MqJpIFNps/f3590=;
        b=S/BhqyToRj0iiIG/vzV/1OrrvJLXlJpAM1ET9hH3iLJimEhtHIXVyozmwGKhOd/mWi
         /K3G3CzHiUR4+u9H+xUHXW66mU2mYm2CWn+GYCrwDL6riI+cvXqh2xtE8k91plqNWYoZ
         jeoNQ0RAM+q/9nLmjgPQqCZLecI3lsGAmm+pGlYQhk65CDBBNJ28iH6uHqUjNXgbOx4k
         T/p5MLbnFk7S/sqvm4nn8vUHMFzIr15SQY/IyvnIpOUplCapRxlRoGEQe+9tOWcxCSL2
         xCz79VrpVskpC0sWFfuRdyyWcwQvmH2ntBCNTLITMKoNPEjw9/pqtGHfQSs1+yL6vuiM
         lCCw==
X-Forwarded-Encrypted: i=1; AJvYcCWibbNW08z2MstrhTccvJbpLsHHLWLVBPMStQYjUML26QDZnr6R9QEJjYFAJTkYon9N4M+8MV/QzMiB@vger.kernel.org
X-Gm-Message-State: AOJu0YzBaNx3yo/kxF4sTFRA2GcmWBTeG5dCeVR1pyZZ81Ahdhicgh0D
	nQdmUPQ2zFTBCfS+j2VJqoDG0Rxwwz6ewcRqXGWTSUp7ucI8AlgB0uaHdjxgJMGMwi2wNO53wWE
	bN41zACSBNHCTDbR6jaTIFufETJYY5y4s+rLRzDHLSShaBFgeyUkfZ1Q2i5hqiSuq
X-Gm-Gg: ASbGncu5MfsM3pa/jG3fk/9UxuZ2lPZ1NUfPUK2Y9LPv6Zt5QNYkpscHXLOvGZz9x8w
	igmN7Elf4qFCw1yAdmBFgjKBv6a+DjU/iqTsAW7kDLWuPmt7Ikn7FSq5r5YMSrSBrdPBZfxOyad
	FE8USXMGgvxrE+IvhhYaHIKnvUh7uWOhHymX4Dq5efl0VGJ2oO4wtmPDejLesdBrZvW+0B1IEnM
	jvSObjEGRd0KXIt/HxNI1fF+0455ehNdGlfkmweBKnch/XrtCBkVcjXb+IX2/muxaovM6RxC4Lb
	JmvAvUbMW8nCLkASZqUdUMfSEmhaAW+lVQKu+dUTDo10FsayVwtFjaqu/vgDlQw6
X-Received: by 2002:a17:902:e84a:b0:234:986c:66cf with SMTP id d9443c01a7336-23fa5d33199mr20503505ad.16.1753349359061;
        Thu, 24 Jul 2025 02:29:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHprT8jlcs812l9EWL69WuM6Bat9XcczDUKk8DFEqsO2Jwgflpk1e3HkcrmWIK2ErGLOwPA0g==
X-Received: by 2002:a17:902:e84a:b0:234:986c:66cf with SMTP id d9443c01a7336-23fa5d33199mr20503125ad.16.1753349358638;
        Thu, 24 Jul 2025 02:29:18 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa475f8a0sm11276505ad.24.2025.07.24.02.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 02:29:18 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH v2 0/7] Add support for Clock controllers for Glymur
Date: Thu, 24 Jul 2025 14:59:08 +0530
Message-Id: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOT8gWgC/x3M0QqDMAxA0V+RPK/QBiWwXxGRETMX1rUjnaKI/
 27Z43m494AiplLg3hxgsmrRnCrw1gC/HmkWp1M1oMfOE7ZujvtnsZFj5vfIOf0sxyhWHKEPIbT
 EHRHU/Gvy1O2/7ofzvADMqGmuagAAAA==
X-Change-ID: 20250724-glymur_clock_controllers-72011147c577
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: 9EM7aoPfzpyhYQXkXuKuay1xhw1_wEQW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA2OCBTYWx0ZWRfXzhPNVx2JUgSk
 ZOCRdDOImNRxc+miITLy49ols3H0CCP173A+KUIfjrfY6FQ0trpBLVoJ/rtyVLbyeNvMdmVC6+D
 w/OVyHjJ1xe51UoP6YZXQrlnFihhnliBFawNcJV/suK7VtcyVAfUQmUk75DtL9Bzb8ysr0tdt5/
 cCZ3exQ0brEzAlwoWMSs6V0X9fgmRhiiEcmNVrt4yYtiD31CmCEEccgUpA2EI1ZwAMZe3oUdprq
 Htmr1M70+2mKNLFZ9rMH0YRAYCj+cPOL4PYib0pCakbkieV9hCCltCvkueFi16FFMkBkkRjwNy9
 l3sktxY1KKEBuELUhQEAY32+LJXC57s8sZg7Rq2M/duFR0rMt0vbA+IwlRbi3G4C0bwNc2qvI7a
 YAY0bcYj/g7L4MT0cLN3YyDPLwCScg9Ue7/BHa/ll1emh6eIgkRAiZ092zzIng41QmdzCgTv
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=6881fcf0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=qUAPAiL5QJq3HUhlMeYA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 9EM7aoPfzpyhYQXkXuKuay1xhw1_wEQW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240068

Glymur is the next gen compute SoC.

Add support for Global clock controller(GCC), TCSR and the RPMH clock
controller for the Qualcomm Glymur SoC.

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
base-commit: 9ee814bd78e315e4551223ca7548dd3f6bdcf1ae
change-id: 20250724-glymur_clock_controllers-72011147c577

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


