Return-Path: <devicetree+bounces-232079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8821CC1404A
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 11:13:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5DE919C0522
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873B7302779;
	Tue, 28 Oct 2025 10:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qyf34VUl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019903002C5
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761646329; cv=none; b=g/c9x4dCkWES+QXOq1ooGq3XvoTb7sXw4uG+SbUprsI+68JqxRLymQbRY7IdAGY8nvjG+AfKqbeSsXftceDXFnnSk0A6OgUesMNuQJpEsZbKFag3nnbA1X4SCP3moEJBKMGrncJcq/lwRXRdoVm3J5HkS+AAnWemHUnChQexjRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761646329; c=relaxed/simple;
	bh=iL7I37fqMtFDT6Am/ovhwJBg4E+9/0gzvyjWcWeJqEs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PRVOOs8HD/Af3Eb1Ms/sc1vw2/kIU1bHRIw0eRUlX0QdkXWZcSkG2oMJe8YR8Kj9EcGhhgu2Rj6q71VW/jaMHteGtdE1ZYC+THHxNWgf03S5BlOcnsjgWnlOF0xxICcGpXMUr40Y/ZPudazHGnd7Aqev0dWKC99iAZNLsEFgR+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qyf34VUl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SA3G0A1238177
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:12:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=buqw48wZ2ixwgWecJ4AHiC
	AXp2L7dg9Fzs85seWPCLc=; b=Qyf34VUlRzbrOyuqJBPX+vxMCe2U3w6+bwcj8F
	Xpi6oYft8Kl2jSEo4N6aoBobt9l2+iwuFUCnZaV+86JRkv3r1vEx2Tsb9ulaAvTy
	FtBq53l139bTy0zL8leRiYs5Cl2uez4iuzej1+5v4xVCijy4JyyTAc8sq7dcpap1
	xU6JX8rHg3VAyY1uhLmbEhncXvQeyTXNEDGhlcghQMFL0XJHNC/N0sY4kb/Ep73z
	seJkANpKt3p41uhrQ9xa8bM9RdhgrZZljvL+Uy8A9uUX9Rq1JKk4Es+FCsN6X2gw
	9kPZp5AB8eTibXPY7SLz95/qAfAN97HFR+Xe31Mdijk1ZL0w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2ur3g0nj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:12:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-294a938fa37so60770635ad.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 03:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761646326; x=1762251126;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=buqw48wZ2ixwgWecJ4AHiCAXp2L7dg9Fzs85seWPCLc=;
        b=FVU0vZHaPiqoxqFoo34Rvb5DYhFfciGhy5/1asOEZEkf6BuWn/L0TR4ixf2FKISn8N
         TLDkifdCGtzsGVfQ5M7UlZwSRQZlFRnxwDRvV9BDIs0iLS/W+MD7RhJTfJNXzp9mM+9y
         xgmZ+JOSWLJZGFBCQcZ8x29/rTN3SHyUfCODZudbLymTdvarelcb9/Y9wL/LUTJf8nji
         JNJ1v0qALUeSPoN4uR7ekY1HuhF5LQShc7MBDctWNqiFqIeDeBnsXiYwefttJcf/zuYp
         43THpc+y/SQ/Z1jg+w+Ivhtuj9bHxhAEruAqnBTgb90bUhg9VHFhpRzQXyywyuni9N8C
         Zpbg==
X-Forwarded-Encrypted: i=1; AJvYcCWo0Q4JqN+7v0yxNm2P8mic6ec1eof2X4RHIh+7VOEbnVAT49Audbh0XmFe7Bi+pgHbkInhaNQfpbu1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1fsiNRerLXuEbqY9nE6lb1CnYV6F2ACG0Uxit6FWTc+f+QT1l
	kDFJHdLOvrFncj3HOhNKP1OM/Xx5Qb8wqhFhexSPFJeoXOdYAYV50eHzOmduZFrSc0oJ+Pug6ot
	JIPUTaZCtimeCCUGMJ4eY6Re6HfqrDfiMX2SSt0nDW7qkTMrThwDsqbF5CzHmf3Rg
X-Gm-Gg: ASbGncu/hX5gPMil+kcK0GV+Xx/dmBJuIIJs12gjxu8ccUF7QQ3z0BaL8+OOExHGK7r
	A21qWAfp4jElFvYG8e0rmQamd48iC697pafixt3T3VuRwdVHLzEIz5eDOE1H2NlJjdH+fOPtqde
	6r17xVCf9eBAYCzMUpCkUMC6NOgNaWJu7P2ggxTFgfLjrO1M3u8wrJgDQko6Oz/rRV+1UwRvCiT
	NzL7qCb+9VNGBDrNLvy5omGB2/K0tjIV8wpksBZw+hw88Sqk9hQD0Nw6IIU2Xqa3dqWLXPml8x6
	7ndAdkJzBXknGefYa1aLllR9HlYlc6OztP2uX0idwuVmTFFrkJpbCTSIEOB1lQibJPiaK3hoPiV
	nV+WJi7evCur20fz10Ho47LE68PFTc3HXCHkpefcHYol8X2Pr7iW0hr3rbsLJOw==
X-Received: by 2002:a17:902:db12:b0:290:9a31:26de with SMTP id d9443c01a7336-294cb525649mr39336085ad.33.1761646325690;
        Tue, 28 Oct 2025 03:12:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEoOZGGOEt0phXm+J2KmSHFAnFwf0oW1ZiPsm8YvD0d0IrmHC4X8XekduC5XQE7VLYGJ5yRMw==
X-Received: by 2002:a17:902:db12:b0:290:9a31:26de with SMTP id d9443c01a7336-294cb525649mr39335755ad.33.1761646325135;
        Tue, 28 Oct 2025 03:12:05 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf423esm110408755ad.19.2025.10.28.03.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 03:12:04 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v4 0/3] coresight: add static TPDM support
Date: Tue, 28 Oct 2025 18:11:39 +0800
Message-Id: <20251028-add_static_tpdm_support-v4-0-84e21b98e727@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANyWAGkC/x3MQQqAIBBA0avErBNqqIyuEiGSU82iEscikO6et
 HyL/xMIBSaBoUgQ6Gbh88hoygLmzR4rKXbZgBW2dYW9ss4ZiTbybKJ3u5HL+zNEVS8dNlr3rSa
 EXPtACz//eZze9wNzZEcsaQAAAA==
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Tao Zhang <tao.zhang@oss.qualcomm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761646319; l=2027;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=iL7I37fqMtFDT6Am/ovhwJBg4E+9/0gzvyjWcWeJqEs=;
 b=ulX3NnWkQGxxcdh2JMfepa/tXj9j4B3EM+LcLNZCzyLWdBBdicfrS/Wg+jQ8HP80LS2HrnvwA
 zd0bCxXxvwmDJ0ZhVSMpPsychpu+sS6VVHx2L8d2IJRfJ6+gP0PE2sn
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA4NSBTYWx0ZWRfX9uk9dIqi2DKi
 0Kd5f98VSBmHYypNgZVd7SG9Hg/6klIqBDlkpmNTScstQH0w9Xu0eUfj9O8mA3LnGm9WMKgjjiq
 iYN0kWAVCtttKd39unr7wI+iMZGaqeLKk51OsKnIwPSwP0PrG9s2SaOVBLcKU1pmtNTDOaGjSzc
 vEKqmrUGx6wzteybWN9fNRGi2fdjNY+OuGyupe3eu2c5rY64kCYNM472J8rZM9hfAHK0aITmP/U
 sNDpWQBbTpL7G19yFioRQ1MKKqC9bHcBahm4kRmzAstFbkHvfguc3dxlTgPMG6D7OazRAvWQxl7
 paGnPnbbx8Zvge/QB/teC3Pe4jEnw2PIzvRHhrLsS0eZofuA+WDeyThJs8BcX5utm9qNNfps0WM
 QqRmcPpIAnNDZquYnAIH9gNHSpwZ2Q==
X-Authority-Analysis: v=2.4 cv=Jub8bc4C c=1 sm=1 tr=0 ts=690096f6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=9tgT5Dm6iABrUsP_WvEA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: oPP9jWR0JuePQ5aGT_M3VB_afrQKx0ih
X-Proofpoint-ORIG-GUID: oPP9jWR0JuePQ5aGT_M3VB_afrQKx0ih
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0
 suspectscore=0 impostorscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280085

The static TPDM function as a dummy source, however, it is essential
to enable the port connected to the TPDA and configure the element size.
Without this, the TPDA cannot correctly receive trace data from the
static TPDM. Since the static TPDM does not require MMIO mapping to
access its registers, a clock controller is not mandatory for its
operation.

Meanwhile, a function has been introduced to determine whether the
current csdev is a static TPDM. This check enables the TPDA device
to correctly read the element size and activate its port accordingly.
Otherwise the TPDA cannot receive the trace data from the TPDM device.

Changes in V4:
1. decouple from tpda driver code.
2. Introduce a new solution to identify static TPDM.
Link to V3 - https://lore.kernel.org/all/20251013-add-static-tpdm-support-v3-0-a720b73e83db@oss.qualcomm.com/

Changes in V3:
1. rebased on next-20251010
Link to V2 - https://lore.kernel.org/all/20250911-add_static_tpdm_support-v2-0-608559d36f74@oss.qualcomm.com/

Changes in V2:
1. Remove the dependency.
2. Collect tags from Rob and Konard for patchset 1 and patchset 3.
Link to V1 - https://lore.kernel.org/all/20250822103008.1029-1-jie.gan@oss.qualcomm.com/

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
Jie Gan (3):
      dt-bindings: arm: document the static TPDM compatible
      coresight: tpdm: add static tpdm support
      arm64: dts: qcom: lemans: enable static TPDM

 .../bindings/arm/qcom,coresight-tpdm.yaml          |  23 ++-
 arch/arm64/boot/dts/qcom/lemans.dtsi               | 105 +++++++++++++
 drivers/hwtracing/coresight/coresight-tpda.c       |   7 -
 drivers/hwtracing/coresight/coresight-tpdm.c       | 174 +++++++++++++++++----
 drivers/hwtracing/coresight/coresight-tpdm.h       |  12 ++
 5 files changed, 279 insertions(+), 42 deletions(-)
---
base-commit: f7d2388eeec24966fc4d5cf32d706f0514f29ac5
change-id: 20251028-add_static_tpdm_support-1f62477857e2

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


