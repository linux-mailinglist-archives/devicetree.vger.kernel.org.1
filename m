Return-Path: <devicetree+bounces-215849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00294B52D64
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A93D83BE65A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7172EA48B;
	Thu, 11 Sep 2025 09:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cx5gELQa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4752EA147
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757583449; cv=none; b=DxCpxkh57jgPponvygpwi2Ibir3unFYyGmx7iH84a8Vvkpfw5yQZfkQ8TxYaXcOcbbkdOGxZ8MLxT8RFBg09/RFD5OzcirvOrl+KGM5NhaZU7wSlfvgDqzDgi7pyfeqoWMWXDHhDi50mdauNrVyvpt/VnAlooYiwlkBj8JJFeug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757583449; c=relaxed/simple;
	bh=1KctSP7tT4hdSPnIjjOWWclG2Dc6KV/r5m/+90egGy0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TBS1Bm6O1pLfTVKDM1C6sm1QgrBpUGVIZijuFAqg9Vm/14bcuSayfjC+NH2y23DzKxrFzjEx6UVcJHaxj9ku2s6Hlv4jRWMZRTja+Pzvy++OE2jthvCT4qSlNU8KFJsr3UBDw8+rmNHLUbgVugIvL10TnrRvilHI1isoTq8JQSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cx5gELQa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2IUxF008167
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=WTsuPr0C1+tfJ00SepcUle
	p/Wkf9W5RYeWTkYV6Ftlg=; b=cx5gELQaK/mRvLGVN/wca+lSeaEGbg9kIcxqlM
	eRgIDd2b9Aj45goaTK+OyB/pUnfM4FR/M/hhlBYCzdri8T+hQJbWoTrqCyyKeosH
	vvt+lKppo3os/vmZgekYjI1BjU/dS3+i7T6aUr1DQDHdBG8JXjgy5V+BvqAk0r7B
	Yqq3/CCy/WycPEzRwnxDsSQxLk20QI8xzLnjg2I/pqrU9yeVwEhoQC+fxJhzWuuD
	sM2CDM9eInTlJnEEbFhNPbEc1nvrtkfyHL1ASHPpILc8ddxXF26gZtZ+hAAujEZt
	RBMgMcnVZ61MICz66AIZlWdS2OpsqBJS1Ufu1ksfWG9KcE9w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapqcxb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:26 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7725a76dcb4so1085722b3a.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 02:37:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757583445; x=1758188245;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WTsuPr0C1+tfJ00SepcUlep/Wkf9W5RYeWTkYV6Ftlg=;
        b=w9sT4nCCQPAUdy6NTGpDSSk1QTKsU67faGcKtF/WC8LMVkzmUdO7BoC2kuZsh9jDvq
         P59+sul6ucsrlIPE/oSHe1+oi2y0kUn02lBawl8db7eAR3tslb3wiyBzIvo3QR5U7aV0
         eQl9uqdLS42hqY+OQmSEOlXFhl3kWurDPkC7QmmrELQTBjDwRp6Tb1G98CCe6WNt2SbK
         FP1Enb2kTM4E5cg45daMDuzhcDiJ5RyrYfKgYzkK9FLtxf+22hKhk2fc9/MNJHnIKefo
         lqF8BDRGzZ7JcgCOHpAr28d0YxYzMyD9geBbe41VSBiFb1JqAbnjnnyx0YkJDRcgVuIx
         jK7g==
X-Forwarded-Encrypted: i=1; AJvYcCVqWzEal2AZTdJCGVAfNm0j1n1bZgzmlI651u3aCi/Eet3/GILVThv3f41j7bG3TS7rSSV4RUgy9ziK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+0I0g0n+v0VG+sjsCbDrIzVcRDIP4QN/bN5dYBfuluPQ99KRS
	ygBM14XMa7d9vQfAvqqaRLgbCRONkoE/oLMjvt3/L9BqBgv0BaH63PS2YjHVu9mR+TvYDHDtAYH
	YfOIc1t3r7D9chAqDbAB+yYTpDlFk7/oW74snDiz0nTZPDHu/LSuVsZq+CcScsvwR
X-Gm-Gg: ASbGncvh5gvwVMQ+yyYs5a0PtJwKzxme15SigB559dLjZqZM/M5giTDyetP4cyA6znf
	cfiN6C4NAhJBP5CLiMHAPAk9hyJnQn50aArmyHJrIxj9j03DzQ/RAUrSuKOAr1Dii2usL2p2J1m
	+QRgwxzt7o+K6h2ejb+6aqZ1mljZ8PHh/qXkT8ZRneRScqMmOAWheVbQg2O+5Rkf2+7ZiGab6Y0
	l0GtiBa1RgEcfQPoizMsfQORPJsCEunajWz0T6tYF2aHUMmQIP9FnoLnTig9jDcEIi/1Iz6vtL3
	tPUco/SRgjDY9ZQuDXYuuRIUBUx13jHr8o9OqJTgZOC/DfBQJv2m8uMqgSLKdVPo06qHSCuMBbv
	BGszsLibEtClN3pOdT1+CY+WpAsI=
X-Received: by 2002:a05:6a00:189f:b0:771:f071:28fd with SMTP id d2e1a72fcca58-776032ab5f0mr2570371b3a.14.1757583445426;
        Thu, 11 Sep 2025 02:37:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgldY20V8+urkr4ak6p4W/xCCAQs/UMUOmo7GZX/3jtAUQrbLaxmJeSauXvSu+LH87TMBpFg==
X-Received: by 2002:a05:6a00:189f:b0:771:f071:28fd with SMTP id d2e1a72fcca58-776032ab5f0mr2570345b3a.14.1757583444893;
        Thu, 11 Sep 2025 02:37:24 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7760793b730sm1512930b3a.15.2025.09.11.02.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 02:37:24 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v2 0/3] coresight: add static TPDM support
Date: Thu, 11 Sep 2025 17:36:55 +0800
Message-Id: <20250911-add_static_tpdm_support-v2-0-608559d36f74@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADmYwmgC/x3MwQqDMAyA4VeRnFeogQnzVcYosYkuB2tpOhmI7
 27x+B3+/wCTomIwdgcU2dV0Sw346CB+KS3ilJsBPT79q+8dMQerVDWGmnkN9st5K9VNg0wokZh
 wgFbnIrP+7/P7c54XZWwnvGkAAAA=
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Tao Zhang <tao.zhang@oss.qualcomm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757583438; l=1654;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=1KctSP7tT4hdSPnIjjOWWclG2Dc6KV/r5m/+90egGy0=;
 b=hSQm9OeSCW4I7m/wlMm3hqgEn6GP+EQWEMukwgLy9pq1T1ns/FGnhrgKP7d8mj011uKFnkTYE
 hPhMjeqM/96B0FmPC3N14+NdrVJs7IsRLNLBGnQAe6Y2Z7r1dIy+oGf
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c29856 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=nhnTKuEOM_5bWBThM9gA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: EEXer7MntKg5KGywkK-INGhEUkGaoEoq
X-Proofpoint-ORIG-GUID: EEXer7MntKg5KGywkK-INGhEUkGaoEoq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX94YdDXO0rXZJ
 0POhghLf7JVzQ8SNH3RIVAikiM/l79TrD4W/mF3sugEl8V8w+JhhE2PFEcoyohSuAk6+TwMW2OP
 6rIPRV2mddfpYlnWD6Br5CHBZniazDot6vd4xWEpjXCv/c5cRGTMLWY49DY2D1/SWjFXm0CAmCJ
 qKADmbK249+Mr8aL72OEOhWxx+wblCTaSHqxTCDfVr87FA404nPR5rRd5K8ppPkvT7WTlkjbgmd
 Th5+cXPeEOnd6KPETpezbOJPzO7a0yoMZtTo0oWSkPfAGiCvVOvgpTx/gluHp+ESIVjwZ4HtR/x
 i0VHgpcTg/AXlywiwfyPiCvGy/uhTSJi1fmBwC0uf7b5ePb+ppv0Te6eXGZ/Go7JHgUeuekPyt1
 z2vFaNHO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

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

 .../bindings/arm/qcom,coresight-tpdm.yaml          |  23 +++-
 arch/arm64/boot/dts/qcom/lemans.dtsi               | 105 +++++++++++++++
 drivers/hwtracing/coresight/coresight-tpda.c       |   9 ++
 drivers/hwtracing/coresight/coresight-tpdm.c       | 148 ++++++++++++++++-----
 drivers/hwtracing/coresight/coresight-tpdm.h       |   8 ++
 5 files changed, 256 insertions(+), 37 deletions(-)
---
base-commit: 8f21d9da46702c4d6951ba60ca8a05f42870fe8f
change-id: 20250911-add_static_tpdm_support-b6eb2ecada26

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


