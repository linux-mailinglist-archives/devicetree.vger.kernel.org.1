Return-Path: <devicetree+bounces-248713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE414CD53A3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:01:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A38C304248A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205E430DD13;
	Mon, 22 Dec 2025 08:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eReCte+3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AhdLUXME"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7CB30BF6F
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766393928; cv=none; b=ZA8HzVRpPEAhNQW306KKMdd67TCQjTPIw0hwOS7NFXpz/COnwnM3FfzJjtTT3fTy2+UbDUFs6vNlDhLEEXq8E8MZVWLarTXVWdB3qmG7VPMwxGf9ZfRu9trn10w3VV1MJICqXr85eG5OnuxcVqDHRKQr9UIVCX7wPiXonsFfe+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766393928; c=relaxed/simple;
	bh=s5LA6nWBUVzC8gaQ2z6YaI31y6HaVR+XRz/f1uLYsFw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TMgBaIRahhMGK0YvsoQc9cvi4FXGaLKNL4z44VeAmJkaluvwq1yW3OaM+3Mz3cdUK6dpteDOj3R2ED204991I51iEsE+IDSJggvTeP6JN8EO8EWm9wa7mARkdNP820/F4A1aq4UAb2WUgz47NAgvZUgJvnd0+3a36PXxaFAm7v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eReCte+3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AhdLUXME; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM5hBD92191547
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:58:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QcWNosw/CDJcdIG+Z5ZrcLXWdMK1YzwSOWxZEdkfYRw=; b=eReCte+3Mea2TQ0d
	FYZXgxBeH2Khwe6T/+u5augikKCUikNqWlZ3wX2STkpZ+pFKT/bNF0++fcqUkZpd
	ZVUYrFWGoQ3sBp0jLyzSkNsBM2c08eMzmwgg3AS1L2QpEhHqspIzNwLqqwqBM+ws
	EmlXARnOYAt9m5tnFDVq141fzC3PRILP0Nv6wWc13ot/tY+WtoP3kVcK636s9Nu0
	UnF6ne3Kj7q/E04gT3+BtpJUWPjKutiM092L3lmzCqGjtCo3KYt2H4Ap2gNi9tbg
	IS4y0uSQ+CSfuywRw6zZ+o55sWT83R9F47n89xfavaABI2CStmQ1DM94sOJ86OwU
	oM056Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b702t8jpt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:58:45 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0d058fc56so61799785ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 00:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766393925; x=1766998725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QcWNosw/CDJcdIG+Z5ZrcLXWdMK1YzwSOWxZEdkfYRw=;
        b=AhdLUXMEXF8hN5Qf0tcOTHLl/MSL526otlZ2psxJs25MHcuapsHri52mREag8Ivo8T
         mGHXaBM3v2+Ur/FE3TblmElrvapUdEbYFLhXO8o/KRhQKE1Vhwt/U0GpRIkv4h0ccf2/
         3c2KkWNFHjS6FcbfBXzYOIaFiywf25pVyc50kpUvq9Geo6ye14RC4tk4STBJEO8Cio25
         8Dv/l6G+rCuNdRsmnKjgIi+jKdZrfYcAlKqJmnT26Tt27QvZSWPEDaY8fBla/99Jc1NW
         HYByrkXM5tPGAZbMP0TqqdAwvd9iFHfuJHj3ErZ1zKUCbg9K+PtNqyZ2yNMvATai3G5M
         a3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766393925; x=1766998725;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QcWNosw/CDJcdIG+Z5ZrcLXWdMK1YzwSOWxZEdkfYRw=;
        b=bSmPGnZJwYIhy1dlioZfK8DKeQZh4iFZyAv6d31mxvk1Q3nOryKsjyJPtHQlZG0uVH
         3ms77Jb8XLSk9Oa+JOZi0WSPkZJTDq5iDDKeDD2+YtAKHXb/RNdb7RdUDZzCNujH8wkt
         Gd+N+Kqx5z5vL3Xo0PsAWzixl2y/xtVHLblaIKsM86Ts+WQlstD8G9SC6T+rGA1s5wMY
         fzUDt1CIy/mz+pPGSOSEDNoywdh48JaiZRxgtzK0EUlVyF5f9UM6/OBO7RTR02quraQc
         MT4mI4wQJRn+xalKjJLY2/uJCl4srgEacSnr5rTqHrskikKtYIKMa3/z2xiRLfP6+Slu
         QiSw==
X-Forwarded-Encrypted: i=1; AJvYcCU6B9EdZUzktf38EJjNWWZnjUYeIqijhluBC5LMcsQSGRbOpBoluwy3IpenyoYVbjfqpDhKuqQ6PGF9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt/hK7bZSwzjG0GML+j9h0ixifqPFoQTrWO0bENg0F0329TAbu
	l3HpcCMNpaUofa5COzQDnU4IGCSkmvo+KB7/D3acXaLA7OfLEyaGxD3eTpRP5U/do/mWgSRkLhX
	fM0W2bb8rRugRXtrqV40Chy2tS89u3zbFAbdv9P7BvuOABuqnULW65nVAgbg1sz/ie1CzVIljF9
	s=
X-Gm-Gg: AY/fxX6fh7abX4i1mYONLLVSEyKmCvFI67Urt/Dg8Bmbw6ArzyFAgxQ9ytOftg5W+DS
	bz5dHEQ8un+VF+sCnb7Cqgjrk4kYcTzH49xzktSxm/GL+AM4Wt3HrvN0QZiVcQOPQoM/vpPwnT1
	ENm60n4zQ/kwOmmUtrfmGHetoZ87FNThSpUDt3Jar0OpP99kcFkLSkcdaS1dXJc2WRCqPOLeHXd
	ypEEEpQCCEtmWS1VHqTPUvmnqVSdNdWCYq4fEjAAjqriICycXgjpoi3goy2S5hIauvxM0/WGj/3
	t74ZEYgy2ENf6lug6dl/YcqrJeqlgEMx0GJsx+5f3txwI12PJw2IYh/dX3okUa7d/1p1fz5QG3i
	xy4o17P7sZbvRsPtfMtPl8UJxypooYaNdTs1lQRoUd7OYz86Rza07E2naA7avpm5EmL346pOPCy
	A=
X-Received: by 2002:a17:902:e810:b0:29e:990f:26fc with SMTP id d9443c01a7336-2a2f2736e5dmr99559265ad.34.1766393924613;
        Mon, 22 Dec 2025 00:58:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFMQb8zfPb/IVLCQABe1wTJeguw9tvaE7OfSa+BrzSQkeb9jsCjCK6SoyspPFSqEw65RHcvkQ==
X-Received: by 2002:a17:902:e810:b0:29e:990f:26fc with SMTP id d9443c01a7336-2a2f2736e5dmr99558985ad.34.1766393924116;
        Mon, 22 Dec 2025 00:58:44 -0800 (PST)
Received: from [10.133.33.169] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7727356dsm5866233a91.4.2025.12.22.00.58.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 00:58:43 -0800 (PST)
Message-ID: <276a95b0-acc1-45c8-bf2e-5ae6369df252@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 16:58:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: qcom: dts: sm8750: add coresight nodes
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
References: <20251120-add-coresight-nodes-for-pakala-v3-1-03bb7651bc90@oss.qualcomm.com>
 <cfdd0865-9f5d-4c53-928a-9c7bafb55375@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <cfdd0865-9f5d-4c53-928a-9c7bafb55375@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=SIhPlevH c=1 sm=1 tr=0 ts=69490845 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=T6KacKtowlF4jvHgg64A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 9da68cai9pVh8clwARNg9XmRJVE02Tv0
X-Proofpoint-GUID: 9da68cai9pVh8clwARNg9XmRJVE02Tv0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MCBTYWx0ZWRfX9ZBd5oecHnmf
 mjAEb4+nMdsCg5cxsa3TrCK6ipUavFXwUcCV3opfcxd4icA1E46lftGKvTZQbeaQPDfJgEBRHek
 x5e7AdnhEEbyWCrajGS3DRUTpmN2R6ghp8ytiZPMVgkGywzF3bROI5Tu/Whes8yIfm4xX6Re0I7
 hnqxWMxCTJO9PxBNAIxaEMLr94sQThJHR92iIVc+z4SGcr/iRoQJ1ych7aAetey0Wn0q9qHufMC
 cbZyQuijcgBwM0lECLAU9T5bNf+tUOLiu2sLsGRu09ev8Ej5KpBSS94JHbbBMcun13Lh0yp3C1p
 wp6Ch9hLhvOBlIXh72MhQiBWBmQXYVIIaCncbC8LQIo3BN5/pRbnt34/lbiA1pRD50/OdpPLO6J
 rKjdvfLYliQQOpkqBlNo9PaUcgRlOIzyqLs42+rOQMuoOjIVn4gGlsawn56hq0EVuw93PC02Ok8
 aQeEBEw7tSM21uevkmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 phishscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220080



On 11/20/2025 11:26 PM, Konrad Dybcio wrote:
> On 11/20/25 2:48 PM, Jie Gan wrote:
>> Add CoreSight DT nodes for AOSS, QDSS, CDSP, and Modem blocks to enable
>> the STM and TPDM sources to route trace data to the ETF for debugging.
>>
>> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>> Changes in v3:
>> - replace the turing string with cdsp.
> 
> thanks
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

Gentle ping.

Tested on next-20251219. Patch has applied to the tag without conflict.

> 


