Return-Path: <devicetree+bounces-241375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF3DC7D1C1
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 14:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14AEE3A9C88
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 13:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B4A1C860E;
	Sat, 22 Nov 2025 13:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jAKXcywd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Myn19mN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1454E3FFD
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763818742; cv=none; b=brKlF/RQz2cEsuSZcWk0WTzNgFhShpqrx2aw3xrLZEmV8ebCV6EVaYmLRKRNYutAPTiwIZzdMTfyVm4yWdY4m+aM7P/TYOtgGTFmQtOptG40kSNAULAKpk1vDFwjGq/MzLTtOacwR2Mi4RaI46s4+MtSrs19caLIt2K9R834bPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763818742; c=relaxed/simple;
	bh=7iiUDV5uYgWWv66PWt9aviOFITCMKNH/gMzmfXDIgQQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F0wdsAf+JXuDv7DOzbN/ki2JWTa5FVyJWD+q8kM/vwhcup3hKGENGZ7Q7beE3xGtrCUrvTl4rHRQTMpmmXUxy39Q/do7NjsAOmstvlmyvaVw0PH1s6kIcEViBneUasnBEh2AK3TmvngxmJ/uJPCVxjLeW6bsX5B52oD8UM5s7jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jAKXcywd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Myn19mN2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AMCcLmm2895903
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:38:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T1kiOU7zHHRfCpTkZ1/m/6Ad+XotlTWnDzTmokj1Uqs=; b=jAKXcywd+z1jj0E7
	cnufw1sRGGRNMz92E4JJxBl7kO1YoZ70KqpuVvC3OYLq3lRD8ZyBUV/6pAA0+qlr
	iETqzThzad9+bhApzcezGOWDBcAimalgE0dDmtu7dR/oUQPFIojT0gGoO6NJIJjV
	8+iMWQEoIBOseCS1vnX1Tw1VzR/EPQFHxrlzVTshJkvscowyRPoNLCbDK+J5i731
	4qo6eHLu3mHnvJgvqCH4hn1OSrZ4KBKQqpWo2zPVCC5gv+S5WgXYD+LJYpytDXVs
	iwdGVO5LQ+W4Edglz2U1cFb8m5/e6l3Kbjw8r3vEUBoDSh9ltHefOrwWmm/1XPMN
	EmxEsw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6ff8qar-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:38:58 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee409f1880so5918101cf.1
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763818738; x=1764423538; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T1kiOU7zHHRfCpTkZ1/m/6Ad+XotlTWnDzTmokj1Uqs=;
        b=Myn19mN259GzXhYd75MRqEodDBiyRu5OeZvyYA/ADvUFMikzyoNgJsz0I7YeSVLdyA
         pQt5EVJOnAtjZDM12DBRqRn1yNRemVf221+SB9WHqsoZ9IF6Vlt1oDZ9rEUBx3bRW67K
         GVYciOKwTAH7l+bI15RQRTkH3g32JHrrt+WIaKk9OH4cJJV36wnS+zvfoEK8yNf5ro3H
         +3lJxnd7no9IxECUiLJ1aa7CO/DdZw5s4PCuG0L83hkdcDvXHU8ik6Yhqt54HGLKC05E
         n67BhZj3y8zAtCRE2gRVvVLL84BS77w7rKzLgn4fckuT9zLmysVjUayCenHSphFsQNgM
         491A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763818738; x=1764423538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T1kiOU7zHHRfCpTkZ1/m/6Ad+XotlTWnDzTmokj1Uqs=;
        b=PP+eN9kcNpvLxdNRldXJ0D4NppQCRZrTq4Na6MqemN11Sl0ubNBID6si1TxuoIUnrU
         Z/bD6CKbxBc5A5+GxRJdS1NsE+YwTzGAqZj4f7Luf+2uOa5K5h74OZxwRqfSRGoITpiy
         pt5zAUqvkpDxvubAhw9zBrfFv4JrWa5Vc7V5819GICqyNf2bn2VGGL1/d7f/dOZ3VOxc
         /o8lx5fVFOaJVMGGckZSWJqyhlPS+7NkthgSrBJ/ZPgsSNGysEhD+oMiirmkC1prwYXS
         edy8/ffLEujHdQOA3PNRYFOaanwssMk/7tFyKVXECzw67eUkGSMoUnTNKYplBBC+YmUb
         0qRg==
X-Forwarded-Encrypted: i=1; AJvYcCVt0g6wFSW+NIiU2GiDdaEjBMu3+WCvW6RWbWBQlVyfZ3qaL7tJmoNcGaqdUMFcAd8h7TS97Rxoyw7c@vger.kernel.org
X-Gm-Message-State: AOJu0YztEVZqFYd9pxQ0bCAZ3ACkdArk7jqAK+AbScoHSWWHs8LYdpgp
	8kDz6KjorRWLPjGkWgMOU8INudDvUEB9Buxmx3n/a4u86gJU4dD6LfTko8Xll0KFkXQEZQ6KkBm
	VJ42qyEWoO/c8hi7BS8sKQ4+c3u4ZfT6M7XlfYKUJNhmgGNV6lmvO8PU9KS66jAN3
X-Gm-Gg: ASbGncuHHSVRX4VqS6l9KFZ3HELTs20I/JOeHGEyt0R6gU/dJtBM5s3RTPTIau0EyMn
	9j/lO9u/YpJS84SKkvAPmQ7yqpPfc38tZT7GmqNgmjnI3vboTDhhT1dC8BHV5EPtpy2c948tSqW
	PPy1wQOGDeFCh0KqJMqRFbakKhhR2cY+e6AgcftSjvDI60oTD0MjthJwn4AO/Tz5UZyCoxreouw
	x4EQ/L5dajmQa98NKOGCgKPSuDdYI2/Fb0K4bNHRpOiTjNiKzxpyuq/FX2x7nW6T5yLF8vyhclV
	D9bEq9hMbUs07kHqjVufx6dFZz6PqQ5IHXhkwm6F0atNqtosbRBx/aQwI/eIPMCkhAhkt81FETy
	hv66X6GabnvQHhYagA67FvVFN5bpri/0eKVdZok2sGz1aq6wGVkoPeRfU2SsTifgElGI=
X-Received: by 2002:ac8:7c48:0:b0:4ee:1e95:af63 with SMTP id d75a77b69052e-4ee5894e4camr57436941cf.10.1763818738345;
        Sat, 22 Nov 2025 05:38:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2lPPngRjH98213/0iV6w7rCFVvGxRvqEr5IE7cDS/Bmlf93oCCzqTQwYTweMRgaNxHpWPVg==
X-Received: by 2002:ac8:7c48:0:b0:4ee:1e95:af63 with SMTP id d75a77b69052e-4ee5894e4camr57436521cf.10.1763818737837;
        Sat, 22 Nov 2025 05:38:57 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fd4e51sm735525466b.42.2025.11.22.05.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 05:38:57 -0800 (PST)
Message-ID: <9cc55934-6980-4673-8501-2d1efe2f816e@oss.qualcomm.com>
Date: Sat, 22 Nov 2025 14:38:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] drm/msm/a6xx: Retrieve gmu core range by index
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-1-9f4d4c87f51d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251122-qcs615-spin-2-v3-1-9f4d4c87f51d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: YhR98goZhUXwpU6hK6pZAqy9jqrCvfST
X-Proofpoint-ORIG-GUID: YhR98goZhUXwpU6hK6pZAqy9jqrCvfST
X-Authority-Analysis: v=2.4 cv=OsxCCi/t c=1 sm=1 tr=0 ts=6921bcf3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=S4gWedWR7TB3ctbtemkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIyMDExMSBTYWx0ZWRfX4d8yPlMWDNSF
 VW5FxpSD1dMHYFliUw9KM3Kah+yGUokHX+RVcSXUwWLo879fO4f3Lzr9ZP3RmO/3A13OGIbhf1Z
 WMV+eVnWbplw9ba39HZPN2EDJO4bYR0XK3Xv143u8VpkElZSfhveMqZCkJje+b7eLgpV3UDoAS9
 32/gvKntLpWHopz9IcVplrPPgCMLYu3eqI3Xj9lrsxIs1IoBHC+tAyriGDxMB32cSXFD+4/9hBf
 ghn4OnYxNJbZpvU1ul1ZlhxUXA0WUb3fABxjU+HqcL/pwOrSXvMVrlsLgL74UZwnBBVHW+Hkl0G
 FED0dV64WUCElc3lR2ZVOWOw9+9YkPbwRsxS18VZfRv5z9Urp+9RPqcTL1nXPW4c6uI89lKywg7
 GF5H10s3ATkN8A3yJAwuI9P4sfVw7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-22_05,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511220111

On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> Some GPUs like A612 doesn't use a named register range resource. This
> is because the reg-name property is discouraged when there is just a
> single resource.
> 
> To address this, retrieve the 'gmu' register range by its index. It is
> always guaranteed to be at index 0.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> index 5903cd891b49..9662201cd2e9 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
> @@ -2029,21 +2029,19 @@ static int cxpd_notifier_cb(struct notifier_block *nb,
>  	return 0;
>  }
>  
> -static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev,
> -		const char *name, resource_size_t *start)
> +static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev, resource_size_t *start)

Can we drop this and just use devm_platform_get_and_ioremap_resource()?

Konrad

