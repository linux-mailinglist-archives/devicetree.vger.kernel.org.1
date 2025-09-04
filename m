Return-Path: <devicetree+bounces-212832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E7BB43D84
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:44:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33A0A7C7A8E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 628AF3054DE;
	Thu,  4 Sep 2025 13:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SfLBNwul"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1178304971
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993440; cv=none; b=awcgomIKRKbUrv9nPSau9zdOYsXXcmZptzAuiX0weltfOsFkwlEowihh2Mrv/ZWMlkBSo2Bi3KJpNg+EsqFnmyx3XsLmzUF9MGkdlgJc8f7rSzgKpYSqcWNhcauG4nfNL/qvDld2Q0PXfyA1pEVSZJ20KObPMNl4UPjG6gAtuRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993440; c=relaxed/simple;
	bh=pY+0hMoVoBUn8oqRetqFYduNjO9W+fhU6E5VEvndFN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o3hWVSZvbPBcBCuDt5oWr+rTq0SEAAlg2+PkIOYVj39l5nPMOaXYB1o6+v8v4ElubOLmtPNR/5vq5dqEIRiNdoG3U+5HI0Hc4gQ/Pk4YugyKZtdlmqusLG+oDO5QvmexHSgX4fZePZQtjm8oPXK1oPO36g5ed0am31sL1bImESI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SfLBNwul; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X9nM007609
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 13:43:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2glEwf25BhBn22EfU2RgmB2K
	pr+UPvjpjFbd0WLfYLk=; b=SfLBNwulePti93rH0/aneWsCdnYXKsLO6rjNRc3a
	l296k5oxt2aEN724wrVb3e3YyMKdw7rqbuEmEyaDn4kIitFBuv5DNIbjywYVoTOi
	o6Kt/Ev5RGQtuLn5rTcIoG3AJZCWWP9f/HSfWlu+TAI8xxTyaAKEdejbi17hNp7h
	dguK3cZNUKWyfbE58+O60e7x6ghUMes7H9Eg3Bj7iWx95qJ+eS9UkUnPa1g72+AD
	FyCh5Is+I5tB3OPZ0q1zQtbCtALUCL2ITkPlyLuvkslaOYnlkSjDvzQYRF2j4G8t
	xD6e8XawIvSEig2bPgVjks3vMZ1PyYNc+0gXlGIiSFJB0w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8yhxn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 13:43:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b339e7d107so23823231cf.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:43:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993436; x=1757598236;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2glEwf25BhBn22EfU2RgmB2Kpr+UPvjpjFbd0WLfYLk=;
        b=JMEYnYEtvnwm3WH3zIaQuimhcmebxscMCbRezlrh3hz+6nQbRXy4uikekJ5FMMkA1C
         K6rPndl4xZre4YZm4oXvqLLHZbvsmFYa+v/vyeBX1wwOj36LkiRoUczO7QKGXUdHYnK9
         l/8rUsu5cVea7xQsOc3WqOKLx1TG4agks6RfyruB/Lu/7NQhYeN9eGLD88cU+ka1MC+m
         TjrNIlZujiDBFIRod2hliboGObiDmQSpPTX1sS6xJNexZvOqR6P1JFjH3ufZn/xTq24m
         krdI7zPg+BMk8lUXpwxvTRSyqRIV5Qf4EIZ8/lG9rz/FMgFInH1kd3um/j9FW+G1fu6o
         xcfA==
X-Forwarded-Encrypted: i=1; AJvYcCV2uNaVWW3e5Kv9YzRHVofBofeDJRyrn8ABD7PdEvOiBeOrv/OpzlMcpTLk5muOSf+kAEHyKu9RnOOm@vger.kernel.org
X-Gm-Message-State: AOJu0YwepXTBQQVmuUeAGIKFVYfTB6p0KK4p156+zy5lUdvmH41Y88aP
	utyjedCj96CLqI34BzClnn0/m9bJeATcjvbqdL1nLeFz9LPZlTpb3tbfAxAcXia4vI9JE8QfHag
	dY/Tso4+kYETtK5VfU2ujM1cd7qsBEtm6VJMp1i8Q4jdytEmUvbnVLnta3/3VPUtw
X-Gm-Gg: ASbGncvbT99QMhHS7MPnfu2QGKCSWI4khtp9F0xL7d+qlCEBXPqq9KfEzhUGUhkO0AP
	Q3WcCYKXb2NwB5ZdnoKV8zBGdfB7NXC8wog/d/wRta1ZreROOSJX/PGDHvgEmikXePyzsNnZgyU
	/S7fmPfLiYoXhzgPuApJevF9bs+fSOJNUIfrvgMM4N7ECQ4WJAX5MdYoEGWM2FqRKtQxa8Ux0Kq
	B596yBBPe4S6WRFmgNgfHijcfG3J6fvjSJKXmWtNEUypYHrK4VEk1ptuHojf2NWxz01q5Dn6Z1j
	InYUou0Ogm2/mpE5xN0TrXMCPuU2tKlAk3B+MPaY6b3tY6iIGkTToPLmMVVz8bwsMEftxnbOeCW
	ydAQrb2MCRXggyUzdTSSExMkj0G5aN9Lk8mA8VtdqxrNWe2hJ8ADy
X-Received: by 2002:a05:622a:8c9:b0:4b2:a8d9:8683 with SMTP id d75a77b69052e-4b31dcd66e8mr252983001cf.53.1756993435578;
        Thu, 04 Sep 2025 06:43:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH390JIg6ufBo3mdh8M7wnVIbtdqeUgFOXqUz/fvQ0dn7b22yTZGY91BOUB7sk585pcqQx+eA==
X-Received: by 2002:a05:622a:8c9:b0:4b2:a8d9:8683 with SMTP id d75a77b69052e-4b31dcd66e8mr252982531cf.53.1756993434991;
        Thu, 04 Sep 2025 06:43:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace81a7sm1199096e87.74.2025.09.04.06.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:43:54 -0700 (PDT)
Date: Thu, 4 Sep 2025 16:43:52 +0300
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
Subject: Re: [PATCH v11 2/6] dt-bindings: display/msm: dp-controller:
 document QCS8300 compatible
Message-ID: <p2okyfwfl23bip65koaqezlvhyo3z47bnugojcieuspr37xc7b@s3qwgbqmts4l>
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
 <20250904-qcs8300_mdss-v11-2-bc8761964d76@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904-qcs8300_mdss-v11-2-bc8761964d76@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: dl5hX0hAXQEpPhOBI5L6lrmTrjenj_8V
X-Proofpoint-GUID: dl5hX0hAXQEpPhOBI5L6lrmTrjenj_8V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfXxeXEA4nS6aVl
 X80E79yRz7yKIDBMYH+1L+6tvEpyTmnYFboovZ2/yn1wzpvzhjO8c3OZlp8/Om4fNy5rZfNCE4x
 MQ/r2NK4fnBt+mrMwOPf7gmVHNfB7SBoRYWKKDJbrY4AbDldj+eC2ID+DuZ6JJubX0+ItwUFfXa
 uMnpIGkGenJS2lbUsaOi/TXAF5TxCzw0Rk9jw9xAWKNz2N9GJ5k+4gSY7lsVuQrviMXHFkE0yX1
 vUr4UXQ4MhEo5n5Z4Aw8EYHRwesU3xsN5OSCxjLyyHskJmzBoUPENmkAxrPXPaU3s+U1E8FCMZ3
 CRGe7jLJxvBSPr7swWz5t/7JcTcDCe1YHitf5KY/2nH3b7dipma/SRsR79V+rJ15QcUfgOd5b/p
 MHZf6BHy
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b9979c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=EGIftIUl1-O6pfvt0j4A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On Thu, Sep 04, 2025 at 03:22:37PM +0800, Yongxing Mou wrote:
> Add compatible string for the DisplayPort controller found on the
> Qualcomm QCS8300 SoC.
> 
> The Qualcomm QCS8300 platform comes with one DisplayPort controller
> that supports 4 MST streams.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/dp-controller.yaml        | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..ad08fd11588c45698f7e63ecc3218a749fc8ca67 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -18,6 +18,7 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - qcom,qcs8300-dp

Can we use fallback to qcom,sa8775p-dp instead of declaring a completely
new one?

>            - qcom,sa8775p-dp
>            - qcom,sc7180-dp
>            - qcom,sc7280-dp
> @@ -195,6 +196,7 @@ allOf:
>            compatible:
>              contains:
>                enum:
> +                - qcom,qcs8300-dp
>                  - qcom,sa8775p-dp
>                  - qcom,x1e80100-dp
>        then:
> @@ -295,6 +297,26 @@ allOf:
>            minItems: 6
>            maxItems: 8
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              # QCS8300 only has one DP controller that supports 4
> +              # streams MST.
> +              - qcom,qcs8300-dp
> +    then:
> +      properties:
> +        reg:
> +          minItems: 9
> +          maxItems: 9
> +        clocks:
> +          minItems: 8
> +          maxItems: 8
> +        clocks-names:
> +          minItems: 8
> +          maxItems: 8
> +
>  additionalProperties: false
>  
>  examples:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

