Return-Path: <devicetree+bounces-239335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A77C64130
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C9C56362F02
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1346C32C951;
	Mon, 17 Nov 2025 12:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TRof9ZBr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EjitzIF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6615232C93C
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763382658; cv=none; b=i4oIAjLfauq1uZYoKukqMtN9BSHnjEPGObztnIlW9FUFGUyfjztIjInoX18IhMgbC/A9lo0q8OSuBNHs1jxVgj0ysmN3QjA4wBQc1oPNjr6MpjQTclQpJ9lLZPfvjmO8jR8ffcnDcA5Sc/olowy5V5cq5DbYLYKySQ3GtGdoiYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763382658; c=relaxed/simple;
	bh=zoeycn627ah/xwuVeTIwvtRsDI8Z9UN+A5Mk74olVV4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iNx5MuLMpzQCZn81FcXtHePx+EtqYTBTaUkq2oBb7yJQJW1qirFdYWnt2PYORPUGyH0bgGbqSRw9G8iCPXmHZCnwgKK90eC4u35vGC/D5Ofd9ImyxYuhNlnwZu0aj1Np5pm04kWO/fHJ8kgbTUlDSZbjUImOTCokzu8dAAHbE7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TRof9ZBr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EjitzIF3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHBOcSG2582185
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:30:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9Ms7RozJHhLzNh4Sq2i0hniF6BO4L1nDtlpLDfHv6WU=; b=TRof9ZBr2YUzkq1R
	iaw1F+UlWEsiUtcTvdXFAGuLHS1s6rvTQ9XTfNe7OF0zpveMV4Sa9OfhLifa8DpW
	+2mvw+mAnPWkLruDIUD5Q36nQQrVojFVCXeUnsYFoJDqjcaIDbLim7UGds1uSeY4
	sZFUsIn2qtXfxd8jU5sC4xRHt/qhwg1H0M53f/ET34ffRGfhesB7N+WnHO2W3H5J
	QV4IkueXPo1jnpmIJNfSkPLNuIg037KPgdaunPsRT4/1s2fryiLYQpFYmnTQ/Fd8
	Fhju+5t6Jk8bOVZ6kHRfFHpxwgLz6tqxsU+zGNWXcm6AkfgrfL0KCzo3iILLzb9N
	4TiemQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4afssf9rg9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:30:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso21376251cf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763382655; x=1763987455; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Ms7RozJHhLzNh4Sq2i0hniF6BO4L1nDtlpLDfHv6WU=;
        b=EjitzIF3taqbiRiNlvyVgZ9JT3PyPReh8BEDP1ZUOcZ9NKJPzEzF5612FpBhEefua5
         9Gn2tgNMkEGZoJrzVI+QHAjg7C5R0uMS7Iruk+uf7LgiJw98nPqVsu3biM0eq7yNainF
         4Deg0QI5VrR71xhGxz117Y61EGM2sAbZ3sDGOAvAuodm79Ja9wq34Ri/nOZ6pCxOqCOE
         HhYfa9zOWpqTEMe/c3ET7QoTKc/CTt/dPF0XdiWoD9qVSf+SAWwpusXcm0mhynW5IWG2
         8lXdGTSaiYxtykOuPEIecYKMGVfbvc5T+9iBQYKvHQRtXyZa507nrq3mVQGoTYXZjuwL
         OUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763382655; x=1763987455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Ms7RozJHhLzNh4Sq2i0hniF6BO4L1nDtlpLDfHv6WU=;
        b=GCPRoujCjyceyGZODjnF65PCNa1Cdmy1jVGlRoYFH0vyBx7SKpjCgyZFogmeqsLwhm
         xVdHNBsPXe+fOU2bhnR9lXTclClhfS2hOe6flCPDhWB0ZrpN6zhyR5xGul8Lx4dQIgQ7
         QpQUmIcEqYtHEyOwWOszC6DNgTw25nxnHnXPLbNYV5md8EOVq9wszX8mIjoDiVOWKE85
         3Zk7LsL9d1hCwwfi1B86kc6w7cNl5SQkJUVhPXquuw3teiBqE6sfQg5umVQ6YhhtLI4w
         HwhrQoSCdo6n9aYRxwvwJ+Ycji6qVwYFqqhNEAWXQVO5ksjw/fyYi0Bom9ys/fKl4tvw
         BG8g==
X-Forwarded-Encrypted: i=1; AJvYcCWt7czBQiD4bF2mTZEHRjeHLV/CrBho6HF1O+H0Xuen59RYYORjGodpUc8DlUV45YZYq8ugVwKOPokn@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ9Y5hjXJ8lqV3ebisYrPplidka5nGb6oQmjRInY/wWT8gkRwm
	Wbp4SD0wVCu31XsXHXu/DoIOWLw7tVtTRpzcdtB29L1iTPBE0OmFze0Bn2r4jOSGtatXCRcK+yc
	GCinr84qEOYA4B6I6jUoP6KF4eOibvS6IahEklHmpVCnZfGXNXKjqW/WMaCbMDgPj
X-Gm-Gg: ASbGnctFcUFLhZSUfeuuc5K4yWHcfma2kjSYfEoI63ejwAcAsbqrD8OOUaY8O6l+y6V
	r+uRqelE0ZR+0hCVBlD0iWahqzIHogWRhY9W2cLswex3h8o3gGvsjJ4ZX98c0ou7qlhSClCQkW8
	W2aj6WjEYtR03cr+IlK90mwwA+rlvltU5ysnV9RJHKRknp9xmVcPU1U2qkLX6KtKz6Nz2ixETde
	PD7+AtQ/0+kbnrMyuFQyiHRuic+r/l9N45+QyfyFRe/fGHz21jBsj5s3OxWDu2Afz2a8qifaXKn
	kJg3+Kj5xC+2kLSX/hLFBWmei9OkUlu3MyHYt43XYr6bWbQnULYkcxlACublkMl7tHh88b4zIjw
	zR9e2sN9svEyPGYmAKjmor0KKcnJE3fdw3e1Sdl87BB2UZf0StJNnY2Qg
X-Received: by 2002:a05:622a:5:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee2580a67bmr16842611cf.2.1763382655591;
        Mon, 17 Nov 2025 04:30:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCjaMecdwgAGGURgblzbn/zQMWl6pzIgMwxskYfXHNOu8cKwbbx2oDIThhdmgNNzuCGuNnhw==
X-Received: by 2002:a05:622a:5:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee2580a67bmr16842181cf.2.1763382655145;
        Mon, 17 Nov 2025 04:30:55 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad48dcsm1072117866b.25.2025.11.17.04.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:30:54 -0800 (PST)
Message-ID: <28621915-6a66-40bc-9bd0-6336174973f3@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:30:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-asus-z00t: add hall sensor
To: Erikas Bitovtas <xerikasxx@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20251115-battery-hall-v1-0-1586283d17c7@gmail.com>
 <20251115-battery-hall-v1-2-1586283d17c7@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251115-battery-hall-v1-2-1586283d17c7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: jWlQpO1p9iDAx2np9wlGfMQ4JdXCA8ot
X-Proofpoint-GUID: jWlQpO1p9iDAx2np9wlGfMQ4JdXCA8ot
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwNiBTYWx0ZWRfX7GZhgTgjk6ot
 r1WN21XsFTQFqV6U+gQGc/0ngKOWsrec3t7v/lpWoVcK88GtD9JMAS5qkC2F8FFUZ9qJBYslMh5
 5RLF6lxQcvBJxcczNofw7zHrhVaIKjHnt82R9SXB8HRsfamM/W0yL8ZmaKCk/i4u1Qrnqk1VlcA
 KY3LJFcEu+f9bcKSV/S8ygzZh4G3xj0iieoctHQh6Lx1+ZqFIQmYwLZzzxruJMR4FbpiU+PoDpo
 uRPR+rExMaP0lzOTng74WZfxPvdim5+f22amT4u2tkev4pU4AzS6JnibhYwidWL/Kvc9Eng4hX6
 vR7aqJill6uy4iCgpQ1WVguiopB/hZzJHkl6mT8RmwmrSDXYI44UFnR+H6XRKEjHdXPy7Sb8Ly/
 NIgeRud43gA5Eautx9crUCIqYMMtEA==
X-Authority-Analysis: v=2.4 cv=IrkTsb/g c=1 sm=1 tr=0 ts=691b1580 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=r1K-fh0fuhb1ZRExs3sA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170106

On 11/15/25 1:26 PM, Erikas Bitovtas wrote:
> This device uses ANPEC APX9131 hall sensor. It is a basic GPIO hall
> sensor for which a generic "gpio-keys" device tree node configuration
> suffices.
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
> index b58f0a04abfd..60a714a62a2c 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
> @@ -62,6 +62,15 @@ button-volume-down {
>  			linux,code = <KEY_VOLUMEDOWN>;
>  			debounce-interval = <15>;
>  		};
> +
> +		event-hall-sensor {
> +			label = "Hall Effect Sensor";
> +			gpios = <&tlmm 108 GPIO_ACTIVE_LOW>;
> +			linux,input-type = <EV_SW>;
> +			linux,code = <SW_LID>;
> +			linux,can-disable;
> +			debounce-interval = <150>;
> +		};
>  	};
>  
>  	reg_sd_vmmc: regulator-sdcard-vmmc {
> @@ -259,7 +268,7 @@ sd_vmmc_en_default: sd-vmmc-en-default-state {
>  	};
>  
>  	gpio_keys_default: gpio-keys-default-state {
> -		pins = "gpio107", "gpio117";
> +		pins = "gpio107", "gpio108", "gpio117";

I think it'd make sense to keep it a separate entry

Konrad

