Return-Path: <devicetree+bounces-130736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A98C9F0C94
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 13:41:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9060718805F7
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6FF71DFD83;
	Fri, 13 Dec 2024 12:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jmmiJN6+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293AD18E023
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734093677; cv=none; b=XvVtBYeeTAv9+UJbTSki8mt2Y3AXdgjjIsYrqZV6vhoQXk2hilhxcZBIeLMbwNGxU+uaGJv4bNY+341YpS6rewPi8MUniuy0FQHvntOuGid9uYf3+Z1wKREccOvt79GUnwtwD+UgW7JyAe8iTu9nPat1exanTawtf04SiFGuKGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734093677; c=relaxed/simple;
	bh=NWqQTnku2IFewnQ0l271ypTAiqVof9cxtyCXjtDznm8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uj9PrpQpvpPq7xrW5zgYcC7BGGO3Hl+IXEtPpaSGZX6pi31S+YVhM0VXUFw6DZQi7OJUDjcUJzfMgL/Dam0ITRX6+HEpI6BYk21SAuhHlr+YQ+ScxXPeZzeJCW0yvsfrWlJSchiXkLYYnXgsYxWm8TFAhlwIFByek31ovYskJoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jmmiJN6+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BDBTqFI001425
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:41:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yenE09Qp1TRoV+p0D59Cwj/cworX8HYkWewV+iHsfWI=; b=jmmiJN6+lnb1z3FU
	cT1RN+NKkmiVknqaBZAFwv3BxjPZqELQSygeVaENs9RdhpjIexuNIAywVUfJVU0f
	o4BdQvQZqhSe2QtYVrNopdz9DnAvfparxh4g8dUWtybBWkv8PYYMn0ZjvD86oSYl
	L0MzhakU+TuovDpN3HPoD/hpME8G3KEKY0TKzkHHwx5Pxh5Ve6Fm1aK+XR42tirg
	5kVvDB6JMsd7o00yzY1NKRkNZWKaO4JU/A+hzJDbGyrXDShaOb0zvbEbpyV/mX/+
	PFwR/70J+O0b7nt4qYbMzQrGB/M0YmIBwKGUT5FmCVS4x0vbYEuHRlqxdJ+bL9H/
	xGEn/A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gm3s06bk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:41:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4678aa83043so4308971cf.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 04:41:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734093674; x=1734698474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yenE09Qp1TRoV+p0D59Cwj/cworX8HYkWewV+iHsfWI=;
        b=n9swZJcXlmg4EdIas1cVguhGcfmQhHino0Gy/JlwoNVF2QlUOu01BpRLvu2q6IRkbn
         A4Slucqc9XxbyJTqCxq+6CSBgQGAacoSEUUoY7MMp9xDYc1L47EOjc/Muav73GXYsgLg
         nr6yhY08IvjRxzzvgQWhjERr/IlJknRf1rBKWtya4Vk4NTY9n3y9ZZ0WG1EAeeljaHGf
         1LGmltlg/U3VJ+duqTz5XH3+Mi2eSyaFrZaPL2hbn6mvgDV5EbQa+d+cb9/Owqqx3XiA
         Yk7LFqxN/NT3W57lC7rp+Mf01DimT0T9guX+SlMFrE+FSIG+dfci+RGyFLbGvo5eAWM0
         1n3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWGGJH5MswA2gw9Iehb0jJRoNXl+PGgWUtDlFMPmb/qHyoPr0i3hvVafQOeNgeZBUIZS6kVtda91TG3@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn71FvRhk1j4FWH8yCEA0Ras1m8a6ciLuISofZtgO0QAIrqdd6
	23b0dVjcr94UUgLgC98XpT2aKB8x+F+q0n3tHDPp7TNyTpz7YJwUrCWRkQza0UaYDIw/i22htrm
	7eGqMOyZkwkDqIYvmS+y99VDJxlyq3MZoHD8vZOJ9blJdnUKesH8JWGbSSeGP
X-Gm-Gg: ASbGncvb4T4dWYUSThbjFrPONufoxvGCD7ombvwWDNRmBP4NBBgO3eK5OCJeo67pydt
	PAB0HlyxjK8KBlbGz+OeRAuXehntyMbBhrlmedGRYryHV13OlR0voOruOB/HY3TATBoiviGSJVu
	WBh8QIGnui+0HsVbp+AcAl7Iyi5GTZjQni5asLEy/D9QlJEOPz+NhLjZjxu4XmXXeZkkTRPGdaK
	DhiQNzSgTfqTIJsN4FAJ67v4WS8JzHkqt2VHWczWj9SAqOkePZIsyjrpOBjrm8GE1k8PIz473nn
	H2/L9TSlWGGRGI4PrqZHYeueK4t8bUH6iyQO
X-Received: by 2002:ac8:5d0e:0:b0:466:92d8:737f with SMTP id d75a77b69052e-467a578b90dmr14355861cf.8.1734093674076;
        Fri, 13 Dec 2024 04:41:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1IHSeIv2Brdx5RvV0G26ngkWwAvpQUxQLtvdE3yXcXS+13NNnafO8QCrJMN1uf6O8p0bICA==
X-Received: by 2002:ac8:5d0e:0:b0:466:92d8:737f with SMTP id d75a77b69052e-467a578b90dmr14355631cf.8.1734093673746;
        Fri, 13 Dec 2024 04:41:13 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa673474d96sm820844966b.96.2024.12.13.04.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 04:41:13 -0800 (PST)
Message-ID: <e2fba6e9-6548-44fe-a15c-cd29f5650b74@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 13:41:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/14] arm64: dts: qcom: qrb4210-rb2: add WSA audio
 playback support
To: Alexey Klimov <alexey.klimov@linaro.org>, broonie@kernel.org,
        konradybcio@kernel.org, konrad.dybcio@oss.qualcomm.com,
        andersson@kernel.org, srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
 <20241212004727.2903846-13-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241212004727.2903846-13-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ygVSDMtj9h93Y22uwCmP5M2idlrCG1zG
X-Proofpoint-GUID: ygVSDMtj9h93Y22uwCmP5M2idlrCG1zG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 phishscore=0 mlxscore=0 bulkscore=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130089

On 12.12.2024 1:47 AM, Alexey Klimov wrote:
> Add support for audio playback via WCD937X/WSA881X. From DSP
> and rxmacro the sound stream goes into AUX port of wcd codec.
> wcd codec decodes digital audio into analog and outputs it to
> single wsa amplifier hence only the mono configuration.
> 
> The audio playback is verified using the following commands:
> 
> amixer -c0 cset iface=MIXER,name='AUX_RDAC Switch' 1
> amixer -c0 cset iface=MIXER,name='RX_RX2 Digital Volume' 80
> amixer -c0 cset iface=MIXER,name='RX INT2_1 MIX1 INP0' 'RX2'
> amixer -c0 cset iface=MIXER,name='RX_CODEC_DMA_RX_1 Audio Mixer MultiMedia1' 1
> amixer -c0 cset iface=MIXER,name='RX_MACRO RX2 MUX' 'AIF2_PB'
> amixer -c0 cset iface=MIXER,name='SpkrMono WSA_RDAC' 1
> amixer -c0 cset iface=MIXER,name='LO Switch' 1
> amixer -c0 cset iface=MIXER,name='RX HPH Mode' 4
> 
> aplay -D hw:0,0 /usr/share/sounds/alsa/Front_Center.wav
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index 827ce5f7adfb..34ba563d0d07 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -111,7 +111,9 @@ sound {
>  		pinctrl-0 = <&lpi_i2s2_active>;
>  		pinctrl-names = "default";
>  		model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
> -		audio-routing = "MM_DL1", "MultiMedia1 Playback",
> +		audio-routing = "IN3_AUX", "AUX_OUT",
> +				"SpkrMono WSA_IN", "AUX",
> +				"MM_DL1", "MultiMedia1 Playback",
>  				"MM_DL2", "MultiMedia2 Playback";
>  
>  		mm1-dai-link {
> @@ -145,6 +147,22 @@ codec {
>  				sound-dai = <&lt9611_codec 0>;
>  			};
>  		};
> +
> +		wsa-dai-link {
> +			link-name = "WSA Playback";
> +
> +			cpu {
> +				sound-dai = <&q6afedai RX_CODEC_DMA_RX_1>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6routing>;
> +			};
> +
> +			codec {
> +				sound-dai = <&wsa881x>, <&wcd937x 0>, <&swr1 3>, <&rxmacro 1>;
> +			};

Please sort these subnodes alphabetically - and yes I realize
we managed to overlook that for 10 years

lgtm otherwise

Konrad

