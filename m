Return-Path: <devicetree+bounces-201364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0ADB18327
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 16:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 865A916BFCE
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 14:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016B6259CB6;
	Fri,  1 Aug 2025 14:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oUHuZ0Rz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A4C19F115
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 14:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754057025; cv=none; b=A+gC8/LH9WkKrKrWcw6h1yV87Zi1JNAs1j2CmTMfGjwcUFHBufopzd5ZhkOhQf5gUvCZNDmAJyv3ELM/DD7ta8RY/Wjovo4Z0tWe1FRKahIOQCVfZpNyC5PBiAEgVqGpg4+DgVWaDNlsAZ3Bz0dfORXe45bvRYG5RUfetilzGYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754057025; c=relaxed/simple;
	bh=H0ySXzvDbuoWs7r8TGqzxLl3oxORf/aA9p6f3Jf4ccU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mp5owVsShjsjEFSglzLDu6TxO5n6vUi6eFnd3oXhi1VTuRzTWIGdLbiLqiRMljpI+5mKH5x4E0bai9xqq/RJ4Eg1BWN+d8QGVBbyllU61aXJC/zyMzWWfSqAs8lsh5dDiP8MeQfekHynUMfOHlqYlR+x7LDChtBPIBSDBy7VHPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oUHuZ0Rz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5719b9Sh007218
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 14:03:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ku4N4bPFyWj4gyqNPk2SoqswYtjh+OxCezwK2kazDYI=; b=oUHuZ0Rz4u//HTxw
	r4wqWkXnzLwbX7kbEO6hUaGP3GUbbfWS/MKTVZV9puSfAKQjR8fySBYonmFkXrMa
	6RSNw3vERBBYFVlQG2+AMHUWo+ZrWkw69sCJOzbheaOrGyXliINiIK4Drm5pU7AA
	tJf2klSUKTcS0Crs3dacU6XtuJZGX0tJroP6YlJzzQdNLKFADC2cnfd9HjnWGKme
	hhzfKpmHULqbE755maFP0gTHbPwH6DV1ZDwjvclDdz6JaCDK+o99qo8wbRs6HqqA
	wDhDuhydRg7dywZ4GEKhG27z2WBFrZfWZ5cru8VIJmCONueEQ7xgG76NZXnaalzR
	DRT5Dg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2uwmf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 14:03:43 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab3ab7f74bso6474461cf.2
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 07:03:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754057022; x=1754661822;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ku4N4bPFyWj4gyqNPk2SoqswYtjh+OxCezwK2kazDYI=;
        b=UVdyx2YH0Y7qUZDQjHGOZGlq+u7vZ9Oj91gegz9e0Tgd5M+z6QmYUeBXG9EvjrPcv1
         6fUPr6sGD+JoDB19GXSCCEL1T1GhwKgta5HhpfdoHvp6nUAkwRXzQL0HpI0UwlljD9Pf
         Gh2yd2qpQX4mfaLh8IcbYJEsRMO0hVEc6Y92+1DSH3rsKMOy58HjStjEIxHTtAiCB5X1
         uCElSSb2TJPcELpQyvh57nf6zl3ffDo+g/mV4zHqYLC+Vo/+XLJ/Z8sS+F3lc3hRC60k
         WynEeMMb76eewHmbwBHEtyf9IPg0qk1uvTmjKyyRpFs5M/hpmLrCaneQN7KcKfUsdZqH
         P12w==
X-Forwarded-Encrypted: i=1; AJvYcCU9dNoKPLYB0vChCXEwOaN9+K9vnof7gEjaO3OVhNXoFJiuWnqtW7pwNdgAIGRJTyX/1ZmgOz9P3QRi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj6wPRKVCu7wVLOBPaFAusyD+xSxVwhf8Dh+8uFEWk+cvzpLUK
	YsiVLR3zkxim3zHHDocXSxm8nuXWeVH76OldyuNnH5uDrAFpyPiBquCVHc1jcxsHNndm1RuROWw
	0wRQ8yIE70ICD/LFoYUMSz8bRbaoY5aPZL/EB6pDygDUtxQjDjEXBqtWTL6IbevE4
X-Gm-Gg: ASbGncuxMNPUGJWcgKJBDaIF02qpjnqwu8wAte3yS19vBBXt68fBeni/KWmwq6IJ4qL
	/IKTDG4NBsOjlSuiUKvliXTbknqv1SwMy7SErTnswW7N9uX7rmPRb/+R1uaHEWaaAvgRkxdJljd
	IMiWA14Ugqrv02jxsVMD++pEuOaORLxdA2bK66bHXOW+gupxcB6TbIq+iTl6TH2cuxnFGoBLW7O
	hJtEDkyCs4z/xJM/ofA6sjR2kH1wA288rP9sAlaIQS9dmWLFmb+Ji1uqCQa3WBlHE3R/O7I8jgK
	3SsyvuVJERvdp32TfUHp+MBTs3p9vPK4goZQC5E8N6yMTaLAKxm6FBvD6RZdKrr+8OORCp3iRyW
	4fKILOjc4Ym9v9nZ3kg==
X-Received: by 2002:a05:622a:58f:b0:4ab:7633:c58e with SMTP id d75a77b69052e-4aedd5400d5mr81763151cf.2.1754057022083;
        Fri, 01 Aug 2025 07:03:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZJqOtBrMXyVVQfE+UWYMn4cGgzAWWjRieoBwwyqh9DqIDo0ajPxhm1mGSkLgOOIHkgPsdxQ==
X-Received: by 2002:a05:622a:58f:b0:4ab:7633:c58e with SMTP id d75a77b69052e-4aedd5400d5mr81762661cf.2.1754057021467;
        Fri, 01 Aug 2025 07:03:41 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a241bdfsm293472866b.131.2025.08.01.07.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 07:03:40 -0700 (PDT)
Message-ID: <445317ce-fe20-454c-a564-288372772b74@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 16:03:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable USB
 audio offload support
To: Luca Weiss <luca.weiss@fairphone.com>, cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250801-fp5-usb-audio-offload-v1-0-240fc213d3d3@fairphone.com>
 <20250801-fp5-usb-audio-offload-v1-2-240fc213d3d3@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250801-fp5-usb-audio-offload-v1-2-240fc213d3d3@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ykEOAsHNNpctmG9Z9IO_jyW1ey0lHJw2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDEwNiBTYWx0ZWRfX+HA3zl2UC5w/
 B4gOmNsAVN8UPRuFpShg2BJHIkWM2bsw+dNcZ6muGAAEJ7P5BkmFW6wr/0xr5pLH2PTWb2FoR+5
 n+YuPP7/b/oy8DMOhtitjZ8kGPbLVjAtdLQUROI5tFGfecAGTSJ49gYApa2C4+HE8nrNjql8m5o
 E6tc16aaz3aVdS7BUpKSKnOoYskCqdfaw0uK7TRHArrzOZyoXzjfknCB0nvKEabJK3N7V+Tf3Xw
 RHL9Pi6+47KeifuljTfmyYR9t3SO/70L/0DBPltBf9pDldVSY4SevmAjWB8D/ekyAJAhVvQLWvL
 YTy0jfg1rtGrMe9NClsyDsx8fUzkqur8vqj9Ej4KoTf/WEfrlODgpcoCM7Pe4xW4fTM3D3/0qyB
 aO+XKI7rezicLskfZ3s0WaJt++bPNHDpwAcGYixj+Hql3m0EtldtGYoDTFI+e5cjdPubKFYU
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=688cc93f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=fLAofa3itH1hiLrtIDoA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: ykEOAsHNNpctmG9Z9IO_jyW1ey0lHJw2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_04,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010106

On 8/1/25 3:51 PM, Luca Weiss wrote:
> Enable USB audio offloading which allows to play audio via a USB-C
> headset with lower power consumption and enabling some other features.
> 
> This can be used like the following:
> 
>   $ amixer -c0 cset name='USB_RX Audio Mixer MultiMedia1' On
>   $ aplay --device=plughw:0,0 test.wav
> 
> Compared to regular playback to the USB sound card no xhci-hcd
> interrupts appear during playback, instead the ADSP will be handling the
> USB transfers.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index e115b6a52b299ef663ccfb614785f8f89091f39d..d30912f952db271aa4fbc2570ca04b771ffef3ca 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -1176,6 +1176,22 @@ platform {
>  			sound-dai = <&q6routing>;
>  		};
>  	};
> +
> +	usb-dai-link {
> +		link-name = "USB Playback";
> +
> +		codec {
> +			sound-dai = <&q6usbdai USB_RX>;
> +		};
> +
> +		cpu {
> +			sound-dai = <&q6afedai USB_RX>;
> +		};
> +
> +		platform {
> +			sound-dai = <&q6routing>;
> +		};

Because this is SoC component <-> SoC component mapping, this could live
in the SoC dtsi.. but then 7280 is a glorious mess with the firmware
flavors, so I suppose it should stay here..

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

