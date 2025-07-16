Return-Path: <devicetree+bounces-196932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B64B079A7
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF6C7189BCB1
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 055E2285079;
	Wed, 16 Jul 2025 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TTPZGPzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FD425CC64
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679232; cv=none; b=i71C/CrIHepI9NWzWGmfyu7Pu7x9s0sqWIhMme76Trzk/uoYZS7U88Plfs0aoeJ0JAUKxjI/fNzPejQHPf4EpnnjtzR79a01iMb+4nhDmPf3APJIO46AO245eHQlckgWHBHHc5h051z3H7SYKM0VQAssJvmVFBMuC8+05Y3vt7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679232; c=relaxed/simple;
	bh=BI6qVlMF3xOeCX9WCFqLZh1Xpl2v5uGPz6zfIO0mzlA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nM+LJia87mDcm8InK7zjERp4PLoQfTe557L0dfxHutudmUWsU6twmpoeNA94+WIZaoo8B1v0tdPPgTL142Z18xnb+I6dRC3X8MWRV2B0NyrfRGLIJvMTAjR+UACvKBDoBuL/X5+BKrgwTOOqMnLXSaOaW/BC5fU0G3+5KXpT8tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TTPZGPzJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GEagEE025985
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=+zNBS1PmSdDbKE+Ml6xSeir27yoPaFDEr7o
	sJk1m7ps=; b=TTPZGPzJ2Uql7GDggLh+Hp9ps+qhB1w07cCZiRPLWhO+rZIU9pR
	20Gy7YRexSpfaRnr21+qKkjYcdQTJm3FdQJKUJmGPw+LiUgT9qeRP4ATg8zXrHVH
	62nP8BpRijb1m7YDaDLzWrHwYMiC+iKegA1bk0eNMwbkElM6NkoZdthWNIBqDLkP
	ufzu+nDyscZp4IsC9o7wtlIhNvqAm904l6TtRi5bHWM4Gl6KgKU8Ws8mdXLXnwb6
	6N/FGx1mD3ngoqgipXN8iSbntUmEcC95UDN1CVpxsDhpSMuoqO0F++YHrDa2g3gL
	jCDS0Y6Tehe0xEyQm5yb0lWJ5tfixY2ihlw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfca5pc6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:30 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-748f3d4c7e7so21805b3a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679229; x=1753284029;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+zNBS1PmSdDbKE+Ml6xSeir27yoPaFDEr7osJk1m7ps=;
        b=hkq7SicDtk1ZKtyVjlWZtf5gei4fPoJZwMP+UkmHLk84f9p2oN8UEDHufsDLSOgsQd
         vyRNIBuSYS4UY5t57FfXapMFU3KW3B2fN19plKAzTQh8tSw8uJYBJ/33WB6QpSpskOuZ
         96re5guHH8Upypdz31NPNx2h0NmVMLbI6XiCuhFHcxW+rMJk/v4yQ5G0bKoWOcEGM7bI
         nY22KkTkN7wtQMieXc5/SJZAhcrnWpgRSPpnh4pJrs08sj8gUqmOEkuM92hHQhHVK+JW
         +06TZ/ZaNu6Ul0iwraI1bu8EbnUiIG9hDIc0GSh9VLzXsqoZK9jsTWAviwoO8Hq+cc3e
         /byw==
X-Forwarded-Encrypted: i=1; AJvYcCUD7Ju0cPIqgpyDI9XbNyOlg1W7+GW9/drCViSU8mUVOWzUD0g98dXBeci3d75NMcbWr0TsV5nYRaD5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8oOsqroXmSITOctv8mR3+7C0DhDDomDZeVwCNEWCkIPNGJuSE
	vDBsOIOtiu3oPgYAsdrjcWpVms9Erdc3ctWrN23RaaXWFVT5JuwMEaVh+iJg9YRfi9oCQYMdvtd
	JEAqZpeE4+XP4q2uztkLff8aMv/NypMrlcuRh2cv4cRtGdKNw+YsUXpgWlUDI82rb
X-Gm-Gg: ASbGncujSO+h1uah4eJ9TcuoI00yvEc98PAVB0gufAPeq64QKLVkpYxtOdPObnJyN0u
	WlfP/EPMzMgAOSLi0crrhHb1L7ZJoe9MBZo6ST33QUKiqZ2zMn/+VjVny8uc0RCJcxkx5ZbUvQ1
	7jEmqo+3RnwcenG0A7SD8rbvsgyHPbWwcRpp67DEcVXwV+So2BnQAh7AHSUSa9s8YtTqD15Y9FS
	O9pCavBpl4Qrl8fM+C3Hw7QBbEbdWsTzLIWyTQ1viBvYd3jaZjmrf7ORAGYUlA64ToQDs2Ek+FB
	A8hqNvmczbaI15Imq1NvnJlUtUcRlnJfMx9JH1MCbGNwTkOUK2D1gtBJ34hQ/Qpa4rQJ+5i8o08
	jesJqs9mzXsNdI2PW5kpYEdjlLVCcduH/UTLgZGmBbs2AjttGhhU/M9jsEMfE
X-Received: by 2002:a05:6a21:648a:b0:231:4bbc:ff09 with SMTP id adf61e73a8af0-2381313ca9bmr4639885637.36.1752679228829;
        Wed, 16 Jul 2025 08:20:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKwU6o+tpWlwEXgv5gzHLfLU5Ajgm6I1bD672WOsYEy26mbRK7YPdMqUcJVLXOeBXYIhuUrg==
X-Received: by 2002:a05:6a21:648a:b0:231:4bbc:ff09 with SMTP id adf61e73a8af0-2381313ca9bmr4639840637.36.1752679228388;
        Wed, 16 Jul 2025 08:20:28 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6bd8f8sm13912054a12.38.2025.07.16.08.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:20:28 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, taniya.das@oss.qualcomm.com
Cc: linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] Add support for Clock controllers for Glymur
Date: Wed, 16 Jul 2025 20:50:10 +0530
Message-Id: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOCBTYWx0ZWRfX4tBrIk4RRK23
 ydiHoqDUbssrxlKp9mfcnSgMA/VDeDGWJC7ixIVh3AeEg/jWwlKP9FuyU7rDvhpY8VJ6OCyf3rq
 ZIR8FgbjVEF6SV8act9K+gqhP5APZ8tXclpg7ceem4kaUR6uAOW5m1CyVQuS/WGl9vYf5PuSody
 /hamh1i6pIwKsyDFEkJOvWDmd72QNDcDN75uTYSLB4Q16hqA3JbfnEHFqHs2Q++KtWrTpvUlUzq
 2FyhxTXlsJNXXXqolP9MD0UdmgCAnVTD9bBAs7JBCvhZUWBVeAxdiy1ISiGQiS8ML4/fEgBX/5W
 oFuE0FnBYhhGobc/upJiH2DJtgGSiaSFPZiN+AehwMOqNvSJUYBAPr42bzf1Qa4cDI7/i8wy1C8
 rMu2Bs65vlgnyU46UzARShobh0iY81QyrAASZ+3D1XQRCWp5OxPu393tDQigKD9rTlsWPzUP
X-Proofpoint-GUID: mVk3NjjgZar2JXFiB05h49cXgg8NT3PJ
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=6877c33e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ur2kyboyjIJ0vDSx390A:9
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: mVk3NjjgZar2JXFiB05h49cXgg8NT3PJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=943 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160138

Add support for Global clock controller(GCC), TCSR and the RPMH clock
controller for the Qualcomm Glymur SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (7):
  dt-bindings: clock: qcom-rpmhcc: Add support for Glymur SoCs
  dt-bindings: clock: qcom: Add bindings documentation for the Glymur
    TCSR
  clk: qcom: Add TCSR clock driver for Glymur
  clk: qcom: rpmh: Add support for Glymur rpmh clocks
  clk: qcom: clk-alpha-pll: Add support for Taycan EKO_T PLL
  dt-bindings: clock: qcom: document the Glymur Global Clock Controller
  clk: qcom: gcc: Add support for Global Clock Controller

 .../bindings/clock/qcom,glymur-gcc.yaml       |  122 +
 .../bindings/clock/qcom,rpmhcc.yaml           |    1 +
 .../bindings/clock/qcom,sm8550-tcsr.yaml      |    3 +
 drivers/clk/qcom/Kconfig                      |   18 +
 drivers/clk/qcom/Makefile                     |    2 +
 drivers/clk/qcom/clk-alpha-pll.h              |    6 +
 drivers/clk/qcom/clk-rpmh.c                   |   22 +
 drivers/clk/qcom/gcc-glymur.c                 | 8623 +++++++++++++++++
 drivers/clk/qcom/tcsrcc-glymur.c              |  263 +
 include/dt-bindings/clock/qcom,glymur-gcc.h   |  578 ++
 .../dt-bindings/clock/qcom,glymur-tcsrcc.h    |   24 +
 11 files changed, 9662 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
 create mode 100644 drivers/clk/qcom/gcc-glymur.c
 create mode 100644 drivers/clk/qcom/tcsrcc-glymur.c
 create mode 100644 include/dt-bindings/clock/qcom,glymur-gcc.h
 create mode 100644 include/dt-bindings/clock/qcom,glymur-tcsrcc.h

-- 
2.34.1


