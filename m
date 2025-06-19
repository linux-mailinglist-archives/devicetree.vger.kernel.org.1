Return-Path: <devicetree+bounces-187592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA593AE08EA
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07FC97A2DC3
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E2E2264BB;
	Thu, 19 Jun 2025 14:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hpWRAhTO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32FB1B3923
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750343927; cv=none; b=NBYRmfGRNuLypk/5DcQslkhfUB+z4Klvrw2RW3DO6TdB5ofCnY2XQ9TVazTgNDS/+zs8SdkkcE/f2jVKU+WBfvETyFn3fu8NBzxe1urSZakn4zNp8H1JOhoHG5cY/rWnoKhkxJOV5So8WM8u8ygh1vN7lTZsQQUcSsKOXSDlyY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750343927; c=relaxed/simple;
	bh=BGP1A6f3/Dqys8p7Pn58ETLdExSqOMon07m/48hsYtM=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f4C2owCEBycnLCg5xGNgopXYBen1B02XzyMccvl+19C7ZN+JxeUjAdDhh8qkhrxuKkkhrNkW9gu3SPfzaD5ak8i/6rv1W91I6REzcMTJ02bheMQlMeOezcDHXKb0CTfy4TafTglaQ9X2q0P74wGiwj6T31WuvAjsSMReZIv5CSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hpWRAhTO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55J6XHbS014411
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:38:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D6g2LQnnqCuGuYwp8e+2Z2go0IbbPglNWca9WgcobOA=; b=hpWRAhTOhrYNvd1D
	pLKHopW7D44aeOac+ScU40L0IbvN1qV/splVgdfV9n45SN2Cq+372AuD4ULQdm8O
	i+UFbrRx+9B0PrAir5P+uv7vOF5Oc7J3iCo6bvEAXF/zzzi5/x086hKwU4fgBFwt
	SMX/9kXSQoWrCSe1BvnrClSFkMun4cEBV1C11Ji7bZJAyUCxEGgUuJA3u9S4MS3O
	Wa7x4WaplWO6SoSH77wMoFvnoT2F1qRbN4BwLMy4vBdR+xYDjBSKNkJUZ68LDGuo
	kMMp5F3ubpGMf8R5NP7A4dUptPLuETimQcpIoNQEOYnmYT/YAEP5RvgCyqSrytGp
	hdJh8g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791cs02yc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:38:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e2872e57so125455585a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:38:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750343923; x=1750948723;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D6g2LQnnqCuGuYwp8e+2Z2go0IbbPglNWca9WgcobOA=;
        b=liGYpFfAgfs9gOFTPKboDeQ5BSzhuIn79TcM6JhpHJMjnEjKvQnls3MKXpqRr8kL6d
         apSzx2y+5+2lWMhWJmGb4iFtqHdSxVGskP4PUdi9ppP85YQ/Axta+oZYvijVKhoYQCSA
         FlXBiDP7tAYNmj8/v9sCo4bO68tU3rmGLs6B0exvLf/d475cgn9Wb/LHX/RBw19CuNYX
         WGKayNj5zrL8b6N0lUEYTNI2Eyt2ieHPSD0Mva9A2T+gBPAncXGXOy7GtiGzoZCrM3vJ
         K0tj3lKwAcKRCGh4P0OsTUkPCMevi3dzxFBXQfAIP0MJlGLms9XiaEguG4JvL0D3l41+
         klrw==
X-Forwarded-Encrypted: i=1; AJvYcCV22NlK0bShe+4WdEVLJK84RhNM29H/Bh4maj9DF768GIPoxH4l5wwDgIhoOQT3vwixGWrMtYucC/k7@vger.kernel.org
X-Gm-Message-State: AOJu0YydMWHZI0Okq+t5VQIUHR5gzLSuDHspH8YG5Q1aIktJwrubY8+H
	LRqV7ig5q7ZRWiI8GZ0HAi/M60klm4oIdJzlK/qn8/ZjhZy6mrmFsLEnQ38xO7G6mN7TJrPDwJV
	c3hFV3dyzo9lhYsKPvAWuhuxcBYFX36mxxVaWcwfuv4V2cDbPRqchMps0rxLw0zkM
X-Gm-Gg: ASbGnct1HU693Fau/7senyWVjd2C6Tdk1Q1VWLJWbnm9sL0dj8X/f3ehXPMk3hqRCRS
	pTFPPnnAJEgUeam9npK2XvO89A67QXz8xn5UQp8NZvF/Axz5ZH0x16p4dfie2tzo+tXEC9BSyK9
	rNPmehbO+wwaocV6VkiBops5gXUzawsfY1wuu+4yDCeB7jY3C2kPl0rH+Zu0WLWX+dpkrXRRwSI
	wglQmI4jSQrrTQo8ncVJvbXXZ1kW+MqzeMOlyTCjUjau6cq+lxPOHykPNm6WazqcCgnPXB8JzsZ
	81YHoSLQ9lq25f7iyoR5MVhHz6VRLj8yQ7nRjYLms7FsQUm6Veo6p60ZYw==
X-Received: by 2002:a05:620a:400c:b0:7ca:f447:c676 with SMTP id af79cd13be357-7d3c6cf665fmr3325320885a.43.1750343922638;
        Thu, 19 Jun 2025 07:38:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtbDwfaodiDTGqJBEvXdKxXmsKJ3Vx35CJzmDGhrgDBeYHWSnT/CP7FfnMC4RhtN0mIbVagg==
X-Received: by 2002:a05:620a:400c:b0:7ca:f447:c676 with SMTP id af79cd13be357-7d3c6cf665fmr3325315585a.43.1750343922045;
        Thu, 19 Jun 2025 07:38:42 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e98b53esm30470755e9.17.2025.06.19.07.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 07:38:41 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 19 Jun 2025 16:38:35 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/7] media: venus: Add QCM2290 support with AR50_LITE
 core
Message-ID: <aFQg6x+FxXDY4P5m@trex>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
 <672b5db1-e045-4625-bad6-83224c27c07f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <672b5db1-e045-4625-bad6-83224c27c07f@linaro.org>
X-Proofpoint-ORIG-GUID: hppukxO4i8MUvKUjifAMqfZNh59ZCJPa
X-Authority-Analysis: v=2.4 cv=BoedwZX5 c=1 sm=1 tr=0 ts=685420f3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=vaIsIKZIAAAA:8 a=atVKquzB7ZhheazsFkIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=rh-XPM1-DYv4t-UOgbwD:22
X-Proofpoint-GUID: hppukxO4i8MUvKUjifAMqfZNh59ZCJPa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDEyMSBTYWx0ZWRfX/zAAw0NciI74
 HWqBkE0b0Rwjmm3NkbQDTxafVPebfHVXxP9pLbnd5edHI9spctsyUuQzjI/MeqKQZ6kz/kKyJBC
 +A3+SZPkAwp+QIgYRREqqOw4qWU6Bn30+5H2UNKN6VbSU0Z2r9RPhE893yQVNOEZFHT4+FLvjte
 qR/d6pNS0i5Klzea12Qo+MuvPD/xKePTEFqJvbDtO87OdNUcstonox2kRQ18ztb9hBwr6G4eyXA
 mavt19PBOM8PX1cVMPYT00pTaB8Zq4EIAROsXJg4G6SAjbBE8smNPHDdMhmEtsWG4IaLOyZEPZC
 U/xYNkE2b950FQ4RE02S+BhDRS8NowR8pDnAIyaGW2IQf+aGi9DOPLqs94ARhm0R4kVGMddnksG
 C/AS9KmtTPWoo/TuAiaMJ9PdXWA8BHbcjoJyvnT6qtxaFYHEi42h9cIMIv/hiwLqFIsEl/hE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190121

On 19/06/25 15:29:02, Bryan O'Donoghue wrote:
> On 19/06/2025 15:20, Jorge Ramirez-Ortiz wrote:
> > Changes since v1:
> > - Add IS_HFI macro usage
> > - Move schema patch to top
> > - Fix commit messages
> > 
> > This patch series adds support for the Venus video decoder/encoder block
> > present on the Qualcomm QCM2290.
> > 
> > The QCM2290 integrates an AR50_LITE core, a low-power implementation of
> > Venus supporting H.264, HEVC (H.265), and VP9 decoding.
> > 
> > The series includes:
> >    • DT binding schema for qcom,qcm2290-venus
> >    • SoC integration via qcm2290.dtsi
> >    • Resource table definitions and frequency scaling
> >    • Platform capability registration for the AR50_LITE core
> > 
> > Decoding was verified on the QCOM RB1 platform using GStreamer with V4L2-based
> > decode plugins. The following pipelines were used for playback 1280x720 and
> > 1920x1080 H.264, HVEC and VP9 videos from https://www.elecard.com/videos.
> > 
> > [H.264]
> > gst-launch-1.0 filesrc location=videos/xxxxx.mp4 \
> >    ! qtdemux name=demux demux.video_0 ! queue ! h264parse ! v4l2h264dec \
> >    ! videoconvert ! autovideosink
> > 
> > [H.265]
> > gst-launch-1.0 filesrc location=videos/xxxxx.mp4 \
> >    ! qtdemux name=demux demux.video_0 ! queue ! h265parse ! v4l2h265dec \
> >    ! videoconvert ! autovideosink
> > 
> > [VP9]
> > gst-launch-1.0 filesrc location=videos/xxxxx.webm \
> >    ! matroskademus ! queue ! v4l2vp8dec \
> >    ! videoconvert ! autovideosink
> > 
> > ---
> > 
> > Jorge Ramirez-Ortiz (7):
> >    dt-bindings: media: venus: Add qcm2290 dt schema
> >    media: venus: helpers: add IS_VPU() and IS_HFI() macros
> >    media: venus: use IS_HFI() macro for multi-version check
> >    media: venus: vdec: AR50_LITE video core support
> >    media: venus: hfi_plat_v6_lite: Populate decode capabilities
> >    media: venus: core: Add qcm2290 DT compatible and resource data
> >    arm64: dts: qcom: qcm2290: Add venus video node
> > 
> >   .../bindings/media/qcom,qcm2290-venus.yaml    | 117 ++++++++++++++
> >   arch/arm64/boot/dts/qcom/qcm2290.dtsi         |  45 ++++++
> >   drivers/media/platform/qcom/venus/Makefile    |   2 +-
> >   drivers/media/platform/qcom/venus/core.c      |  51 +++++-
> >   drivers/media/platform/qcom/venus/core.h      |  28 +++-
> >   drivers/media/platform/qcom/venus/firmware.c  |   8 +-
> >   drivers/media/platform/qcom/venus/helpers.c   |  81 ++++++++++
> >   drivers/media/platform/qcom/venus/helpers.h   |   2 +
> >   .../media/platform/qcom/venus/hfi_helper.h    |  10 +-
> >   .../media/platform/qcom/venus/hfi_platform.c  |   2 +
> >   .../media/platform/qcom/venus/hfi_platform.h  |   1 +
> >   .../qcom/venus/hfi_platform_v6_lite.c         | 148 ++++++++++++++++++
> >   drivers/media/platform/qcom/venus/hfi_venus.c |  19 ++-
> >   .../media/platform/qcom/venus/pm_helpers.c    |   1 +
> >   drivers/media/platform/qcom/venus/vdec.c      |  17 +-
> >   15 files changed, 504 insertions(+), 28 deletions(-)
> >   create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> >   create mode 100644 drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c
> > 
> 
> Please fix the following.
> 
> ~/my-environment/bin/checkset.sh
> WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
> #16:
> new file mode 100644
> 
> total: 0 errors, 1 warnings, 0 checks, 117 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or
> --fix-inplace.
> 
> 0001-dt-bindings-media-venus-Add-qcm2290-dt-schema.patch has style problems,
> please review.
> 
> NOTE: If any of the errors are false positives, please report
>       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> CHECK: Macro argument reuse 'core' - possible side-effects?
> #33: FILE: drivers/media/platform/qcom/venus/core.h:537:
> +#define MATCH_2(CMD, core, a, b) \
> +	(IS_##CMD##_MATCH(core, a) || IS_##CMD##_MATCH(core, b))
> 
> CHECK: Macro argument reuse 'core' - possible side-effects?
> #35: FILE: drivers/media/platform/qcom/venus/core.h:539:
> +#define MATCH_3(CMD, core, a, b, c) \
> +	(IS_##CMD##_MATCH(core, a) || IS_##CMD##_MATCH(core, b) || \
> +	IS_##CMD##_MATCH(core, c))
> 
> CHECK: Macro argument reuse 'core' - possible side-effects?
> #38: FILE: drivers/media/platform/qcom/venus/core.h:542:
> +#define MATCH_4(CMD, core, a, b, c, d) \
> +	(IS_##CMD##_MATCH(core, a) || IS_##CMD##_MATCH(core, b) || \
> +	IS_##CMD##_MATCH(core, c) || IS_##CMD##_MATCH(core, d))

um ok, I'll rename core, makes sense.

> 
> WARNING: Argument '_1' is not used in function-like macro
> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> 
> WARNING: Argument '_2' is not used in function-like macro
> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> 
> WARNING: Argument '_3' is not used in function-like macro
> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> 
> WARNING: Argument '_4' is not used in function-like macro
> #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */


about the warnings there is nothing that can be done - those parameters
as per the comments are necessarily ignored - that is the way the macro
is supposed to work.

can we not live with them? otherwise I cant do it in a nice way.

> 
> total: 0 errors, 4 warnings, 3 checks, 29 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or
> --fix-inplace.
> 
> 0002-media-venus-helpers-add-IS_VPU-and-IS_HFI-macros.patch has style
> problems, please review.
> 
> NOTE: If any of the errors are false positives, please report
>       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> total: 0 errors, 0 warnings, 0 checks, 16 lines checked
> 
> 0003-media-venus-use-IS_HFI-macro-for-multi-version-check.patch has no
> obvious style problems and is ready for submission.
> CHECK: Macro argument reuse 'core' - possible side-effects?
> #79: FILE: drivers/media/platform/qcom/venus/core.h:525:
> +#define IS_V6(core)     (((core)->res->hfi_version == HFI_VERSION_6XX) || \
> +			 ((core)->res->hfi_version == HFI_VERSION_6XX_LITE))
> 
> CHECK: Blank lines aren't necessary before a close brace '}'
> #153: FILE: drivers/media/platform/qcom/venus/helpers.c:254:
> +
> +}

ok, will remove core from macros

> 
> CHECK: Unnecessary parentheses around 'buftype != HFI_BUFFER_INPUT'
> #215: FILE: drivers/media/platform/qcom/venus/helpers.c:709:
> +		if ((buftype != HFI_BUFFER_INPUT) &&
> +		    (buftype != HFI_BUFFER_OUTPUT) &&
> +		    (buftype != HFI_BUFFER_OUTPUT2))
> 
> CHECK: Unnecessary parentheses around 'buftype != HFI_BUFFER_OUTPUT'
> #215: FILE: drivers/media/platform/qcom/venus/helpers.c:709:
> +		if ((buftype != HFI_BUFFER_INPUT) &&
> +		    (buftype != HFI_BUFFER_OUTPUT) &&
> +		    (buftype != HFI_BUFFER_OUTPUT2))
> 
> CHECK: Unnecessary parentheses around 'buftype != HFI_BUFFER_OUTPUT2'
> #215: FILE: drivers/media/platform/qcom/venus/helpers.c:709:
> +		if ((buftype != HFI_BUFFER_INPUT) &&
> +		    (buftype != HFI_BUFFER_OUTPUT) &&
> +		    (buftype != HFI_BUFFER_OUTPUT2))
>

yeah, ok

> total: 0 errors, 0 warnings, 5 checks, 314 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or
> --fix-inplace.
> 
> 0004-media-venus-vdec-AR50_LITE-video-core-support.patch has style problems,
> please review.
> 
> NOTE: If any of the errors are false positives, please report
>       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> 0004-media-venus-vdec-AR50_LITE-video-core-support.patch:64: bufferes ==>
> buffers, buffered
> 0004-media-venus-vdec-AR50_LITE-video-core-support.patch:65: bufferes ==>
> buffers, buffered
> WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
> #57:
> new file mode 100644
> 
> total: 0 errors, 1 warnings, 0 checks, 171 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or
> --fix-inplace.
> 
> 0005-media-venus-hfi_plat_v6_lite-Populate-decode-capabil.patch has style
> problems, please review.
> 
> NOTE: If any of the errors are false positives, please report
>       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> total: 0 errors, 0 warnings, 0 checks, 52 lines checked
> 
> 0006-media-venus-core-Add-qcm2290-DT-compatible-and-resou.patch has no
> obvious style problems and is ready for submission.
> total: 0 errors, 0 warnings, 0 checks, 51 lines checked
> 
> 0007-arm64-dts-qcom-qcm2290-Add-venus-video-node.patch has no obvious style
> problems and is ready for submission.
>  ~/Development/worktree/merges/linux-6.17-media-platform-qcom-next
> (linux-6.17-media-platform-qcom-next*) [03:28:03]
> deckard$
>

ah thanks, was just going to ask

> deckard$ cat ~/my-environment/bin/checkset.sh
> #!/bin/sh
> if [ -z "$KERNELPATH" ]
> then
> 	echo "Setting KERNELPATH to this directory which is probably what you want"
> 	echo "Please set KERNELPATH when running this utility to over-ride";
> 	echo "KERNELPATH=`pwd` ~/my-environment/bin/checkset.sh"
> 	KERNELPATH=`pwd`
> fi
> for file in *.patch;
> do $KERNELPATH/scripts/checkpatch.pl --strict $file;
> codespell $file;
> done
> 
> ---
> bod

