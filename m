Return-Path: <devicetree+bounces-171103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1658FA9D3D7
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 23:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5919B4C4947
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0C5225414;
	Fri, 25 Apr 2025 21:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LuqGT/Y4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16AE2253E8
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 21:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745615209; cv=none; b=pdTPf3+L0csr4/1bnlg0K+YDSchulOTxjIerEBzgV+mZYt/sDMlu4st/WY/Q+oWM9WJ5ALYEK/prYqH+YPTnk4JHEUvZdtB0GkXSaksAer4whfMB3y8QaKm7dvA9msJkzSo/3mZjK6Q1qE0t96ASR3VTGQzTdJfF1vjDF3PKpYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745615209; c=relaxed/simple;
	bh=h00jeZq0iWeQNWIPqYKYS+5WOPWO32a5C7YtUmmJfdQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E2D0fFg0n2o38T/p+EUdHIr1hwafdx1x6klUW2cszY9kosfQCsI/SHKOdDrby7NfgkwIot2ZD/ki/ibum2TSJmbx9zzAQxBKbg0oreG9P4/OaD3a3MXQtL/kNx35UD21UvPUJHaaJrCvi1wCMKw8D5fq9oWbuPCVpj88ZyoFuK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LuqGT/Y4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJw2P011503
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 21:06:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wMN4f5Q/NYPt8cjlej5JofRiRc0TnEknbiNnEj2rrn4=; b=LuqGT/Y4ATlFoSeK
	6vQEqqPIeptD1kdRNXtNbIaV4vgVRGDaqx8n71p/mrblpVqHMPtNsPvR5tDW6jox
	k+QHszpx9gCcue/HefHO0m3o6OwANCIlhr0TsYhYCk7D0FMVXYNWWLuPLhzhAzlD
	mygQ9LVI7bhAb1bcxpOPrpuw3mfOHTfLw6yqQlGJ9Cc/BQDFrcDqRPg6e4wJGgre
	l47cIeQDlXKwqXBAoPela/+SpS8OfYmlAlYmjEHjl44Ynk8wihKbpEksXRrTuI6i
	v8Nhpx/lnz+GEmSU14fbVqEKqPGYWPPUHQVRQWujFtS+lN9ROIxbcMjOJIN4vd/7
	VwKXRA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3t7g9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 21:06:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c53d5f85c9so55232085a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:06:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745615206; x=1746220006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wMN4f5Q/NYPt8cjlej5JofRiRc0TnEknbiNnEj2rrn4=;
        b=SShvPZJGnZRWxi5S7Z5XL9yhBEW/siokIwXita+XUhr/17ju22nV73LQn0IVnJD7ZV
         pKV0ojoKOaE7oyVtRAo41VcdFDQOYi0LfE9ntPHCb6+7yoDQYZGXDnW5NT3OR/feVvBz
         jhKr1c7tO52QtZyZz3yUefjs4LRF/nD+LJyFZ1A1FtGjhZ69rW27Ml9ZtEn/8QMqGPc1
         AZLbMxfxJSKMwSY73j8VXlwRQ1IF2G55pOTKePIsFb8JRO/uIKRa81lJgmfIxroq0mwD
         xwst+vsAsh1pKf41d6W1YHlBhWwa3b3UUDEXTpQfTOw2KskUuYxOrXXg1tWSPlRsyCqb
         VoYw==
X-Forwarded-Encrypted: i=1; AJvYcCXrmkGVEGUrKr7C87wF3e/OZqOzF9ULx4e+bwysyke0+Bk2LoqeMSUCw/Ys767rySwbMWIZoiwvRE2k@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+i7HbPAoJDAbyT3TjymrLRDtdZnF/DMNdCD4qb7xZmzUdL17P
	P9Ex0GdFlM+U/JVgHWfrL2IBoUgeQSqUqYp3PVUKcFkh6qFoOhBt+v1KNlI6hRKSMYK20vNAnIl
	iwEicjvbOBnE6ll0fupTBjZeLBw4akA1CYIN7waJWROkIKw2/NKJSdc2dkjTQ
X-Gm-Gg: ASbGncvUwitrA5Ap++cCpqgynFu6r/uNop3RxVm7qvHf0KA4Uh3DptvRtIOrVaTgH2/
	jScpyQDG3CT/YJiGk/yZPI9FxMNkIfejcSktITewZZVfTKvo19iqp418834NKQwLfk68LMeLw92
	lSKq2/y2KByfLoGIv+0LwXwRKK+TahTQcstmrpWx1+VcZ3ibLgrx8MdavJZMauh2rfJDPhUw233
	/80zwoDoRtfcPWLK9jnXK/sWtqEmlHhFpudSWoddrIOFQl4mAVMDKpUS36SAHrEKMhFGWA+qAwa
	STCmfSavQIILuRyf1k0ZB+G3y3zUN3VL+2IHjZf1hZeWejU5NCMQSlCSkvwy0TDyX/A=
X-Received: by 2002:a05:620a:288e:b0:7c5:79e8:412a with SMTP id af79cd13be357-7c9606a8ad3mr242921185a.2.1745615206024;
        Fri, 25 Apr 2025 14:06:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhpInaWqBrWslLMEBHulOhEbn7os56AY7sdqmyXhYs3h7/KUwLESO/GdOIrc/pcmlw3H5y0w==
X-Received: by 2002:a05:620a:288e:b0:7c5:79e8:412a with SMTP id af79cd13be357-7c9606a8ad3mr242919085a.2.1745615205574;
        Fri, 25 Apr 2025 14:06:45 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6edafbf0sm187232566b.168.2025.04.25.14.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 14:06:45 -0700 (PDT)
Message-ID: <5c4ed073-45fe-4938-b25b-8979d96b456d@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 23:06:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB
 audio offload support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
 <20250425-fp4-usb-audio-offload-v1-6-f90f571636e4@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250425-fp4-usb-audio-offload-v1-6-f90f571636e4@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vC8GooJsaVdSa9cUGAAjZN9k77VKDqhm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE1MiBTYWx0ZWRfX2bCQw12YnoG7 ZTKYJ22IlDAK6Q4hbMXrOlEwSyIoyBy4tqhAJTkgkMJ1LFzMpOKDSBoSs3xZLhhnZB8ZSlrXhEh JAkWPBfnGjkU6qhe/WyXIkqT1MB79h7JLHFO1mRI5/7M/DZasjDRv4stYd9BhpC1Uf3CTUYBLQW
 f5DfDQl+WyOvYVTMl0Hc04dBrCFO0zS1/sa37hB2ha0H9fSb1l3TvaNz9HyvqxTeEqXzNPWmzlX XmqOBnch2tjSMVAl963semVcQroKSxi4pTmcxQqO4e8io3KEbL6GnVTfpbwINIyh9aHH7iGD427 GSCKCK6UrWO8f1C/4X2ZpUKAIjgEfCXald1bEBIIk38BIhVTa4gy4jxxPW/TuikKkQYaCKuBySt
 sOCNHC5LrhjsbdUE6c4m22Yst07ueyICRHjOUW37O3a1mbnqyOZwfsKUTXuv4O8ndvnOnKlL
X-Authority-Analysis: v=2.4 cv=ELgG00ZC c=1 sm=1 tr=0 ts=680bf966 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=fvTAydqcfIHFLh8AVZMA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: vC8GooJsaVdSa9cUGAAjZN9k77VKDqhm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250152

On 4/25/25 12:44 PM, Luca Weiss wrote:
> Enable USB audio offloading which allows to play audio via a USB-C
> headset with lower power consumption and enabling some other features.
> 
> This can be used like the following:
> 
>   $ amixer -c0 cset name='USB_RX Audio Mixer MultiMedia1' On
>   $ aplay --device=plughw:0,0 test.wav
> 
> Compared to regular playback to the USB sound card no interrupts should
> appear on the xhci-hcd interrupts during playback, instead the ADSP will
> be handling the playback.

"should" isn't very optimistic - I assume this works for you? > 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
[...]

> +&sound {
> +	compatible = "fairphone,fp4-sndcard";
> +	model = "Fairphone 4";
> +
> +	mm1-dai-link {
> +		link-name = "MultiMedia1";
> +
> +		cpu {
> +			sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
> +		};
> +	};
> +
> +	usb-dai-link {
> +		link-name = "USB Playback";
> +
> +		cpu {
> +			sound-dai = <&q6afedai USB_RX>;
> +		};
> +
> +		codec {
> +			sound-dai = <&q6usbdai USB_RX>;
> +		};

'co'dec < 'cp'u> +
> +		platform {
> +			sound-dai = <&q6routing>;
> +		};
> +	};
> +};
> +
>  &tlmm {
>  	gpio-reserved-ranges = <13 4>, <56 2>;
>  
> @@ -1178,6 +1214,7 @@ &usb_1 {
>  &usb_1_dwc3 {
>  	maximum-speed = "super-speed";
>  	dr_mode = "otg";
> +	num-hc-interrupters = /bits/ 16 <3>;
Where does this number come from?

Konrad

