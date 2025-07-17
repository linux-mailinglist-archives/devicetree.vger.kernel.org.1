Return-Path: <devicetree+bounces-197460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE8B095C0
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D8C81C278A4
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 619E921ABAE;
	Thu, 17 Jul 2025 20:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X7tc7O3p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8436EB79
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752784407; cv=none; b=r6G5/UWyvZFauwPETfJ3CycBhKCuyFum1IHkA4qAKlR0cXGdJ/yyzSOrl+wTQcm1u8Di+L+iGOuh3wSP2PWSj+WVH3+vN/yUx/fek2drCFj6xBINhKn9+WfVrOCIn4ao5WDHbOkG08SLhaBdZKFn2UEuCgqTmxEHfMf4FsbNiBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752784407; c=relaxed/simple;
	bh=465kQ6yQTPhCxldTUvMEum0rUEyB5JyOVUpOTCjgfok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B0m5/pPqV+G8KC3coD2JrIdVqjcM31rSeSwH5vjOJgzUClDAKbOKn61W5YMOozKl38aIjL8EKOnW1sT+Je9oYbhxduMJ34mi0ytyc6ai5btFBLzGJq35ijKzuEMyilplB0HfkzKytSIG2dD+GlrK1gG1Lehv0woklPCyPmyWtUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X7tc7O3p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HCtQn9032390
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:33:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8nModRSVGZSsZ5DL7kr1DuhtFiXYpOSlYAQ311KsRLY=; b=X7tc7O3pUqk4qN7j
	RfmUHeG5JwOtJOe0lIIJrPb0H6dHfDakZ9Hdx3/4GAkQ82gUPKRNh+sNOsVSiIeV
	6IilwXAQZnW1kjMR3cm91DonN0vW7efrAlRKtYLmhSIxjYL/nVdAu72YZcZl5pb8
	Pm3WPV246TQECUTJwiOD80QL24MkfpvfqBN30isWBTRUYRn4QGEJLQKqdZz/I3uv
	gN322mKC/d3opYz4g6BTwlSu5E38BELG24Oh80N4LdoCm8JaYcVEi23mRGCBWoxQ
	ncdY2SgZhChbbTk1m9zqP9I6E2cDYPknO7/6FFeaDgHmAi/2wMVeJSbd1k4Zelgv
	jmbKyw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug3898g9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:33:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e33e133f42so29968785a.3
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752784404; x=1753389204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8nModRSVGZSsZ5DL7kr1DuhtFiXYpOSlYAQ311KsRLY=;
        b=oCDNShEbXrmWoz2eNxTx+oCkSkQ8S526/P1R2fRI3xX+GxfQvJs4VIAeOFavpnmd1x
         bEseWcL7vtnfgdp4OYRLTh7xvIY+NiohStYpQLDt4UYpCNRyAF70Tea8M1jPK/6w/hJC
         Hf3SX4yz8ZaLt1Qjcf7ZNQbXZpgbSWQu4jmKqWreK4A81VY1dUcXNeWMAGOCC8u/A3OI
         q1o4HwTgtrnR6CR0tsyombItl3KaZzp8RTLkAfneBCklWrx0Vksx9+L/amJPI3AKzNgS
         O4rEde10XhKyFJDpxHmBNVQYwckj2Rf2pUuISTKre6bf6luWCWkcS7z1a11CJvbFqgKx
         Qgvw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ5vdlfVE/sYUVNTLoP8isstIvWTQBKXDiDNySGO5vmFHPRjKgR31D+tiLsyezrjLkSDizvOr1lgpr@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ7QJsmBBKglix6EMnCa1UmuZvBs+Gcw6fXYVs4ugf2FIlRj/k
	yt/nJM0hgo2fs1mXkQJoxKAzdx6LV/vf2GVzVzAA6rxYBSZUZ7zOK9SWedxxt+KZQ5dszWdf3xc
	vK5RyDOu8qWcEWxbHwOuC0jS7IvDg4UUzoAnjDGuZdaJICMrQfCr6G0WYG23RJHZq
X-Gm-Gg: ASbGncuGBX2z7jJXOgNovm5KsSrYtETnzX4n7gE0HkOqF5miQBk4RcTKh1xL2LqZC7f
	R6TXnQDQ99f2rh7Arc5VMytSbD6MOmiGhA8UOkWGki2ODNP7v450a1evVKkVcccMv6oZW/p9WX1
	kCW0Yn5vYRN2Qttotoib8h/rDbKHT8kOrzWBqpdVlzElwxK6bQ7ZFFkUpcjsC9WphhXFRBJYtxm
	mO7i1rGxTISMILFGzQjTm6vCnLPlnbZuqbvOWHYwJHoYD6Nh3pzAfmmnlljHCivwYeBzXmcxxr+
	uOXG4E/CMi4yHKjV4/p2yoghz9LY2E15HMV9EDItsqVuVaUvL+QuUv0ghqxMgoHnAujqfeEIjuk
	gBBeQnT/Gp7sn74IzC4bE
X-Received: by 2002:a05:620a:2697:b0:7e0:2b47:bd68 with SMTP id af79cd13be357-7e342ad5730mr507120785a.6.1752784403722;
        Thu, 17 Jul 2025 13:33:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHq7ne2sTqDVyAUeSU+0dYOV0hFl3hEPNgP0CsgwNgE6XNHuWeZQZvq7BCuCRpH3GkUIIYwqQ==
X-Received: by 2002:a05:620a:2697:b0:7e0:2b47:bd68 with SMTP id af79cd13be357-7e342ad5730mr507117485a.6.1752784402906;
        Thu, 17 Jul 2025 13:33:22 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82dee16sm1424518666b.152.2025.07.17.13.33.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 13:33:21 -0700 (PDT)
Message-ID: <37932b96-fc4d-4321-8986-8f975b0c1350@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 22:33:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: add glymur interconnect provider
 driver
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, djakov@kernel.org,
        lumag@kernel.org, a39.skl@gmail.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com,
        raviteja.laggyshetty@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716151535.4054172-1-pankaj.patil@oss.qualcomm.com>
 <20250716151535.4054172-3-pankaj.patil@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250716151535.4054172-3-pankaj.patil@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE4MSBTYWx0ZWRfX/2aaGulh/jrE
 CHemygX1+SBBQzuqKUs7kHPcQ9fNq6vJ5CB/L/2l2RFbEKHMrKpVog0lHBh9Sl2rSVQHTfBiTeA
 trEUgu1wpirYTAWDGF2wwcRpO9pyYoh6E0qkrb94TC6v9GmeW/Sh0u/KDhcYctg8hFHtVcuSmjF
 EYC110v3JPB3AznwlUhzLCFffrL0CeUclfxT69c0r7n4nQwyjJagVWvwQH0lEY6S3m2mxQAXuEt
 ENubgHZMDNm03gvetasWeyVOU0htyByZTLMcyQn55F3rlJgzXzMmSAfskSCOUea+UJyTnYhzuIl
 81UjurebFTTT5WjxfDh6r3pDUZ5gZO1VU08cnNtYLm9C2R0byci33jOh29rTCNnCrNKLcEEY0/O
 MXqgHdiSEOPL4ZSNJ3Uo8kB0iCeDhgiGQiQc5L3YWFl2NOJVaXtjYFigKwYgnf+XvzdAKn6N
X-Proofpoint-GUID: N-fIdqju0BgjvqyaGs2ZUG7ih-kgMYYX
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=68795e14 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=2uCcKERadT1UtqjeBP8A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: N-fIdqju0BgjvqyaGs2ZUG7ih-kgMYYX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170181

On 7/16/25 5:15 PM, Pankaj Patil wrote:
> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> 
> Add driver for the Qualcomm interconnect buses found in glymur
> based platforms. The topology consists of several NoCs that are
> controlled by a remote processor that collects the aggregated
> bandwidth for each master-slave pairs.
> 
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +static const struct of_device_id qnoc_of_match[] = {
> +	{ .compatible = "qcom,glymur-aggre1-noc",
> +	  .data = &glymur_aggre1_noc},
> +	{ .compatible = "qcom,glymur-aggre2-noc",

Please unwrap these lines, i.e.:

{ .compatible = "qcom,glymur-aggre2-noc", .data = &glymur_aggre2_noc },

I'd also request you work with the author to provide the ICC QoS settings
for this platform (which would be good to see as part of the introductory
commit).

Konrad

