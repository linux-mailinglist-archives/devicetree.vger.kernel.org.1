Return-Path: <devicetree+bounces-180066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62642AC2882
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:23:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5118E1C078B5
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38597298260;
	Fri, 23 May 2025 17:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZTAa9xm2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8689D297B7A
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748020935; cv=none; b=Rx8mXaayOpRq0PCYgnT16zvfb3NwikdbVbtis91soeemSjIm9rfUqqr3UNTCCBKyiHqSjw5dm5o16tu4wAYD345jTnR3vjo/OlauK9Yn49tGiACBWT7qPX0KORURkUflP3ti78B6HzCLqXalq9j6vmJqyRWzR0o1+hWAe7/MCr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748020935; c=relaxed/simple;
	bh=bxic7ylWGYsZeNeLyW8IzBgTybAQH82YNsIyG5VYv8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=foD2vF72qfAZvECmvfgRLwvHsf08xvzDZMVnYL4rKS9idlBGcUtObjj87PwS4Q2k89Wa7Qlh7/+NWCLLrIzczajsjGKoizT2bE2WhoXcNBWoKR60tevMZvzObxzZbh7hZL0ioL+jXNSfraEioyk9/gbyErD0hc6r9Ck8a8Ziocc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZTAa9xm2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NFJlDl016970
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:22:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CxsPMKsl2e6sLqpo5u4gZ9hG
	I86nBLLNUxNl2LMQS3Q=; b=ZTAa9xm2NICYgs06aK7YxkZtY78AbOpWX8E9Wxm+
	DQ8HCQxioeP3wYdaXd5E8QP/JPgO0mVkvizXHofTYqsou/a9U3/jVjgSo7iXY7kk
	ZcbgiC9GevJash3gyGxGVwvSVsbXsRv2KIsg3e8ehQ6K1GyJxyer3LH2raoxtAgu
	kqkLo0U5o9c9HbZHAhf4JaZmqFgbHmZ4V6h4lJ7I0LItOe82suJTE5Zi3kz8kgCi
	wKQaC8kXOHelOCxHTTQaNW6jl9DoLd8B2Y6GcgmzsJzpkkcTDyddGOGa4U8+rU9S
	0mH7j5y3KlNCwHzmiyav+PNvoxboDC/rT+E86bYksmmscA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9jk32-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:22:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8c8a36dddso1473306d6.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:22:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748020931; x=1748625731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CxsPMKsl2e6sLqpo5u4gZ9hGI86nBLLNUxNl2LMQS3Q=;
        b=AlfXiv3lpBnTPZ83ufLZ6ToafLprTTPbKwa91cWMn2kOR3eVdlZXLefFFLLVEzTNVC
         xWSmiXUOgJiAFcL//GP9BxwELwjIlvjg+QWqxrAm1D769NUCGePN+PJgZkKBaOxgs43p
         FaD7oV67b8yybC6mXUmkOuN4XZ28bb+5ta0u9kSfMSLeBNU+tmoGdNaZOwvVgCCIZF4L
         0U2X0jrw1SXXRUfyLSXa9ypJDfVaaTeP/iVLz7BQ42/8bX+i6E5vdiafG3pVDPLJCiT6
         zYegZrWHcd7W4zqSOb04zw8gNs2aBrHjh6AENRZBe57IYcUGXtpob+bPQJWCpUgdfbBJ
         sn4g==
X-Forwarded-Encrypted: i=1; AJvYcCVbruiozCE7/Dpn7ljofXxBlTORUt+DiJBxRZbhNTsr9I782DpSeRXhrNA+r9n3HKtwfV1U08/iTFn6@vger.kernel.org
X-Gm-Message-State: AOJu0YzKt1/YX8a77pttlVB3FvQWKRhtEYu4Km91eYNu4DMveEh16EA7
	u81AWzMDeuLpoi9380WQDIzS1lgpbzQQS5CQwJ5EO47clXACyYHBJv6wJPQHOUN5BgtBG/cUvEx
	MHJwHf6aqQJLzbZDv+cWub2WKjiPBTdZ+0dKUxjFf3ynwUsa3QJOreamYXc/EDjvQ
X-Gm-Gg: ASbGnct78vqex9QdKsseBSAI3bYHoX9O217mV0DAhUciJFh7cIBQr7wzapuuGtzHuym
	Axg8ZWUSt5Gy16zJLIoKDc7A1HUYgyjbFKM7ws7HlkL+RIpF5G2GDDZQTnNmxhaXT7gmnc5YD0e
	XlU0wx8YXZ1A9IgOpvAxTZoTKHnRyvjbGf3lExnCJC0vR08AA0JkTbnr+WbUjsUNvDDHMcvI7Nf
	06nrULY5AmrTX7i2CivhtZNaqcP33pJeRhDsyIlEZxSsFSuiasN3UZAmpPu0kpSP43cVKbNi0rK
	2yfp8ms7RdzaO1G8DeDf6wRH6aM2SqHmX1jX9kwWZafZ2R4fP39pVtmrxgY6c054wRf+uaGa2iU
	=
X-Received: by 2002:a05:6214:234e:b0:6f5:3e38:6127 with SMTP id 6a1803df08f44-6fa9d2b220dmr4469296d6.42.1748020931442;
        Fri, 23 May 2025 10:22:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVhZP0656eJapAdg9th32cneo9jKCo62NNQX64BGoF8rPR0iTnMnX8waJlfs9haV4AywIsQQ==
X-Received: by 2002:a05:6214:234e:b0:6f5:3e38:6127 with SMTP id 6a1803df08f44-6fa9d2b220dmr4468886d6.42.1748020930998;
        Fri, 23 May 2025 10:22:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084b53e7sm38639101fa.22.2025.05.23.10.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:22:10 -0700 (PDT)
Date: Fri, 23 May 2025 20:22:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: enable camcc clock
 controller by default
Message-ID: <bfyursfvqn3clex7qx2oomredybl64yo6dxay7cplp47yzkq7n@ljmyog65hpn2>
References: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
X-Proofpoint-ORIG-GUID: L8cP0cgRVoIKepc1M_vUCFpbIZuYGPhm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE1OCBTYWx0ZWRfXyEN6WVpWXFIi
 /TSFgW20oyqsIW6MrAYxNh1IitCzXaO4amG7gUpfUpH7b+EdHqxqV/vuhgHW3UgzIAUpVAk61fX
 nPF9Y9sOIi/UL8TzenGm/FLRL/2zqpJVCjtdB9VND9fx0UdzMN3ker8x2UBeatLVXLDMOm80U5X
 exna/ZOXu9BQGg4D5RGA3usbp7bgpB3D6WOqTlT8E6bL81Tv6NurmCQXvGRfJKTtZyA5Z1LsMVa
 JcorntdjsuwkEL2jQEYBiAkYlpAzwD6RCfKnunaLRo9VDZJEmZilGyHbS2k26JUr30wPSduGw53
 nzVdzVtXA+bMVbTP18ausOU99YGX5H2kDFfi9h2nt02m6YmNg9AwtffFm2F+9A0QpoEbI13TlQG
 gqxq0QSaNmY0H5M8YLjA+wcHW6kzNTVrX+/pUl1emoYMXEqDRhf0Bq1W7EwlpPKZYAlYZAtQ
X-Authority-Analysis: v=2.4 cv=GawXnRXL c=1 sm=1 tr=0 ts=6830aec4 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=oxRLwV8hnwBTO02F5ccA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: L8cP0cgRVoIKepc1M_vUCFpbIZuYGPhm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=785 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230158

On Fri, May 23, 2025 at 12:23:12PM +0300, Vladimir Zapolskiy wrote:
> Enable camera clock controller on all Qualcomm SM8250 derived boards
> by default due to the established agreement of having all clock
> controllers enabled.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

