Return-Path: <devicetree+bounces-230275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D96B8C0110D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB096503EAC
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A70230AD0E;
	Thu, 23 Oct 2025 12:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="byzevInz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0C9311C22
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221694; cv=none; b=gmRortR19DGFIq2k3CKHyO9IM9vkJyDqmzk1dADm30IiHG7OBEnzYgYVfnIndIrPj5/lzxqHI+5gqyUmHLNJGqSsRXKLjDOM+3ZIwvF0Q0GsAv3oLxVCdyz2hEQg0st6o+eIMQa7Sc24JtEJYngM0s9UOTkcoructP8WO1Eyl+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221694; c=relaxed/simple;
	bh=mKKZ+GisW4033CvpSmrHhhuLvqXiweE3YNZdMeZfmGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WasMtclo62OyWYr3AaSN28Bp1sAqHpDcax/ZSMx/pl888NdH0pjWnZrssbWumCIP/zogrwb0RXHpF98a2/tZpVeQKmzaVlgup+PTL61fV1omK8ZkHmAaRbuRRbOCnXiPoC3RYnclxAAKB3HZlO0ABbPLJ6PvMi1ZnZcJaBWEsQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=byzevInz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7CXos011737
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:14:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5onFcSVtjASenfWYLyuXz7Ij
	aEZN0TDQOoqBl+QFROk=; b=byzevInzK3g9LUPjzm/e9hwxr+VfC64JLQt+UMkY
	xX55uPVmpIAkfnyLrD5ytJwSUlu5RgRuycTFZvu74Uf48yOs2eDSpi9BJbSMFH12
	qvnY6/dbeNVfHyU/EBWerTP3arsUgCXFSXD8ZKc2KhqBSCQWjUPlZSW7MLhTwCR+
	VE0/ozm9cGuQRGIBMaHc1r/dbD0RL7JmUdimgR0tFltGv46vWlYAO1co8tSHGBk4
	nKh2j0qAgU1QOXxdsMfzEIb/JjMCxgyY0VVq7RuMLiKNkdhwKkgo5AZKoBO0N3SR
	+f+J817Ms+IkI3IXKatVU8VG7IlEo3tATvPHOLVnuCViow==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524ah9a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:14:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e89265668fso21999541cf.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221682; x=1761826482;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5onFcSVtjASenfWYLyuXz7IjaEZN0TDQOoqBl+QFROk=;
        b=kplXE1xD3NOlbOzH5EbhUHEczY4oC7Hm0eezLLPb5gvmkbURxestL9bFIi7BM33YWw
         hOIbxP8oieZX3qqwzwQ9ixHwebGev1UPxgw8ISOX9Ou2a29hRax961xl/ZpQbQ1xfBGj
         xiMyXT7hkQeMwVWdBJVErCsRIhVTonQb3SNvHiJt1FciUWlYXeSuavh28uBBEm4sIOzu
         W5WL2R3hJD3hYYJsMZaozlb8hiZ7B9khWaMo7uGYkQb4p+RK/21oeMrp6jZJRR/pLKAP
         tr5B7oU867+GGkeB5UqwW1Bbql7ks+Ci/GEEUJaakjccW0m7e/Hix2GCcxccI0i2Wgls
         eUeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaLMnSpXaeLA21+NjcQR/2mD8KEFsjtHUgZB/WSTxian0NmYstT1Q6k+JAy17cgQwF+o2JrBlumv7u@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7J/xPfDEaOxopz/CgFOeUrwuAYcIUrxsSVsznu5gjJqQa/f29
	Z3/Kn3WB8yQOu5B+gG8yjX6WnHOeR7elyUDymMY0NAeFM7eFuUFI45NdNW4QXEw/ijUPCI35DX2
	Vg5TLKIYCIjqWwFkpYQAC8nygzs8+WNhXoVpR7/k4taJex8SelxlT5/7QLgQuoRJt
X-Gm-Gg: ASbGncsHSPwGavxgBm4fbKU7i2cdwhg4R7qoTxErrunmiBhM0i9Q3INtuigpc2lXujs
	cC0bG6fAAWxWySZRv8P97MlbK3d/fnPxhwkw0EpVqoNqUEUmuhTM9v4uOLzM0lJdZXim1aPmARE
	6y1gapihRSsibmtQCkoyC5EPfZrDT0KwyTXPUu/GIOt6OYrGCYOUJqwVxt5sl2aX1S7itT3BWQG
	itOERdEUptBt/QT5rbs4FRu29MWc2gpPh28MFcqFHIKWojbkkzycdqaWR4lfi93aYLJz/H6uVMZ
	L7WI0euP7fHf9z+tBe7LMrQPOTw15eW5B1XoBr4JvFZGqDN7KhomWxLs7U+1GnAc6M9XY5X7Jak
	xFmCImoUDCWXJrujpbBGtBM1kW708XMgw2XLAAXafIGfw2afgTCQxrh7kC+x59BRWNRI+rxropu
	AsCyBSYp5+PH0Q
X-Received: by 2002:ac8:5ac6:0:b0:4de:cb90:dbe4 with SMTP id d75a77b69052e-4e89d393b93mr314967091cf.66.1761221681942;
        Thu, 23 Oct 2025 05:14:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESzd2NTnn2inqqoUmN9EYSM5jAuMSd0Wq4bXLNw8lQEUOtptDq/50z8lDPp8MEtECsteYIdg==
X-Received: by 2002:ac8:5ac6:0:b0:4de:cb90:dbe4 with SMTP id d75a77b69052e-4e89d393b93mr314966411cf.66.1761221681423;
        Thu, 23 Oct 2025 05:14:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4d2c32fsm702012e87.89.2025.10.23.05.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:14:40 -0700 (PDT)
Date: Thu, 23 Oct 2025 15:14:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 07/12] drm/panel: Set sufficient voltage for panel nt37801
Message-ID: <zxofh6bwee3vjjlntlfqy7yg2iu2mipjvl7s5bcm6gbh233cjq@nuicjojawd2d>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX0eDPEn+bHnSB
 W03VCZMvOXUk+/QCudqTfbe0lX+xZPcsSyuqStMSZhetLng+gIVb37XptBGkfaehJGMRg4sPzvU
 o9xohEdWfVvZNe7D674PlFI1fhT7YvEKKjHW3aZBlallh2o8LXdJ4RSKMw1wusQ8WLFbZCemGs0
 3YPtZS9jWAdI0jX4H+Vl1mTZF5b8MvSYJmim166VFPsQcvM91umGnmmkfcka3DGJIwgl2CIhxV0
 imSSvC4LFiFfLI7KCV0WsJW1AxdpL//9iD0GkWO28+ddX0fU+wmQ25Cdc4o4WVQiLZvtKTYLXMD
 XlNSqX07/KKYudQ73UVyweneVfYZL9oof0rExYzMPjBYoBvkKoN+tzbTAym/ij9l9e2wzsgcJSv
 qD+M0IxXsOE0H8Ad8ltg+nLvggC2Xg==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68fa1c33 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=-jZqwlwB3PUYXKLUuVcA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: cQ77nn7guHg1_b1Jexk6pXKC7QHUGicT
X-Proofpoint-ORIG-GUID: cQ77nn7guHg1_b1Jexk6pXKC7QHUGicT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

On Thu, Oct 23, 2025 at 04:06:04PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
> VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/panel/panel-novatek-nt37801.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37801.c b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> index d6a37d7e0cc6..7eda16e0c1f9 100644
> --- a/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> +++ b/drivers/gpu/drm/panel/panel-novatek-nt37801.c
> @@ -267,6 +267,11 @@ static int novatek_nt37801_probe(struct mipi_dsi_device *dsi)
>  	if (ret < 0)
>  		return ret;
>  
> +	ret = regulator_set_voltage(ctx->supplies[0].consumer,
> +				    1650000, 1950000);

This should be done in the DT. Limit the voltage per the user.

> +	if (ret < 0)
> +		return ret;
> +
>  	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
>  	if (IS_ERR(ctx->reset_gpio))
>  		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

