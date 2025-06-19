Return-Path: <devicetree+bounces-187587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 746FCAE0895
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:21:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 269563AE578
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C2F21019C;
	Thu, 19 Jun 2025 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CDYmHxVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422C21EE7D5
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342836; cv=none; b=eNY3R4iFSR9hxQ9xDNJXfBYurg1FpipPDP/NA9CmEjILtQNbn0k7Mtlhxz9qs0m7fxcPrm2cwtnu/SkMizlTloJLCQIPCX8oZUYouFpH85WBhUs+n5hLftzeswuKcxjSjGhlxAjXvsFCMlvAIO4+DVZlCmkKAnqOumkke7TymKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342836; c=relaxed/simple;
	bh=FlMMithB26EQ1ESHF1QhUmLgz+gJzZRPLQUpid6FMac=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aoNcIktQqDGcF0bkn2l9UThYS9JVil4Ax6cW4Fckfxmr/vr23aWER8KL8W27knkI4MYHgy4qrFTaY7rkPVOF6uLY0dL2sgU0mdj6MwWs82i7FKWRbdvipKXRb5c1WQR0IltFLisvmthSmW5bR/x5EbN1loG3i7pf7iO5wVAcUv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CDYmHxVG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55JDhMwN023126
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3qODGqf9VJdSUiKvIQsg8Q9NQxhvtEVcDlmVqRiAwAs=; b=CDYmHxVGcb/LeutO
	zeczfjlS323GwLE8rWDj71hkBBefek7dP1iNG3guUA6IcFlDxFclpK1ciZ/JCQkY
	TWoiqSD8caZ2T5hheWs8TjTl3CBMNv1FIHoymKgMUUR+itmKpao0h9iTEdFL6Yf6
	u4JbKJeteXMirTyWC69efckUuCoIeUx8kMHZbMK+Y859b54mPlvUE3tVDPPBE/C+
	n90lzfWEsssZwYzXJIF6COVBDN1Wx8sDQSETCqQSEN9ASSMADHxl3PgSsIXrO3rE
	pHhwjZk5gyUebIr5Lp6v0vkv5F6HyXv2vavBMEGWJ91St7/EuuzbLAVEr+0KeL90
	+nRnJg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hd8b9n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5cd0f8961so183561585a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:20:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750342816; x=1750947616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qODGqf9VJdSUiKvIQsg8Q9NQxhvtEVcDlmVqRiAwAs=;
        b=Sju4V7ikBJ0LWK83IghmEsE7D4ITFcr1BITO7iMtmqwooMxOZ6NH87lNANUueGJgFB
         u0HzTGxa1rgZNgYoG0pBHp8QjLGad1NOJKgaOXAf0MMX9jzf0wOgGmq+qFrv7vkEmuHN
         nGa3mIlJ7zNwITnt6oi3wLawb8QItCrvYlmo9ZHofcGjj21gXDktDc3XTGFh8PV90Ke4
         kufcjg+zOG6HbD7UFKbLNnjFSK2aznDzb1DpMvmF090M+5KqgG/R0FmqonnhgjyMt2n8
         aONo0xDypUcBKg7ppYme3AScdge796jba5VhZnnLhlWu5Qs2jpllO6/v03mwMHJhQ5q0
         Yojg==
X-Forwarded-Encrypted: i=1; AJvYcCUx7Ff7ExrexbxM8YPGMaRsCPOqXheD734r9L60+PNPl6tF7ueHJ7pS/mh7Er89VSN5hJmFw2uleHpc@vger.kernel.org
X-Gm-Message-State: AOJu0YwQIzJTx4kKw+rrXgwJrWVZbJ2WXDCnbHN4OXxx5tG6r2b0yPfp
	BuDacZtO6xLaXk7VrI3Gu78M6VDJ5p7FxiW/RsqppFz3FkCNx4noRu4TtQZpStg8u684CTNLn6S
	uqWtfTca13HpS/9+CoHiiUsfcnhFkML2WEWu20oklysoTjrhWTkEyMxw8gTCqr0qb
X-Gm-Gg: ASbGncvJbjwfoMNmN1HOvMJwm2U1+nTnPn12nYB38tY/7Fq3nm5hWlPrISUPAFeM9u3
	js2B0zEUGdnkWr8dj4LWG+nvMTX+IcN2v8V6DqJTMC0KIjbrTGBOzzsF/AK1ZravKgYURp81Fno
	BDLKLo+bGsa5cS/pB0/p3IX2dLH3yMRqlTiqG9UM05wVWidrYLcEGxYD+E/jF65ipOh0H2zhyJD
	OJrd6+n2zmyMBQKZiJoQfdwnnwUzRTo4rqCvl6ecoBv/7rqvWlbOFJ9+LIXmbvBQaWWZC/TByfz
	oxqcQjqiWBTM8KmEv27OLmCw1ECh0wuWt+h1osmzZDktEwHYh5wOePq+aKOZUxXul249bhgkPoE
	Y
X-Received: by 2002:a05:620a:1a0c:b0:7d3:b8d7:a9a3 with SMTP id af79cd13be357-7d3c6cd8471mr2728882885a.29.1750342816273;
        Thu, 19 Jun 2025 07:20:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPJPPRNcZ8kHYxDa/J9cN97e03uBxW3LMwXBfnhk+BWCGhmRVlJ8NeVO7dEVheSMxMl0fG0w==
X-Received: by 2002:a05:620a:1a0c:b0:7d3:b8d7:a9a3 with SMTP id af79cd13be357-7d3c6cd8471mr2728876285a.29.1750342815665;
        Thu, 19 Jun 2025 07:20:15 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a58963561csm7254312f8f.47.2025.06.19.07.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 07:20:15 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/7] media: venus: Add QCM2290 support with AR50_LITE core
Date: Thu, 19 Jun 2025 16:20:05 +0200
Message-Id: <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDExOSBTYWx0ZWRfX7wdOqeDZDp1V
 zvjxVPVP0JBOrm2zoE13OVl7fIqzxrn62F7tGWp1Q8Wmw6uNiRhQRrDdS4FbfTt1bv/Qq/ouXpy
 bEO3H0dYWrhj2GukDbDfi3oRQKcP426JzA85Iv5u7FyHII9ZSeg5nmxc1eKFRitj3JwKR4oajKn
 nGx1Hk0HTA7Y0lq4QErq3TLMgmrPpRrgWLttSoINScLaMhBeurwsAXLf9K0GEYdZq4bwh2FFP/q
 r1ji0OkhuMpEEQ7ZoOXJlZqezZIlbASm7JgxaeDVVaJlIqn9SadgyAAK8EdSn3d30LgJb5U5nWL
 bGi7rrmAmCZZxO333msT0YPGyb424wAEaRFXrze+W9XX2HWgjPWE5J3RG/2WrODKg8X1bZZuD+Z
 MCfkZP72Vl6WcSsLScdz4vC70qJCzf9hOapfWx6592S7qxMXvQMVv4dVMJawsLv8Au2NDLVh
X-Authority-Analysis: v=2.4 cv=PtaTbxM3 c=1 sm=1 tr=0 ts=68541cb2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=vaIsIKZIAAAA:8 a=YmGZQoAjZiUEEbKiF_4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=rh-XPM1-DYv4t-UOgbwD:22
X-Proofpoint-ORIG-GUID: xxzLXjTMOiba8HXvKQbts5OWyhDuGQcN
X-Proofpoint-GUID: xxzLXjTMOiba8HXvKQbts5OWyhDuGQcN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506190119

Changes since v1:
- Add IS_HFI macro usage
- Move schema patch to top
- Fix commit messages

This patch series adds support for the Venus video decoder/encoder block
present on the Qualcomm QCM2290.

The QCM2290 integrates an AR50_LITE core, a low-power implementation of
Venus supporting H.264, HEVC (H.265), and VP9 decoding.

The series includes:
  • DT binding schema for qcom,qcm2290-venus
  • SoC integration via qcm2290.dtsi
  • Resource table definitions and frequency scaling
  • Platform capability registration for the AR50_LITE core

Decoding was verified on the QCOM RB1 platform using GStreamer with V4L2-based
decode plugins. The following pipelines were used for playback 1280x720 and
1920x1080 H.264, HVEC and VP9 videos from https://www.elecard.com/videos.

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
  ! matroskademus ! queue ! v4l2vp8dec \
  ! videoconvert ! autovideosink

---

Jorge Ramirez-Ortiz (7):
  dt-bindings: media: venus: Add qcm2290 dt schema
  media: venus: helpers: add IS_VPU() and IS_HFI() macros
  media: venus: use IS_HFI() macro for multi-version check
  media: venus: vdec: AR50_LITE video core support
  media: venus: hfi_plat_v6_lite: Populate decode capabilities
  media: venus: core: Add qcm2290 DT compatible and resource data
  arm64: dts: qcom: qcm2290: Add venus video node

 .../bindings/media/qcom,qcm2290-venus.yaml    | 117 ++++++++++++++
 arch/arm64/boot/dts/qcom/qcm2290.dtsi         |  45 ++++++
 drivers/media/platform/qcom/venus/Makefile    |   2 +-
 drivers/media/platform/qcom/venus/core.c      |  51 +++++-
 drivers/media/platform/qcom/venus/core.h      |  28 +++-
 drivers/media/platform/qcom/venus/firmware.c  |   8 +-
 drivers/media/platform/qcom/venus/helpers.c   |  81 ++++++++++
 drivers/media/platform/qcom/venus/helpers.h   |   2 +
 .../media/platform/qcom/venus/hfi_helper.h    |  10 +-
 .../media/platform/qcom/venus/hfi_platform.c  |   2 +
 .../media/platform/qcom/venus/hfi_platform.h  |   1 +
 .../qcom/venus/hfi_platform_v6_lite.c         | 148 ++++++++++++++++++
 drivers/media/platform/qcom/venus/hfi_venus.c |  19 ++-
 .../media/platform/qcom/venus/pm_helpers.c    |   1 +
 drivers/media/platform/qcom/venus/vdec.c      |  17 +-
 15 files changed, 504 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
 create mode 100644 drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c

-- 
2.34.1


