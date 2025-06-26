Return-Path: <devicetree+bounces-189948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBDFAE9FB0
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 875153BFD65
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 13:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E40372E7644;
	Thu, 26 Jun 2025 13:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o5PkjtLx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C348E2E719A
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750946380; cv=none; b=cy7A6QhJIY4eUo1uxMrOe1+Y2j/4PRtLLkea2CDN06PVUrohU8Kx13RFx5NmDDQFDaIOBTeK0z31eaNoGXUwW1cIUBFTd4h+orSLFN+HrvbkjHDzH2sE6NYOJs3emwz3jzDd/V6N2MtPkNr+vq7amNOrba1LMnu7fkgqU4Vi8N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750946380; c=relaxed/simple;
	bh=kmEGhYciyMMp4G/GxiAobkj/2CDHouIK6RTlTVRsPMA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Dvc/brxIkhUxgMZA9Rzv5J+De8iNk2A5+YqYl1wM+cuQd7VL8yCE9GEc9SwfhIh1WZKzHSibFc29Uu8lLeVV0f3hkl5IHENPwHQJEbkEu3GXfIhGgoZnbMu+HDd6C4k2XrwCro9d7KgxX3+7eeKW0Z/+PyG6Jt2aVsSbh3zAlVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o5PkjtLx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QA17Bn022854
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5tgkYFTM5Xrw95Ff69bLBTB8QDp/Y5pR5JN
	HIoSX3ys=; b=o5PkjtLxjpIJg6ia2CjX17OQPVrTV/c0zNWZH4arCQeXVAMHqxO
	GHkuXWB4OmgpW/ZurUn0UIeJ8/UMU3dranvAhqLDGTcTBDJEwy6UBc28vpDnNgjt
	myWjX3AuMWGIvO3KlRuLh6fBBkgJrlwiemKVGf0vScr9zmpFXUprOzSE7dKgKyyd
	daJaUfcBMBUOI1cISCYltTM1IfMKf2jUdhtxtoeMR5/b2soSB+FMsm5RUHu0CkHl
	VdR1xYzHWwxaHUIbvXi1r/KlqCH6vyR/3pQtNN/YSuhCBsI0cDqU5KaayK5tXi77
	grdKvjH8QKTeeXfQo7nGkKAzuvZxWf4esYA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfx1tx1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d38c5c3130so154540885a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750946377; x=1751551177;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5tgkYFTM5Xrw95Ff69bLBTB8QDp/Y5pR5JNHIoSX3ys=;
        b=Z4Oh9pllMtpGumEcjZEfCRJxrufegRGCp75QPrGSzkK1zC7uFPhrTb9xDuFuPQOrLO
         p8xdZU+E8wbnG9tOCdawEUntkowIiiY53h9ZO7/n6B6Rb68B1YbcEUZ+Auz7JF6YHB3x
         TEx4NHpaxbl5Q5Js6T4sX/7WCferwCi72pwzNpfHUwhTDf6fkHdJagyGIWNx4A905VLH
         xCCN1EOhWPnNGO7lspIYhiPPqV5hidbjJU9qzBfrKwkOPUv1/69/B3bisYVAWDn1dLCL
         fhtUXKX6NbdK/KwvNZ7CKoSGNpt4w7elGnt00PK1yHveEhDLQqow1rNTnKygv95NILQg
         0l3g==
X-Forwarded-Encrypted: i=1; AJvYcCXI7CH8GCXjX68MDm7PezHjAGqLSNhv/PjftrruEvWxjJ/s89inygWIWwOH4Cc68Xc/cp1zsvSBT97I@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3e09wTGio0c7zsUS0ZfDyI0oq47s+8cqs4ZxG9fkzyHqltsLP
	H5DotZiAaw3xMsag61cjIEBL1nPM+YZN6BZ+EiiFDLnVc4chJ8UgAP9t+fzHVSLdZoUOmO+Q+xQ
	tAAsuvu1I2ZsH7Ckp4tsMvrF6j/1MIo8mO8HlBIq2TryjHMvDHz5difxiiR/KZYBTfqgz9O1M
X-Gm-Gg: ASbGncuoc9aT+PPauq7Nu+ZUchXM4DeDucXqAU9si+ZnfZ5mISFpDg0BXbi8+QsjCDY
	8oLzULtSobb87+4wL2WT12UTsdzovzka8IcP1CooLKvGadE0nXlJ77lw4Z/XIPyvmPNb26a8KLT
	trTGRN4ICnweAIt9Kxus9dFzd5vqVrpqY34wYWrGGAr+3cX7nCwAW0hkXKijjKVJrvpGFUT6d/o
	PgCucz/SgQQw/9pJsqe4Z2qV9aRP2z5z1DcFufxmhVLPFTeHS+Xr99eFwyTj2F1zyntYrX0ex9X
	/rYdAjbNzva7X/7lsiHxtzfQFl0trG6dQX9fQVR1eNZ39b8HJOYNy0sXu4DJUy7s0AcedIzF2YL
	J
X-Received: by 2002:a05:620a:c4e:b0:7d4:29b8:b573 with SMTP id af79cd13be357-7d429b8f1f2mr955658485a.30.1750946376567;
        Thu, 26 Jun 2025 06:59:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHa+vixNwigHwEtVGLKHaX1GvWyXjxTDO3Co4S7iTaf40s0SAmzfWX9ACUxorf8rQ9eiSSNsg==
X-Received: by 2002:a05:620a:c4e:b0:7d4:29b8:b573 with SMTP id af79cd13be357-7d429b8f1f2mr955653785a.30.1750946375894;
        Thu, 26 Jun 2025 06:59:35 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823c57d7sm53723365e9.40.2025.06.26.06.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 06:59:35 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, mchehab@kernel.org, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/5] media: venus: Add QCM2290 support with AR50_LITE core
Date: Thu, 26 Jun 2025 15:59:26 +0200
Message-Id: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: h_oe0vCP1HXQA57FIQRUmILxSc_HasZM
X-Proofpoint-ORIG-GUID: h_oe0vCP1HXQA57FIQRUmILxSc_HasZM
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685d5249 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=vaIsIKZIAAAA:8 a=7WrQi52fQBeieaC-wGsA:9
 a=IoWCM6iH3mJn3m4BftBB:22 a=rh-XPM1-DYv4t-UOgbwD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDExOCBTYWx0ZWRfXyhdnxy2krbPc
 8WOIT5K8kLbqRH2QblM0eWAb3Uj5lACAZLb4iaGCCpsUm7A1LJzjmvamOCQu6Wjm6WzUX22/thj
 SFmDzBZ87lpsbeoXL7AIsMucfRh7jFHskntmg+Icw+7EMlAaX7RGKMi67gWvfj0MV+YHyTwrCf6
 WFhwS4QJ1HnHu22zUlmG4YgyiwBFyNl5Y5LOj0VvzFO4sENdZV+F3iPdrS5u6zk5ky+/8LnMvnU
 amOY9ws5jksaIMif0PWmq0UpCc7INyeUbdE2QPm9SvrvCsMDPDqeAWhixLzXJvkcsujNFlQ9/O+
 mUJsLlCQG4JFuh7iSWU03KlurAnp7tCltjUy8E8VHDuEFi8qnwV3757HwWpNDHLiEeMq3s0yRY9
 R5GmJtk92TsW656fy6YwOwHqRGdIQcWawRoVznHHJX8vuTRUqvJYbuL9PhsDbXHRJhLuXDrw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260118

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

Only video decoding is supported in this set - video encoding should
follow up in the coming weeks.

The QCM2290 integrates an AR50_LITE core, a low-power implementation of
Venus supporting H.264, HEVC (H.265), and VP9 decoding.

The series includes:
  - DT binding schema for qcom,qcm2290-venus
  - SoC integration via qcm2290.dtsi
  - Resource table definitions and frequency scaling
  - Platform capability registration for the AR50_LITE core decoding block.

Decoding was verified on the QCOM RB1 platform using GStreamer with V4L2-based
decode plugins. The following pipelines were used for playback 1280x720 and
1920x1080 H.264, HEVC and VP9 videos from https://www.elecard.com/videos.

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

[Fluster]
The H.264 decoder was also tested using the Fluster test suite
(version: v0.4.0-12-g33566abd0964).
 Target: GStreamer-H.264-V4L2-Gst1.0, Test Suite: JVT-AVC_V1
 Result: 126/135 tests passed
 Failures:
 FM1_BT_B, FM1_FT_E, FM2_SVA_C, BA3_SVA_C, SP1_BT_A,
 SP2_BT_B, MR6_BT_B, MR7_BT_B, MR8_BT_B

---

Jorge Ramirez-Ortiz (5):
  media: dt-bindings: venus: Add qcm2290 dt schema
  media: venus: vdec: AR50_LITE video core support
  media: venus: hfi_plat_v6_lite: Populate decode capabilities
  media: venus: core: Add qcm2290 DT compatible and resource data
  arm64: dts: qcom: qcm2290: Add venus video node

 .../bindings/media/qcom,qcm2290-venus.yaml    | 127 +++++++++++++++
 arch/arm64/boot/dts/qcom/qcm2290.dtsi         |  57 +++++++
 drivers/media/platform/qcom/venus/Makefile    |   2 +-
 drivers/media/platform/qcom/venus/core.c      |  50 +++++-
 drivers/media/platform/qcom/venus/core.h      |  11 +-
 drivers/media/platform/qcom/venus/firmware.c  |   8 +-
 drivers/media/platform/qcom/venus/helpers.c   |  80 ++++++++++
 drivers/media/platform/qcom/venus/helpers.h   |   2 +
 .../media/platform/qcom/venus/hfi_helper.h    |  10 +-
 .../media/platform/qcom/venus/hfi_platform.c  |   2 +
 .../media/platform/qcom/venus/hfi_platform.h  |   1 +
 .../qcom/venus/hfi_platform_v6_lite.c         | 148 ++++++++++++++++++
 drivers/media/platform/qcom/venus/hfi_venus.c |  14 +-
 .../media/platform/qcom/venus/pm_helpers.c    |   1 +
 drivers/media/platform/qcom/venus/vdec.c      |  15 +-
 15 files changed, 503 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
 create mode 100644 drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c

-- 
2.34.1


