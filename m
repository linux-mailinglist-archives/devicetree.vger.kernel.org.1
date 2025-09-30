Return-Path: <devicetree+bounces-222863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0192BAE71F
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 21:31:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0906F1940951
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9CE27FB2F;
	Tue, 30 Sep 2025 19:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RN0XUcgX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC94A1C862D
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759260686; cv=none; b=LgyljWDBuZUDBeEoPmjsfL+jizGKFCZ/Tc+pG1VhCkvFcPl+eAPe3LJAMKrD9xJapHE7f+UV4rQAXBMB5URZSQKGaqarC38auLHb9oP76KlUGSa9bFAwm4uGoDHu7V83ymqOmoIHp1RNyOc2Z60nj6aMVTYPrd3fCBNnuw/KmGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759260686; c=relaxed/simple;
	bh=Of2f6L5h6WLUp8mGYfj0H03Yo80nbEPmPnhT5Za7vqo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hoLZo++BFEnZSDSsDzVg5COUT214GfW0lkpRosrxjQd5Rzxb0gLzq11sTUC7ZN2ecVD4to7EXc+a1mqFAP7JiDJhlnl9e3IouU7/DBGGI4zajeWPi3okbfPCvgHlKvOKl52h1yOIm42F62yZ7uPhIrigYvmkumO7FuHlnTxQxRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RN0XUcgX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UC1I1B014987
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qEQhoU+0iFnQpnaZftTjoGCy
	Q7E27cWAqjV3I5TP7xw=; b=RN0XUcgXN5DcNpcwcO/eS2stoY6MTrUel/qRdfZO
	19aOsf6vOcQArlbXjcB3myybZzC2gB6TOufWrCODn6gtjsxwDEMpbVHBZP28AMEu
	2aJ+JA5jMGiK4vD7dwLBf+Dte0a4uM0N3V2Bw1f5S5NrgV5ExAAzLkXec86i32Q/
	DpZT2XNHkQ2gdMkOwOnPTOSWTrhVf8mSqE0AYs+x3W/8yMGQWeHoRLv2xEmT3Cte
	EjIZADAB4xRQTZa+cP0nu1/zcMW5iWi92XM6pnBxBwejf9uH6Q33grqei7aMBOhE
	R1xjzpbElrSwMAOOjNEnx2fnsRl84gFbHuM+N6XEU/rG2Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr284e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:31:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d6a82099cfso160907321cf.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759260683; x=1759865483;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qEQhoU+0iFnQpnaZftTjoGCyQ7E27cWAqjV3I5TP7xw=;
        b=LI8fNfyswiM61qAKY8nRqOGOR/3WTFCeommSmKXfVO/dW39sitxWAaFzA5ueaGwNy/
         3HKZMkTuqCLmokhlu+CLwCoYv72tqCA7SPhofqnoSdd9vDzmCS+xz4kA6DxYP89FgnjK
         9nm0i24Dt8l3vmYafLdIMWFlztjLUbcuvFnSGHTeYUl/dwE8LYWjsF5jhOv2T6haQHE5
         hRKF/pM/BYh5eA15JYLwyZhNzApIJzUbbYDgZnYcaLeMMAhdpYG87sc7e2+tzMUzHwb9
         g9ZflpWIspmJQ8LCN9iSgjSkGcnXFttUGsWxDXy+olAPXKA7mbSbE45Yncn7JM8Bv/+C
         Ja5w==
X-Forwarded-Encrypted: i=1; AJvYcCUVfelNYzs1Zk04K5UPXLoHaldyJjn1cOX7GFyiatoTOAf4WJikETp1C5b9/sHBdaWufGUWGwwGH13o@vger.kernel.org
X-Gm-Message-State: AOJu0YwMR/GrOB/tQihQWEeMxzrZkqEMWRNuBmQBwlTS8hY8pZCrecdN
	GGTTxF4zYadUWYaECj/KjSx4TND/6VXd+GwXfZNe9LRm512M1zoQrE49kn0pG0zvKLF5Yet2LvY
	KrsBkSxQDPXLU9BCjZ10PjDnlF5wkEGsTOYWCU2H36KaQWBopvQlfrQxxIbQN3BCL
X-Gm-Gg: ASbGncug9IhYgI6rbaFlaGQ282VZt571pdz4GJhGFHjdhmTysy6X9iFXWFC74H+9DGr
	giOsr+SC3LVT5acnd9pphn+1sFVrF2yR7TzuSO9cqgYABWgcRtvjCnhU2Wi5YdQk4yQuySBmyIg
	Vue5fFPn2eoro7cvOjZmIUPGJo0omRi8X8ooMBy2WL4EnQcsYla6etc28vCaqsxuO2Zr2rM+NqW
	MTW+cPWJHaCDZnJHwJTXjjP11ugPfdbQiWhnpFH6V1PFtdcGrLS8WhmdpTBY3x9gEJeFo5bclsH
	yu9fz0qmm8tIS4S/Vn6Fik4ADefX/GOUjyXVaLC3lQvMZSFXFgqdu2BcT8ggBRIEfHl9q8yS0sD
	rXYoIzcsHjPaLYAA6sMGY8xlG1u3DNTyFp21gLWNS3ZlIxXyU3vlpZyGanA==
X-Received: by 2002:a05:622a:4c0a:b0:4d8:372b:e16a with SMTP id d75a77b69052e-4e41c923fb1mr10954371cf.4.1759260682659;
        Tue, 30 Sep 2025 12:31:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjjibGLb7dPD+kELAazeCZoqy4mtJTjmHTtorOnQOzn6lZE7AZh1Ew5Qdes84qqX8F3hfRXw==
X-Received: by 2002:a05:622a:4c0a:b0:4d8:372b:e16a with SMTP id d75a77b69052e-4e41c923fb1mr10954031cf.4.1759260682236;
        Tue, 30 Sep 2025 12:31:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-587748b15d2sm2159965e87.7.2025.09.30.12.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:31:21 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:31:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT] arm64: dts: qcom: sm8250: Add MDSS_CORE reset to mdss
Message-ID: <gabbhygjn5nky5prr3k7ozuiwhzicp3yuvn6qqglqyijt4lbvw@46pdixx3nprn>
References: <20250930-sm8250-mdss-reset-v1-1-a64522d91f12@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-sm8250-mdss-reset-v1-1-a64522d91f12@fairphone.com>
X-Proofpoint-GUID: GWibUUuN50IpAHVbxYX52pJzqrHcvd5p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfXwTRYNmWN1FPe
 n79YUjvwbH/VFT9jD1soYMDuy1oY73QLRNT6Bp4nkTJsVjuJylbYUHfEc9BjHFRtirSUtesKv1/
 WcM3GCPVgEjiq5VBLsSCn5ZwZhUObmbd6rrgQl2KMubnbJSwjjbAOnQEGsrpH5isJayxDLirt5F
 RfXUKDKt20jrVmcDxR7C/4rsMdQ7B0cH2ge3u8NMRJHFM9K2bbsRCkdMCCKtCTlnOawmB5coKWX
 Dy+n8Z5izPQtG/6NkD+HdtPxLWntB4KCTRsg/otbyv8ZVwl9TcE0eyPC5Q/gyK+z/KeX66DozkM
 MOnEjWqE7z+D8ixknGDhPPoWSFPmaW5lT9NQi6LckHzSWOFmj0I2PUK+FSXBfuYuTYfNsTcLoz7
 lCBbnaagR4j7f6uJM2Dy3Ale1S4JIQ==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68dc300c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=oWIomgx7Mzb9_gp1DSMA:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=kacYvNCVWA4VmyqE58fU:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: GWibUUuN50IpAHVbxYX52pJzqrHcvd5p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On Tue, Sep 30, 2025 at 09:37:22AM +0200, Luca Weiss wrote:
> Like on other platforms, if the OS does not support recovering the state
> left by the bootloader it needs access to MDSS_CORE, so that it can
> clear the MDSS configuration. Add a reference to the relevant reset.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Not tested on a device, but should be necessary on v6.17 kernel.
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # RB5


-- 
With best wishes
Dmitry

