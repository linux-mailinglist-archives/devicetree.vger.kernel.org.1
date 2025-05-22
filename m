Return-Path: <devicetree+bounces-179708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA37DAC131C
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 20:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E92D3A51B1
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 18:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D9A1A8403;
	Thu, 22 May 2025 18:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m9+C8ZOq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D8F1A315A
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747937635; cv=none; b=NPJLycuBStbuC5Bx7scXt/PzSXJ866ZnrQLVEF9toM1yAolKVi0p+/jNfj6ImOZZALpdKiq4mC8QIGuUtBm48kci8WwDqjVycRy6j3TEnB38Lo6ts+N+e6dmhmNANJDgujxJfLqliyiM4lLcPzkvsLZAR9eF+iQtUyD3/p+dnwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747937635; c=relaxed/simple;
	bh=91toqZEphZKmE9o/rBckXJd1FNa8ApcyPXqGQ8XvA6g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jTpXcgfwtlc4TaMlN3JMrJXlKPhj0ezJGiUTbMYGzkNhnAKxZnSUOoGQoBZoMSmid/iENFhg2tY2yQ4VN6zDA0T8NARq0YYaRpztYUktk7JyqbZ6J/ZNlN+LMIhcunO2JeDDC/OV2gxb9Sk3WcbUlu6yJl7jsVQ/9KY/7355p/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m9+C8ZOq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54MFNr6H020585
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:13:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cJTXM+7S9NgTzSFFl+A5KpdMXXyd0FhjVTeFKwQdXKU=; b=m9+C8ZOq9cNDiEje
	5wxs2n8HsrWNecyEGl8XPaenZ8l/TfNUGfgDOLHH4O+ymVYY0lcn2F3CHzO33uS/
	T3WKZoKFLDhZ+Cl20uXtYL2HkeIKUNr/pWrRS0SFnpOyOOKEZa65GR2PMTPkegft
	nBSnioF31A6ywD7+UmqSuT+4+C76LNK4DU6queo2R0Lf3e4jICLhTFeiKGwehKAO
	oxqZvWmED6FJua0Bq1UwlzjHSzF9J0snSGtG3Og1o/fKcS8Fo5Qk/2nQ6Azf85+u
	yS9Mj6EJFLE6aH+2py6z1uZlugJB4zxQ5TaLNOP1bRg420ujQgcEJ+3olKFLYy4w
	pTt/0g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s9pb5p8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:13:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c76062c513so223575185a.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 11:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747937627; x=1748542427;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cJTXM+7S9NgTzSFFl+A5KpdMXXyd0FhjVTeFKwQdXKU=;
        b=t9bfI+X8oj8XegKo5yWZInsszJ/c21j6JzbuRvyjsv1OHWkokzqt6g8ERuKBjQ9ObB
         lxwxEFfymdCBrGWTGsWjDPASVBdiqzmQ1+9F+UVaJpIY8DRQDvUCISgkGPTIyp9cB5i8
         0MGtz8If/I7AXpYWNt1zI1ddP1XIS7Y+8OVx+G8NlykfCOlh7jljKjhQ+6qWHUjlO1EO
         mJ5ooc2UUWdSMLq/y9Nh2zB/LvUXvNeuTcn1nPRNqjP8ZC5auuKlyWROQSiO47WKHqAQ
         gCzDfEafQK/OZfxkw5FgGHJDntCN192HXfTmXAKHxclfkLf50P1aFLIdoVCBWyYOdiXW
         TD5g==
X-Forwarded-Encrypted: i=1; AJvYcCWXA8LicpL38JxUfn5/Pup3Rr3yniQOYU7C9FCiup5EfDcgvoe9Js55R06NGAatOtfTgO1kwmd/V4Bl@vger.kernel.org
X-Gm-Message-State: AOJu0YwPoMxNBiB+ZFI5MueT9YBSjw+kB0ESxYhwiOHjzHN3jYQskRHI
	QmoncSPnDtfY1rBi9xaEseh/zuKGDyEBghiyCsj6uqYqU+N8m+RzQh1FLaDXr0WPkSTm6gQsuvd
	UhjsUccXUYMvcMsgBoGFSUmvyUkQfwBpnWL9+Q0Zb++w41QK/bPMNj8IX+W8n+Wa3
X-Gm-Gg: ASbGncsradtoWUuw3sFEl+VYnC+0XRZbP4aGBkNnStODdBUHmON+0qXju5wA34J9Cpe
	8kMIbZkLAHLgcGDsENuXttGO9eCNsQ6ld9XstI90svBB96hJv1DaUYpxOaHKtmK/kpFroF7uuRX
	Mdj/D/MjqVh7ax4BpriHLPjRbBOydW/0PnpLsBX2th9/ULFZRVvhmVrThrp8p4wq2EjFYJwupwL
	xWoQD3IZ2lh5h4iCCa5L4jB/yiQB+SdwtkLTf0rOA5rHA1zDutn9ICyt5VnOcC5l/ilG6xT7JA5
	hjfpytQv0Wl9pdVZSfTKh9kAs2Oq66vxyqShCUM/uJIY1svsN+Q4n8oX4umD2gPTxA==
X-Received: by 2002:a05:620a:6506:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7cd46779c90mr1645450485a.10.1747937626841;
        Thu, 22 May 2025 11:13:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFG1s5LWcfdRcLuprDH7NRf4cIMqfzPMsVHaGaLchl1HpyhV9P/PLyDyxgUXuVubSzGN2Rrhg==
X-Received: by 2002:a05:620a:6506:b0:7c3:c9d4:95e3 with SMTP id af79cd13be357-7cd46779c90mr1645448885a.10.1747937626412;
        Thu, 22 May 2025 11:13:46 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06cdefsm1130366966b.52.2025.05.22.11.13.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 11:13:45 -0700 (PDT)
Message-ID: <c7d5dbab-0a51-4239-811e-dc68cac18887@oss.qualcomm.com>
Date: Thu, 22 May 2025 20:13:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] arm64: dts: qcom: qrb4210-rb2: enable wsa881x
 amplifier
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-10-9eeb08cab9dc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250522-rb2_audio_v3-v3-10-9eeb08cab9dc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WJl/XmsR c=1 sm=1 tr=0 ts=682f6960 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=75nCLt9WaoCjErCtZgIA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: QMq1SSaUJ9KJJRnWK2JV5wVlzaiOGrS8
X-Proofpoint-GUID: QMq1SSaUJ9KJJRnWK2JV5wVlzaiOGrS8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE4NCBTYWx0ZWRfX/7ep9tgAG99o
 Mu7cnNJVAi1vWqmh5NY8ONUrmz6uYXKbX8TjATV5isK8efL9V2CGiwc1izQvgiph6hceCZ/918J
 2J8DbjM+NkVdYY8GhCxoSzKfPW1t422k5mYYHDBmSc8jjeP9vDucEzP1KIdYtONgs7IEt+G5bI/
 9Tx/E+Wy8x5hlKtN3EpqPYCGX4QEHgzaELjwzHWRnCgd5p6f2IvTh9Nmy79fGN13kb4rhgVr+b4
 2geGFkaGKjBJH11L9wB51dEQfgHdEAflDaCEjM6plvoioKLOX1KHCzNkbN6W22UP7SvG15exQqB
 nbrA5asPmtLAH/KryjLNS4C4UGvQ+dwMJqnbT/ht0FA7bciSWCqISh4aHzF+3P6v8eokCer2vPR
 pYiMzO4RWzDzDlAAi22LJhSYtqQ4ADiDzqFE3vRgZARVVZEwYgq+GnKWQ5NeCThAMb4SZte7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_08,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220184

On 5/22/25 7:41 PM, Alexey Klimov wrote:
> One WSA881X amplifier is connected on QRB4210 RB2 board
> hence only mono speaker is supported. This amplifier is set
> to work in analog mode only. Also add required powerdown
> pin/gpio.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index 6bce63720cfffd8e0e619937fb1f365cbbbcb283..4b878e585227ee6b3b362108be96aad99acba21d 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -270,6 +270,24 @@ zap-shader {
>  	};
>  };
>  
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	wsa881x: amplifier@f {
> +		compatible = "qcom,wsa8815";
> +		reg = <0x0f>;
> +		pinctrl-0 = <&wsa_en_active>;
> +		pinctrl-names = "default";
> +		clocks = <&q6afecc LPASS_CLK_ID_MCLK_2 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> +		powerdown-gpios = <&lpass_tlmm 16 GPIO_ACTIVE_LOW>;
> +		mclk-gpios = <&lpass_tlmm 18 GPIO_ACTIVE_HIGH>;
> +		sound-name-prefix = "SpkrMono";
> +		#sound-dai-cells = <0>;
> +		#thermal-sensor-cells = <0>;
> +	};
> +};
> +
>  &i2c2_gpio {
>  	clock-frequency = <400000>;
>  	status = "okay";
> @@ -736,6 +754,14 @@ wcd_reset_n: wcd-reset-n-state {
>  		drive-strength = <16>;
>  		output-high;
>  	};
> +
> +	wsa_en_active: wsa-en-active-state {
> +		pins = "gpio106";

Are there two separate enable pins? Or is the powerdown-gpio something
else?

Konrad

