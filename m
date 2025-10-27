Return-Path: <devicetree+bounces-231477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FFEC0D85B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA4E43B44A3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA2923002D3;
	Mon, 27 Oct 2025 12:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mh4W2s9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFCE2FE065
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761567664; cv=none; b=SFLi+wW/z6vgoIe+mP/uRpN8CgrhRCTZ/1P7w7cAAjGhpnSWylRAgs6xbEu2bpbQUNSlZQhYcu34EUVTg2ZQI1Z9jIs9XjDgWD/rx4svP6KXitYSomsO/qnCbRHn9h5JK8wUyoMtckWUULRqlmY7Ov2DVdC4TF4CxahrU6gPozU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761567664; c=relaxed/simple;
	bh=nxPWAEJRSRpuGJj36axWvM+AKJHgISMgHq4fyA83R84=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=UgVhny0nzI0qJX6nbcahEW1oRGgrtmHw4gAnjtYiwpsLYfVgVUnLJ1IeWABLTjM3pcMaIsQE2hYYlQeYm7WAhkpNxart68O2himSoRXfIts+U/1+EwX5dVI3k46oREBo8ZwMk41bPIjDVSodXGRyNGqabYIX1Al78kM9VgNspHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mh4W2s9i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8IlOg1130364
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:21:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aP4mxhUOOvb5sFzTA2872hnI8+YOJ+Fa/nda32UGswI=; b=Mh4W2s9iCZTmOG/W
	eiIFJyfeRI84xvhv9CLFGqr7pVww6ukMC+1WntxshoS2QBlBGiyNzZQbab4vU03T
	x2NhEP65/wuehfB0uS64BV2OCCbF+Hp7LTcMjY1KdVxzSDNJkzoKQby8spZ/jNIl
	0Iti/RVC0Af7lX8O450WcUbVPfcXp0OqV9iW4hhffprkXvBlFnmw4nNzinVVT9xf
	AFeisaiUmfGxGbNFKWpgdhJYKxwHABwUXwJ/FAIeXCF3X0DKKJ099YkRBbt10l3C
	LcwEdhew1qtui/XWreVyqvweyydqcBYpFXIzvDDD/zu04WvPLn3k5hY+GrUH5sQl
	Ab9riQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nkamhp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:21:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4eb9de10ecdso4128171cf.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761567661; x=1762172461;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aP4mxhUOOvb5sFzTA2872hnI8+YOJ+Fa/nda32UGswI=;
        b=nzdQLus9jSgzPb8jubgVe1Is5ZB8novSz8N7beg/CWkSRJxt2qYboQTcGSmsuMwrZX
         Jnev1sLhPOblD/dvogooDl9n3nlbDDdJxD5crfJju8YDC1ktfWN5ePG6kCnDRPeDYvY8
         DdfVoCOaQshn4y1NBsmSXBn0c07Ns3vIPKg9uNPXq0NtAXyr8VQ+B2RJIfvUFp632r5S
         /WjczVjGtwgKWQFePTg/pAsbUbyeyDAmYgjGqRaZcOodlxSUrTcYGK/uXICwxh0HjM0t
         Cp3eqR2xWCj3+RjspA7yeliBXaWeuvMdt+/g6Zch1sLUDiOwkGPhvilZ7m8zhCgNPHjQ
         4MUA==
X-Forwarded-Encrypted: i=1; AJvYcCXSYj1txwq773VvclAJnAEZTJc/As3v6GIv4r5zI9mZXNI8wYlKxwQ/v5/EUiTfoMIWw2otwFEKvxqK@vger.kernel.org
X-Gm-Message-State: AOJu0YzHTR79+8VQP/PoqN4Nju4zSXe20cOKXz48oX6sOrVJkLVc7kk5
	z6JzgEoDXhgmlA2Elr1kJqZZJcyM5/TuwYqUqhmef3r+ixPbCseZUeL/rbVd+RdFxLy/i2FCxr7
	toOn6PUZRuNMUxPzVVoPze89MfF92H7gU4Dwt2Lr3o2Qms0RbbM8zUawailJn0Zru
X-Gm-Gg: ASbGncu/IxtlD/YUv8y4sybQV1yix5VTVUEdYhp9h/Ie4Qa2OHByeIkBZtEuiczc3Np
	Kt9EDCnh9CiCGPjQqwUcnbWC2jJZ+HhuDXsGg3/6Lv3i42rcO3yuCvo37oNP434f7/ci038fYPx
	0I92p68lGF6SbydxEPmsC4SsecYIMsKAvCKMaO57j8exJ1ITHl92lFfpOOeWPkSDHAwBMYoqOyr
	zZgXCwXVELxq5V58wwHSJqSjTJle5opVAotUWHeloZyGjsUy8WGT8FOAZZbzXeH17jWGpyO+BQ8
	YV5VyjgMwBH5n7jE2A1u1cvaBzJHzO9/IrUtEzzeabv9QwgOQCmBr4MKZfQcKATkyOXTYhfNklS
	+iAS9xt7ih9hurcWIIrOvtMT3Aubq6q6JQySGMZDCx9HUCyrlQCdbpuDa
X-Received: by 2002:a05:622a:289:b0:4ec:ed46:ab6d with SMTP id d75a77b69052e-4eced46b36dmr54348661cf.9.1761567660960;
        Mon, 27 Oct 2025 05:21:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/Ymwp4j4U76wtRZGQW8EHbN2uGqMPPJ/w80E3/mCrIAWR0RdpJNVmK9Zxy1Lr+Yj9F1bPnQ==
X-Received: by 2002:a05:622a:289:b0:4ec:ed46:ab6d with SMTP id d75a77b69052e-4eced46b36dmr54348351cf.9.1761567660538;
        Mon, 27 Oct 2025 05:21:00 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853f9a0fsm746527466b.50.2025.10.27.05.20.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 05:21:00 -0700 (PDT)
Message-ID: <51da0617-db4f-4c6f-9f46-0492e49c9a2f@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 13:20:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e78100-t14s: Add audio playback
 over DisplayPort
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251021111050.28554-3-krzysztof.kozlowski@linaro.org>
 <20251021111050.28554-4-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251021111050.28554-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AYW83nXG c=1 sm=1 tr=0 ts=68ff63ad cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=PIn3yDVZNjJHwrb619wA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 8HuDYGrRnDlEsQDV1FEUHeUvIZwlPxn9
X-Proofpoint-GUID: 8HuDYGrRnDlEsQDV1FEUHeUvIZwlPxn9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDExNCBTYWx0ZWRfX82pbO1hORH+L
 I1oM/8meSgBiTA05QNR/EYPcHXDTK0HxzRDZMAsIBvHgBSoSRnZ4znt/GHqNHF3InkECEceE6oP
 llAVcX//cCmIp65b/sPMxRwG/DgroUeIbGRYm9jifwIYH639UlBA0XmEvLNJOLYeoXar2svM7L2
 5wP5/Ps1EdBKvl/MdBipQ0ocCBVWmc18AHFmxqGMqYfQIUNTqLWspe4hq/+4Mae0/oV0xEs+qwn
 DN2VuWz3xxMeLyS0yBgCB0NZ/J51g6qNUVeCGHd+nwdjNfzBIW7ErTGIKnBuZtMKTeNR7hz3Z6N
 Xb2yPPau87NZ0+n485O97EHKgP3DW2U6XHLOg18sgb26Qg/PhVZ/2aAZxzNaQxMrt0TwM7qJ9Sw
 vdHZczOZhJKXHQYT2P8CcCA1k798cg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270114

On 10/21/25 1:10 PM, Krzysztof Kozlowski wrote:
> Add necessary DAI links and DAI name prefixes to enable audio playback
> over USB/DisplayPort and HDMI.  The HDMI port is not yet enabled, but it
> should carry respective DAI name prefix regardless.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> ALSA UCM and audioreach topology will follow up as well.
> ---

[...]

>  &mdss_dp0 {
> +	sound-name-prefix = "DisplayPort0";

We should probably push this into SoC dtsi since #sound-dai-cells
is there

Konrad

