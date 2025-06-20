Return-Path: <devicetree+bounces-188001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC68BAE224F
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 20:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 538961BC6D43
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 18:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685B12EA746;
	Fri, 20 Jun 2025 18:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X5nx7/Gr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EFB21FF3D
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 18:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750444546; cv=none; b=hfjZTlfFuuon99nCkOdytJLy5EnMPdYhOSnDw1Qct5PKQBJJw6Oh2TRY8jFewfKiBzPovv6TWy1h55B7YFXATjotHOBrHyc5xxtSESZXfXSTkUpLPrCOXIPZQAuA1N9aVQZDOO/WK6aNIMq1+ofW/KRZqMY4gmMU5OFIufZjTzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750444546; c=relaxed/simple;
	bh=JWMSYzBtLnLZCvwsZk3KkGLaQqwSbdl7evbVSyyidtQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WxLeedXx2VA45UaUgJCxiRcgCv8/MLRPzKGbsQIc1LQLCKcAw6a+GaGQ6ZIEZ8YB4oxX4wNomcIHxGgP6/ohujqmSQa6HFnM4LfLOfkgtNfgoYiiOKBuwRh/CaPE3zT62+1tgUPqLW8YxXhArt7hZStdfMPom47CiCKqm+PySXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X5nx7/Gr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KIYxTk026312
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 18:35:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gJw9p79NQp28rgL0YjqCtfjNT9ZaiNa7ynXf7QFlFhE=; b=X5nx7/Gr7MmRCnEu
	ylS3DFsjLg6Dqq3SlAo/V3lwIKBV7b1RxrEClRzwr7TloClwe3i3vX1hRNTY20O0
	lltwffkVdYLQYVcoP51FkX7yBVYgwGWFV8j09CNuUWVKjpaa51WYwOQMDwiOZEux
	1lUFguT22EJv3rd4mMGu/LYPAjC2sYMHxd01+T6xUUAx3Gxs6CF8RimcXXzYeSyZ
	ZD2VcC5CJiVw5ZGvX1R/XdzA9kIPNxvgDL7YFboE4Gi7K/5KaAY4v6XU8tJiq5a2
	SRJJ2gF7NBP5vOtA6dw1LgPkl/GNwb4otu6qBuRAwN0KTGIph8WMJsI/ooBcCcfe
	PmmcNA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47dd1yg02f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 18:35:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d399070cecso380978785a.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 11:35:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750444542; x=1751049342;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gJw9p79NQp28rgL0YjqCtfjNT9ZaiNa7ynXf7QFlFhE=;
        b=RdmP90PuoEgVRmEmfanGzy2g+ObW9oPz3cRuw6qmOoqp4KMBcc5VH02M28ErRfUKmx
         sUBPELUmvgHHX4nap9D9m0T+RCFapiS13hRVCNgCYywLYLLl1VaAu0qowId4CMufx3Tn
         3Wq5G7SXWQUp2ch5jfwjwdUag8geQucTsnRrlrSZbYC0H3y/P0665VAXvyB+//ABAUev
         tfAYOrrjaoR3f+jILXj9y2TbOw4XxFy0Gjw9oNrIJPh20pZcu1hXQOdXL+wP3Y970QoX
         EW1NbQK3rb8KyNHIJpKnbFUHl3flW3D9NWw8+raDLwTVxKi4jwumErm9Et8JtBzrnSxT
         SGng==
X-Forwarded-Encrypted: i=1; AJvYcCXJYSmEd34rU/GA3Kwv4Bf4a3RaJoUOgC4C/iDAkz8Cj/M/360ZbvRQVZW0RC1IiYR8iy4f5t16MoEO@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm69mB/zQuK1gKK/OAf/KRH93MkPwkeyKw1sJizAoNqIjbE1mc
	R4By0ZtjrcLPxOqf/KpOp/oQfKbS0b2FLRs5LPBC+XhW0eNS25uD/bc/DVdWWlHs1GS8XE7uQD2
	SLHGQSPsp8PPPoI9QyAwr4LNGnI0aWxJeoyvcUjHpaONU0MEPVgsGFi51rYN3ubrE
X-Gm-Gg: ASbGncucAD8glWOh5tuwQJ3G364danWUXCwZiCmtDpwe3X2fAPUeYVwyBaUa6qILUHW
	roZReFdLUPvImij/HGmWyV88H1cKyWrNpM9NzP4019xNzb8rmEfAbvaTdy5IgA4cy1+uM2b5V15
	7XFoyl2FJKe0GYaCZglZQaPmd7vZdgqF3sWvEv9tG+uCMfC9A0iU2f/RZQzCzN2mHer917lng/f
	v6vSSFpFEVjimJXTI/1L4Xh7AaenXWFnD7w+m3rhkMj4WdQacdwB1jFX9kOSA7ecta9SN/c1FDn
	GEnJT+xwS4fMou1PcYSC+pw5gEC8lwXk667jWeu2xGHU7U+kLAhhARgcKLMlAh8miQk5roE6loc
	arfX6InUy4Ri35J/WhAIfMQGnId0fhbRQPhXWaLyL2zZV12OAYOJs6JUZZ/S6YTs/JV02G0efED
	g=
X-Received: by 2002:a05:620a:7003:b0:7d0:a1ac:e83a with SMTP id af79cd13be357-7d3f98e00bfmr464036385a.16.1750444541650;
        Fri, 20 Jun 2025 11:35:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsuEvU180uOuJG3lc80Lg0/m23ATne7omtzgMrhGIFzbRZsPZTYyD0LPioJVHR3t63qkWJcA==
X-Received: by 2002:a05:620a:7003:b0:7d0:a1ac:e83a with SMTP id af79cd13be357-7d3f98e00bfmr464031685a.16.1750444541092;
        Fri, 20 Jun 2025 11:35:41 -0700 (PDT)
Received: from ?IPV6:2001:14bb:a2:64d7:15aa:a456:4eca:f826? (2001-14bb-a2-64d7-15aa-a456-4eca-f826.rev.dnainternet.fi. [2001:14bb:a2:64d7:15aa:a456:4eca:f826])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41bbbe4sm369113e87.110.2025.06.20.11.35.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 11:35:39 -0700 (PDT)
Message-ID: <f9f96bf0-3539-4e77-8d3e-b87ddc561925@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 21:35:37 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] ASoC: codecs: wsa883x: Handle shared reset GPIO
 for WSA883x speakers
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250620103012.360794-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250620103012.360794-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: pSeXWUwUAfowhhMYWmN3Zib0n168NPH7
X-Proofpoint-ORIG-GUID: pSeXWUwUAfowhhMYWmN3Zib0n168NPH7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEzMCBTYWx0ZWRfXw+vAWnEV1BWd
 s4Fj8UfmW6ubo8NmjRT3OBJqIcFdg5uqi75OPd67a2PCAbW+LRxD9rkmbqtXWO9RNj7O66PJgE6
 JH0DcJpNfNwpYVV/uk4h02boGQ1o4hd0DwodA6ZI5iev7A0s0Jpv7z7vAba1Vf/R5u7pBa9AEAh
 acFWoovF2cUO9uGK+FjFqnB9Vuqzh0K5kA4Yc6QcuDDklEBt9pZtd/w7wSqttnhn5Nf+mVutdQv
 nn0US9sBNRP6+Mmqhuk3WEEtxxxgXJ8kw5StqB793NhC0pJH2lX9uba9b0wz2I/QFDuNb5tXcKR
 GAHG6ItIEoqvGz7QMfJ5D+VSjANP00z3qzQZF2UI4iBFBH0FLB19K52cdlqQHz6JJwmAIE32+4h
 coCOUdT/DjPCCKEiKfOO8hDkgg5C063qFgYp8i4JJSf/YQkJoz/u91C9MX1M3KlIb82vB9hz
X-Authority-Analysis: v=2.4 cv=aseyCTZV c=1 sm=1 tr=0 ts=6855a9ff cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=5BTet7WxsRtOupFzBhsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 spamscore=0 mlxlogscore=723 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200130

On 20/06/2025 13:30, Mohammad Rafi Shaik wrote:
> On some Qualcomm platforms, such as QCS6490-RB3Gen2 and QCM6490-IDP,
> multiple WSA8830/WSA8835 speakers share a common reset (shutdown) GPIO.
> To handle such cases, use the reset controller framework along with the
> "reset-gpio" driver.

How does this handle the fact that resetting one codec will also 
silently reset another one?

> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>   sound/soc/codecs/wsa883x.c | 57 ++++++++++++++++++++++++++++++++------
>   1 file changed, 48 insertions(+), 9 deletions(-)

-- 
With best wishes
Dmitry

