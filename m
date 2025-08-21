Return-Path: <devicetree+bounces-207377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 37617B2F54F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 12:28:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C82C01883D74
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A822FC86E;
	Thu, 21 Aug 2025 10:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CivwUtCh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2D62FABEC
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755772106; cv=none; b=OVlYtuSZkjjiwHzD/u1KmH8aHCJudL4EwgkR78PPzhGjUmOazsIctqGvZdz/x9ipt/hiDjuZQcuI6mgXUymvBcT/dlY/N1SbG+pHsbF/AoPjpDE1XexJOsbf9Zn0NuCDNIZaCZoLp4aZUZgjhJaCeZ3i86ZQ8XgbVcGKmZmU4o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755772106; c=relaxed/simple;
	bh=tfZPMqZtElzvCkRSGhlgoViognsyA3Qe60Shjgy56KI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XOr1wQ8PjsAh4y6DuZCSKQaU0+XYoUmvayFtaSuUHHibhP+Mrd5Ibo+pIveiFtJo8DSLOQEkWvy9hwO+u1uan0uNE3NGIOOLtU+8IokTNN4EKWxsAPS6RlvPD1JyCakfCR0v7T6tLmBUW7XW0MJA6jcwBBTkbrvYYgMDx+rZ4ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CivwUtCh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bD65014843
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:28:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Bo/sYYeMVH8ubDzUgHDxT88A
	ZENWIvmqdh74NivXn0w=; b=CivwUtChF8i1DNVsez1ALO1+qJB3ve2S7jUeT5r0
	LmxxdTJx0OVqCVRcTyLKGsbXHvHx6R9XKyQSmuQ28t5VE+9cvH9k5FaBInfMjnX0
	JjIqEP5+hxHNuYO66Vh+J3/M7t2XWQVpobj7hYSEoPV5z8PS7/352vy5bEOJckEr
	j0Z41snS1EXDZREWJ4+PF5WR73VUhgppFNzy7yR90sS6M+wancgB6Z5trIm9FjT/
	FjYX0qLcKjBMgVO2gVZStG8Ub/DbnXz4MhGXYFm7nOLgnVGPqaUKqIqE2zV/Zqlz
	fMtLIqeVo/HOMKQlH/lIya/tBWp37D+snFXNoibYywITOw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528w11b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:28:24 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a928da763so18410496d6.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:28:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755772103; x=1756376903;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bo/sYYeMVH8ubDzUgHDxT88AZENWIvmqdh74NivXn0w=;
        b=ZUbn3OndRiNKop7zlOBYSPOHjYoj8W1KWVGL/Q7GAcnDvLNE7qnKo5VAldULFXV5pI
         dZFRcruTv9JlsPhbn9/C6Zn1q/+hnwop7EjFW0cFvwOUU8+sCqXEQ8jXzbZ4+Ql8+6IE
         BvMeS7IBDPGufKkR2ehQW3vmqX2iBoMKga9cFnmi1cQw3OZjFcLqN3VeSXTszyd7zJuB
         2z5VXEAjfJlZSQ3KcT0RwY1ZonVP3y9dUS9fIj3ZRpSA3bmbzsTWgrxQL89LdXvoOaU4
         9DiHD27i7DX0mDEHGnHoiYkUO53Zv+u1K26IVlYfMVzT9X8cmxH5yxtRaSRqbEwtTQi3
         y/Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWg1mqCPzGrbILfEYgHRwx3PnhcfSoZSJIyl1nNVLLeY5FVHG7QpeCjOLWVrfyErQNj/rguwVwLpE/9@vger.kernel.org
X-Gm-Message-State: AOJu0YzHQQOlj+R+abeoBJ27sQ5zDua1jIxsEJsxip2PWohrA7/n5mK/
	NFxJh5V4SK4VOMsBDdes2nT4idIo/UP0xXeWxk/Nr6t/qnVyldZfv97DkX2/3RUUk69xDHFsSMC
	fLoKnRHWsjdUWZOcYrgxBG06M9F/acOFVHO51xvtAGJiGsF7bQ1dSsDufDr5Ulncq
X-Gm-Gg: ASbGnctVrfL6G3W0hqZQ3nGicNTtgGPEvSOeJH1vlhmZH8G8sDHhhdP1uRO509c8h6s
	LLg4WJix0AXmwLpXDgw3uL0NJ2P3F2xWK7JnBKTFZCFUrWwqUUL1IIr5rtRidlXP/U+26zfSbsy
	vDNYIOemEuo38a7HBVUR9asd6cCRI3lBGtAV9+NfwQm50jCPQs06yougq/1zmM9tVM0/vOpcQN1
	zzB5Itf8tBzdKJVc8Cayvqv65grn+VHKh5i6rUttR5NTZBpnRNokWHVg2yxU6hIxHjzqLyw0s4b
	CI3daYqKF7X3cYeQZy22lv5Cb2RmTYV5NTUdsgA0RnA/x3LoQxZZMYq6Zk5ASxmCJQfyshKkV9X
	5hY7s507p+pGYqYHEJBkma/kPV3xmhFxevZg+hzDKaI/Dk0tjbGH/
X-Received: by 2002:a05:6214:21c2:b0:709:31f8:fd96 with SMTP id 6a1803df08f44-70d88e96a7dmr16543856d6.20.1755772103363;
        Thu, 21 Aug 2025 03:28:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwYF+lZ1f8liHpI39C8YmGl+9DTxpGYR/3aTWLPUKxMN0WxZXjU48KYaq6jDvJjEnbHvlfEw==
X-Received: by 2002:a05:6214:21c2:b0:709:31f8:fd96 with SMTP id 6a1803df08f44-70d88e96a7dmr16543666d6.20.1755772102918;
        Thu, 21 Aug 2025 03:28:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cc9c7sm3038380e87.71.2025.08.21.03.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 03:28:22 -0700 (PDT)
Date: Thu, 21 Aug 2025 13:28:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Message-ID: <3ws6xfmmrnjybn4umbbnzjdksqberzuxslz6uxpabtsz2yzyss@jwblshilyx4p>
References: <20250821-qcs8300_mdss-v8-0-e9be853938f9@oss.qualcomm.com>
 <20250821-qcs8300_mdss-v8-2-e9be853938f9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-qcs8300_mdss-v8-2-e9be853938f9@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a6f4c8 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=WnZbLXWYNgm-BG77tk8A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 0Js2QlDB9UjaeFIMSzoZW5Vha1LHQ8v6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX3msgO5ipsMwb
 GRqCvdJhGJ0/TgvYAXHca4YUl9exc9aICPIuRRYp3GQMif45dLxQvcWNqk3m6b4j9Vg6Zy+7//k
 r7wnycgJLW3aZKP8vNayKXVX4RPi4sPYXChjbYEI+j4wvAgQN+WO7Qx7nTUA4hTP4GaMYtuim4o
 gVU8W7lAdQ8mn8FcShqUrFTUJjsc0zfqaSEGyaB3VMmTWIrZM01tylxvMvQa645V4zc2ZKWOZbf
 xYNQZhUmdi0yiP3LV4fOZ4ARGlYqiEOlJ+Ox2rW8Ax78wycm/y2i6ajTwNaaLvNdCMylApIrfPr
 Xby/xYu9hCWu0yQZgOlrfbX2PyHIVy25pFW4G1Aes1k0alZb4tY8pNJ7miCrwrVda9bcn19iJL4
 EDd9mkHSQatPsrabD1pANhU8rEvA8w==
X-Proofpoint-ORIG-GUID: 0Js2QlDB9UjaeFIMSzoZW5Vha1LHQ8v6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Thu, Aug 21, 2025 at 11:35:57AM +0800, Yongxing Mou wrote:
> Add compatible string for the DisplayPort controller found on the
> Qualcomm QCS8300 SoC.
> 
> The Qualcomm QCS8300 platform comes with one DisplayPort controller
> with same base offset as SM8650. It requires new compatible string
> because QCS8300 controller supports 4 MST streams. And 4 MST streams
> support will be enabled as part of MST feature support. Currently, using
> SM8650 data structure to enable SST on QCS8300 in the driver.

Bindings describe the hardware. There is no point in discussing the
driver here.

> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 68a6fd27506fda004e53174db5bcc88a29e8d2a6..ac44abfdd2853393ae199387c9ae2c37e1c48f52 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -18,6 +18,7 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - qcom,qcs8300-dp
>            - qcom,sa8775p-dp
>            - qcom,sc7180-dp
>            - qcom,sc7280-dp
> @@ -179,6 +180,7 @@ allOf:
>            compatible:
>              contains:
>                enum:
> +                - qcom,qcs8300-dp
>                  - qcom,sa8775p-dp
>                  - qcom,x1e80100-dp
>        then:
> @@ -217,8 +219,9 @@ allOf:
>            compatible:
>              contains:
>                enum:
> -                # some of SA8775P DP controllers support 4 streams MST,
> +                # SA8775P DP0 and QCS8300 DP controllers support 4 streams MST,
>                  # others just 2 streams MST

QCS8300 has only one DP. As such, it doesn't belong to this clause.

> +                - qcom,qcs8300-dp
>                  - qcom,sa8775p-dp
>        then:
>          properties:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

