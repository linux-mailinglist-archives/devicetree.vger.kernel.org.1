Return-Path: <devicetree+bounces-194675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 45962AFF1AE
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 21:19:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88D5E16E82A
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 19:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52DE223FC74;
	Wed,  9 Jul 2025 19:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TDW93xVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19D823CEFF
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 19:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752088758; cv=none; b=i1Psali9n4jGiI3o1t0pDGpdf08HfPRpXD4D8iVX2pVymzf8VqkwBxt5qhVcroEKXtn3dU6md5WCiF63lJIxtVryF6aNg8V0mV/fmLLD/yiE6aPhPnfn0o9Vv9RdmbGt9RuAVan+L5H4nlWDw7CDjKZSXKVg3x8ul0h8BE+roy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752088758; c=relaxed/simple;
	bh=u3/vvirTVUUq+Hl+b+9fwIo7UB4jJGzLNte8TeeFHxI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cEBookjitqLsDN4l5XT1p51j54voirdwo2k5NM7m8VbF0384MJdpOopjsN4tRlLi3AN8a+k1DR9nIRUUYMTELwwhSDclK/4dxYPeS8TuqRjXoPGviN58UPQ7iG8bctZPgSjrpXynrS9Iil7GvtHKZ609hAQyiQNTdtZ489nyMo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TDW93xVB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 569CoZnH009951
	for <devicetree@vger.kernel.org>; Wed, 9 Jul 2025 19:19:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pfQKjOtH68DSBNR+Uk2pyki9PruLqbnrYQSvyOAaahk=; b=TDW93xVBktf1jFKF
	W8U1+rkdZxkR/FU+QXL225L453FnU4yfiZNzIVS7q26JV5wU1K94PFXXq75zrxWN
	2ZV7PjunDv40buHAfF7EfxLHpcNQTE/K/ruqFeA4D14q0cXEaOXUnPChHuHwxWJG
	FAl8k/OO5pE61oa4Ml8xcQgDjpwEui6jvTUvh/BSVhG4vbxilHe7mg8eaUt7WGbM
	TU6ArIQzEsdcAliijMeGZ5UMkuyjU+zDVS+JJNn5ZpUAD0Eo+KR2gJsSyYulBwQj
	wjJPk9K3kGh/xB9RgjkTc+zrXrnTfEgPqVOUgMkVij3xKOOQuE4ANANY9lp5EYr6
	z1lVUQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9dt8js-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 19:19:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d41d65f21eso218685a.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 12:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752088753; x=1752693553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pfQKjOtH68DSBNR+Uk2pyki9PruLqbnrYQSvyOAaahk=;
        b=p6lNRrk9zm2X+nCWteQ1zvmu2up7Ig3TJL5deQ4ETzeAr7AjLlf+cEsgXOk0Qsq8At
         iNTu8RsBEGi1P7Fwf1sUPl7UTfyT0mrpJjEyUuBmVe+FwckYoSgY2NesKAxxVo13gqmZ
         siA7AQsq9RYCliYX7YcTWxB/Afm/W0AX+6LO5hk0yKhdJ82kyHB3j1PTZvRmeP8v8/GZ
         qDZCEmhb8I5kFs79QLyOlTplamjUoRJ1rI4qvzD1aieO5PyICFPgaSSn+znkpjNB1FBn
         55iMZ/MKUYOCHOYZGTlKZgFuvuT4ciLjhzI7rCSke1o/TcHLNW9he3eAxXDCs0oiknlO
         cLPw==
X-Forwarded-Encrypted: i=1; AJvYcCVX5S6tANL/bIfzuIBZITvrzSIiwa4taWKwJtBx+8egXkA8KG9C8tJT3b6DoP8cl7gxK16iX4LO88xP@vger.kernel.org
X-Gm-Message-State: AOJu0YyfFJFVg9lRAOqVbeb2kJgPswdjSGF0U77tGbuRbOtXK4Dn3O+C
	w2BAoURYPxX+4oT7ZWQh1mtOzObnHf6Nf7FWJAaciMBrzy3c+AQl5x30PJLHH6oah8HFA9iyTT4
	FMobNC/Lt+VaUPyeJ5MjW9NDMGZq+5u6jQKjxwYzDX/d2yCb/iLX12h7GfVFN2et7
X-Gm-Gg: ASbGncsLyG0ahd8hnEGr9Tr4KqcHcMa62+1uD8YjcHS33k0wI1Re8PMtOGuz4bU+yja
	j/l31VH1a0Hk4C/g46TPWCLsUauomYfbNtuILfq4x060F0kPlr3T++L3qdLeVpOA98KBQeo4IA1
	tN4QuHyKqKVVTc8BaZsyxv1b/CW7azocOtmE9Y89ogaGyYLXZ4ItkBxnaJEAFuucTVrZgDD3Gqo
	3T/XSKRTKDiHi7Y6rRS3cb1lC9NaYTqGUapxqSWwoH8deYt7y0fINyzU3UWp8f30yNYA5Oxe0Eb
	kXTjiF8D9zyIXMI96RcvDJhzs6K1W7JaMyvD66lwiw2Mh0oyzw/aejKnLPMTgypR0egx/AGqNQh
	zfgg=
X-Received: by 2002:a05:620a:c4c:b0:7d5:d01f:602 with SMTP id af79cd13be357-7db7d78e468mr216922885a.14.1752088753153;
        Wed, 09 Jul 2025 12:19:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcregrlw/J8rloCEh4HZgcfMxUlAlzdGycBiRw/6NNEExrP1Y0htAK4nXMstyn/N9Sgxli/g==
X-Received: by 2002:a05:620a:c4c:b0:7d5:d01f:602 with SMTP id af79cd13be357-7db7d78e468mr216920885a.14.1752088752693;
        Wed, 09 Jul 2025 12:19:12 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fcb0c8909sm9334303a12.45.2025.07.09.12.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 12:19:12 -0700 (PDT)
Message-ID: <075e59d0-569c-429f-ba14-c2e59e2f63a2@oss.qualcomm.com>
Date: Wed, 9 Jul 2025 21:19:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] misc: fastrpc: add support for gdsp remoteproc
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20250709054728.1272480-1-quic_lxu5@quicinc.com>
 <20250709054728.1272480-5-quic_lxu5@quicinc.com>
 <2dfb6c0a-df7b-4039-9a65-0f1036752bbe@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2dfb6c0a-df7b-4039-9a65-0f1036752bbe@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: SM2NdckTvq6S5HU4i_oN-TXSBy4vmw0i
X-Authority-Analysis: v=2.4 cv=W7k4VQWk c=1 sm=1 tr=0 ts=686ec0b2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=TB6GD4yhWxgz3a-1klEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: SM2NdckTvq6S5HU4i_oN-TXSBy4vmw0i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA5MDE3MyBTYWx0ZWRfX4ShogEXmVBfG
 RNmbBQsozRYlfWdu8iWjduO9QBHivP+DuRpzFJV16OywWndTeuLWElDVGq/2YFTZ5CnNMwG0n41
 0YcvQjwBr+wXhe98ssGmGXTA+WlGtdrwMALa7kJhEZL2Jku59eKEjVi3ohYFeUNYRWSihQU/KKP
 +R5x5HYP5uLlnmTG9yRMb9p6nMy77Y2o1urspDWAmw/VDEtE58HFYYGqgpInQm1ZhFRhZtT12Bn
 VDqmQOv6L12t2hWiHX29IRdg2fZVzUL/ko8Tyro/iDQCczErwvyHDyqxOEiUSB+IcYTEwK3z6O8
 hvtKb18wrcjS5cTV7yvVguUTFwNIsFMzWAuOXNpvSzTa9cHAm5fsR4zSc5y53GnixcMm83reDM3
 9W6W1hD0NvspJyPgyYRbAZY5SXxjaBnO8hBWkaio0eghxe0Tvc5TTmmnCjBYwgSJLvzkV3xW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-09_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507090173

On 7/9/25 7:52 AM, Ling Xu wrote:
> 在 7/9/2025 1:47 PM, Ling Xu 写道:
>> The fastrpc driver has support for 5 types of remoteprocs. There are
>> some products which support GDSP remoteprocs. GDSP is General Purpose
>> DSP where tasks can be offloaded. This patch extends the driver to
>> support GDSP remoteprocs.
>>
> 
> sorry, please ignore this patch.
> I haven't change commit message here.
> "Extend the driver to support GDSP remoteprocs."

How about this instead:

Some platforms (like SMabcd) feature one or more GPDSPs (General
Purpose DSPs). Similar to other kinds of Hexagon DSPs, they provide a
FastRPC implementation, allowing code execution in both signed and
unsigned protection domains.

Extend the checks to allow domain names starting with "gdsp"
(possibly followed by an index).

Konrad

> 
>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>> ---
>>  drivers/misc/fastrpc.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>> index 85b6eb16b616..d05969de406e 100644
>> --- a/drivers/misc/fastrpc.c
>> +++ b/drivers/misc/fastrpc.c
>> @@ -27,6 +27,7 @@
>>  #define MDSP_DOMAIN_ID (1)
>>  #define SDSP_DOMAIN_ID (2)
>>  #define CDSP_DOMAIN_ID (3)
>> +#define GDSP_DOMAIN_ID (4)
>>  #define FASTRPC_MAX_SESSIONS	14
>>  #define FASTRPC_MAX_VMIDS	16
>>  #define FASTRPC_ALIGN		128
>> @@ -2249,6 +2250,8 @@ static int fastrpc_get_domain_id(const char *domain)
>>  		return MDSP_DOMAIN_ID;
>>  	else if (!strncmp(domain, "sdsp", 4))
>>  		return SDSP_DOMAIN_ID;
>> +	else if (!strncmp(domain, "gdsp", 4))
>> +		return GDSP_DOMAIN_ID;
>>  
>>  	return -EINVAL;
>>  }
>> @@ -2323,13 +2326,14 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>>  	case ADSP_DOMAIN_ID:
>>  	case MDSP_DOMAIN_ID:
>>  	case SDSP_DOMAIN_ID:
>> -		/* Unsigned PD offloading is only supported on CDSP */
>> +		/* Unsigned PD offloading is only supported on CDSP and GDSP */
>>  		data->unsigned_support = false;
>>  		err = fastrpc_device_register(rdev, data, secure_dsp, domain);
>>  		if (err)
>>  			goto err_free_data;
>>  		break;
>>  	case CDSP_DOMAIN_ID:
>> +	case GDSP_DOMAIN_ID:
>>  		data->unsigned_support = true;
>>  		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
>>  		err = fastrpc_device_register(rdev, data, true, domain);
> 

