Return-Path: <devicetree+bounces-249333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D52CDB10F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:16:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A688F3006709
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 01:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F6926FDBF;
	Wed, 24 Dec 2025 01:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RNJTJHk5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bMem4gmb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA491A2C0B
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766539005; cv=none; b=PSZAr5fORUW7DrV7PKn6Q86fN0l4gl+H5sgP+u5BZib4TYIujN47rTz0r8NBKqzfPjgpY3is8SGJicOzZzMX/gcVkq4qJyOTDBGbvT7g7VNGl2Iivwzir8tMokZ8+iylv3PVtSllYpOM2By8Mf/NVn4DCjoOdayDbC8gO9/J0Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766539005; c=relaxed/simple;
	bh=dXxVlVO26BUKAEYsoEHJVK19I5Php+bWHYJKlJYQqqE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lCybrBSGyPpE3rNCOsnjbvoSIrMUcVHerssmIjK3042/oiDiFVbvbc/BvUEBnrepDmzfLmKdJjybMuis3WodLNVsNKWCVpDe7kJy1V/AmLtb+Lfm4eIZ9zl9sm26kNCIPlizBTzALQG2rzNSkGyAi96yfz1jJZ5+uR7hXACUfPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RNJTJHk5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bMem4gmb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNKRnmh700902
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:16:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hIYfzloB5XYJ1ib4p1y5YsNL
	85srUlDRSrKOIPLlKB8=; b=RNJTJHk5tauijjxO+gygLu9Nv1A0nXDBjEPuY0Jx
	an2LiMqzjC1GAeGa52/XAWg8pYU204hlAyCzC570p5Bxh1IirTqTmEj13Oi56PXm
	AuUVZ5Sg4FfMV6ka5+oKs7h6vidSsaY5nOo4OPdMAOfjKipfDBXNzWT+sYrBqkJo
	xDuS+9hxAjfaz04l4dZsRP3W+DOPRojzLSFd0T8/4GesorfuWKioNOvAVB90iUaN
	RKjdvGkNibClGM3EB6tUV8Whur7TCSR+KX1jcnJ78LYEQY5PjK0Dcyeb59bzEmj1
	aSwsDA8sJ9F38HrstwCYAKblzi7i/OM+YqF1cb8zWO1I5w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jt6k9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:16:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-880501dcc67so207651556d6.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766539002; x=1767143802; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hIYfzloB5XYJ1ib4p1y5YsNL85srUlDRSrKOIPLlKB8=;
        b=bMem4gmbwr6ugZSiR4G0w2NCECBumeVD3yvNgLsFaUFk+va/TWytdwQepGJO9FEB/E
         F4gKspjkprFM2F+M6FCuYxlkAuqX9svcA0TpXhmVC7kbyDdwZIEPGKh5QFTIP0kWom7H
         7xaJRQsYpqJWLJLPSjkbYrOcvksJk446kmSBadArpzjwXSQu6pDoqiyw1drDKlmsRVA1
         TNmW30l6Sgd8DcTM9gpoVPwruh3yINFCpwS+sgcNuDxuo4jG329vco5Ivx7dK0Z3auoW
         Ht0aZ5s52z1R5AaInR8SPBqok9CFwTcfsfcXRAn7Ci/3gbvb0oZSG40YISRhxkRsUSru
         dRyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766539002; x=1767143802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hIYfzloB5XYJ1ib4p1y5YsNL85srUlDRSrKOIPLlKB8=;
        b=XQzntYKt3lzJYG0hDuEVXxoTKmeVPxmYNlrJUtHk6imO4oPGemy3C5ta0Ouyyno6eE
         RhKCFLC1prOHEVIDPfuQkNzIGLXxAhyhxM6Z0oj73Up/4Y7eJhK0piCeGES7X5LWvWGy
         w99I9yOTZXzfNzmmRRDbTLF1LrNuxfBN96InykJpZEqMjppbrToLs4rBm8fb6NvaHa/q
         TvkCPTmCMnBM0zM0RxGHFULzbbMuOlG7AW9D3slzUloFiAYU5jGaeDi/Bi9F6NPp8zhD
         sumvWwzPsXC/+0Zd+V0ja89LPp9cm53CUF8x/Hw3w4YmwIlBa8PXqA7ElP4TFBi7K0uM
         j3yQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfHYfwF5oKdssjkf0rwyGmgC1fyOVx/uEkojr8CVOxmvS3oHUvxXwwOxIkFde/XQ621JlJFDgrAx7H@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf8PlvJ/t7yOFzEQriDWCKhW+/NwM4hvsNz4UJT7NleN9t+MCI
	Mtm8YHauUmzKDRgRn9dPirrtpVVa9HkVz6OLGL8tQSVyEehj2hiQEP7iNA6/6NrD/wRazPXdEZW
	8hLnQtsm6CUMTfasuBFVCPUNqkrgSOvDQQOuXfomZwlMiCc4DiUu5rWRSDu9R7+3x
X-Gm-Gg: AY/fxX5Iv1iksi4EMEzykOoESeaCwpAhei4w9GDAxPhbLfPVvcIP0vAQmqHwO6G9SRJ
	52vMgZ8hcd77lHFzePh2elbt2GcaIT32KqymD7LhSeV4Mg5whq2seST2KI5XxBF8YgQP/kSd0Mq
	bamU2qVfmfr3rFXG6kTcx0bqhoZDB2gcgfpPzut6mrBJqel5vo1AGbiCiWMSRkX+1Iuc3+prV/3
	TSSrheaV0otFJKsLKnh1JUq/zJnSrfJQvNAiTe7wvaYxIEppuq668iMz9blgQO0ml8SbW2ctXI6
	dBwfYsT+BRVlGYi1OzYqhc46Q8XhaVnc+3Zw+aZvbftuJDeJ2vwELmvH5Gygne4aSkp8RvORBq0
	AOqqnULnYx+SPyZd2LulHK6zbW2tRiDWOngN0PdLvGOmkK9E5oYwewOgmYWvx62Ij7HtjQSocAC
	OWB/9fuPIp7s+Oc1NlehkcPrE=
X-Received: by 2002:a05:6214:5f86:b0:88a:4694:5924 with SMTP id 6a1803df08f44-88d858c3de5mr254876926d6.19.1766539001747;
        Tue, 23 Dec 2025 17:16:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF6wwUzQAGBjYRfb/Vr4wAgSSornw3FOOyMvBh+bgPXVJiqpeYGFgx7DytKRzOeX48KTEzAqQ==
X-Received: by 2002:a05:6214:5f86:b0:88a:4694:5924 with SMTP id 6a1803df08f44-88d858c3de5mr254876516d6.19.1766539001221;
        Tue, 23 Dec 2025 17:16:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18628422sm4502543e87.101.2025.12.23.17.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:16:38 -0800 (PST)
Date: Wed, 24 Dec 2025 03:16:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Simona Vetter <simona@ffwll.ch>,
        Casey Connolly <casey.connolly@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v2 11/11] drm/panel: Add panel driver for Samsung ANA6707
 DDIC
Message-ID: <s7rhdqcctatkmd4pn2kcjty7rbbwztlgzzduuqrhrvkvgfzxet@j37kjskze4px>
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-11-82a87465d163@somainline.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-drm-panels-sony-v2-11-82a87465d163@somainline.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwOSBTYWx0ZWRfXwJ67TsjbE7u7
 a0wD4UU3ThoIUx1PJTQEa6XIZuJT/ZGSj98D1lDPuzJLAbH0AdsJTVh5gwde2VHGLKX8QsTijPz
 8nDW/ICaFcF4SXpZAXAVQiq1VZGPQhnIYCbCQ1Ft/w1YxcWyRLfdooIjUZ84P1uHjfxasygvDaI
 1g/99K7mkTept86G8hbKLtDfrCZ+35OMbClIZhxUWRBcAiPD4JCWQFAf6uYrggpZc/Tr/jAihF6
 aSqFLlwkQRhnbpDgDugcvEGqyw2qUwNHZ/2QauVfmTvRaJ7sqi6Jqv+d6kqvvFy2ZsHtS2uGChA
 98q/OYp0tyeyCaOrXj9ZWcPdv6NUOPxLJYdED7QGLq2/dzuDE1peqQMOYXmyGvGlF/WJpLoc0u7
 gwbJ0oE1UmMdUH59A6hauy3ZI7bSrA96XfL0xM8qMU2InzQUXKNH3EFpWEtD+RcRus1qKM/s4NJ
 0lUP0Zlatj/YrsDVraA==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694b3efa cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=tVI0ZWmoAAAA:8 a=EUspDBNiAAAA:8 a=in43iuMr0HE-7OTW55AA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-GUID: s-7z1FiCILTLvm1jrw86koUjnrrHOCFi
X-Proofpoint-ORIG-GUID: s-7z1FiCILTLvm1jrw86koUjnrrHOCFi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240009

On Mon, Dec 22, 2025 at 12:32:17AM +0100, Marijn Suijten wrote:
> The ANA6707 Display-Driver-IC is paired with the amb650yl01 panel in the
> Sony Xperia 1 III, Sony Xperia 1 IV and Sony Xperia V smartphones.  It
> uses Display Stream Compression 1.1 and requires dual DSI interfaces to
> satisfy the bandwidth requirements to run at 1644x3840 at 120Hz.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  MAINTAINERS                                   |   1 +
>  drivers/gpu/drm/panel/Kconfig                 |  16 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-samsung-ana6707.c | 461 ++++++++++++++++++++++++++
>  4 files changed, 479 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

