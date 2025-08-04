Return-Path: <devicetree+bounces-201636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 538C9B1A04D
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 13:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 347954E1218
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 11:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F2D3253B47;
	Mon,  4 Aug 2025 11:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EbzCjNJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF7341E5B6F
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 11:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754305938; cv=none; b=LLBrf3q0mdMsHN6KqKWRPUm6ELQVSH2YxyC9Xt/sKbGxAcS6Mu+NBlMt3LyU3DU4DYPRsypOB7phlSfy3G7hRLsSmJiVLKyiPT20hD3UMULavWGddXW8KReSfoKqIPXc7392vLv07Z29FqpMmZGUWUpS5Spxj34Ag+/rhLi47vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754305938; c=relaxed/simple;
	bh=Omw9hUFTDk90A03C6AJBHSpEvuZNntYrhakVU/5IIro=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NhGL8O2RjN9Jb0ZevGT/Q9ejqHS5gZoZbLZHlHZWSAoaPBVbKhIUlEZ4im8EEXUGCJBErQfKjYa08Ghy2Ivwzf5QP7KrNzST5pwkXgdVlP8iBv2N+VjXEGr7r+aN8I/CdUiSGfcyIsq1hnbOl1c6/eAFY6VQwyJ4qTaswMkZljU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EbzCjNJy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5749CHo4026828
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 11:12:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xY08u+5CBSgmq/xMQH9j0OMW
	anJB7Bd0uQk8adqRJ3s=; b=EbzCjNJydx55YP0xUhChkWIEueKB3twjMrbsr6se
	zfm8p6icRJ+M9G9ygWQ6SvjXTvh77mc/ocz6MOyz/3wTj1wULGycTi949PLO7ndD
	IMWPItJ8+Fcy1f+TnUUfhtSWa8Yvh0LJwmj2Qck7tjVNkaykmWTh1QfSRtDOckI4
	1LU19xf7yQKPPPJPB5nt+Q/NBJzfuNjIGiVYsl0fd/AvrOvYLEf1H7T6dY8I+fqx
	8ebTb3ha5Pw4bEwOgzSPbG+nvWPXIbeHcBRMkbl3brnt3is+1rW6AGrVYS27Fi7O
	81hFRwEeuw645OF+lC4SGtkJ1fXi6/1biO+hRjE7O+TFBA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48981rmyan-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 11:12:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4af22e50c00so35341211cf.1
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 04:12:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754305934; x=1754910734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xY08u+5CBSgmq/xMQH9j0OMWanJB7Bd0uQk8adqRJ3s=;
        b=R7P6UW5xRCX6jjP1YtNtFwCWR7e5AnaVPpv0LlUEq4M3lBzfgEkAoCGTTdw218qt2s
         rtf5ZbGZJiU9FgdD0cl7xam7d1jDgJPwg49tG2xtddkO1nLntYgrsrKl4xL3Anh9BT+6
         XNKJDj2N4NKQYyU28DAjTlktjEgTg1wdMR1TdKKIE+2yOYXXSagSS8Vp279oFLTTx2c5
         SAFCyzLquV1YwL3W9KfLuS6563Y1YWGPWtAr1P0rpWPFlZgi3tm+8g++jB6Nenzm/GH5
         dyjZHAshHxKah3UvqphftTCa/OsGCAg7h4qkRQstsVHgRIssSZzSTkG1t4EvL6oNM4r+
         3utQ==
X-Forwarded-Encrypted: i=1; AJvYcCUE/Ujq9TksXlPhTAmWxdXG8M0nHhc2oG3PHakwOnIh8yIcqmQVy6urfkalVijjEEFIhNO8YXO1dA1M@vger.kernel.org
X-Gm-Message-State: AOJu0YwdAnEoq77XSS+NWTi6pa5wVUka/Ma0msRjFd9wmOg9LE+/pC9u
	HPbV/kuSJvV6q0VvtTCf+QI3G4dgxDgVOArb/2IQTYxIbpIzyWR/boXhCGqbR+5qEnAGu9735r1
	G/lYBVsJ7UVpIfNpdn6o/SyaF2VktyVzms0bouPsLv+hKlEAQVx9BkBcPXTF5zBh1
X-Gm-Gg: ASbGncv6BvDSr8CDD1HAlswSIJyz+UnRXmXK/ktp8DTj+oHiU7b4ymLru9f7dkgdvnb
	sBKdk4+fBl+p3QQdLqFpSWTUQYYd5mGgd30oJL4O+4DySKo5hSAO/utowkmTz1L1APlfaotp+u1
	ZrE0SZEOI5/fyKM2nU4y1VxHhiKQwnf1xbL2xSOShC3Dq4IXdxjzzVshQ8l2eVya1GULrZU3iMc
	uoj6cD/sdnOUjFOYxlnJzCzon/xospNNnAjCZE/nPcQdr781SZNHvTsUyljvvwcP8z/GoIQj9J0
	Uyk/FK/rnxFo/ipLMQqLjJrAug80c/qtvSUcjnPE7PLSVgjwBPZLAgQ2hXKuSyNwGuA/SA==
X-Received: by 2002:a05:622a:1344:b0:4b0:7ae5:c3a4 with SMTP id d75a77b69052e-4b07ae5d169mr6112651cf.40.1754305933555;
        Mon, 04 Aug 2025 04:12:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYpcEbMHBm5v9EBV8ZN8gmjTX4c83T0s5eMl0+dY9O597Q54Xp8w1/yBRwTZEiScRbyY6AcA==
X-Received: by 2002:a05:622a:1344:b0:4b0:7ae5:c3a4 with SMTP id d75a77b69052e-4b07ae5d169mr6112051cf.40.1754305932999;
        Mon, 04 Aug 2025 04:12:12 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953cfeaesm217612295e9.16.2025.08.04.04.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 04:12:12 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 4 Aug 2025 13:12:11 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, krzk+dt@kernel.org, konradybcio@kernel.org,
        mchehab@kernel.org, andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/7] media: venus: Conditionally register codec nodes
 based on firmware version
Message-ID: <aJCVi4fjY9SKWNOk@trex>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
 <20250715204749.2189875-3-jorge.ramirez@oss.qualcomm.com>
 <2fd0d1a7-70ee-43ac-af84-d2321c40e8f8@linaro.org>
 <aHidibqhMyexExXJ@trex>
 <0dd1f38e-eaba-4c99-b386-4ff8fade5b9b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0dd1f38e-eaba-4c99-b386-4ff8fade5b9b@linaro.org>
X-Proofpoint-ORIG-GUID: _U2_bnX-EAmTDkdJxPlegVQklWMsRQBW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA2MSBTYWx0ZWRfX8gVMYMpqPdR7
 VKIPqr40jIz2AJPe9fMaTDQeM343Mhn+ZfbB3/ke3xhl9kb+g6xD4y2QLtYBcaIiju2jxKiuYAr
 fm1rmETvwyo9GjpwDjRkFwfxCb4VWcVoPVyqfZfYNi0GkmPw0qme5ZrBBi236H5KHCmCiEeuypg
 TN5LG4YWlZSCE08DrQ10pBOrAaR4/P2CHibs9Ju0sfeYl+08xZKKTyQQn4URy9qMBAmWsfaWURY
 keVRuQ3MZApC+A/y9aTCW/FOnxXCZki0j147QP0+RxkDZ1k8VG66ppwxvdPVZCkV2+euWPVcYnr
 NLxRbyzaZlSdbAPjL5pTVHj0yWcxEd8WGubYL01dg5nVO/5TT8TxtQX0Z4XYC3skqWAkJUf04Th
 p0xJjIAgLEw/sKGAg56B4x8hWrSnaynaHclFn+E6o9H8fyCkykmgBiTHs8Dd1MVPzO7d9tFE
X-Proofpoint-GUID: _U2_bnX-EAmTDkdJxPlegVQklWMsRQBW
X-Authority-Analysis: v=2.4 cv=a8Mw9VSF c=1 sm=1 tr=0 ts=6890958e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=mEtzVpvg6qvpzuVc8OAA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_04,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040061

On 17/07/25 09:55:08, Bryan O'Donoghue wrote:
> On 17/07/2025 07:51, Jorge Ramirez wrote:
> > On 17/07/25 00:37:33, Bryan O'Donoghue wrote:
> > > On 15/07/2025 21:47, Jorge Ramirez-Ortiz wrote:
> > > > The encoding and decoding capabilities of a VPU can vary depending on the
> > > > firmware version in use.
> > > > 
> > > > This commit adds support for platforms with OF_DYNAMIC enabled to
> > > > conditionally skip the creation of codec device nodes at runtime if the
> > > > loaded firmware does not support the corresponding functionality.
> > > > 
> > > > Note that the driver becomes aware of the firmware version only after the
> > > > HFI layer has been initialized.
> > > > 
> > > > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > > > ---
> > > >    drivers/media/platform/qcom/venus/core.c | 76 +++++++++++++++---------
> > > >    drivers/media/platform/qcom/venus/core.h |  8 +++
> > > >    2 files changed, 57 insertions(+), 27 deletions(-)
> > > > 
> > > > diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> > > > index 4c049c694d9c..b7d6745b6124 100644
> > > > --- a/drivers/media/platform/qcom/venus/core.c
> > > > +++ b/drivers/media/platform/qcom/venus/core.c
> > > > @@ -28,6 +28,15 @@
> > > >    #include "pm_helpers.h"
> > > >    #include "hfi_venus_io.h"
> > > > +static inline bool venus_fw_supports_codec(struct venus_core *core,
> > > > +					   const struct venus_min_fw *ver)
> > > > +{
> > > > +	if (!ver)
> > > > +		return true;
> > > > +
> > > > +	return is_fw_rev_or_newer(core, ver->major, ver->minor, ver->rev);
> > > > +}
> > > > +
> > > >    static void venus_coredump(struct venus_core *core)
> > > >    {
> > > >    	struct device *dev;
> > > > @@ -103,7 +112,9 @@ static void venus_sys_error_handler(struct work_struct *work)
> > > >    	core->state = CORE_UNINIT;
> > > >    	for (i = 0; i < max_attempts; i++) {
> > > > -		if (!pm_runtime_active(core->dev_dec) && !pm_runtime_active(core->dev_enc))
> > > > +		/* Not both nodes might be available */
> > > 
> > > "Neither node available" the latter for preference.
> > 
> > what about "One or both nodes may be unavailable" ?
> 
> Ah great that actually explains it then, as you can see I didn't get the
> meaning from the comment.
> 
> > > 
> > > > +		if ((!core->dev_dec || !pm_runtime_active(core->dev_dec)) &&
> > > > +		    (!core->dev_enc || !pm_runtime_active(core->dev_enc)))
> > > 
> > > Is this change about registration or is it a fix trying to sneak in under
> > > the radar ?
> > 
> > I think this functionality - the ability to enable or disable individual
> > encode/decode nodes based on firmware capabilities - should be standard
> > across multimedia drivers.
> > 
> > For example, on the AR50_LITE platform, the _current_ driver/firmware
> > combo does not support encoding as it requires secure buffer handling
> > which is not yet implemented in the kernel (changes to iommu, etc)
> > 
> > So, rather than disabling Venus entirely, I think it makes sense to
> > expose the decoder node, which remains fully functional and unaffected
> > by the secure buffer requirement.
> > 
> > Hence this commit (so yeah, I am not trying to sneak a fix, I swear!)
> 
> grand so.
> 
> > 
> > > 
> > > >    			break;
> > > >    		msleep(10);
> > > >    	}
> > > > @@ -202,7 +213,8 @@ static u32 to_v4l2_codec_type(u32 codec)
> > > >    	}
> > > >    }
> > > > -static int venus_enumerate_codecs(struct venus_core *core, u32 type)
> > > > +static int venus_enumerate_codecs(struct venus_core *core, u32 type,
> > > > +				  const struct venus_min_fw *ver)
> > > >    {
> > > >    	const struct hfi_inst_ops dummy_ops = {};
> > > >    	struct venus_inst *inst;
> > > > @@ -213,6 +225,9 @@ static int venus_enumerate_codecs(struct venus_core *core, u32 type)
> > > >    	if (core->res->hfi_version != HFI_VERSION_1XX)
> > > >    		return 0;
> > > > +	if (!venus_fw_supports_codec(core, ver))
> > > > +		return 0;
> > > Its not really a codec you're checking there, its a version.
> > > 
> > > The name should reflect that.
> > 
> > but the check isn't just about the firmware version: it is about whether
> > the firmware in use supports a specific coded based on the firmware
> > version knowledge built in the driver.
> 
> No OK "codec" is the right word.
> 
> ---
> bod

as per internal discussion - offline - I am replacing this feature for a
simplified an "all or nothing" version: either the firmware version
can support both the encoder and the decoder or none of them.

