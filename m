Return-Path: <devicetree+bounces-188305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 334D2AE377A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 09:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 040C13B42F4
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 07:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AE81201032;
	Mon, 23 Jun 2025 07:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JKY4DVcO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37D5B663
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750664996; cv=none; b=fL0LqXXTadMDxAKndyNbZg/HZy3B3WM2W+ZT0DA7mKm/X7HcBeq9eGochYNd+5DGbAONbZRDt8FHfb5HAFoSra/LdQu+azcsm7uQAC+lbReQNLgxO18IQDMsAklsELMo0EnjwRYZRQ8dShobxx3CTQB4+WqGuUSTfQkAojJbd7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750664996; c=relaxed/simple;
	bh=/4tUewPq4arMrPXztGroZtOESRJn7LuQTZ4meDBjAzo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wc80k5HHwbSiqYF4M7x8QfJqAcXRyniSSGpgFkioPVy1LePpPUm5VJKHR7Dp8Shmh9ZTBTbe32GYJwTprNqLPyCd3oTKvzmQ5q6ZHhGHpPUgfANx3MusjOH+laplD3Pzj2YKIgT+DdPimv7aA1BftCAl2wRDP4CENZS3ibkc7w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JKY4DVcO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N3eaMB029925
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sjQtsFIQnFL
	+UTCF4LxDfD4RYcCcbQjxvjxTX/zebcg=; b=JKY4DVcOiDo79FMkjrmEi24fdOw
	cddcl0jRuGo5VGnVDU3SaFb14AcuIKUFWwzb59iWAkcxQZMuxgyQgagm5QbedT8M
	B4EHWB9RhArNK3DXQSJm6MWfQMUskxJ3D3TIBCaQgqDa13uo+mvYrnHDtgyY49G9
	s5ael61F0FxBg+v1nVZeBV15uDBwWKaY4dK7sfWuv1Z8qNXR4QiSfaj8B3WKb4NY
	wzOCpwfLtq/jVlO7YnQ/DT7RXwWPbYJPEjhyf2hERkfoOneuZSvzsFY3pghuGIbZ
	tjL9INCE8n9ajYeHcRRUt1tb9Dzgt9UmlVYuHSoME3qHDRqTFoY0h7l1aGQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ey7k0m9g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:49:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7cf6c53390eso304934685a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 00:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750664992; x=1751269792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sjQtsFIQnFL+UTCF4LxDfD4RYcCcbQjxvjxTX/zebcg=;
        b=G8y8j96RU8zzUn2YVkFxqn3nUPRUoTQiab/adiH4cunEEV6eojX0qXHuX1TslL4as6
         d15wBVOexZUwzgdg0SDEwAYtnThrxvSjj2y5RyfMNmZUMMmx9BV7PMC3c/Yyr/ZvgK/V
         bmgpuXD01PqZjP2OF/CRG60bvsv1Xm7sKnHJRpt9KuAr7MnUJhvGrfvt0/t3ArQKfQf+
         1FLjUuGHd4/TOmF2K7erip5kXAOSyF6g5fqgzebLnHvRpS727FKI7cF/zv+DSHM/sDwC
         rKvdc18o65oabiSZXhHGIs3a0Lw9qAA3lqdRjcEk3VzuwbpodgKhHeJ494A1smedvw/7
         HyVg==
X-Forwarded-Encrypted: i=1; AJvYcCW1gnxo7WBC6jAbjPrFtt+dWY9Ds9IdqC9h1Nerqkp1vJx6aduqQ7lONz73pDCrseWLrY5MH6t/LwNE@vger.kernel.org
X-Gm-Message-State: AOJu0YxszZ8NgqoskhNBGPmaEaarXK3TMrJQMktMQdK6mEbStUJ+hV7Y
	wpHyIKl4cdMvFgXNtvB2OkJ7DhLO0tXuGJekYTngYhvhkM7PJj0rpnj8UNi8b+3ww4BHpqDy1vH
	xyWN2OsnUxhHI+ugXKnjJP6S0nPr2QvdDfspXooAKPLZQ4Zg1qiWzxYV/fQEnp9+B
X-Gm-Gg: ASbGnctRcjy5BrnHSbm7uDZF25vOgWdYFEc2yoffaKs4tNi4/InpzWEG58pc398M8hU
	Hs4YR7tPHciO1XLEDaMY+nT0v4kc3PlnM/OMHFh/LIn6kirSs7wvwACOdN8l6UAj95ace71qoD+
	lM+BMpyG7rrsdzovETzrq/IgYFg8L8G/pAQ8+Y4ElOub62s0e/vzEYfF6EsnQFhqWeeMrP+EKhQ
	/rpb0GHSClC9NO5NmvMISGU+dfX/negq7VPucEpVCMtnvSTZNWyxe53Pokylszqqs9EylGEdlQI
	sJSqgh9gAYKZvsRZz4cmLQcjYXNqhDwRl4UWcrTcGwIObSK/LBtsHdlVLoAfKmdYqVSUbGKiy6I
	g
X-Received: by 2002:a05:620a:410f:b0:7d3:c67f:7532 with SMTP id af79cd13be357-7d3f99327ccmr1597350685a.40.1750664992498;
        Mon, 23 Jun 2025 00:49:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjm0ZmNinQCQIzYpoWQJiNnakjhqyBCMQR9/WOYvR5DRnCIJAduzY80go2wLw9fSekui4veA==
X-Received: by 2002:a05:620a:410f:b0:7d3:c67f:7532 with SMTP id af79cd13be357-7d3f99327ccmr1597349085a.40.1750664992073;
        Mon, 23 Jun 2025 00:49:52 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f17ac7sm8755313f8f.23.2025.06.23.00.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 00:49:51 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] media: venus: Add QCM2290 support with AR50_LITE core
Date: Mon, 23 Jun 2025 09:49:35 +0200
Message-Id: <20250623074940.3445115-1-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YoEPR5YX c=1 sm=1 tr=0 ts=68590721 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=vaIsIKZIAAAA:8 a=qk4D6dgNv6vegSoiKxYA:9
 a=PEH46H7Ffwr30OY-TuGO:22 a=rh-XPM1-DYv4t-UOgbwD:22
X-Proofpoint-ORIG-GUID: SPIOTZo3uN2oHvIpxmUYPP3EdnPFQA-7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA0NSBTYWx0ZWRfX7Z2Q5BnSAMnV
 A6FVphn6WlUEYkKfEZfjZcD5nKJDOG3LwctbOCtNNfldvQvqLvGO5YoxrvhEVeDbaLQ70wPJsLW
 Di10FgXw/qAz+KYG1cniunsD/x26wQVO67/iHsdgFmAt9MqH1QVOozv5sL6oQoLHgxrLV9T1W7s
 JPTQ+6pa8lTiJ/+LSIhECI7TdEBQUekxbGSEfkm5W/ylL3QPy6fCmsxlSvA1gAlzWy0ezcis/P4
 lY9XA3xDKlWI3HTx70fTmcDg4cxRUmnUtPlmiv1EbJRgUMvlr2gKgkr9uNB0gtktw1Oo8aMxt0d
 7387zN8uoh9DrjDCRWXnJHNRiCgZ4DsLI2d4q/FnD+q/TFi13H2uSJTkQ7SViS5wqRd4k4g47oc
 B/ybHaxdJylxqwOdomeC+D2sucqCFHEJ2v1GTWuSMYkJc4nW9ToZjc10pajj3tNfjMPirxwV
X-Proofpoint-GUID: SPIOTZo3uN2oHvIpxmUYPP3EdnPFQA-7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 adultscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=999 spamscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230045

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

The QCM2290 integrates an AR50_LITE core, a low-power implementation of
Venus supporting H.264, HEVC (H.265), and VP9 decoding.

The series includes:
  - DT binding schema for qcom,qcm2290-venus
  - SoC integration via qcm2290.dtsi
  - Resource table definitions and frequency scaling
  - Platform capability registration for the AR50_LITE core

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
  dt-bindings: media: venus: Add qcm2290 dt schema
  media: venus: vdec: AR50_LITE video core support
  media: venus: hfi_plat_v6_lite: Populate decode capabilities
  media: venus: core: Add qcm2290 DT compatible and resource data
  arm64: dts: qcom: qcm2290: Add venus video node

 .../bindings/media/qcom,qcm2290-venus.yaml    | 117 ++++++++++++++
 arch/arm64/boot/dts/qcom/qcm2290.dtsi         |  45 ++++++
 drivers/media/platform/qcom/venus/Makefile    |   2 +-
 drivers/media/platform/qcom/venus/core.c      |  51 +++++-
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
 15 files changed, 482 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
 create mode 100644 drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c

--
2.34.1


