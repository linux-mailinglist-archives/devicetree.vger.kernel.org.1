Return-Path: <devicetree+bounces-196627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C737B067EB
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 22:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1777D4E38D7
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE2027991C;
	Tue, 15 Jul 2025 20:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CUCdeHRG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581E926E701
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612480; cv=none; b=YH/e/vdwzAGjW+bu+k5+4FtMsA+bvjdMJovmwIJy+DKsWoFn/LE/wYodrbPCH3trO5PQwGBShkAL9FpLOlumzZsJGI6XCLBQBZVn8IiI0JCRnRhstgutcp3WY9AFT6vvyS2v2R56WvYz8qwTO6hVDGeNzxAvkJ1goOoP1zynhAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612480; c=relaxed/simple;
	bh=N1HL9C7L/kLT8v4qKMHS4LHGfzF1ugW1J7xuqtAvISs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mnYKkiMumP3BQcwmpNb3/hHslWnT05AvxhWqOnTNZxDVN3WZyE4Hc/jwvpZ/b9tZYR8XZlXCBHu8lKP7xM/iHZG0o+oieXWZhTwBikNwwW6JZCzVRyPU6gOIugH6IhxdfuULSpvArXXOo5kNTN+xfHoaXn2//E/W7v2+Jruag7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CUCdeHRG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDMQW029554
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:47:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=hFSqKIxyvXb4XbyJ06T+BQ1Hea3SVTQ/nk9
	2PvzuiNE=; b=CUCdeHRGICnmsDNUWJnIPuUWmcELh663dNkjZJcWZ0S7SCHdM+V
	Ptbfe6PIt/oUpB+vvNjibvUbUmkj32W10cpWh1d0DDYAfB59PJXY/qY9adT4pujn
	TCEZtTOfOKjbmazXd7YVfE9W9a2GtD7aIcf/dRkapz2/J7SS/cv1cNkmf3/8BVbF
	Tnkto4Kgl9jCYYneKC9sfSD3QH4V68z8rcfz8lisFTR1fOrkrbsh85WpktmKV+HL
	IcaDlqdDulGej5wDFPbjOYXL1oNA2W/SVAStLr51mhBwZeUsvmXZ6OhXHSg7NRu0
	vlkuhRR8MJ7i1+rLIyFICqDe5kY7c40zXaA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxb1mkg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:47:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e207330a45so449544485a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 13:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752612476; x=1753217276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hFSqKIxyvXb4XbyJ06T+BQ1Hea3SVTQ/nk92PvzuiNE=;
        b=A3hxIWwakxOIFOM5ILWJ8x3MH1LBjd2Ko/0ReLAmlrzZ71fxMdjce2uF+Mf5t6jRO1
         inexqMbpIp7Nsh3ifYfZFU5msWjLdzePBdUB4DwY+9vtvHPhz9DPP13BWkHnnr+ayhAw
         YUoIsXNn2khdA9bA/yCvYyVywL9nvx0uHKxbdp1OuB2FqWYq/Bn1gkxsuCtCK6xol9j2
         sIFLkUJUqwWV/anKBWyvUFKsybvwZLD/90EAEnqfWrN/3d30qBnP/JabUJh+9xfMObIV
         Cc0WpcC7vr9DEEamidSUeLdFfNQWCdjv1oDrbjIRrEFQBu4F2+QTPjx4RQvCclzzCWB+
         pVbw==
X-Forwarded-Encrypted: i=1; AJvYcCVERLlEVM86qGJwBDHa4kSAfK72+JK0vA/5qBX0cizIiooaHrPNmBkgJdHCoKcRmQuaBAwjcQUVfNZg@vger.kernel.org
X-Gm-Message-State: AOJu0YwLTJbaXlAmTeXQizy+otK4U+3Lty6/GAu5jnxSA3d4PUdDFetq
	eu9f9sbdsxcDWWO4Mi2FJNTXtrUcso4fcUO6U/pCp0ZOFmyX+k7JipK+mADuj7DrAW3WWlhpXJD
	HX1FmrKTep7VqgW3AUt9rnzduh3meRaCpw0WyBGfn8pUxfeKeIPvMKSXNLURCroim
X-Gm-Gg: ASbGncuyDrhCVE6AjptGAVVkHi2TURO0a/paPhii92MgzFL1C9a6BfBhRvvL7DCFb2c
	2L60N96kjIhFh1bzEmABv8pM6WeomLoRSDvDxFSwRtPj9CdagUph/i/RzerQr4+vIiD9J6IhXTK
	0jq6bDSTUyjGQGphfjAqk4cvdxGUrZe+kwVlLyD0aonGY3pb+tGgrYg5WPAUyaLbkyvOqVUOsX/
	V4ClJn6HE6R2tBOcLfkca4YLBAPdRMF6yOeqcdU036adJrNHnChxtDKTe7zo+6SY1YyIh32hnjO
	ToCTeVQWV+8nVURiEhcWUJT7qM+o5eAoSlW7kgn+zr79cj1RbH4nT6V7QrqTAAy6Ql9lv5CaM8H
	Zl99t5rSXYVF7oj2QQA==
X-Received: by 2002:a05:620a:4008:b0:7e3:4248:ab8f with SMTP id af79cd13be357-7e343350cb0mr47244585a.7.1752612475884;
        Tue, 15 Jul 2025 13:47:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGQlxLOByFsA1tMtdQYZniTPs7Ycj2UVQgk0JgmbT3ZcLd0ulJ5EVp4YeaQ8YnrfVs0mj/Og==
X-Received: by 2002:a05:620a:4008:b0:7e3:4248:ab8f with SMTP id af79cd13be357-7e343350cb0mr47240685a.7.1752612475395;
        Tue, 15 Jul 2025 13:47:55 -0700 (PDT)
Received: from trex.. (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc2464sm16331877f8f.38.2025.07.15.13.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 13:47:54 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/7] media: venus: Add QCM2290 support with AR50_LITE core
Date: Tue, 15 Jul 2025 22:47:42 +0200
Message-Id: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 0-LX4FyfWHRAHluTAW5muMmVxIxPfRor
X-Proofpoint-ORIG-GUID: 0-LX4FyfWHRAHluTAW5muMmVxIxPfRor
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE5MSBTYWx0ZWRfXxhgedMtVDoqe
 C+W0rPhwIS8mxLpexaX5+oGpbA5WNhQkC5uVpO8Z+2Rk5pahBtLan8TUf9I3iBndBGrudAeEgsh
 XLJeXBacxRIv9KSziX81u5tSiM8BtUXAMGMS1ao1q/sXKd3VUzN/xiEk299SfIgwOAGgdaoplV2
 CKYfvMAIXf+4hvVLevQJxSa15I4ExeEyoQzz37IZG0rbkApeS+iGBE1JbmKSrsHHtXLYcrX0o7s
 riOUoKtTrrfjokQaz314ZU7mMBkid81a3oFCmkwZcPyyPg78+lhmdti1z2oNA9IIUwMIID8qeVh
 R8/RZtdEk+C9sQcTnxQMmX6KylpgXUXC7x1As9RGeXAe4owbwYts+K+FdAloAGBnjQkK6/LmRcN
 0maJ7mHt3iVVm2vsZs0Es+xkyXK32YQCk/jbojxzXsLqHZO/gUXN/AM5X/Dou2DbU9UIIHG8
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6876be7d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vaIsIKZIAAAA:8
 a=aGt0-UCxYSDcx6FY-O8A:9 a=bTQJ7kPSJx9SKPbeHEYW:22 a=rh-XPM1-DYv4t-UOgbwD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150191

Changes since v6:
  v6: https://lore.kernel.org/all/20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com/
- patch 1/7: Add qcm2290 dt schema
  - no change
- patch 2/7: Conditionally register video nodes
  - fixed potential NULL dereference on handling firmware errors when the encoder is not present.
- patch 3/7: Add Support for AR50 LITE video core
  - applied Dikshita Agarwal review comments: do not handle no-tz case, fix WD mask
  - replaced EOS buffers for a work around (firmware should not access the eos buffers)
     renamed venus_helper_alloc_eos_buf to venus_helper_prepare_eos_data
- patch 4/7: HFI platform V4 capabilities
  - removed 10 bit encoder support as per Dikshita Agarwal review
- patch 5/7: Add DT compatible and capabilities
  - removed frequency table as per Konrad Dybcio review (driver now uses opp)
  - fixed bw_tables for the supported loads (remove 10 bit support)
- patch 6/7: Add Venus video node for 2290
  - no change
- patch 7/7: Enable Venus on 2210 RB1 board
  - no change

Changes since v5:
  Two additional new patches added to the set to support video encoding.

- patch 1/7: Add qcm2290 dt schema
  - added reviewed by: Bryan O'Donoghue
  - added reviewed by: Krzysztof Kozlowski
- patch 2/7: Conditionally register video nodes
  - new functionality required to support AR50_LITE
- patch 3/7: Add Support for AR50 LITE video core
  - completely rewritten - lite platforms are extensions of previous HFI_XXX
- patch 4/7: HFI platform V4 capabilities
  - use HFI 4XX instead of HFI 6XX as per review
- patch 5/7: Add DT compatible and capabilities
  - added reviewed by: Bryan O'Donoghue
  - enabled new option min_fw_version
- patch 6/7: Add Venus video node for 2290
  - added reviewed by: Konrad Dybcio
  - removed status property
- patch 7/7: Enable Venus on 2210 RB1 board
  - new

Changes since v4:
- patch 1/5:
  - added reviewed by: Krzysztof Kozlowski
  - updated example section
- patch 2/5:
  - added reviewed by: Bryan O'Donoghue
  - Fixed Co-developed-by order
- patch 3/5:
- patch 4/5:
 - removed encode-node (userspace exposure)
 - fixed Co-developed-by order
- patch 5/5:
 - fixed venus register region
 - power-domain-names: one per line
 - clock-names: one per line
 - fixed interconnect tags
 - empty line before subnode
 - enable the venus node

Changes since v3:
- Fixed schema commit subject.

Changes since v2:
- Removed IS_HFI/IS_VPU macros
- checkpatch.pl --strict fixes:
  - convert macro to static inline to avoid argument reuse side effect

Changes since v1:
- Added IS_HFI macro usage
- Moved schema patch to top
- Fixed commit messages

This patch series adds support for the Venus video decoder/encoder block
present on the Qualcomm QCM2290.

This series functionally depends on the following patch:

  clk: qcom: gcc-qcm2290: Set HW_CTRL_TRIGGER for video GDSC
  https://lore.kernel.org/all/20250613102245.782511-1-loic.poulain@oss.qualcomm.com/

Please ensure the above patch is applied before this series.

The QCM2290 integrates an AR50_LITE core, a low-power implementation of
Venus supporting H.264, HEVC (H.265), and VP9 decoding as well as H.264
and H.265 encoding.

The series includes:
  - DT binding schema for qcom,qcm2290-venus
  - SoC integration via qcm2290.dtsi
  - Resource table definitions and frequency scaling
  - Platform capability registration for the AR50_LITE core decoding block.

Limitations:
  - The hardware does not support concurrent operation at FullHD.
  - Encoding is not supported in firmware version before 6.0.54

Firmware:
  - This code has been tested with 6.0.52, 6.0.53, 6.0.54-PRERELEASE

Some basic Tests:

Decoding and Encoding were verified on the QCOM RB1 platform using
GStreamer with V4L2-based decode plugins.

The following pipelines were used for playback 1280x720 and 1920x1080
H.264, HEVC and VP9 videos from https://www.elecard.com/videos.

Decoding:
[H.264]
gst-launch-1.0 filesrc location=videos/xxxxx.mp4 \
  ! qtdemux name=demux demux.video_0 ! queue ! h264parse ! v4l2h264dec \
  ! videoconvert ! autovideosink

[H.265]
gst-launch-1.0 filesrc location=videos/xxxxx.mp4 \
  ! qtdemux name=demux demux.video_0 ! queue ! h265parse ! v4l2h265dec \
  ! videoconvert ! autovideosink

[VP9]
gst-launch-1.0 filesrc location=videos/xxxxx.webm \
  ! matroskademux ! queue ! v4l2vp9dec \
  ! videoconvert ! autovideosink

Encoding:
[H.264]
gst-launch-1.0 videotestsrc num-buffers=30 \
  ! video/x-raw,width=1280,height=720,framerate=30/1 \
  ! v4l2h264enc ! h264parse ! mp4mux ! filesink location=/tmp/output.mp4

[H.265]
gst-launch-1.0 videotestsrc num-buffers=30 \
  ! video/x-raw,width=1920,height=1080,framerate=30/1 \
  ! v4l2h265enc ! h265parse ! mp4mux ! filesink location=/tmp/output.mp4

Concurrency:
gst-launch-1.0 -v videotestsrc num-buffers=1000 \
  ! video/x-raw,format=NV12,width=1280,height=720,framerate=30/1 \
  ! v4l2h264enc capture-io-mode=4 output-io-mode=2 ! h264parse \
  ! v4l2h264dec capture-io-mode=4 output-io-mode=2 ! videoconvert \
  ! autovideosink

[Fluster]
The H.264 decoder was also tested using the Fluster test suite
(version: v0.4.0-12-g33566abd0964).
 Target: GStreamer-H.264-V4L2-Gst1.0, Test Suite: JVT-AVC_V1
 Result: 126/135 tests passed
 Failures:
 FM1_BT_B, FM1_FT_E, FM2_SVA_C, BA3_SVA_C, SP1_BT_A,
 SP2_BT_B, MR6_BT_B, MR7_BT_B, MR8_BT_B

---

Jorge Ramirez-Ortiz (7):
  media: dt-bindings: venus: Add qcm2290 dt schema
  media: venus: Conditionally register codec nodes based on firmware
    version
  media: venus: Add support for AR50_LITE video core
  media: venus: hfi_plat_v4: Add capabilities for the 4XX lite core
  media: venus: core: Add qcm2290 DT compatible and resource data
  arm64: dts: qcom: qcm2290: Add Venus video node
  arm64: dts: qcom: qrb2210-rb1: Enable Venus

 .../bindings/media/qcom,qcm2290-venus.yaml    | 127 +++++++++++++
 arch/arm64/boot/dts/qcom/qcm2290.dtsi         |  55 ++++++
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts      |   4 +
 drivers/media/platform/qcom/venus/core.c      | 142 +++++++++++---
 drivers/media/platform/qcom/venus/core.h      |  13 ++
 drivers/media/platform/qcom/venus/firmware.c  |  10 +
 drivers/media/platform/qcom/venus/firmware.h  |   1 +
 drivers/media/platform/qcom/venus/helpers.c   |  30 ++-
 drivers/media/platform/qcom/venus/helpers.h   |   2 +
 .../media/platform/qcom/venus/hfi_parser.c    |   5 +-
 .../media/platform/qcom/venus/hfi_platform.c  |  20 +-
 .../media/platform/qcom/venus/hfi_platform.h  |  25 +--
 .../platform/qcom/venus/hfi_platform_v4.c     | 173 ++++++++++++++++--
 .../platform/qcom/venus/hfi_platform_v6.c     |  32 +++-
 drivers/media/platform/qcom/venus/hfi_venus.c |  25 ++-
 .../media/platform/qcom/venus/hfi_venus_io.h  |   4 +
 .../media/platform/qcom/venus/pm_helpers.c    |   2 +-
 drivers/media/platform/qcom/venus/vdec.c      |   7 +-
 18 files changed, 580 insertions(+), 97 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml

-- 
2.34.1


