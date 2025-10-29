Return-Path: <devicetree+bounces-232623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD57C1979C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:49:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 23B4358450E
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFCAC32E72C;
	Wed, 29 Oct 2025 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T4aFPGi+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hbSelOga"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132EC32D0EC
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730914; cv=none; b=T8u5VaOvjnIUVs8V4zF7no7zaxWzJXN45dJZLI6Kq88IWXYVLDp3UpspA3TX1tsW1RdYwyiCFq0ot6M5hY5nRevTAwD89xvBnDtGPbfDX1SvQtGbKrq65IH66vvWK5Jx62qKUIf8EtrIcNsM3sojcak0JugK1cvVt4ZQifQSWmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730914; c=relaxed/simple;
	bh=ZOi5+PRldexpSha7keeTtkH0mo4OUbEhwxCztfxGWKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iRE9C+6ScflxDCttq26M2cs9OR5+RWuw/Zkhp6Vk3h5bzl2UFYhO5uOAf+14Xu6hBg1ms3DawVmsKJtQdEQdMj4NCiZjFwM4v9yYPtyiJK8XkBlriRox3Vl4jzDNdJDxyIOjI5ct37zR+bLgiVxL/o+KK4tFJhRdQ2eORIkdEm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T4aFPGi+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hbSelOga; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v3173755363
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:41:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QqjyF8y2mKsBJXQTQYPPr2zee4Q5OaRzaCjvfgZqcXM=; b=T4aFPGi+rg6S0BUi
	k6aIQdp7INIz/pj+TNof9mXgULrS1+krgjimZ9BADkHntmwICuFb7+MKbF7Cel/8
	GSqE/8RmTGJFh2Fkjnzrjhje4y+4xx1IKUrxIjxseWhCuxjq15jzN/EbeBxHlVQ7
	jwIzLBuutb09lR+i3OeMfpsn6J5gH+2mnyxzT38i0av0TNSPI8jyfW/+tLAjmAAj
	MGhANOt8XhwWZL1Zdsi1XTD4twYYYkA9e7BzLUBAqiiso8dUEAsz07TNqLAN8tve
	iz7jfCWP3kjtJX56PAo83ITNQ2RjsfbUAjfUPNNzR7QmbaFECDc2D983ioj6CLG5
	5t5feA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a0j1c0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:41:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8a22b021830so120391085a.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761730911; x=1762335711; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QqjyF8y2mKsBJXQTQYPPr2zee4Q5OaRzaCjvfgZqcXM=;
        b=hbSelOgabU7HzfJrFG3Vf55Q7oxlryl4FfWBngG4gIzLEA2gtf+Ik8JgDLx3h8A7mv
         pm4d3cLwxVwsuanjSyiCdQTkJ44VLIMB8fNbLE7KVMbQsIHWfwgTnukfCR9y4toeBgwn
         Y4RE0YWTdX1Y/dD2G+74ijR3l8Zaftodu199u7wOfCc2yrALxAAqLm84fdRlFfuH+cRF
         9w23MYU4wU3n+HnFQC6YbJ/fhZ8MKSc8puG1QWQTQM1c7OI6AKLN7TgILFtbrxVYnWGX
         U1r6IV94lXpA0+OoqS5ktk0amiM8X6tg4OG5kbgqjSS34rymR0tt55byjt+ugowqnALE
         RuYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761730911; x=1762335711;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QqjyF8y2mKsBJXQTQYPPr2zee4Q5OaRzaCjvfgZqcXM=;
        b=Quh7Y19ljz7cPp7EgD7pnM6EP9Kunng52qQB7Z5gV2pVDoTGv8iWMkhABtNOmuPhNu
         o0ct5zjOGvUoYJpmh+x/7Y7b3Y/UOfC8i9sLq465SyE1eaFUHUUFtvX4OhKg8OZxFOSw
         pAvOxGwGCz6puwbOBbpT3N4ETbMY7NxNUK+VyQRlyw1qfDvEnbA17h8Jp1aAj0nH0x40
         TvVSOy/JNJSJ5wmx8mw2NgMYlxJft3/P6tr+KalOEFXFcRf4t6lI4y/qNcj6SD7IWMHZ
         ssGMz6z3f+uccU6pkq28Yrrxg+K6A0Hbq4g/nUOJCaYRuhKodlrVLnwsXiJA09j8iDud
         Gs8g==
X-Forwarded-Encrypted: i=1; AJvYcCWmJT9SHRTDgIuZs4vzRdyivii7sgzC6AIowtRwKkiMzSMEgKUkP+VTz3Aa7f6RrI/JjcoOPsudmOdR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0IKZkkx/ZZ7XVh7aGn73WLZXn2B/2aOXO30/8gcBNbOS6VSda
	K15xlz9A5u9PBhDsfwDXY5aDaTRZmr7Cx4puDGbX3jdtAr6uOR8AQV132/jxrH12Nhp2xJda0mL
	7tXFSUEM68qEh6/HLwan+y6ibC6X7GBerU4jKfUu/LDK6ZOlBMnANmkVMI8jtDybh
X-Gm-Gg: ASbGncveRrq0+ziECidlLJw+OsAN4w/7HWK9nBlyzolWQFQTdawk2yEKdXNMPSGIsXx
	FHWVqCBidzGsa2/dbYk3j9Px2T1DpwBP8z5LF+zWPDMgo4Qhj363ZaR4X61vmnSxJUH83qy5Ibe
	sy/re9VZhoDvPt0XPc/RyYjpVJfxYBDSzbo8Yaw78uWmWcuStjZDadFOmUapfKaZvDYkt+A1gHp
	Jm6knEBfs5UrXE+6cyBHHpPlA0d0MvyK3mmR603zxwhUiQolAtUOSe8DvDbGJFJrplhX0fOC/LE
	NfwxB7z2JPRUVBipm3cDurCb+V6B/XRU655SPDir0QC1Stxcix8fXVI1Zh7tIQbgPFJ0Qg7Mt46
	ghLz6Ss0zn5dkiCmDpbdxSeB/Rg5DDFIDTlg4L7hctUx+BMoQnEwksOUC
X-Received: by 2002:a05:622a:48:b0:4eb:a0f9:628e with SMTP id d75a77b69052e-4ed15c05fddmr18502481cf.8.1761730911173;
        Wed, 29 Oct 2025 02:41:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEirvGmsZylTV9U2HOR76rZ/Vmr4UWRyqd+KI4uycauBNB1qqXAgzUpmQy9dJI5ECemHbmBVQ==
X-Received: by 2002:a05:622a:48:b0:4eb:a0f9:628e with SMTP id d75a77b69052e-4ed15c05fddmr18502181cf.8.1761730910742;
        Wed, 29 Oct 2025 02:41:50 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85369675sm1376051666b.28.2025.10.29.02.41.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:41:50 -0700 (PDT)
Message-ID: <a41e45b2-6e50-4236-a71d-ec3fbaccc2b1@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 10:41:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] crypto: qce: fix version check
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
References: <20251029-knp-crypto-v2-0-b109a22da4f7@oss.qualcomm.com>
 <20251029-knp-crypto-v2-3-b109a22da4f7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251029-knp-crypto-v2-3-b109a22da4f7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HvZ72kTS c=1 sm=1 tr=0 ts=6901e15f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ostB5tDCqmNsE4DHYKIA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: qelxhJNZ0Pi1WjCVGt4CMXbaBoFJFCVq
X-Proofpoint-ORIG-GUID: qelxhJNZ0Pi1WjCVGt4CMXbaBoFJFCVq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3MiBTYWx0ZWRfX9eymFjamrNgV
 nnc3Ql3ub0XlqIZN9CvkAN67vyyTmmXGXVj6wJ68Wqw4kMGoLiF3p90UxawgbujCFYY/XLeX/Ie
 aX1+pDGK3f88AnaeP5H/LyffNModYftxTZMZetY6rO6CF1JA9z04h3ZJl6CDVCMCY4diICHIfoN
 XyvbjVQ33L37jERC4EyvTVElJ06iYCIFQqO+1Lyo8+HpDqAzG4rKxZh4vsuPXtqiu7RlINrzcPB
 BM+ALmj8dKAZw70t4wOIeHUrGqkS6mTHGZ+Rf5UvXjZgaT6g709mTqEvklJdi2NWgRIEGAnUivw
 Q/LOP/pRRlEs8lBYZytOzqCTxTXCKJdpN3/kVwJS5TCHN7PrS4I8zXhp70DztfxmmYZvnz53V15
 Ciw6jTto9dXLg8MT9zGIAqXsEPQWbg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290072

On 10/29/25 9:25 AM, Jingyi Wang wrote:
> From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
> 
> The previous version check made it difficult to support newer major
> versions (e.g., v6.0) without adding extra checks/macros. Update the
> logic to only reject v5.0 and allow future versions without additional
> changes.
> 
> Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/crypto/qce/core.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
> index e95e84486d9a..b966f3365b7d 100644
> --- a/drivers/crypto/qce/core.c
> +++ b/drivers/crypto/qce/core.c
> @@ -21,7 +21,6 @@
>  #include "sha.h"
>  #include "aead.h"
>  
> -#define QCE_MAJOR_VERSION5	0x05
>  #define QCE_QUEUE_LENGTH	1
>  
>  #define QCE_DEFAULT_MEM_BANDWIDTH	393600
> @@ -161,7 +160,7 @@ static int qce_check_version(struct qce_device *qce)
>  	 * the driver does not support v5 with minor 0 because it has special
>  	 * alignment requirements.
>  	 */
> -	if (major != QCE_MAJOR_VERSION5 || minor == 0)
> +	if (major == 5 && minor == 0)
>  		return -ENODEV;

This also allows major < 5, should we add a second check to reject that?

Konrad

