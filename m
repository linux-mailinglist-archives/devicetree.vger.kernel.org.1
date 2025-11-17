Return-Path: <devicetree+bounces-239388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0436C64497
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80D6D3A9062
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872ED330313;
	Mon, 17 Nov 2025 13:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AxZBAexS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aZbATuEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E44B32E732
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384885; cv=none; b=bq6SkrQSRSsyC2HV/0UtJ1mvO0UnCFUKWLvQvAUov6tuU5MTjOfiuVO0Os9bCWG9eZDcHXKlBd0SGysNbANB7GwQ/n4KbnsYuz7WjoKjR8svQQK8hoOe9xaLw0daUwWHWxbyJ2ieSMsmqqIHB5xwYqN3niuOizsIn1yS1SC17vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384885; c=relaxed/simple;
	bh=nHSwsWa3H255Mse5CWXfUUqSCs7afTkcA77l91bou2A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PzBBR1LmsRG4wf2aDezE418o8CCACDyj6n8CkEGD2vq9tXdne9gOFQaG3sSuQ8ceyYRowJ5r9Z7xDEoFGVKTg0ACIG1rJ8nxNSqBWFiMmb0vgY4w8QaK4Ykjnq7/OE1XWybpWW9uSGdNYUGAZlQlYlDqa7Utt3A1w5GXa6dHBuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AxZBAexS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aZbATuEX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHBvqJS3040301
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SOz8Vw/EkKM4D5JDYTKGDekhB/DET0Ni+ij9vn1xhrY=; b=AxZBAexSJGwqB+dj
	fr1wn2LAWKT8tytCTUqQlHhxcNh17P1H4FXcY+7bPatcyOt10FoZdDDUMJFQ0YKl
	Ljb2j+hFkpnOBD7jGuBLP/TsD4E1n7he8PGgcoknlcmvF/nx62s6kKI8LU3g+cBt
	4nwlCyEaYA+J7ddFKl8Jfp6YAU9SGXMKSbGoRcVHZIl+uS2a1zA0dxgh8bLl+w9i
	hbE9IMy79Z1rehcTDkgWDrZ0Ajv773mUeIeKyl0C91TvUmTEANA0VYPfjpyTtFXo
	auI2YhC3AiJW/0kQJruKYnKW42pHFHMjzkp2l/GK2Q4bbMza6Ck6ZrtmFa72qWzP
	GcwF9A==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejh04swa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:08:01 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dbd3b72401so768106137.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763384881; x=1763989681; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SOz8Vw/EkKM4D5JDYTKGDekhB/DET0Ni+ij9vn1xhrY=;
        b=aZbATuEXKS3SnKzUbEAmQn+M25Fr8GRHEqZtrmr37T9EoSzfuv6xzYM/7ZUZWasR7J
         ZtNKdapGUVhJctwrSbPWZE+gwY6VmT/3N1E195BrhXtnbWPLb+9Q6+6ubK4jU0XKw/tx
         bVx2cQ2nYjb9XOhILNrA/I81ik9wH2g5l6T8Bciq9Y+FKQexmpGIPKf5x/AsqAW8hIFf
         tHwyf4fZCcTI3twh1UeBryneWGU9RhTJfcuPLxQFH4UhvF5+Eeaq3AZgsl3rB+fNqrsX
         b7PkcVCODDL23qWp1RFBzNeODgP9GU0vKgLmSu8x1kxQMXjM2mNtJjtz6FwOanSRSUXl
         nfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763384881; x=1763989681;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SOz8Vw/EkKM4D5JDYTKGDekhB/DET0Ni+ij9vn1xhrY=;
        b=iDYKBcL9pV+nXnr7jML30lEXJzcPWDOyVP5rZDgZ0qYnYwuEUiRKdpX5c++m/JqEbl
         Rev4DAxAIjAzhPpEo0Dj7bImKR76f5D0vwRDnnmURAYYnuhmygpqCUCGG5of/9Ftg+iO
         6io9OAQVzZhjBfjnaMmhpTLhZEhzADHc9QvqB38/QbYXPgY33maQ+4UQF5D3+oYDMOGm
         73mWf9IZZ47X8O5XnMZZmurIe3oN6LQ1y/m0h2EoMSvdwZ8VCpK2/4yJqrNxclvZ+VYQ
         BGy3pqPi2P5rWaMvP+sDvBLw8boV9XERIT6IQ+81Hj/BD4MJ6lTjuU972mUnmAx5ttxd
         2edA==
X-Forwarded-Encrypted: i=1; AJvYcCXXAUx5SXSq1eryY2iGuH/77tQcRTLj0dRW4PN7JhFhsonqtf5CfM1Wjt7T+2/Jh+RB4ZAVswhm1xhb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvp6Tjh4IJIoL7hRIFGgNIZAHmZJnBtjwO+Q+QAPzn2YUOu131
	cMm3Nj+Cxh85eK9sB5RNZY0P+uyb/+y8WIsOU7eiIWKOjbNg6uyMStW3MJtvEFYUxDR3uhDLls/
	UB7FDeUzilRXpd85pzZgI4OwlrzPR8AsFf9AO/odnCiw9KrRVXVRfMIrMxFEy6Mqd
X-Gm-Gg: ASbGncuoWhhbjTpLjWlaeipncbb9GqqzW1J9do7i2y56G8ROIFFQZH7Zy3FQXwgtJJ8
	LagmCq2blWEyxmLadgd3te0XgSwK7n34ckpqM4FQb5HEu1QJPyQu4C9BY9bAoXGsEANtEwdMIaM
	v68QmpFNdt0+zcj8N34dctoXJCJNqxYNhXauQ762VHNTRrI5iAn0vcIG3m4D1rQih4wUaG/uYBm
	NR16qMTvqIxCb4otBaJ3or+s2sFLroDUU+6G2ay2I5QyGlASF40qA+MmCaH8rJXFaWAhFjVuMSQ
	ZGESbbLOt+oRqS3famSKs0Zcab3AICkE5BotUW05SkFkBbVZf+MFjqcqMvCJ8ErMb7QwLODsgSr
	hRHbysalsFtKZdNMbPVHzgLXg3KOUKOcxuvdBVvCtwwp6yDJsof3osJ+t
X-Received: by 2002:a05:6102:6442:b0:5db:36c1:17bd with SMTP id ada2fe7eead31-5dfc5b94aaemr1818006137.7.1763384880921;
        Mon, 17 Nov 2025 05:08:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFwPpOPibTf3AZ+TWVStcnKED5zlgO2PzuMaP7kB5rzAiAkFpCbN24ro21fVMBc11GUV4/+qw==
X-Received: by 2002:a05:6102:6442:b0:5db:36c1:17bd with SMTP id ada2fe7eead31-5dfc5b94aaemr1817986137.7.1763384880511;
        Mon, 17 Nov 2025 05:08:00 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad43dfsm1081146266b.20.2025.11.17.05.07.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 05:08:00 -0800 (PST)
Message-ID: <04934c94-6323-403a-876b-d808fedd3a79@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 14:07:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: qcm2290: Add pin configuration
 for mclks
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, dave.stevenson@raspberrypi.com,
        sakari.ailus@linux.intel.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org
References: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
 <20251114133822.434171-3-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114133822.434171-3-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W9U1lBWk c=1 sm=1 tr=0 ts=691b1e31 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=F2uzNt_Jvis__oCUEkcA:9
 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: SqCYPyOtAmFtDqKCZo7k-LLAGkbfCGcL
X-Proofpoint-ORIG-GUID: SqCYPyOtAmFtDqKCZo7k-LLAGkbfCGcL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExMSBTYWx0ZWRfX5pCRRlZ+3qRK
 sUp+qP0CEy9qDB7gtdr3GuVoa/tRHPhzm0mA4dxr6ONI6VH3BAelnpBD26PYforBEGJGQyxCe/T
 uWR1PNw/d6YWraCLJHQ0XOPgbqRQsl5MKDwz38yxB2LLwWIRU8NxRlirrKBgxCdxMtqYDSLLCtT
 TVFOLagfTiBJpAJpxibTxdXZ0RAoHOuPtB1Xo43b1OURIVxPVvVbz2egIcExRIaOFMT3pBEfzTU
 vFdmOxArCZiiv7q3AKcSXagh43MezWLpwg7CRd/ONVb+8aaMqmYlhczMzfp3XDhAeQL3qk4hlEa
 UDlQMh6Ok9goOx5z6KmPEqjXT0CRIoqMYMdxqlDQFRHM6sx2FITz39JtsgFTVz8Bx6eY+RCxgFq
 /PVy5PgbP4SSisk5M9QRwIShYbDtvg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 malwarescore=0
 spamscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170111

On 11/14/25 2:38 PM, Loic Poulain wrote:
> Add pinctrl configuration for the four available camera master clocks (mclk).
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
> index 8bf5c5583fc2..e14d1f444ab5 100644
> --- a/arch/arm64/boot/dts/qcom/agatti.dtsi
> +++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
> @@ -597,6 +597,34 @@ cci1_default: cci1-default-state {
>  				bias-disable;
>  			};
>  
> +			mclk0_default: mclk0-default-state {
> +				pins = "gpio20";

Preferably these could be sorted by gpio idx

anyway

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

