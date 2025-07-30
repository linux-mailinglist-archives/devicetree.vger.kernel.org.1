Return-Path: <devicetree+bounces-200863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31614B16604
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 20:08:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A82817574F
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 18:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC51D2E0B48;
	Wed, 30 Jul 2025 18:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p9IMoYYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCE3265288
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 18:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753898692; cv=none; b=sDdQh8IK3fpOZbUnXJzipv+wfBmn+ZhR/GAMR1nJkry+pW8iWOFFbh3qyzyz/uLO8VHjol9NI5TnVgrA/69WaT1m+W/YtrXTgnXiL8l7LvzlCOz2WeViUeKZwZWEpMEXbRWix5GgAM1ySnOjDL5uxD7Cc/qaYLrUoGzRgWIYr/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753898692; c=relaxed/simple;
	bh=n3D8qHnnfuAiAoc6PZ9oryWver6UAcBaxmcMguTYLIU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZsPCRkkInMOKlNOGpgSI0/ERLY2N1FtdAxkk1zqeFEa7VSSi3XajaIQ+Qw7eT23r7BUUscUjGvm2Lwc07N/Iun4TbaYMzfJHHjjbCKoOvvTjXaPY2NwpBtIQtaZg6XTfiVG6VHkOCLUUNellBNRzpCq+aYY4KIiCYHqH5RqgTMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p9IMoYYt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbG0u001492
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 18:04:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I/8jBayyhvVLDAZPoDLRfHEl
	UvAYchL2u6ScDXnQkcQ=; b=p9IMoYYtbltFngmzBsxUuR//FzXgU6tAT0ENf7n9
	RMdxhSr+BHgJ6wfkZjLrkqZ41ENbDxo6AFcwcAXHb/18bDTKHsm2Mz5po1ry2zRN
	yItzjGckbaVR20805iPqgwoaFQDa+SbQn8Ms+ja3u1GxrIBRERUr9gMcQnh/I2te
	LIWAaYDGhBPZx+ee1U965UNkOrwbpxskiwVzi2E3ViDdM6vCLeB4WywwwB/OrgK2
	YjdgId6OzlrxwhosEdxmy/bxHzHr1jeyBOou7kkMCSi2OOJnOZx32uEhyj2TKoHh
	ehcnv7bnTpITx83ryUudM5Zw10g96LKDGS/OZUClemzYSw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q865109-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 18:04:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e2e237fb4eso19892885a.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753898689; x=1754503489;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I/8jBayyhvVLDAZPoDLRfHElUvAYchL2u6ScDXnQkcQ=;
        b=W6kHCGp5LHpKf2moOu8b5CD9Yquq3sH0RnlYxzozlzZihR8m9wwcqYD0TCsVMEmW2x
         XFomcu+rYjMiGNJNa6pOMtc+OoUOIhuULEbEu1s40ViAamGJOR66tZWruVqYDenPGkpH
         qHuVFnyi7qt1RxIYIa9cCp2lCl90hmB8P6VS7kn8LSUmKGtZBYanSX6RM33vTmqROhm/
         EvuBsyVwhAoU+ttXC7Juw2tlsDx1VksdeH4ci6GWO2CDbHAkYyHrJxRTEtLZjhtWWNVt
         vhEeIXOWw2r/eitUP95eDGewbsX3lxqtJzC6aftxwMPkCNu79bJAvgBS7VMq9W6DYGTL
         WzMg==
X-Forwarded-Encrypted: i=1; AJvYcCVqhgzIXL8c9hURTkydkEBhADE+4BIhTgZsHWtBKS229p5dzlOKo3SMU2CZMmjADSPbkEB7pP2zhHoW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+iqKDuaxZIJHDyzCnAVPxsTT5bwoZloSm/z7MF5ccadjs6EqJ
	Mcu9rX8ePhvGLEE04poStFMy9rF8iawulvAWECD3EgWvVHzhjclZ7aWmSovATmPE5zfW9Eatim8
	DhWrLVrpducst+3u8m6/DOzWN4t8draQWCAtyTgBeIDoPWwYz4px/h9I2GziormKL
X-Gm-Gg: ASbGncsentvJirbEIuyc4fm3/KqPdf/q+ShD/MoLRZN8hCOtJS6RJo9mzpsLowSP6fY
	T++H77VNWxGhE2eGZcmWeWyxYYJJbntR755ZvQpqfhLahRpVeiWhdkd6Umox4iHvLGB000FXdWa
	fUkmdLVWxlAQgukq6oHyr0z3pvJLqBWbM6bg9v0Dmdw5KCd1IZyqto00lMSaZj4a/caCGxCUnNc
	fE6Mo+axKtomgdWTDGdtCHpSx69vnXNzwBTEL7863eB/2Xqf/Avh56CsA1dUDlbcqOg6hig+qFi
	XfcAS64/NxshPVoF3DxX/5tZD/6grfnufBJ3OivLEG0i2aAU6I7oLXZS6CT4x2xmYRIvV2u3i0W
	z77OMHesVnscpJLufqMCsiKCqnWKrTNZHE7l4w1cpIEtlC/WBftK/
X-Received: by 2002:a05:620a:3954:b0:7e3:3288:8ec3 with SMTP id af79cd13be357-7e66f356727mr495183485a.32.1753898688682;
        Wed, 30 Jul 2025 11:04:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkOwzT89t02FAAwhQoy8CKlO1y04DetSnNnh59BpmdEzw5MvIIAzdTos7aUbXT9mMSFhlv6A==
X-Received: by 2002:a05:620a:3954:b0:7e3:3288:8ec3 with SMTP id af79cd13be357-7e66f356727mr495176085a.32.1753898688034;
        Wed, 30 Jul 2025 11:04:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6316d9bbsm2237982e87.9.2025.07.30.11.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 11:04:47 -0700 (PDT)
Date: Wed, 30 Jul 2025 21:04:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
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
Subject: Re: [PATCH v5 2/5] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Message-ID: <yhgdibfxtv3w7t7strxd2ywy7gustrff5tbjtlpeh34m2bkhkm@xosfinmgbkui>
References: <20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com>
 <20250730-mdssdt_qcs8300-v5-2-bc8ea35bbed6@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250730-mdssdt_qcs8300-v5-2-bc8ea35bbed6@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDEzMCBTYWx0ZWRfX7Ae+ha0ujYwy
 AYIXEYTYwa9ITElRlg94zqnU1rLt0wXb5Auo5PaMBH+4nIAFCPi6bKj182JZAeMRzs+s1PNMz/8
 dE+FJMA628zsUgRhaTOyre6n6aFJWCPYNS+cJL7sAcerA/SjX8sQGA1dUSDbC12wph5K2KL38vI
 aqXGf6jZBuvZCcSgyHCFnwJlpbFJyoofIgD9i1bkc+409ze2PNqOXu9Yk7/fIqGNeGIWLarD2ub
 ENiy14jI+WY/lov0iPW0zq9xdxlD3v6zSay+5EYUIaTjBr4BuIW3405/144Anyf1/7Igvt2LoTt
 0M8bub5W9EWyal1+UY8GrqGRBFJGkphmWYRm+z+5Hh8pitydV3oUpxYju2zEdrRmRl7b5ESnGYB
 +WbTjs0ryvvslGtZNqOj0dRYZaWAx4R3WBpH5qPJCs/kUmEbsu8lmND/e9T3nMlXtZP/T/jF
X-Authority-Analysis: v=2.4 cv=TqLmhCXh c=1 sm=1 tr=0 ts=688a5ec2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=WvbujaHHVq_kfgFs6tQA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: FfNOXxP9jJ_sroAy6zySzOyhlKxn_JEl
X-Proofpoint-GUID: FfNOXxP9jJ_sroAy6zySzOyhlKxn_JEl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_05,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=995 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300130

On Wed, Jul 30, 2025 at 05:42:27PM +0800, Yongxing Mou wrote:
> Add compatible string for the DisplayPort controller found on the
> Qualcomm QCS8300 SoC, which uses the same DPU as the SA8775P. While
> DP0 supports 4 MST streams, DP1 has been removed at the silicon level,
> so SA8775P/SM8650 cannot be used as fallback compatibles.

"It uses the same DPU as SA8775P, but we can not use SA8775P's DP
compatible". There is some logic issue there. Please rewrite to speak
only about DP.

Moreover, removing of DP1 should not affect DP0 being compatible or
incompatible with other platforms.

> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 2893f097df826a5f941fbb754fb4a96a1e410a70..f5930f29c91ec95e9182c7b8ee83c0549c6657cc 100644
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
> @@ -186,6 +187,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,qcs8300-dp
>                - qcom,sa8775p-dp
>                - qcom,sc7280-dp
>                - qcom,sc8180x-dp
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

