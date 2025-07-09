Return-Path: <devicetree+bounces-194676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF6CAFF1C2
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 21:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A39F218955DB
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 19:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306DB23FC66;
	Wed,  9 Jul 2025 19:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cv4D78Ud"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996FA23C4FA
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 19:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752089135; cv=none; b=s4IAhhFzftOwQkIlr1dizANPJmvlAzP0X2BgWurCpuzEZRPIUi1uTp/ZY+3DHghrkfg7cEJvriWOEvEXQBu0CrykLSjvSlDw2E0f6aPVaUtEcAcEAiTBgvJtEaBeFpx7QrnM/C7nQG7VO5xvqGj7zaGexXmktwwknwMF2uu/zkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752089135; c=relaxed/simple;
	bh=Czk5thyzfF1At6el/WvxrhoAQf01IpUl3TQKZoKmkrM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R5YWH01eZe3BVKLDeyD1CDgbBRxVWm5jjmrHOb4Qn73u9A6ESGRCClR60jVKaUhPSAFUWdA+bYHTD8z6mm7YfRQiADO91A1ibZv+V7yYllQtKHrDBhpBjb5lvZHwXXjiOn8YE6s/EEdofCLDgVNEmbhaBfYfbjw1qqE+ct/6xXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cv4D78Ud; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 569CowHI014516
	for <devicetree@vger.kernel.org>; Wed, 9 Jul 2025 19:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LxJmEoIV/L+emefvsrdmnd313iEFnFzJl4/I7Di1mus=; b=cv4D78Ud1X3h/gCs
	qPMaz+TMm9VS3DqFYLrBAG6epgV7AnecF3VKdYafxnq96U7AvPb/Byy6ohPh8nKA
	dQgUz8NI44qwhmy5kw9rdwcNIzb+AFXLESYBSLjEfFsAJvyXIJYRAi2oz0AU0C+d
	ynxwrAJgUO1lRJZ3HjzWZ+nb/vWFjjv7WkEJp7jlNLznJzOs0pAUlS7aWrN0AFxh
	MXM6hd8lJsUfzK4/WJroEX9eLavgIqZLx8B1jpReiJPX1KiQk9sN/YBfw4/kv2Bl
	o6GMXRPVDe203Sar8X8p50i/mATIj3PkrixRVGhNjdBkaMmvJi8wUNbh+VsuV1+K
	DZmPmw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47r9b134x0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 19:25:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09a3b806aso4056285a.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 12:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752089131; x=1752693931;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LxJmEoIV/L+emefvsrdmnd313iEFnFzJl4/I7Di1mus=;
        b=g+jv5TLsbBWwfSE2hvMZw2eXfZa+s8wpmhTCEpm1s55wftl3DzhmF9+9wi6qFKXEo/
         mOdH0pHKONsM4k4LLW40qxqmimuOiyoR0TDO15jHOC0HDWHG7ctg0fCuhHW/IHPD5zpw
         dkSai5fZkaZ+fRFbhYeiTDZdKXkYgWbx6gACMua1HtOanx2Fwpy604qw7uzfVJli/LvJ
         6Ntbs19lYZPvMiz7s/G8cQhyEp2Mv7dcBzABZzD5jQEwIksjJTxM4ik3beLEc6LZdRgz
         hAhLLL8ego2UQXrvV5MEpGVT0cwkER/imn8lEuaDrXGjXIgVEFUNFYioV5NpzKXR2Rv2
         Jq5g==
X-Forwarded-Encrypted: i=1; AJvYcCUnbwzXpUAzc+QHIq/LkuQvhnaxAZ3qBlbcjPMkI15oM2c5XLqmrWykyV1ChOmV1kCi8GH/XY4EWfK4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg/yYfxM9nLC7yf+SN7wcqTBCB/R/0DQI40hYtQGhpDfZ5vvx8
	P/zXFrh2naH6gkPA9O7/MJuCHJKM8gJ77Is9vAJrEejiNJVBh0ghle4TnUcmVmygpW6sfL2nXej
	vrz1p3Zd6cgKKM9ZSQkX+JaGhNsMCkLbxMpcagLBOMnK7n2mTpGQ7QjPSVbHltRXd
X-Gm-Gg: ASbGnctWxmBbRMwOMu+IJrMCOaFB51e4DC4TKi3IAuBkKaGRmyii/vRAQQoKI0yPepL
	swBl0M+zhKy7B4toNySvHO9Ph1UkcZve3GRgeqsKA9S21c+g+YbskssbyAGlC+ZMvHHIYRlJ0LX
	t39aVeyR3sSf1IAWdMwq0I3GDeHN/c21H0V7FQrwthj6k6zUZbeQBIBnSB+sqLXx6xKe3CCjSP6
	WEwfJ92YSnIND8db3sCQZJ5x7XYkNhmHKMM7x44k4JcPzqyt5BcvhCPrS2WtzJXEmJEyGiE0t6N
	aDAXByCXlitrT7SxHy3CKKNGfzEd8UkRA/cd14YQa9BPjVPTb8ZXmMsqdCJxTng2OIT4KKvJ6MM
	O0Lo=
X-Received: by 2002:a05:620a:4396:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7db8a26a97amr207083585a.13.1752089131437;
        Wed, 09 Jul 2025 12:25:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEF0lD4eFqC8H6SYk9QlZhxremi9oqzguzRcKWuEh7z55IS83KvKx0SZBgDPwxIqBeKKCCbcQ==
X-Received: by 2002:a05:620a:4396:b0:7d4:5cdc:81e2 with SMTP id af79cd13be357-7db8a26a97amr207081385a.13.1752089131024;
        Wed, 09 Jul 2025 12:25:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e7c2sm1159545866b.148.2025.07.09.12.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 12:25:30 -0700 (PDT)
Message-ID: <f5ea9bc1-7617-4573-a10e-3499161a7819@oss.qualcomm.com>
Date: Wed, 9 Jul 2025 21:25:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/4] misc: fastrpc: Cleanup the domain names
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250709054728.1272480-1-quic_lxu5@quicinc.com>
 <20250709054728.1272480-4-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250709054728.1272480-4-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dYuA3WXe c=1 sm=1 tr=0 ts=686ec22c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=UMl6nZT6BRNR5OdSVxkA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA5MDE3NCBTYWx0ZWRfXx4cF3kpvQCeV
 cFd86ecgLIEGqcYz7xTrWlx3tdPbhBu/lU0UExIz8MlF2yve7hTdszXTfYoiwa7ZdL8CF7eHD4z
 LCska5IzrRR9E8TL90tbYv0v7WvWP1P3C7afMTO3avAnH/mqc7+SNtY51HwC0W0yJdgylg7OqLn
 kibAIXoEIjGbIA6NQU1hEXp3gp5InT8PKdZ3q28/5rWoQ241t6jkKcTqld3fNlNEgSO3bL0Lql7
 F9n/2tR/H2f+lGz0DUL1khV9vyVOjy5g4IP8RMk72hMjaWrIfGzPfJSc2sgy6JZR+i4B6eFVCy8
 LKVklxyN7wq45fx4ED78sNh/4E/SFP2V3VIfJjQrKXYPbfs1gZl4oke07qXlJLKjkVwg8qrM3mC
 3IQRqcK8mG0tU4RX3yV5bVBJLLeUuOPSeHIEi2QXBdE5QoseCxfi6QfMjE/7+2omoEbJkonv
X-Proofpoint-GUID: UKmEzKS-1iu4uVii6lgviazgjEYrdZL3
X-Proofpoint-ORIG-GUID: UKmEzKS-1iu4uVii6lgviazgjEYrdZL3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-09_05,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507090174

On 7/9/25 7:47 AM, Ling Xu wrote:
> Currently the domain ids are added for each instance of domains, this is
> totally not scalable approach. Clean this mess and create domain ids for
> only domains not its instances.
> 
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---

[...]

> @@ -2330,21 +2323,20 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>  	case ADSP_DOMAIN_ID:
>  	case MDSP_DOMAIN_ID:
>  	case SDSP_DOMAIN_ID:
> -		/* Unsigned PD offloading is only supported on CDSP and CDSP1 */
> +		/* Unsigned PD offloading is only supported on CDSP */
>  		data->unsigned_support = false;
> -		err = fastrpc_device_register(rdev, data, secure_dsp, domains[domain_id]);
> +		err = fastrpc_device_register(rdev, data, secure_dsp, domain);
>  		if (err)
>  			goto err_free_data;
>  		break;
>  	case CDSP_DOMAIN_ID:
> -	case CDSP1_DOMAIN_ID:
>  		data->unsigned_support = true;
>  		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
> -		err = fastrpc_device_register(rdev, data, true, domains[domain_id]);
> +		err = fastrpc_device_register(rdev, data, true, domain);
>  		if (err)
>  			goto err_free_data;
>  
> -		err = fastrpc_device_register(rdev, data, false, domains[domain_id]);
> +		err = fastrpc_device_register(rdev, data, false, domain);
>  		if (err)
>  			goto err_deregister_fdev;
>  		break;

Taking a step back, do we realistically need these checks at all?
I would assume that there is a layer of security on the DSP side
that would disallow running code in unsigned PDs on e.g. the ADSP.

What happens if one skips them and attempts doing just that?

Konrad

