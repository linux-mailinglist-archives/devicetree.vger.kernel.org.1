Return-Path: <devicetree+bounces-195684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD898B02A44
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 11:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED91416CDCC
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 09:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7EF5273813;
	Sat, 12 Jul 2025 09:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OEEpMXPk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF80C320F
	for <devicetree@vger.kernel.org>; Sat, 12 Jul 2025 09:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752312801; cv=none; b=PqmmZkgvEWWDYWsxKdphAn2CPu/CxmhQjCG0a+7+A3ukHqa89eQmq6MX5Ttse5u/5yJ+1QxPWeZOk8cgTh4T0lKOETYL8sx1NQsayhV7ZbMxyi1wg2p4FI5DS/9oXYPQj3hPBUoeMEkcrebsMAxJEUfJodNnqOO9LQ/do8GV8x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752312801; c=relaxed/simple;
	bh=5UdXn8k+oY3qC22jobCZHJUHpLut88yQEeaHyPm54ns=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QzH9dyRTS0C+eTPualgH5YMXBTEGqxyp/egKSl9uheQUgPqeaZy7uJtflWA+Og6S3GcslabmC6/6oxYg1isysc3W/fg9lAJBBPp9ubgqajlK5eAW9tS0wTul58Ea5XQEscdn48HR8Vx26RzTrMReIMb0PUHdYdtARohppSgRcDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OEEpMXPk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56C90Mi1030523
	for <devicetree@vger.kernel.org>; Sat, 12 Jul 2025 09:33:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9eJIKAYvQhbBKdExfKxSSqD3
	SqghwuUjx6hXINkrmmU=; b=OEEpMXPkgsWc7EusiVf2vKXwyDVxPbkgfBHddHPd
	YSrXBj+eHiHKDwhLCtRBj8zw8opmeiOa+HmL5ab3jd8YZcJqasJe+qdbceCwZTL9
	h0dHqveieblqsOVAOGfGc4ycNJVxGZsZEChr6vqDqniGfmSaIaSosSRfyBMic1Ox
	p9CjRTgaxIuL8mMqja5CE4NOjq6xeu5HI6wEGsj/WZoJSLjGfbH8Uw4IjqSj57oi
	Y/E0Q/GHbnkCMVr4gyuScizo7/l0izbv4TR2lgCvgmQlKYITlBk7nND0EEG0KCUI
	DQN/qdaY/5QSw83vGaVWuaBH2CGfz/P+TH/ceBvjKp0ZTw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47uftm8duh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 12 Jul 2025 09:33:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a42d650185so35291911cf.0
        for <devicetree@vger.kernel.org>; Sat, 12 Jul 2025 02:33:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752312792; x=1752917592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9eJIKAYvQhbBKdExfKxSSqD3SqghwuUjx6hXINkrmmU=;
        b=fgOViPdGlKl9f2sxUtFVf63V47GXpP/XxCby/ZlZgcCC+6lZYrzbwphdNBEoDCZQHo
         s1ELFe/YiEqL13HoZtS/ha19kMeUto0facPzLBsBg0VzIE7XiKKi4VxJqs44uoiGmntT
         s38MtDdgkjNmGxi7g1yiiYhst0ZO3kBNG6nqsg4ecj+oaBN6SPEA/XI0k7HtbP/hLIJf
         odxIWhJ7Djt1R1JnTtxXxC94OY9qBG09tfAs4XDkg+uG/oN6BPMq9nTePvdm9bIBBDyr
         lWPFOgXUKAdb/Hrseo/cbKmo/VbVmMnRMDBFppi4i8R4XIateOweT4m7/eie/D1fS8k6
         v1dw==
X-Forwarded-Encrypted: i=1; AJvYcCXxxqUIia8rogJRMLwUmjAiam+nduj9fP5AviVZaSKrmUrtMTOOPQGAyfcXN5u7jxSWSLhJa9zG3tBd@vger.kernel.org
X-Gm-Message-State: AOJu0YxWDJExzvta7BbWWDXeof+ZkSLrzjvvlRNAFS9ia5P6bdjAEuSE
	5CwkqyRxnxwtccQQ3p/fsu8yYtIeI6nn7kz8rDih4uVJ0F3AIHR3tOurU+TTTHSc7z1nGNX5y8F
	UyrN3RH+3m1OkxtfBEfWY7ai/p+v0DPfcI4ckUglmRFxSwXcaysf7C11TTPLtOyMS
X-Gm-Gg: ASbGncv0YxWMVtAwGBU8qUdWv5ihSIDQaWG1PVQF2fkDAIT/Y52UoC5jOhU4YtIdc81
	VnzGgfE/Z7pCESgQRcNDEKuzj8HD/PweRlAfvIkgA1sx+deYMRy53g8htiZmR54H/E+cKJg9WHB
	wHi42T+qd3Qd+zJjfdQld+Kab5DsXZkuPDWBRNFT8akic6k1RM/tP0/csDr0qRlgM0oimgkziCr
	/jWu4sbAbIogHgAwa0NhHCN7pogm3fa2vtGrqPsKjoYDUI/t1ApNZwLY0AqR4G891knnuR/aOgg
	M1an/WREDFnNsp6okK1HNZeKNx7IYwIKYvg1t6kPLlMpNULxchJbIJxKfkORIs9drq8Gl+j9T2g
	=
X-Received: by 2002:a05:620a:472c:b0:7d3:c67f:7532 with SMTP id af79cd13be357-7de0709c6dbmr1023861085a.40.1752312792295;
        Sat, 12 Jul 2025 02:33:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPMIYlDxJXmo/JxnHC46PqfmGQlInNLhjU3or7FBq0Bji8zzXiaTA2X7k32WJ7OoyNKLpBxA==
X-Received: by 2002:a05:620a:472c:b0:7d3:c67f:7532 with SMTP id af79cd13be357-7de0709c6dbmr1023859185a.40.1752312791822;
        Sat, 12 Jul 2025 02:33:11 -0700 (PDT)
Received: from trex (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4560db56529sm5995025e9.26.2025.07.12.02.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jul 2025 02:33:11 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Sat, 12 Jul 2025 11:33:09 +0200
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        robh@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        amit.kucheria@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/7] media: venus: hfi_plat_v4: Add capabilities for
 the 4XX lite core
Message-ID: <aHIr1fPSTv0nGSQc@trex>
References: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
 <20250708180530.1384330-5-jorge.ramirez@oss.qualcomm.com>
 <7d50318e-1189-15aa-8c26-9c522c3194c4@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d50318e-1189-15aa-8c26-9c522c3194c4@quicinc.com>
X-Authority-Analysis: v=2.4 cv=AI4FyeZ1 c=1 sm=1 tr=0 ts=68722bd9 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=RK2QijgDkECOggW0PlwA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: sdSAzH9Lq2C2zC1mqj2lUBpIvVkwUhEL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEyMDA3NCBTYWx0ZWRfX7welii5SHjtf
 hN+zzZbxRzazOF45EzbYDq//XQ+iNRha87pJizRfqGfSFeHgmmbfE722oJMUX+lqrnoGUfXtpOq
 ocWVk9YTlwegue7pUEX59ZQ82BEDXn4+frW1x7Vf2qGoZ1KQNKc8aP5wQm5H+ZVL2Rx+QCjsIOP
 Ly48Bv39v3RuA4sG3+zu02p0ofQhZokFPNyvUzLt2NdvQFqI0tA6tKjw3TZq1ZH/FwOJ6kARdZG
 VbICp/emjk5XHENn5afzpdrt36bj6wvpufFDOSg502S93/F8HcWcXUl+rpHhULWGhxUpiHwCeUS
 UIqCWvqDY6qaqtq88dAy/C5prghAsKhZPXgepTgdTzBr2TVKHuXhGFrbHJZTVddC/yGNOdlon64
 KO16qrxif8QaY8/LtvC2TZFfISSq0dMzqwWTG2KRlqseEDkN9m+C1ei2qgVniXvxNc3CNDQW
X-Proofpoint-GUID: sdSAzH9Lq2C2zC1mqj2lUBpIvVkwUhEL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-12_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 phishscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507120074

On 10/07/25 14:51:08, Dikshita Agarwal wrote:
> 
> 
> On 7/8/2025 11:35 PM, Jorge Ramirez-Ortiz wrote:
> > Populate the HFI v4 lite capability set used by the AR50_LITE video
> > core.
> > 
> > These capabilities define the supported codec formats and operational
> > limits specific to this streamlined VPU variant.
> > 
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > ---
> >  .../platform/qcom/venus/hfi_platform_v4.c     | 165 +++++++++++++++---
> >  1 file changed, 145 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/media/platform/qcom/venus/hfi_platform_v4.c b/drivers/media/platform/qcom/venus/hfi_platform_v4.c
> > index c8e0f8040649..4b7271468ec4 100644
> > --- a/drivers/media/platform/qcom/venus/hfi_platform_v4.c
> > +++ b/drivers/media/platform/qcom/venus/hfi_platform_v4.c
> > @@ -245,25 +245,149 @@ static const struct hfi_plat_caps caps[] = {
> >  	.num_fmts = 4,
> >  } };
> >  
> > +static const struct hfi_plat_caps caps_lite[] = {
> > +{
> > +	.codec = HFI_VIDEO_CODEC_H264,
> > +	.domain = VIDC_SESSION_TYPE_DEC,
> > +	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
> > +	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
> > +	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
> > +	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
> > +	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
> > +	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
> > +	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
> > +	.num_caps = 7,
> > +	.pl[0] = { HFI_H264_PROFILE_BASELINE, HFI_H264_LEVEL_5},
> > +	.pl[1] = {HFI_H264_PROFILE_MAIN, HFI_H264_LEVEL_5},
> > +	.pl[2] = {HFI_H264_PROFILE_HIGH, HFI_H264_LEVEL_5},
> > +	.pl[3] = {HFI_H264_PROFILE_CONSTRAINED_BASE, HFI_H264_LEVEL_5},
> > +	.pl[4] = {HFI_H264_PROFILE_CONSTRAINED_HIGH, HFI_H264_LEVEL_5},
> > +	.num_pl = 5,
> > +	.fmts[0] = {HFI_BUFFER_OUTPUT, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[1] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[2] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12},
> > +	.fmts[3] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV21},
> > +	.num_fmts = 4,
> > +}, {
> > +	.codec = HFI_VIDEO_CODEC_HEVC,
> > +	.domain = VIDC_SESSION_TYPE_DEC,
> > +	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
> > +	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
> > +	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
> > +	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
> > +	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
> > +	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
> > +	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
> > +	.num_caps = 7,
> > +	.pl[0] = {HFI_HEVC_PROFILE_MAIN, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0 << 28 },
> > +	.pl[1] = {HFI_HEVC_PROFILE_MAIN10, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0 << 28 },
> > +	.num_pl = 2,
> > +	.fmts[0] = {HFI_BUFFER_OUTPUT, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[1] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[2] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12},
> > +	.fmts[3] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV21},
> > +	.num_fmts = 4,
> > +}, {
> > +	.codec = HFI_VIDEO_CODEC_VP9,
> > +	.domain = VIDC_SESSION_TYPE_DEC,
> > +	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
> > +	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
> > +	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
> > +	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
> > +	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
> > +	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
> > +	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
> > +	.num_caps = 7,
> > +	.pl[0] = {HFI_VP9_PROFILE_P0, 200},
> > +	.pl[1] = {HFI_VP9_PROFILE_P2_10B, 200},
> > +	.num_pl = 2,
> > +	.fmts[0] = {HFI_BUFFER_OUTPUT, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[1] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[2] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV12},
> > +	.fmts[3] = {HFI_BUFFER_OUTPUT2, HFI_COLOR_FORMAT_NV21},
> > +	.num_fmts = 4,
> > +}, {
> > +	.codec = HFI_VIDEO_CODEC_H264,
> > +	.domain = VIDC_SESSION_TYPE_ENC,
> > +	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
> > +	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
> > +	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
> > +	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
> > +	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
> > +	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
> > +	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
> > +	.caps[7] = {HFI_CAPABILITY_HIER_P_NUM_ENH_LAYERS, 0, 6, 1},
> > +	.caps[8] = {HFI_CAPABILITY_ENC_LTR_COUNT, 0, 4, 1},
> > +	.caps[9] = {HFI_CAPABILITY_MBS_PER_SECOND_POWERSAVE, 0, 244800, 1},
> > +	.caps[10] = {HFI_CAPABILITY_I_FRAME_QP, 0, 51, 1},
> > +	.caps[11] = {HFI_CAPABILITY_P_FRAME_QP, 0, 51, 1},
> > +	.caps[12] = {HFI_CAPABILITY_B_FRAME_QP, 0, 51, 1},
> > +	.caps[13] = {HFI_CAPABILITY_SLICE_BYTE, 1, 10, 1},
> > +	.caps[14] = {HFI_CAPABILITY_SLICE_MB, 1, 10, 1},
> > +	.num_caps = 15,
> > +	.pl[0] = {HFI_H264_PROFILE_BASELINE, HFI_H264_LEVEL_5},
> > +	.pl[1] = {HFI_H264_PROFILE_MAIN, HFI_H264_LEVEL_5},
> > +	.pl[2] = {HFI_H264_PROFILE_HIGH, HFI_H264_LEVEL_5},
> > +	.pl[3] = {HFI_H264_PROFILE_CONSTRAINED_BASE, HFI_H264_LEVEL_5},
> > +	.pl[4] = {HFI_H264_PROFILE_CONSTRAINED_HIGH, HFI_H264_LEVEL_5},
> > +	.num_pl = 5,
> > +	.fmts[0] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12},
> > +	.fmts[1] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[2] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_YUV420_TP10_UBWC},
> > +	.fmts[3] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_P010},
> 10 bit encoder is not supported on AR50 LITE.
> > +	.num_fmts = 4,
> > +}, {
> > +	.codec = HFI_VIDEO_CODEC_HEVC,
> > +	.domain = VIDC_SESSION_TYPE_ENC,
> > +	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
> > +	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1920, 1},
> > +	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
> > +	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
> > +	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
> > +	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
> > +	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
> > +	.caps[7] = {HFI_CAPABILITY_HIER_P_NUM_ENH_LAYERS, 0, 6, 1},
> > +	.caps[8] = {HFI_CAPABILITY_ENC_LTR_COUNT, 0, 4, 1},
> > +	.caps[9] = {HFI_CAPABILITY_MBS_PER_SECOND_POWERSAVE, 0, 244800, 1},
> > +	.caps[10] = {HFI_CAPABILITY_I_FRAME_QP, 0, 51, 1},
> > +	.caps[11] = {HFI_CAPABILITY_P_FRAME_QP, 0, 51, 1},
> > +	.caps[12] = {HFI_CAPABILITY_B_FRAME_QP, 0, 51, 1},
> > +	.caps[13] = {HFI_CAPABILITY_SLICE_BYTE, 1, 10, 1},
> > +	.caps[14] = {HFI_CAPABILITY_SLICE_MB, 1, 10, 1},
> > +	.num_caps = 15,
> > +	.pl[0] = {HFI_HEVC_PROFILE_MAIN, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0},
> > +	.pl[1] = {HFI_HEVC_PROFILE_MAIN10, HFI_HEVC_LEVEL_5 | HFI_HEVC_TIER_HIGH0},
> > +	.num_pl = 2,
> > +	.fmts[0] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12},
> > +	.fmts[1] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_NV12_UBWC},
> > +	.fmts[2] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_YUV420_TP10_UBWC},
> > +	.fmts[3] = {HFI_BUFFER_INPUT, HFI_COLOR_FORMAT_P010},
> 10 bit encoder is not supported on AR50 LITE.
> 
> Thanks,
> Dikshita
> > +	.num_fmts = 4,
> > +} };
> > +
> >  static const struct hfi_plat_caps *get_capabilities(unsigned int *entries,
> >  						    bool lite)
> >  {
> > -	WARN_ON(lite);
> > +	*entries = lite ? ARRAY_SIZE(caps_lite) : ARRAY_SIZE(caps);
> >  
> > -	*entries = ARRAY_SIZE(caps);
> > -	return caps;
> > +	return lite ? caps_lite : caps;
> >  }
> >  
> >  static void get_codecs(u32 *enc_codecs, u32 *dec_codecs, u32 *count, bool lite)
> >  {
> > -	WARN_ON(lite);
> > -
> > -	*enc_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
> > -		      HFI_VIDEO_CODEC_VP8;
> > -	*dec_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
> > -		      HFI_VIDEO_CODEC_VP8 | HFI_VIDEO_CODEC_VP9 |
> > -		      HFI_VIDEO_CODEC_MPEG2;
> > -	*count = 8;
> > +	if (lite) {
> > +		*enc_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC;
> > +		*dec_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
> > +			      HFI_VIDEO_CODEC_VP9;
> > +		*count = 5;
> > +	} else {
> > +		*enc_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
> > +			      HFI_VIDEO_CODEC_VP8;
> > +		*dec_codecs = HFI_VIDEO_CODEC_H264 | HFI_VIDEO_CODEC_HEVC |
> > +			      HFI_VIDEO_CODEC_VP8 | HFI_VIDEO_CODEC_VP9 |
> > +			      HFI_VIDEO_CODEC_MPEG2;
> > +		*count = 8;
> > +	}
> >  }
> >  
> >  static const struct hfi_platform_codec_freq_data codec_freq_data[] =  {
> > @@ -277,14 +401,21 @@ static const struct hfi_platform_codec_freq_data codec_freq_data[] =  {
> >  	{ V4L2_PIX_FMT_VP9, VIDC_SESSION_TYPE_DEC, 200, 10, 200 },
> >  };
> >  
> > +static const struct hfi_platform_codec_freq_data codec_freq_data_lite[] = {
> > +	{ V4L2_PIX_FMT_H264, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> > +	{ V4L2_PIX_FMT_HEVC, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> > +	{ V4L2_PIX_FMT_VP9, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> > +	{ V4L2_PIX_FMT_H264, VIDC_SESSION_TYPE_ENC, 675, 0, 675 },
> > +	{ V4L2_PIX_FMT_HEVC, VIDC_SESSION_TYPE_ENC, 675, 0, 675 },
> > +};
> > +
> >  static const struct hfi_platform_codec_freq_data *
> >  get_codec_freq_data(u32 session_type, u32 pixfmt, bool lite)
> >  {
> >  	unsigned int i, data_size = ARRAY_SIZE(codec_freq_data);
> >  	const struct hfi_platform_codec_freq_data *found = NULL;
> > -	const struct hfi_platform_codec_freq_data *data = codec_freq_data;
> > -
> > -	WARN_ON(lite);
> > +	const struct hfi_platform_codec_freq_data *data = lite ?
> > +					codec_freq_data_lite : codec_freq_data;

fixing data_size here (different array length)

