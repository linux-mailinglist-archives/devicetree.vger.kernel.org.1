Return-Path: <devicetree+bounces-178086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E13CABA584
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 23:48:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 633A11B6698A
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 21:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5080A27FB09;
	Fri, 16 May 2025 21:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jhcd1Mgo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C3818E025
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 21:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747432103; cv=none; b=C77CZMGIppJ3nMvGXxDAkIFCC4NG29vHhEjJ05FPiG0F5/e/LZ585rF9mI3GdXGH/DnVSrs01e+Bj2M5y2Du0YUKk2ijR6QkF34X8ik2tO7Su4Z2H5ILvuckDtW+KyrRs8b+rj0SveShgmvWZIBi+Yq2MykMFFJbyXwBxhCqDZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747432103; c=relaxed/simple;
	bh=Didp6KrFIhV1S/h6o9Ujxwv09t3ChwJ1oYFKdnaTwZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KfxrX9tfEimo4i/fbSseyFEMb9Kf86vlVrCtp6DJxqNaAijBZd/YBXO8Fvq/jy7fQg/1nK/nnWp46qjLgY3CRaQcvYjJSK3bpVKrkoPXRv17UnkqIvghtCZVOJXoDolXNJe/0wJ01WHy8maNRYR4MR1JtWd6u+npiHalP2LbEHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jhcd1Mgo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54GBRd6K022998
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 21:48:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qbltmRM7JlrmyGCBxvVyTbdV
	Ddga8Hd+DhpsvKXmjA0=; b=Jhcd1MgoHumhHtK9GCdBmVgx3RF/S0f7YchRDPqK
	P4UxFbbmIj1ZsYbNrl3YQue4BTy5Zwa+vmnRpEGJW9YADQVznGSh+LWOP57gKFZE
	PO10/VtiBZ9eibJ+MHNGwmn7YESnyfhz+vbfHh5JGOaY/0mCg53A+On3WiPbxGF8
	lhQa5ZRPGCaOKHCzYnSC57RY1Za6b73vniFO47QHjzN5+5ZqFCRbuvBW9u3DvMBG
	bjSFSExONikZWqEaWXxju+bBGe8x9Y3GXYFmA5UZmfC2SNuEbXCz3dyhKq5+zvoA
	GxPBVDThrXwjAouRXwL65R+jAa3E0C3YBhiDiHUTXhFFyA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46p4gq9h66-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 21:48:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f6e59df2f3so49213496d6.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 14:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747432100; x=1748036900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbltmRM7JlrmyGCBxvVyTbdVDdga8Hd+DhpsvKXmjA0=;
        b=MdTRU7eBUnhq383EhXkTO86dsvvcrW9OwHwLLKZMATneA3m4FV+fmRKei0Vs+9+Zlp
         kYuZJms/UhxDqHDdhk6dJFuH6qFHb/q/xZAHuPAUjnngp9xDxDtxr0dTgypEDqV1aY4l
         IrTEJZ64/CHzF+U/BNcDs9IadEqfkN5gTg2+iWd2qcWYqJssqmkua1t+8UqyBginwZFM
         n2zLl0T//LaM7hPKzQyx7h2bFs2hsVoJkIA9Ii7TtZXcIfBV9LE1WeXHLSMCUELgpZ7n
         y5hSHTQdWcXnlmEn4cxj746HwXoqruAb+FO4pVDQocTfLDE6NNUdw7l6qP0+C0dhnRND
         5ADw==
X-Forwarded-Encrypted: i=1; AJvYcCXNeZNOAhixGH9DnFLOjYtBShNas8hP0gqb77ofpEcFadyB7h0dDxVCLRdh6dm6WBYIz8Czy5FaqOJf@vger.kernel.org
X-Gm-Message-State: AOJu0YwrpsKNxrB9H2u9jM2XK2KLrbVj8As52OgX+5ILzNj0OR+CvmDD
	mPKCWm0YiRon1/1vW2735IC2gWSUnfhXU3dr0AePTQhtFrQ6I7CtxDgaaBGMbYC5zzHonakSqPC
	I4fuZaYkI0EbOFiovlvt7pCXv8Q/LF/QIFFeWQm0ZcKAGjsdJEeYXbFt3/ZF3ELih
X-Gm-Gg: ASbGnct9iNIofrwOF9OmKzzrQm5iOdRVU5uzHFg/HarilUM4x00n1vPHI+5B0O7Mjw4
	2/6OHdgqqMapMM2FTAMUVBVo8k5klL1PP1BiTOg7fGv0DpVAdfTbi1Ps4Mg0TvbFbJd+KLobqIg
	FX0M1Azymoob+FmjbCrIKzLZzQD4uzQ8v1qftwe4FjfF229jSqwZTv0049+zV32voV+4gIs6CJw
	fhQJoW91OWLQFkOstxOTdOYB3TebtJ5qwzj84X5PCqjg8IZS77XooVgcPkROzqOHyD7amLiFw5O
	V9UjhuMEiNm0U1mtzGk+0qbE222/mpfzMEm6cSlOM4e7Xl13MwxaCBslbuywfLejWz/dqaTXa+w
	=
X-Received: by 2002:ad4:5aa3:0:b0:6e8:f3af:ed59 with SMTP id 6a1803df08f44-6f8b0881b41mr81864536d6.22.1747432099687;
        Fri, 16 May 2025 14:48:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAhaI3E9/IjY0nDQWubM4B54dueY0af/V9BHfJW4rhaZu/IU/g3HCb9iJtPMbh6FEdJl7WzQ==
X-Received: by 2002:ad4:5aa3:0:b0:6e8:f3af:ed59 with SMTP id 6a1803df08f44-6f8b0881b41mr81864296d6.22.1747432099355;
        Fri, 16 May 2025 14:48:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e703e7a6sm606380e87.218.2025.05.16.14.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 14:48:18 -0700 (PDT)
Date: Sat, 17 May 2025 00:48:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ekansh.gupta@oss.qualcomm.com
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc7280: Add dma-coherent
 property for fastrpc nodes
Message-ID: <isvo4c2taozzlovqwqvgfu2v2tbvntkaw4bdpzmiuir64avojl@3utwffmzmhq4>
References: <20250516110029.1637270-1-quic_lxu5@quicinc.com>
 <20250516110029.1637270-4-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250516110029.1637270-4-quic_lxu5@quicinc.com>
X-Proofpoint-ORIG-GUID: arO1SqvrvHxhBnfi8e4sS9DON3s3vs9z
X-Authority-Analysis: v=2.4 cv=KulN2XWN c=1 sm=1 tr=0 ts=6827b2a5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=X77NXM8zCmOlsI4LSM8A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDIxMyBTYWx0ZWRfX7iaxQxP8YYVl
 qiMicmTi87PjuqkVXjfgOZR8PgMxs9QIrzQnnx8AmDzuUQG+mopvvQbLMSpryRtIyS812G/b46+
 iDSSCvqV5vF+28wOE+Q8neKhIJWbtshY4ADQFhzMrI8+2k1/wX8cCFuNE7JC4SpcCOrZqqTuMLd
 62m9elH7V20S60eEiQKQ97u3oqRUG+Im01SoNmePlvNHxeCxhtIqUyEpY+27H7o17eZBzSvx8Li
 PQm/TXYAXvg0CE8KkeMUA9OuzIhKZKRyMnR/j9M4/PlmcOeDkijGlOOfkmkbxlY0SNmJmIuui6y
 rRS5elhLnD8PI1jWkaE+yD3wCbx7szIeo0Nss6H1u9jl/3qDS4wnSCaZ19N5Q+yDdQrwLjxbj6K
 77l+9qnu9LmqDRPEnnZbZG58Qop3dslr5Y7mjxTih4icBwZGlMBhg/uCsB7y6x+wxoa7Dh17
X-Proofpoint-GUID: arO1SqvrvHxhBnfi8e4sS9DON3s3vs9z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_07,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=809 clxscore=1015 bulkscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160213

On Fri, May 16, 2025 at 04:30:29PM +0530, Ling Xu wrote:
> Add dma-cherent property to fastrpc context bank nodes to ensure that
> the DMA operations for these nodes are coherent.

Does it apply to all firmware versions?

> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

-- 
With best wishes
Dmitry

