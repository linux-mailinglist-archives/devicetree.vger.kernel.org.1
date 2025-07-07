Return-Path: <devicetree+bounces-193615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02253AFB071
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFC037A5CB8
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161DD28851F;
	Mon,  7 Jul 2025 09:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ipRjMHMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518AF1DE8BB
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882222; cv=none; b=kBbOPD+iZ/cUX/3hH1aMwFZRVCswJEnQoy9yiCt2joEpcRERjN2MDU+uuinUL6CkZr+MAhJHTGWjKqwZj9HxSLUFW8maWmOeI3rqLkZYnTQCWj36ThENl/LGEPwit8yVGQEKaVsaDVgwxGj7iAsFF7+LJpmRAXfSe7t44iYOuzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882222; c=relaxed/simple;
	bh=18YR99uXCyEZk77ThDFqutW4vFM4pTkYue+/FBulMLg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Od7SQcyKTsHVEpYFnrKV5B2RFvCp1Gh0fRXSvTHe9s/Gc0aAircR/TuGk783+0BT+aBYakX2yj6jAT29HW7gVjGsRX7y/Y9oFQrO9Omp2PTqLnvAzmvyhO+6F/uGm/bm1rs9Cxk8H3hANzQRXXftTX78Vpf3WZuQ0rL5oalSBcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ipRjMHMh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5679HeQe001972
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 09:56:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EOkscAPglu6pNYZf/TxA87OL
	ergxaMCP9y55D8Mo79k=; b=ipRjMHMh7ptxXvwLj+25db+3re9z/kUJtcwn/MPk
	aYGp3b3xrQ63+vhrZLEwf3AsBL4rj8XyPdLEwwZHrqw+Zj1Nd3ifkdt2eY5HfVwj
	lwHSZYHMBo43JaYucfkXmYvz08yrKF3u3EHr131mXd7aiiEL74mHpsHEEO9dLs6z
	zvQhpWIQUbuiXI8OX1/g5aV+PTkIzMrIs2j+S3pjsPX1S10Y6yyTApV7TQSLDH7u
	YPg2CLgFalLCQN+PIhwjxS7kWScnrkmi+teHgVNKnPusKfdhnLSndUDIDCYacjuE
	OXBa88jBSmLh76xpiLjv5kETArloapFNAVPIdEz8XpKa1A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pu0w3sww-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 09:56:58 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d399065d55so375399885a.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:56:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751882217; x=1752487017;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EOkscAPglu6pNYZf/TxA87OLergxaMCP9y55D8Mo79k=;
        b=Sy4XRKJoXTig1JAjm4fsqgUBVlYaNDFQndlHRmBIrsxUgaCKyFuA1rmtnDsRdtfpFI
         OsfaYW/Tf9igyDGbByhsTDRjtIy03/lrkwhVNByBOIqNDlMxtBleRFjlkUDs9BbrPs+A
         8MlxO7bUtARlb3dQ2lDDK9CDtCkf5abQd39afgmonrrq/bHC8yN3OEyh6lDyb5woTQSY
         UAS+xyPgcKtVFuYsLUHwz5+l/W70t/fmDrCOeESW9E1f8hS8mvzulOOelEiUIob2EqeN
         mPXimlKew+3bsEz8FT88gOy5uduIGtVxbJ1h+TR87TgXLkNSmmKBLkxYrLoiTry6zQnx
         oa6g==
X-Forwarded-Encrypted: i=1; AJvYcCX91cJGrBqpgPxuINLyPY1y2JJ2AlfAJym0a5ekqDqSrHiZFI3+naO+IqZM/BELuJQd9BMk/Jj/DgVw@vger.kernel.org
X-Gm-Message-State: AOJu0Yys7EWHJQsvA6+8jU3ccRlEFTUAhFiLEJs0DWGq3qtarLcWp4T+
	9yJrhz1KNKuHO4W4+n+tYKIAbd+yu5CmNBtUYa68pA0aZYFpjIiYUllSmv61tHYZyYW+wYhVsy+
	ahQy9QoIyjzFf2pVTjlw2+ZXoMsPelrIENzn2LlzwmoZwJ8PO5ATSYiJ0GPcsU+zK
X-Gm-Gg: ASbGncv7Ehv3K88lzJw10WBWKkC1y5tB/bkmXu/ZRSkcHDVS8dqvhzUBTHh9H+owwi1
	Yb3mw3SahKD7O/GCxnf0hJIaqIx2dgthlSMq4ZEg8bNLxuoH6SPN6Nd9h8w5reJLqhPThmmAYBw
	7L7v6zTAnK/InCjC2v1nXrDRAGDEKnuSN+sEAvsz6U1d6fDiTrqTd0ZMV1iIqyVFa3yYwJ8on+F
	bgSEXqksbaKmWOkQnuiLq3heOf4TFL6yVHNbg7kZrUCus/IFoPNZhwZSdrTNN9pUatWRLYrc8Mz
	muhcdi4b2LJZqEdVCrSX1uJPsNSHEN0cxDFJOnSURlW+QIRC8jcIGbA=
X-Received: by 2002:a05:620a:8083:b0:7d2:15e:1f9d with SMTP id af79cd13be357-7d5f20b7efamr1156797985a.53.1751882217035;
        Mon, 07 Jul 2025 02:56:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8HJEkPslMRBZD2ONOEBO+PEUNCALtoyCPDK0CyJ4VcqyQXuJqvMV6aeF1c958pDPXhcvw3g==
X-Received: by 2002:a05:620a:8083:b0:7d2:15e:1f9d with SMTP id af79cd13be357-7d5f20b7efamr1156794685a.53.1751882216608;
        Mon, 07 Jul 2025 02:56:56 -0700 (PDT)
Received: from trex (97.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454b16288b5sm108476705e9.9.2025.07.07.02.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:56:56 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 7 Jul 2025 11:56:54 +0200
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/5] media: venus: hfi_plat_v6_lite: Populate decode
 capabilities
Message-ID: <aGuZ5h7LpPu5Pbnr@trex>
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-4-jorge.ramirez@oss.qualcomm.com>
 <bac6a881-90b6-4f33-d9a8-61aa8daea330@quicinc.com>
 <aGuPpzU0VCg45Plg@trex>
 <db7fbfb8-b0fe-58e2-4564-f24d6a551232@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <db7fbfb8-b0fe-58e2-4564-f24d6a551232@quicinc.com>
X-Proofpoint-ORIG-GUID: 7RwzTh4IC5ZGl3VAEHXc_XEY3o2wXWxO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA1NyBTYWx0ZWRfXxhgAb41ukblK
 TxLTGmj5ka2Jn5jb2r8OnV8TExfFtsDFr6GZeEvxb82Ghqestz2tesNYf8TSBT7hPkn1S6310M8
 Irtg0UbzeSFr1M+skRvpxFs2CSc6F6RYFa1qpXxxTTZvECGgcXKdWokzDO+2sxAh4/wnwlJkq4v
 +D/c5QlIlozCsf1YE11/ieThSK/dit12Gb0BVYDLVyufCUC/sPY2hM+PlBEG6Dxhq1DrkMDrKci
 KvWFWctMUIcwWfLrHG64oIKkpJVI/HDmgiiJAHsBX46Z/OIWQBVWEg+Vm1+Kvg31fxmtuL/8xID
 k9AM5K8lrqOWULd26xDxPZSiFe98WduwYQzBrIo3RPqxDMiwEFPFGaOavqZOOotN9uG8n8aok33
 1zauzv4nLY7XjGTUpsBc6/83UaX7iVymhQQSkypHJpP1GYTr0XtE+VFHo+jdiFw379zT+EFM
X-Authority-Analysis: v=2.4 cv=Rd2QC0tv c=1 sm=1 tr=0 ts=686b99ea cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oX6B8lV6/A+qF9mARCc04Q==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8
 a=nYNRSA1dgNPy7Ku2h68A:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-GUID: 7RwzTh4IC5ZGl3VAEHXc_XEY3o2wXWxO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_02,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070057

On 07/07/25 14:59:05, Dikshita Agarwal wrote:
> 
> 
> On 7/7/2025 2:43 PM, Jorge Ramirez wrote:
> > On 27/06/25 19:02:13, Dikshita Agarwal wrote:
> >>
> >>
> >> On 6/26/2025 7:29 PM, Jorge Ramirez-Ortiz wrote:
> >>> Add hfi platform file with decoding capabilities for hfi v6_lite.
> >>>
> >>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> >>> ---
> >>>  drivers/media/platform/qcom/venus/Makefile    |   2 +-
> >>>  .../media/platform/qcom/venus/hfi_platform.c  |   2 +
> >>>  .../media/platform/qcom/venus/hfi_platform.h  |   1 +
> >>>  .../qcom/venus/hfi_platform_v6_lite.c         | 148 ++++++++++++++++++
> >>>  4 files changed, 152 insertions(+), 1 deletion(-)
> >>>  create mode 100644 drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c
> >>>
> >>> diff --git a/drivers/media/platform/qcom/venus/Makefile b/drivers/media/platform/qcom/venus/Makefile
> >>> index 91ee6be10292..4a6a942db58b 100644
> >>> --- a/drivers/media/platform/qcom/venus/Makefile
> >>> +++ b/drivers/media/platform/qcom/venus/Makefile
> >>> @@ -5,7 +5,7 @@ venus-core-objs += core.o helpers.o firmware.o \
> >>>  		   hfi_venus.o hfi_msgs.o hfi_cmds.o hfi.o \
> >>>  		   hfi_parser.o pm_helpers.o dbgfs.o \
> >>>  		   hfi_platform.o hfi_platform_v4.o \
> >>> -		   hfi_platform_v6.o hfi_plat_bufs_v6.o \
> >>> +		   hfi_platform_v6.o hfi_plat_bufs_v6.o hfi_platform_v6_lite.o \
> >> s/hfi_platform_v6_lite/hfi_platform_v4_lite
> > 
> > will remove, will use platform_v4 instead
> > 
> >>>  
> >>>  venus-dec-objs += vdec.o vdec_ctrls.o
> >>>  venus-enc-objs += venc.o venc_ctrls.o
> >>> diff --git a/drivers/media/platform/qcom/venus/hfi_platform.c b/drivers/media/platform/qcom/venus/hfi_platform.c
> >>> index 643e5aa138f5..f56b8f9946d7 100644
> >>> --- a/drivers/media/platform/qcom/venus/hfi_platform.c
> >>> +++ b/drivers/media/platform/qcom/venus/hfi_platform.c
> >>> @@ -13,6 +13,8 @@ const struct hfi_platform *hfi_platform_get(enum hfi_version version)
> >>>  		return &hfi_plat_v4;
> >>>  	case HFI_VERSION_6XX:
> >>>  		return &hfi_plat_v6;
> >>> +	case HFI_VERSION_6XX_LITE:
> >>> +		return &hfi_plat_v6_lite;
> >> update here as well.
> > 
> > yes, this function wont get changed
> > 
> >>>  	default:
> >>>  		break;
> >>>  	}
> >>> diff --git a/drivers/media/platform/qcom/venus/hfi_platform.h b/drivers/media/platform/qcom/venus/hfi_platform.h
> >>> index ec89a90a8129..6356e4bd0de2 100644
> >>> --- a/drivers/media/platform/qcom/venus/hfi_platform.h
> >>> +++ b/drivers/media/platform/qcom/venus/hfi_platform.h
> >>> @@ -58,6 +58,7 @@ struct hfi_platform {
> >>>  
> >>>  extern const struct hfi_platform hfi_plat_v4;
> >>>  extern const struct hfi_platform hfi_plat_v6;
> >>> +extern const struct hfi_platform hfi_plat_v6_lite;
> >> ditto
> > 
> > neither this one
> > 
> >>>  
> >>>  const struct hfi_platform *hfi_platform_get(enum hfi_version version);
> >>>  unsigned long hfi_platform_get_codec_vpp_freq(enum hfi_version version, u32 codec,
> >>> diff --git a/drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c b/drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c
> >>> new file mode 100644
> >>> index 000000000000..41958a3e353b
> >>> --- /dev/null
> >>> +++ b/drivers/media/platform/qcom/venus/hfi_platform_v6_lite.c
> >>> @@ -0,0 +1,148 @@
> >>> +// SPDX-License-Identifier: GPL-2.0-only
> >>> +/*
> >>> + * Copyright (c) 2025, The Linux Foundation. All rights reserved.
> >>> + */
> >>> +#include "hfi_platform.h"
> >>> +
> >>> +static const struct hfi_plat_caps caps[] = {
> >>> +{
> >>> +	.codec = HFI_VIDEO_CODEC_H264,
> >>> +	.domain = VIDC_SESSION_TYPE_DEC,
> >>> +	.caps[0] = {HFI_CAPABILITY_FRAME_WIDTH, 128, 1920, 1},
> >>> +	.caps[1] = {HFI_CAPABILITY_FRAME_HEIGHT, 128, 1080, 1},
> >>> +	.caps[2] = {HFI_CAPABILITY_MBS_PER_FRAME, 64, 8160, 1},
> >>> +	.caps[3] = {HFI_CAPABILITY_BITRATE, 1, 60000000, 1 },
> >>> +	.caps[4] = {HFI_CAPABILITY_MBS_PER_SECOND, 64, 244800, 1},
> >>> +	.caps[5] = {HFI_CAPABILITY_FRAMERATE, 1, 120, 1},
> >>> +	.caps[6] = {HFI_CAPABILITY_MAX_VIDEOCORES, 0, 1, 1},
> >>> +	.num_caps = 7,
> >>> +	.pl[0] = {HFI_H264_PROFILE_BASELINE, HFI_H264_LEVEL_1},
> >>> +	.pl[1] = {HFI_H264_PROFILE_MAIN, HFI_H264_LEVEL_41},
> >>> +	.pl[2] = {HFI_H264_PROFILE_HIGH, HFI_H264_LEVEL_5},
> >>> +	.pl[3] = {HFI_H264_PROFILE_CONSTRAINED_BASE, HFI_H264_LEVEL_41},
> >>> +	.pl[4] = {HFI_H264_PROFILE_CONSTRAINED_HIGH, HFI_H264_LEVEL_41},
> >> what is the reference for these values?
> > 
> > what do you mean? what should be the reference? I didnt see a downstream
> > equivalente to base on so based on the 4XX settings these seem
> > consistent.
> > 
> My question was regarding the profile and level mapping.
> The profiles added are consistent with 4xx, I agree. But the value of
> levels mapped with each profile is not matching with [1], hence the
> question about the reference used for this mapping.
> 
> [1]
> https://elixir.bootlin.com/linux/v6.16-rc4/source/drivers/media/platform/qcom/venus/hfi_platform_v4.c#L23


ah right, AR50_LITE does not support 52 (the highest is 5).
I see your point - you are right of course.
I was doing a quite a bit of testing with fluster and I left the wrong values. My fault.
will fix.

thanks!

