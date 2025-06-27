Return-Path: <devicetree+bounces-190337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B31AEB77D
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:17:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 876811C40B36
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09186202990;
	Fri, 27 Jun 2025 12:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j2mYc7i4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E50B2F1FC3
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751026669; cv=none; b=gZV8WXLBuVvaduFxVgaUL03Vbc4ZXqglnVVuCD4DXlIIvigGXIqJylIbTAdLw8SMqVSOYaaLeSb9liIsDFC1PUHxD++41+Qw076RFQuOtgIeKtq22AdekOsQFPb4NrU05tWcJZ5ZQ45ssRskdeBGf+4iPsBjmbmquLTEJeb3SqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751026669; c=relaxed/simple;
	bh=lccNhp6FqIRSa/Q9kLRCcCT7NqJsIU00/JLCxD8q/oQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ju24ptmxycWkFoy3YxOsM0P/bMhxGna/sBSNhdXpjoTzeubFiCMI/aG0djXRXmTYI6xNpMMlk0xYC/j9DpZ9lSi1M1qR2u/tc5yfonhEe42M7FmYxENZnnu2FrB8drZaPOyUJQ7A/6d5T5c6+HBXEQig1ImHLhwKCxIC8GXo19k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j2mYc7i4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55R4DEgj007832
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:17:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QJ19J1LIBwAi1TN0tW2T4j6V8Ae2MTfdTDqckVMIpqg=; b=j2mYc7i4EvQ/nNkj
	aRo4PcxFrCba/VMkMsNwtWEc1u7WDv2paXrJLHlMPWOXmKt5lkU69Ll8yhYF9mu+
	R50p/AC9BRl6XeBaPLJ6WB2jehuJ3OiWdg6bI8E91DhsXP/i6WMB4b78856mlfb1
	WhtGCij4FlPhdCMz3VyzukA0zdp2RD7RH2s1xjulgPjyMJeAsuC4hhCFKNVVfV7Q
	xX90rvmVEzdrqoPKz4IGD3Qfo2VvYsVXW2azychnvYX7LxGalFPnmiqAuoE4nZwT
	AHZLAhVABcIrepqEhQPrBWMWkvWzyNtNXuot46uAzccaF7banUZ4dJVR8l+GyWHx
	IsOIjw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqw5k3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:17:47 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb030f541bso5432576d6.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751026666; x=1751631466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QJ19J1LIBwAi1TN0tW2T4j6V8Ae2MTfdTDqckVMIpqg=;
        b=Rv1V9b8TAPtkPAu7AWEyj1h4wc/HYipwkJifY0Od+nsdl3veNeSFIFD3boc7KM9k9S
         5PzBh4h0ZJfSY556zubLW5MEUEq5VKy71mN7Oqwfi3DSW7sZzCKvxuHUKGOFDJkXMLEH
         RGhID9nY2DXvbIURczfJrMSgwFJtL2aoc2Xrv1+f3uGrIQD21+6feHF+wY8vvwXfC7d4
         3z00GvqdwINR/b5AQDFAKOQ9b0ODymAbNK9XALHdSQY5AQa31xLr3VwPGkfQe7LZwwaJ
         QfGLQIBQTiavaNiRfegWY6ZR9x9JzexM+A3GSGKbP3/obce3Q40gWxQkq8nqtfQeQ2OY
         vwtA==
X-Forwarded-Encrypted: i=1; AJvYcCUqzwhJrQAq0ubTi9E5h+tziaqb5YJ5MIxGPaKKPMIWgGv+z0bT1RsqW4kUFr8Ge2z1cEw5j7fTHm8Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi+TSgnUbP04tn6myNOHfYvgDOrOLkK+mcnmRJS5noEFSiQhvk
	pzCMvo8CFD/YfjxN6iGHw+iN33japKOdSTxJVhECYHb2oyJ7i2B9YAUq2d0E98dRrUfpWYU/9J6
	c9sE44YxjzxG3qMTuxBFpNCcQRZSk4MYBDF9enoEf8FSSRn3YnEZKujrJ5Cg1LxgR
X-Gm-Gg: ASbGnctd2HNymVitf+KDCY2MGAYoC/2VquswYkMa6SaQTgfgKfkLIFvy/TbQ7RPcvVI
	cn2wTfZCVoUmZ9w2XnmBIk/ykuWD/WEQKck+0seTNxX5PR8iJ//S8u651cZ4L/WxEIyxS846op7
	tzEKK7zp/PDKKS8L0wFJwg6/ZqW7IGsUvWkDFzd9xUmUieRxpUIsFDsd2J5pK3zZ4cb0bvpDI8b
	CdFee9MPF0t5yhTL1nVkFad3FnHxvYqLLjTHlTUQp9/QP7boxGFFFrfYjpyfH5i6lInlDSlhB7f
	g2bRTjuVwiI33uUxojdvyqxMLNGjlqrRK4y9MT2E10aZNJR56ynwALq0VjL/FwRp9ogNqumAfWz
	Jalw=
X-Received: by 2002:a05:620a:198a:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d44394f337mr156190185a.12.1751026666693;
        Fri, 27 Jun 2025 05:17:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIK9htb9TjdDdSp1TC694025TRJoUgCOt8XrvN3XdaNpk29pDfLu1EUHUVl+ULYjW5QjCFLw==
X-Received: by 2002:a05:620a:198a:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d44394f337mr156188785a.12.1751026666346;
        Fri, 27 Jun 2025 05:17:46 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353ca205dsm113371766b.160.2025.06.27.05.17.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:17:45 -0700 (PDT)
Message-ID: <3f2279ce-7d4c-4ea7-8d3d-ba98208e212f@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 14:17:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: sa8775p: add GDSP
 fastrpc-compute-cb nodes
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250627103319.2883613-1-quic_lxu5@quicinc.com>
 <20250627103319.2883613-3-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627103319.2883613-3-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 9GWeWDA12m31M_TpX7Z_8wBy-wJANEHW
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685e8beb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=iYJyFzv8ufejENf4NzsA:9 a=QEXdDO2ut3YA:10 a=pMdvUiCErLUA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9GWeWDA12m31M_TpX7Z_8wBy-wJANEHW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwMSBTYWx0ZWRfX+SXPgAzAyT2W
 /6EyNLI2sTSXgSrzWg8btoFUvvuPgWiV9iyWAPkfel9DMLzLsxQiEIqrBXzcZf53702CYR/AsP5
 r+ad/NlKP/R2HM5j7PSWMTHQ4+U4nYdOcd0HVZ0sRnTYcpw5tHMw41xJNLMBctLRf/Z4pO39kM0
 RM9vZJyhFz0ugIRMFpNqy+0wsxJwqvXQS0fhP+yuwxXHtmgg18ax0N7LJSULIzyroEjGXv0imRG
 0gZK4VReougMdJuqEGfzWSasPX8KNnP0UDd1FdmTGK6RcbJe99a5KaBmXm1d2WY7XmL4QDJ4Lsb
 zyVKM1hAQB4TsE5e+fVniJFH75iaXQf9o4Mfw4vJ3tMFZfNh5IACpuWEHD4JQZd+lf7IDln7rc8
 scYpUiJlYDTe8Tei5ZtBUPam1e2Hw3tjj3cQRHrnjDDy516W5qEgZHQ5sWCcFcy2e3LojHDa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=760 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270101

On 6/27/25 12:33 PM, Ling Xu wrote:
> Add GDSP0 and GDSP1 fastrpc compute-cb nodes for sa8775p SoC.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

