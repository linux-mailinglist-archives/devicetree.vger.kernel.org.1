Return-Path: <devicetree+bounces-171171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8BBA9DA0E
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 12:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F26F464BFC
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 10:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D04226CF3;
	Sat, 26 Apr 2025 10:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XmCnTwAU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50323502BE
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745662767; cv=none; b=Ut7nJpLTcjGPh/8MB9hEukTiHhPWTeanVDXvOBYFnpoUgGF7cn3PvvC+vTDY02Sbib3ztO5+94N1C2BIbhnoJ/lfRG4OYvMa4JkUbMwT0KttU8IzcCOeli6ZXKDIy/Ha9j+hH6X7nDqPnszZhhaW/ilOMYKzXjRVk7bc5gMCoYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745662767; c=relaxed/simple;
	bh=INKOF5iwpURN7Wy6Ds0XbNG4prjxtjbP1QEt2sqa2hQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bxfN4vdoklRIuKDhKu5U0pmR9w2AN9Gr+FDGjf9xMDp90lQ8FArUlV+P/1lEQt2dUAl4pNDlvx4NHnIXKrzZpFZaSnqPiiX8K8xtsA0HCAS9a5pE5Z2P2jDV+GNXEvE8lAq6tP81uhIorH45k3/wsVDsNNdu5YNCSiObyp3UC+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XmCnTwAU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q3YsHt002334
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:19:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QyAht0J6O/7/KVaYupGEkLulwUB5tO0FkOWN11lWFP8=; b=XmCnTwAUHkHcIktl
	MeTmYS6cicju3UPXiP06LO7tDuxCWlizWVPzmS43OKGjhPfvjhi+K8LcW/7RmET2
	VR4wfLvvlOCP2CpXMM5AkRfCHMY8Altnf/+2JB7omrXhuYfKRXbyzI7gu4S0QrF5
	77q3zE2ncICDUjhmsuDoebqScoDATqK4obnPU6JpECY7JQ0fwd2OL/t4Pq38F+ze
	WvyxQJ1eel8vg+rTXnJ9FmJWQI9iggrOoXS3eHUbscNF+y7KAvsGs3DzGWXOf9bE
	cxhNAHPkS8kRfQoHwv3tQy7DjCaISBa25ymTqb1UgWZGx6So/ufqA9K1MzzbNyfd
	0n38gQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qq58umh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 10:19:25 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6eeeaf707b0so4102876d6.0
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745662764; x=1746267564;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QyAht0J6O/7/KVaYupGEkLulwUB5tO0FkOWN11lWFP8=;
        b=VsvFLeMlUngmeN5ajU2mQ61xtmtjLZQjnpjr72Q/CvMqpJFebrSIoUj0gZi4IlLHxs
         tqz06v84PaSfG/7Hl1eD3ORbQzLrLwKRsR/nVwUESWD4qJ47Sael+HLRbA1IOz9ri0pV
         DR/GAxIQKmH6N6sSNFSFQGSa9tiERhNfX/xhaLlZO8THkKfhb/XkjY7dvvwEFC6N12cb
         f/63+VEuRfaA7yHKMkp+B39zN2k/EoH+AR6deEGrzhRrbNB/MKQfp24nlA9I4SqnqGTg
         F/0aul1LF7E9Tv5GEwWGoo2K01GcXHGVGmK7+roZf3e51fM4hkmOvO6T7oPNrdqxas8G
         88Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUOsyfuqeRacmo/W2atB4AWL6+p+8PsyXKXeHWYCYgWerveSpE+SnXSRh7IXEMClaMjzvnnQByT4Iiq@vger.kernel.org
X-Gm-Message-State: AOJu0YywaKxb9RPBcPnFGKDHK9fXKJ5ZbFr00NU2uPeLNjIeeUDiPxXL
	+HMP0eFs803Qv2jb+gwgQtaIgRksspSn/U7WTm5hR9o8mwoVxJFV0By+GjlCsyMLrgaFxyEf0eP
	BjfE+JoWZtU5Gu9o7uSv8IicWF8947G7FSxniIeugBE28XuLLBPRtIRyynNSK
X-Gm-Gg: ASbGncsiopXGGcjvaWRBNW7d2qDovTsziO6vDwuy2gYMdqvwwFQYb+iALwmjGedC5QW
	+8TedR+Ntx/G3xzUz89vVUeuBvqvOde7bFVl6a7gdEO9h6UiKCC4PiMLEtO+Y6jP55LeK8Kypwo
	pPx8hF9wE8IWs6q5c0qoIoVINRJNoU8dF4l9m99i5MDBtGRg5qTf0umPI0RmNW6LBj/40Fgy0ee
	YAqdIC3NQvlsEe9VzRBDEVzRyDKbUjpTfS5nKzkWbS9XxZDuvQ3/mC0aFmLXJZqFcUyp2nzNDtm
	I4SG4IdG5xNlCvgR9EPsaUpShF/ps1Ldr/Sx15SywHcP+LfpEy6EEpKCrNgdYxxKDao=
X-Received: by 2002:a05:6214:21cb:b0:6f2:d51e:9d0e with SMTP id 6a1803df08f44-6f4cba5da66mr32572816d6.8.1745662764049;
        Sat, 26 Apr 2025 03:19:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHe/6uGcT/gAWdQXJ0VdRORPe01PlSUisfr3nJhiprMSvRRB6X8CYs4G3ezfI/LfIkCU68DDA==
X-Received: by 2002:a05:6214:21cb:b0:6f2:d51e:9d0e with SMTP id 6a1803df08f44-6f4cba5da66mr32572666d6.8.1745662763729;
        Sat, 26 Apr 2025 03:19:23 -0700 (PDT)
Received: from [192.168.65.154] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e6498sm267627766b.42.2025.04.26.03.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 03:19:22 -0700 (PDT)
Message-ID: <fb21ba17-88ae-4cad-b7ca-57b5e8082b5e@oss.qualcomm.com>
Date: Sat, 26 Apr 2025 12:19:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add support for X1-based Asus
 Zenbook A14
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        maud_spierings@hotmail.com, dmitry.baryshkov@oss.qualcomm.com
References: <20250416232345.5240-1-alex.vinarskis@gmail.com>
 <20250416232345.5240-5-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250416232345.5240-5-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8nwH9BHVw8HccmA08Fsc1t7nQhENAIwl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDA2OSBTYWx0ZWRfX8xQnaa8miMVs gdvMg0Wbx2xqedJDX4I4NDoTPTjVWwqR2hBfAoNvuuEpaKJwVhgNcb34OSz8dSIJ7S4R/BWRy07 8q6HW6wHrMOclYE12AYHojr3qjxNJHZDAiK3YTnWC0ry79weJs4bCTcdvsvh9Jly+ZgJM/qiw8m
 0TQgMp0k4QMStT95WgTLexpfAp6rZmMhQxfRpvtFE7TX0b5EJW84W2Q1we2bhz6WloDLsOOjETS a+HzkwZEOu5fJ7n7QBAcjSxXXbhckmVaQQlyS+oWaaTIVCRnUl+PC85aOWW/4T97T8SQXzw/TFA DuBSiKqv+ERVQfwa/zD8UZUKUV8X99DTQhe24qWF55WXmkSMoF+XYAmwqVfTyDERg4UMeA7OyWj
 K/gii/hUFfdRwbIIgx+dX49zVWG/9P9PEI2pReld5gClIVM4br3YCu6ycEeKwr6uXvzonYn7
X-Authority-Analysis: v=2.4 cv=QP1oRhLL c=1 sm=1 tr=0 ts=680cb32d cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=04dXdBH-sfCwm-JsXqsA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 8nwH9BHVw8HccmA08Fsc1t7nQhENAIwl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260069

On 4/17/25 1:20 AM, Aleksandrs Vinarskis wrote:
> Initial support for Asus Zenbook A14. Particular moddel exists
> in X1-26-100, X1P-42-100 (UX3407QA) and X1E-78-100 (UX3407RA).
> 
> Mostly similar to other X1-based laptops. Notable differences are:
> * Wifi/Bluetooth combo being Qualcomm FastConnect 6900 on UX3407QA
>   and Qualcomm FastConnect 7800 on UX3407RA
> * USB Type-C retimers are Parade PS8833, appear to behave identical
>   to Parade PS8830
> * gpio90 is TZ protected
> 
> Working:
> * Keyboard
> * Touchpad
> * NVME
> * Lid switch
> * Camera LED
> * eDP (FHD OLED, SDC420D) with brightness control
> * Bluetooth, WiFi (WCN6855)
> * USB Type-A port
> * USB Type-C ports in USB2/USB3/DP (both orientations)
> * aDSP/cDPS firmware loading, battery info
> * Sleep/suspend, nothing visibly broken on resume
> 
> Out of scope of this series:
> * Audio (Speakers/microphones/headphone jack)
> * Camera (OmniVision OV02C10)
> * HDMI (Parade PS185HDM)
> * EC
> 
> Add dtsi and create two configurations for UX3407QA, UX3407RA.
> Tested on UX3407QA with X1-26-100.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---

[...]

> +	/* Left-side display-adjacent port, PS8833 */

nit: The mention of PS8833 in the comment is rather uneventful given it
says so right below it as well

> +	typec-mux@8 {
> +		compatible = "parade,ps8833", "parade,ps8830";

[...]

> +&uart14 {
> +	status = "okay";
> +
> +	bluetooth {
> +		/* TODO: add pwrseq once validated */
> +		compatible = "qcom,wcn7850-bt";
> +
> +		max-speed = <3000000>;
> +	};
> +};

Drop it for now, the dt checker is angry about partial definitions

I think it looks ok otherwise

Konrad

