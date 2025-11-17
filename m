Return-Path: <devicetree+bounces-239383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1931CC6445E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:07:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6E17F4F2EA5
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8C1A32AADD;
	Mon, 17 Nov 2025 12:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gDbgBq32";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EsZtyBWl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEEE645
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384384; cv=none; b=H9RAwPKvAeo9V7xBLhW/TCKM8Exea6CgDD+9IfNR3yfN/LGmZndEhR73evw2zevY1CNYGtOwIKiMwpEmLIVFLIcc0SOhkzkqL2N6nn0u3iue1VrJrKDSiBs9wqg5F9IQ5SM7s9zYgnY21Qj+ovoTJiLb03zxiKPK0RF6I29Oh+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384384; c=relaxed/simple;
	bh=zYOz6qvCKjUVNVREjuq+F3JlRwdtIoLwhQxWDwSCVzI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kkVmLOBewXq3RS69RTuEUtOhVTRsJ/zIrvLWPJR7xF0eKPBUyXjew/0RkHHhNVPrjpAzxlWz9jRjT4msYrWmyIh4hoOY4/QW9wEdA9UNuSsmbBkptTp+ykAbAOdnACqHV3KYsS7rvvjS+ykYKeB+XxbZLz1HeT9Tc3nfyIaaz9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gDbgBq32; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EsZtyBWl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB2o5D3671224
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:59:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QIy6nmU4bLPrMwJ8/hz8enJnPyJdVXYR0lTn/0d01sA=; b=gDbgBq32sy4TjEkA
	xV1cWLyP46hhDjxml3hKt7uUUvHHcRhFZT23nfxGlBvG6n6f16wls9B+9zYWUQrk
	PDEN/dSuHijeVC/lqWoOpL1a7IUxbZAjHjL9CkZoGMu+lC1FXU7PZVC8soi5nk5g
	ccDAz/XtF+sQSRTW7e56O3rrt5hHmp3Yaj11r/UXJ68F2CusWoenqkbrsND1agOh
	Qj02iXlXG0nBIBQmWmBO+a/J7uMiE+1dpijBaDGxe8VyTtr9wUEFczFIYfny9M4F
	8BHl7Wp0KEiQNGiwx91FwFj7BBlQAiDLSgKIa9HQftFiLq8dnK7GVlaqt1Fqs7zL
	bT6kPw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2g58a6h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:59:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso6263161cf.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763384381; x=1763989181; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QIy6nmU4bLPrMwJ8/hz8enJnPyJdVXYR0lTn/0d01sA=;
        b=EsZtyBWlQox6Y4167+LWNtsvkbKsZ6b3FL3d4D/t1klANWl5bacbO+3p101D/sEj8o
         Ik50VWExIexPFJsgoV1w+wWiuJx0WD6LyfUVSLufhU9ZqqdGL7YCsNj+KYA30r31YlTU
         r8Jx1+wSQX8bDXRgtyjKzqE5vCIjXKoWhtXnAPKfhEqeUtfKJLqLUFTDiuPR1tnO9ys9
         kvle57kdiGnfYZyUOYm+0YQolglvbSX0CWKQss39fjnFNpRPJy6wpiPTJO2MXu96tzVC
         J0HQuGUkNclqdHuaY/5WbjHod+9lE5MpclZO7SNZW5ke4TUmQgvtiCree4lHPBqioBwO
         j7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763384381; x=1763989181;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QIy6nmU4bLPrMwJ8/hz8enJnPyJdVXYR0lTn/0d01sA=;
        b=QMRchM6Z4KYXKfs1EtxuIKOPtZ8KTJTsBOzVTLx+IM6+59id2UXMoj8ZoUlufs8mlj
         NBEcdRvqAdRVGu0wP+e/eOLHnoBIMCEKnBwzlDvnqxdHaus2W3ifH08JGxaYHFOchPp+
         GWaqZnaxYfxrmJcqzQhEXJAQs6XNiIcZ+/1HHkxH1sFhNaWNf4Y2KA+DGYOjfFj1pYqR
         mcAYVIy8ZmMvLgj/kOP8hKImLt+xAsfqW07wXUc86ajQwKX7GDbWIfwyJI6EvyZHKgu9
         EHFkMJF8IkDDpwbkhYC73UCMT+4jySkOzIDe2SvPPE8Rao0TxusgxOmho+K+22+89OE6
         FYhw==
X-Forwarded-Encrypted: i=1; AJvYcCXCmiXxnUKIikwKMPZYeJ05E0lVks0w/ChkvsY65Nlnyl3tmwAN2pZDWD4RVYXa3hM6ymrU9J+VoMkp@vger.kernel.org
X-Gm-Message-State: AOJu0YymFyf+Tw+Se2NReifCMxKYTyI7as2mQ5aFZM3y+3hJh+9LSD0z
	sdrHvH4G9j6loF1MCOcZ7H3zblM0kyT3lC+ViPOq7mVXfOHZ6Hm0YlnY8f16eckGCTZh/NPbgvi
	StgfURMKSoXZuTHsGXUEB3VSHCi/UJ4iisfjHnmwcPfeSWBHk9LYu2DHXGA5iroms
X-Gm-Gg: ASbGncsJrSWkGN+BPyuHLFU7kcv2HEm5I1vlLNW1jvvg8wmdVssdWNGlLZTIQpTKuPG
	r8xoeLOl+f3ckxxNkumKTa2KJr2Pe0T7cxXcwvla1iLqmcCvpunzBl+Edh15p5ekp2eWyZUkaAM
	bMhWuSEmbNa++P12gblisSLJpv43Clth4u47OMafJhYgxSf32n1FXn5HT87i1wB0Ql9Ot/o7F8/
	TAp+XBLGvSo3ZXBgYCSSqrAmlchIzxLF04Ex/O7c14YE79xmCG66aua+zlmXSWRu4k/FVX1oh1h
	4XcPjtHUCTFxsFlh5hjjFTU6L7+g+0zjNZxH1M3/CgSzWi53XUZLZvAtZmMxr8nv56GfdSXnUd5
	+PibT6XLQ0oGm9mwLlFBivaftbsvuxGaKTLxc1mtBW19FFp4sE63t7JoX
X-Received: by 2002:a05:622a:508:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ee2339a1b0mr23150901cf.2.1763384381212;
        Mon, 17 Nov 2025 04:59:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVdh9JuD27fBdzsHi4Vxyithgf/j0od2VLCYOt4w8VBPCvZl/r78+9pdGLJV5q/0RmAHtKxw==
X-Received: by 2002:a05:622a:508:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ee2339a1b0mr23150591cf.2.1763384380563;
        Mon, 17 Nov 2025 04:59:40 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa81172sm1066827766b.15.2025.11.17.04.59.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:59:40 -0800 (PST)
Message-ID: <8a6f3969-077d-4d07-b2bb-230fe3e0e309@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:59:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: x1e80100-vivobook-s15: enable
 IRIS
To: maud_spierings@hotmail.com, Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251116-asus_usbc_dp-v2-0-cc8f51136c9f@hotmail.com>
 <20251116-asus_usbc_dp-v2-6-cc8f51136c9f@hotmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251116-asus_usbc_dp-v2-6-cc8f51136c9f@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=F7Vat6hN c=1 sm=1 tr=0 ts=691b1c3e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69EAbJreAAAA:8 a=EUspDBNiAAAA:8
 a=GX_lnnJ6PiQ3Sj9TFooA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: pNUgJEK2BGBApkqXJ1YDF_lvLtQQeDEO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExMCBTYWx0ZWRfX1DyzEnXIIlKZ
 c8b779QbYyPUyZQGz1fVmuPTVZQ8cnxNKWQgc0dYR5uZE/mcynmzZYoKLEeg7XJXFJn7ltnk4/0
 mxuMWUWAjkMMtgnSnFWMyiJQk5MQqaAg3oWNmAdfNnH08hHBiAPDXpEDPHTl+1T1Yq0feI1XNe/
 IVWU/wLcKAubkmL69jlQ5HKGdFtNgkgNxQB+211C0YTM14uSLCzttnWqs+qyG7rpSpV9GI46tQY
 fMHdwQcLv8hG+7XFwI2RIfawyhDzgZQnwH9gBgKnC4L7r6O/weld2DllJskt6K7uR1WyAvPi3tR
 MA/Ye8KUJH3G/ud5s+gIl9SPftGIrJaZhXvCQ9etIDQYnXOBEtWpaG9uXoIVhHCTnXuTBgn/mjs
 q7/ITGJrZ02me4KDkbmDUfx3OB/WKg==
X-Proofpoint-ORIG-GUID: pNUgJEK2BGBApkqXJ1YDF_lvLtQQeDEO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170110

On 11/16/25 11:52 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Enable IRIS to allow using the hardware-accelerated video codecs. The
> firmware is not upstream in linux-firmware yet, so users need to copy it
> from Windows to qcom/x1e80100/ASUSTeK/vivobook-s15/qcvss8380.mbn (just like
> GPU/ADSP/CDSP firmware).
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

