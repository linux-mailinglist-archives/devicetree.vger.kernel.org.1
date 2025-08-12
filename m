Return-Path: <devicetree+bounces-203568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71290B21DD9
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C6353A82C4
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF30E2C21CE;
	Tue, 12 Aug 2025 05:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JjfgSUic"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5713C2C21C2
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754978373; cv=none; b=k16sDC3iwAtAZO1YIqgnHga2z85eQi9LSslRolR85zTtAuhZ0l/fWurm9MX92EXVwMdXhXVBZdat8P95SBpsForw07cnVIw/TN6P5Fjw2qp6G6jp4eKHNBv5+AsDSIAF1WkXtM9e7eN+4U6qCjtTik1DUWV57JhjFJBQsiT5xAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754978373; c=relaxed/simple;
	bh=MZYffmo89cYE8maSdSo0z0Jwfu3QhnjLnWg1HHvDDWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LptkDhY3b4QIydeOql6Vl68QP0a1bMuUkqd/zk9VCBjm9InAN4ou9EjxtOlkS0r53Y6fFBduyCcyN3xfsOUMLH2z//MLADDFziOchUe3i97So7qC3JIeFVdQ0+I+OODjGMZtaRvpBcWEBzd5FAcFcUIPwspp8nwDH0RQ9Qlqm/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JjfgSUic; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5YOms029216
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:59:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UVs1qOUwwZ9Ygbyop1f7a1vL6vie0gD3Yyv8YMlSSUg=; b=JjfgSUicPYhkaNMH
	ta2JmlpPCCMD7Nf8UnH93O46VdDpISPs86GqyO4AXno7PTVVdKGd0s9gzw8grMKa
	YtXrbqCmURAsIkJTK4hnGDJtDJZKUlkrMgAqwggCB0/Oyi0aoSXAI8srDYa1AqI6
	2IKrDcOw1xHqxWcW8RHBx9CiHvoB9OzIFOFLOLZVjJHkKNAv5hB+JZqLnzqwkBQL
	1GxKrXH6TpWkslxGINc1KqfJP7H/24TJaNGAc4rWht4OdZFiuPqb9UYnQ9F3etfx
	yudSr4l3RQI+OcUsDef+akAwr3VMf2d7tFANHZPKYv/j+N0/5xG3UkEDDCFGxfn2
	Tlf2Hw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmey4h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:59:31 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-243049e6e1dso1164005ad.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:59:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754978371; x=1755583171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UVs1qOUwwZ9Ygbyop1f7a1vL6vie0gD3Yyv8YMlSSUg=;
        b=pDybNbl0QbRDeai0R88J5pf2zQnPJudxm7W1hbK8n3JNoGMTaNEUCmpisDqvoCOcgO
         Kz85KvWPrsxzVyFvfGzRcFZu+lA3aaTlRyIkiFgy5vn6zZZePe9eVOEjcdJz5Ek7WvSq
         b9NbyBj0eEvAj0I2lPfxTbFZwOew1ofems1E7ViJXrg6EPHkQgHlEcB5Pkw2g92vRDy4
         xPEmg395MvWQeLrg4fwNeEvpCYOjDmDPfEmK4TKbk2JNEM1JxUKlk8RCxu6NfYCA5fdn
         kjRoi4HLWAxnKZ/A4FZ2tadP7L0ELMbD1uPrIBfYMo/I+GAMXEdB0ChIuT1qvPq+A8cH
         u5HA==
X-Forwarded-Encrypted: i=1; AJvYcCV29VBVQD77vJ/kWtNjmXvs/4OhZmyOuFcagHq2TvS3gdi2hf3d4AXUNTvK+05Ba5BGDD0uhLvuasKJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwZc9gl+CSx6QluiGfYsmkfl+ipr1MuZeylXL9hbAGs9nAucMN6
	VxPEWO19uyj/EkLhn3RGUtKZ13861MKVAbPrfHB4ybOhbL5B2ZFsYG8xiHQavga5KJFhVHejR4e
	r0V2EvE8ytXj8Fhz6kw9RIMLnCxE0gSwuXqgE7dO7pahVG26uAZxeg+ZXYmkaRA8a
X-Gm-Gg: ASbGncvAxe8crcXrh7yjMEhPTh/JtqQq++dHWMWpM84fBOoXVIRpL+TK0sijbn5wMfW
	EjbLE9BrLCx0rg1hiG95CtDslUX0VOa38CvElFKeqWOa9r9hf4lCB/hvp5mVNu1lzqMn7Ijrxgt
	6OWxx4HGlXEWOiggeTcu7i5PuHHBmoWCN61f1omEZoCS0TPDOYGVjmR91LsqPD/11kYKTgsCbZN
	yS2dg8656t9/f4kVWNqa/7mc4bAEmcfJxlZfNNHNzmrT912B8J/fo5PJ6CfuHu8AvGvvmitWkTT
	vbyhpW/WrE6Pl59Hm6avkcAM8wIQQpko12MSnQ+VOGN3KhVaIQgh1qoBIJSRUYzj49l4804=
X-Received: by 2002:a17:903:3b8c:b0:240:3909:5359 with SMTP id d9443c01a7336-242c222c92cmr223933705ad.40.1754978370733;
        Mon, 11 Aug 2025 22:59:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGn6qxc6dEvtwqsdAG3FWWRuYtHLzpWr8RjIwuXy8tAJXkzisuhVTlP6xpTp/Z157QjqC6fXw==
X-Received: by 2002:a17:903:3b8c:b0:240:3909:5359 with SMTP id d9443c01a7336-242c222c92cmr223933365ad.40.1754978370317;
        Mon, 11 Aug 2025 22:59:30 -0700 (PDT)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b5bbsm286877015ad.128.2025.08.11.22.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 22:59:29 -0700 (PDT)
Message-ID: <beba23d3-b7e6-4368-b2bc-b802bde4166c@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 11:29:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/5] misc: fastrpc: add support for gdsp remoteproc
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-6-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <20250716132836.1008119-6-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfX7dh/UhvzuOdt
 GPkqZ/4XZL1uOIKIxn7BDCdXhsnCAHOFSL1UFoV9ZZOHeOjPfMsV2fiNV06iFk0EL3oK04btWNG
 xy1cAvCbdZyYnOa+3l1XQf4j/Zbqmj7fwD2Qh14GTH3DJyDlnRo1+sYoFstGq2PhecdqQbOHWMk
 GchEKEeNDuJJ3hSqAFciiUP21aigrId+/hmYu9SCbg/IfukZRFKXPb6fx4TMIAYim/VSliN/s8a
 z9BxqoGwjQk7ErMQwPf3H9EF3fi3+SDUChgVdQua1Zvwcqg66ZWb4RBu3GBpmOjIsU3UDZgri1s
 o/PvSJg8iCPO2M6XyvXghGPjh2l97S7uftqjeSmI73zUKHUKtDFweRMKWoqsbIvy49a2HC+Pb3h
 +GpRZ/MD
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=689ad843 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=OU-qGZapnvjOigiI56EA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Iwk8_LOMF7Sgp2hVQA4YbBbli6syGVWa
X-Proofpoint-ORIG-GUID: Iwk8_LOMF7Sgp2hVQA4YbBbli6syGVWa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1011 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035



On 7/16/2025 6:58 PM, Ling Xu wrote:
> Some platforms (like sa8775p) feature one or more GPDSPs (General
> Purpose DSPs). Similar to other kinds of Hexagon DSPs, they provide
> a FastRPC implementation, allowing code execution in both signed and
> unsigned protection domains. Extend the checks to allow domain names
> starting with "gdsp" (possibly followed by an index).
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 85b6eb16b616..d05969de406e 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -27,6 +27,7 @@
>  #define MDSP_DOMAIN_ID (1)
>  #define SDSP_DOMAIN_ID (2)
>  #define CDSP_DOMAIN_ID (3)
> +#define GDSP_DOMAIN_ID (4)
>  #define FASTRPC_MAX_SESSIONS	14
>  #define FASTRPC_MAX_VMIDS	16
>  #define FASTRPC_ALIGN		128
> @@ -2249,6 +2250,8 @@ static int fastrpc_get_domain_id(const char *domain)
>  		return MDSP_DOMAIN_ID;
>  	else if (!strncmp(domain, "sdsp", 4))
>  		return SDSP_DOMAIN_ID;
> +	else if (!strncmp(domain, "gdsp", 4))
> +		return GDSP_DOMAIN_ID;
>  
>  	return -EINVAL;
>  }
> @@ -2323,13 +2326,14 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>  	case ADSP_DOMAIN_ID:
>  	case MDSP_DOMAIN_ID:
>  	case SDSP_DOMAIN_ID:
> -		/* Unsigned PD offloading is only supported on CDSP */
> +		/* Unsigned PD offloading is only supported on CDSP and GDSP */
>  		data->unsigned_support = false;
>  		err = fastrpc_device_register(rdev, data, secure_dsp, domain);
>  		if (err)
>  			goto err_free_data;
>  		break;
>  	case CDSP_DOMAIN_ID:
> +	case GDSP_DOMAIN_ID:
>  		data->unsigned_support = true;
>  		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
>  		err = fastrpc_device_register(rdev, data, true, domain);

Reviewed-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>



