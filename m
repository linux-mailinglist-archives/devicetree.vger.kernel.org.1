Return-Path: <devicetree+bounces-180949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3185AAC5BBB
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 22:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2EA51BC001C
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 20:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4474F20CCD0;
	Tue, 27 May 2025 20:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iuw2l/yT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ADC205ACF
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379559; cv=none; b=mATh0e/s9bbXCisHjsaBoLJwyg8NIS0yqA8sKFlOT+EpBq7IWqpMfzVATu5/44JoI4RgkNLlcCsCjk58PM5IdnBrs/wDsVcAsyG0SPthqQv0V5R1c+x6+j5kaoob5pLEYcBm0hkHD/wUqPwdA6Z2lBlUl19Py5zoEWKnqqR9ZKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379559; c=relaxed/simple;
	bh=hLILqwA03TMgU2GOo5XSBvyoyqXcVa4JHM8elqr5Dmg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AJo47KkDiAcbNxI0XgcAJChfPkBMwxqzKYNVYA4srNl4xdjsfF/+s/3j4Zv/SRnQ83Q4BqJCx4iaaIoXn28iU3qhfp212E1mfBpdwld9s6NJDvmmBdQ5AkJzpZIAHLmmTmrQMwcNIp/bLgMG8G/zjTJrooAn8OtEzdNA9EalI4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iuw2l/yT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RCpKov019819
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7rMdgPJ4nsFZQ+D9Zc2xAqAauQiMo58uxaIZ/TRNt5c=; b=Iuw2l/yTW0MjmIMp
	t6Ayv50oREsH+0S1ypNPrSibzookgtd5XEO76fRmnS24rNTRl5xMu8AHwO11Q42w
	bLJvPUZioycEo+GlRDIUVSvOnyq0bCvJBLlYk1nhoZUp6hp1rx6LMM8J5OEhVyqi
	MeNt4T8XP5reCedY3LPYT3uhT2AuYIVVM1JQXvSMm5au9xojG2tjaiu+g+WQkV7z
	VxO1QxqeJYT2/WsfTUzfLn4QHaOC4qFNhGyvTTsAhAt1BegsRKMhdyYrVPkTvg9j
	HuQfiUlAAm3bveK+BrWuzsmHIJ1OCr1y8Ht0TTbKAxQ2SOr7pxiJVFmQAOtZaXr7
	kmwv3Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek05qn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 20:59:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47983a580dbso9068951cf.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 13:59:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379555; x=1748984355;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7rMdgPJ4nsFZQ+D9Zc2xAqAauQiMo58uxaIZ/TRNt5c=;
        b=haVW8C89kBhqGFEgAZYwVI5X8fLzJJrU9eVlOtbOSMwGbe9SGasx4GZheJgjWyFlF8
         YI+2l99T/0ue1JsLQXNEwd6ij7KrzYpjp7OOeY/46S9mnuoEFUdHcHPuW1hBdErCTwWm
         LY2Ii1xs7BYay/AYZ500/FJ8llvMl1XA/PVjd+Ux9ACaon4Q/hly3fPLe6wQ2mQa8aDg
         u5MZ8ves8B1uoFZCDLaKqtO9Qr81GW9RM3STadyVdfnRNVIE++4JmfAQ34vhATwD/EPt
         sMA3XwGFK+WTXEVGLkxNtbllP57iOLwFrcEfwzhz0OD1GusIwiURNOZlYiZ24uQ9j8cg
         hIRg==
X-Forwarded-Encrypted: i=1; AJvYcCW2rumRpgRk/IRklVX7fXqN4e3VgcE7b67jQ5uy7+GpLY7pfJWzsMGI5DGJQcNwVH7XkfjtO3Qdj+dn@vger.kernel.org
X-Gm-Message-State: AOJu0YzHWQ0IbWti7WaQ6+FfyduS0kG/X8p3vLIfpk7SPe0p1ZYA1fdT
	GwOsYlCM/3znsCjR0aFlaKmY68S2xc4GWOY/KVw9iQkIPWM3NDEjoET8SgJYprfXSyvYdwfePjY
	fKK6u9zZ8Sactv+nJ16zb7Ih/Ovpanm+KnAG8BR9zo+uU5YsNUdUrZFS1/1BskcS/
X-Gm-Gg: ASbGncsRXqPNENQBRZ+oehhDadrwlWZpzLXXJWbc+tFTjLLFDYDftOoedUAMak508w3
	Oz8rGUKfEYXpuCRa8abpaRxkS3j5FnY6BEmOG6EELVP3OLABstsqkzq6Kg3NpOK3jc+hOBVhuG6
	AInfzwYQ0UBpk1u8m02TCzzOX1skIytpw+E3PDAU53pCWEv4Fj4cGWw7dScJrxA6Hx0tMg3Xa+L
	txdwuY681PR+9XhjRfRq48tLE78EuL1oEkzwtj/6EZq58GSeLWSGaHctiuNQd4/Pa682fyUR/gf
	uy6j8qMbdjUKZv+XSrxZblWZ0m0jQcNByh9JbtN2RG6HDa8suzIFj6TkZxIeHZlCFA==
X-Received: by 2002:ac8:7d83:0:b0:472:1812:23da with SMTP id d75a77b69052e-49f47630c37mr84825931cf.11.1748379555450;
        Tue, 27 May 2025 13:59:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEaYekLkmo2BG5Pkfq3xfSc6Y+Hng4HuX9BBnuMsjjWtwndv7TrykICaXHG2nFcN8TMXJpH/Q==
X-Received: by 2002:ac8:7d83:0:b0:472:1812:23da with SMTP id d75a77b69052e-49f47630c37mr84825781cf.11.1748379555029;
        Tue, 27 May 2025 13:59:15 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad89f069990sm11141466b.8.2025.05.27.13.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 13:59:14 -0700 (PDT)
Message-ID: <79e5e4c3-1b92-4170-8213-163c879f120e@oss.qualcomm.com>
Date: Tue, 27 May 2025 22:59:11 +0200
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
 <c7d5dbab-0a51-4239-811e-dc68cac18887@oss.qualcomm.com>
 <DA72DKCKVX7T.269HYJZNIABOB@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DA72DKCKVX7T.269HYJZNIABOB@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=683627a4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=LxWmpggGlPGpR5rMoasA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: PL1DPxXaeVNZjm092HbekvM6Pve8UhKd
X-Proofpoint-GUID: PL1DPxXaeVNZjm092HbekvM6Pve8UhKd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3NyBTYWx0ZWRfX1r9HdmJAFNPl
 Ny06sYgkqS2HjA45nJbrt8K3WOm2ajclgd2ak1v4Fk4OPMg9oNCA6+ICat9dMb9s6JtmMRgluio
 CN/vrhvIDj6zlK4aoZFpFLom+zf33FFLe9bAGmOXa7TE3qY4N6uFiG80wbGveu1/5uU8W7sgo6y
 ql7IZEXT1mD+c/FkD3/LUZS45Anbf61e5iRFDO7aAzMITWgJ776DKBVtAwJ0QInphWPU6wNMgEI
 0kBoV9X5ZVBxwGAzca9CvvmX2BnW3dVgCbrJfV+5YPQjD73pkjdEfIUoH7txBlK1vmIOkcbvIcN
 d2WRb1OSSpMDrMTG7VSvhQoDD8SJ5qX/ArGQ4+zsAxupfK9Z6HcL4xc6dtsChb0Afwx3n1nslfp
 blzZWEjSFh2uv6IEr1H8Cbq+PMBgSpERDcJazzjkfXIv20Ic5haRmJScgOSAn9M9nYOms8HY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270177

On 5/27/25 5:55 PM, Alexey Klimov wrote:
> On Thu May 22, 2025 at 7:13 PM BST, Konrad Dybcio wrote:
>> On 5/22/25 7:41 PM, Alexey Klimov wrote:
>>> One WSA881X amplifier is connected on QRB4210 RB2 board
>>> hence only mono speaker is supported. This amplifier is set
>>> to work in analog mode only. Also add required powerdown
>>> pin/gpio.
>>>
>>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 26 ++++++++++++++++++++++++++
>>>  1 file changed, 26 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
>>> index 6bce63720cfffd8e0e619937fb1f365cbbbcb283..4b878e585227ee6b3b362108be96aad99acba21d 100644
>>> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
>>> @@ -270,6 +270,24 @@ zap-shader {
>>>  	};
>>>  };
>>>  
>>> +&i2c1 {
>>> +	clock-frequency = <400000>;
>>> +	status = "okay";
>>> +
>>> +	wsa881x: amplifier@f {
>>> +		compatible = "qcom,wsa8815";
>>> +		reg = <0x0f>;
>>> +		pinctrl-0 = <&wsa_en_active>;
>>> +		pinctrl-names = "default";
>>> +		clocks = <&q6afecc LPASS_CLK_ID_MCLK_2 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
>>> +		powerdown-gpios = <&lpass_tlmm 16 GPIO_ACTIVE_LOW>;
>>> +		mclk-gpios = <&lpass_tlmm 18 GPIO_ACTIVE_HIGH>;
>>> +		sound-name-prefix = "SpkrMono";
>>> +		#sound-dai-cells = <0>;
>>> +		#thermal-sensor-cells = <0>;
>>> +	};
>>> +};
>>> +
>>>  &i2c2_gpio {
>>>  	clock-frequency = <400000>;
>>>  	status = "okay";
>>> @@ -736,6 +754,14 @@ wcd_reset_n: wcd-reset-n-state {
>>>  		drive-strength = <16>;
>>>  		output-high;
>>>  	};
>>> +
>>> +	wsa_en_active: wsa-en-active-state {
>>> +		pins = "gpio106";
>>
>> Are there two separate enable pins? Or is the powerdown-gpio something
>> else?
> 
> No, should be only one. I think 106 on tlmm is wired into 16 on lpass tlmm.
> We need to assign gpio function to such pins, aren't we?

Well, we can just poke at them from lpass_tlmm

Konrad

