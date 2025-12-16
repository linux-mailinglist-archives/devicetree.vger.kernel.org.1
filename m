Return-Path: <devicetree+bounces-247063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCA5CC386C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:22:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A64F93030D91
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6F8343208;
	Tue, 16 Dec 2025 14:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VjiYlayn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fDFx3W0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD31224A078
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765894957; cv=none; b=I5pX2wY090e6kVZYTSFUi8jxiMDRt4+PwrSbXCbQHB4Iv/JrCqIZt3euSfk4tN7ANWZV7L1PrvrrV+h6t3dpLaQUCZReug28QEYoWZZM1oouFgmf11Zc4wXM4fm382QeikmiLHSkCv/H24cvOltE68J553Ekun4NtKqxWvEwTaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765894957; c=relaxed/simple;
	bh=21lQSgX90nhGAXGoIabtkjhGUFu63TTGA+NcJTHAOno=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hFuaeaRh3LDQZ7HJbyYhn2jEtzlX9rUyqDDAGM/2TB5SewUZr45H7Gpe4Ki4RiZbkC2mWjkUFXEGYwYkYcTZ5D+bAFrYNUrHXDjNFReXFZKDYU8S0qoUaLrLqARRQ68+XzG+gCfIcKmcX5YFMtNHElMxTf+mIG6v2OxPmdIgNzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VjiYlayn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fDFx3W0R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGDhdBY3745795
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:22:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	156EH/S/vVw7Ol/2OTcRw1i67IcJhD/ch5+/EbHER1Q=; b=VjiYlaynVdQP1jHV
	TU/Yyx5DIBetkxuBYRvPM5GbxHX9rpSScFY7i/vtkzee/bC7HXAES4+gbUZd0yP7
	fiQ80d5WXa5svNvFzJvtOWGcnUaBayh4L2ZdPtRdrMthA6ZXMXS53EB3iztr9ySa
	FCjK3r3w6zng5guRlPv2TAVahRA8JJ76AaBUZ9qcLkUXiqGC+Au8JwZisKiSxpAt
	G2y4pSRkLQ+WoIngaHPHPlG2DkPLLgRajpLppkjzzoHpcVZktk0YCLqYyWa9A+0t
	bFVfQxH0tK1czrxT+VXmuGK+/PJC1kWmUm6PmwPV/Ib1ELr/geqNHVkcbh6sXlvD
	D0qzoA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b33xj1ars-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:22:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1aba09639so15396421cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 06:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765894954; x=1766499754; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=156EH/S/vVw7Ol/2OTcRw1i67IcJhD/ch5+/EbHER1Q=;
        b=fDFx3W0Rd2AAPU3nP9D+1PbmOF9nuvUy9eYZ973g6VjMWLL9ft17EzryyTEGJKDet7
         4O51s9PeHgOghENpDwLt2u7M6uYZVpVQD8q+pPCPHtXOG4X/C8a4c9+T4yX07F0vY6Y5
         LK+dtLQ+wppPIpWgTc6T0ff2wK1x/lXQbBAuP7PNxkdoqYRt5J+xGFR8ZSH3S212SJlm
         c0cvnkZUBe3aSZ6FlZlMfjZPjfmaf/mdEyMHTteyM6R6PoUIpm940Gyg9s15mDOOe9UF
         0/gYGyjEFC1CDbCilATx5eB2lqpuBOX5Krqy/b8cwjDt4UAMe+9hJGRBqeuhddZg/HKH
         Zhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765894954; x=1766499754;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=156EH/S/vVw7Ol/2OTcRw1i67IcJhD/ch5+/EbHER1Q=;
        b=HfJLyyntYy9b9KaklpdYOZAX9hZOBGqo2CtikleXac9jxnXubyNaJgJ7V2f01vPF1J
         v//jFHv5+qRyJ4/SiWr3lOG+bWUslJtZqF3mrkRztmn0DKj1v4FQfc5xKAZqpPHY0mbV
         NNB26Dyb/W82sldt5dIRlQmTnpXy6ysLUm6QNjOw04hj351NBBPAlMoIRkzBULhTWmMJ
         rW14++pHFmHlME3j1RSKJ84omx4KQ/qHJ0AksAM6PuTXegeseA65OcTDPserSWdtr4M6
         vHcLPpsuyYz+lpFAPrIgtfJzu3NQRTqmzTbYQx67nuDUrXItQEXZJQqaxQAspigy8ot5
         w48w==
X-Forwarded-Encrypted: i=1; AJvYcCXFwGyg8j5IZjjf3D0cVRldu887ktEOvSgKClExaBIuH7EiAHhrHO3eyUmmovxUDBJ3/RonqbUjWMP/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5EhTLZ2qnjj56yk3X4fByP8BDFuzCRBxthOLOlyqvHnNle4nI
	mRhpcjk1LD4ldgIQZY/A2K4QKJoGfo67U5M37ucG6jtkR4zqQA256V7z/P69+jlrIFCdQbzLsyL
	lxbZUHTw/SZ++hn1VIVi6an8vGDxvdy5u6TaZ9/6pUyYb7WU9Wn2gB5NkowZnPpXd
X-Gm-Gg: AY/fxX4QAj01hu4O+h6Z27ZNljqA1YB24LJOQl8qFmErdN4les/dHp7MIE5hzw0033d
	iarJZJXtoHsWbydu1VGWS9/4bAf+L131B3WFT5sbtfFd3xa0Xvvdn/+zFAxylTk6K2y4vNhk1K3
	GD0A6QGusg5f7+Bkt0pShlpm492ZSqYEjc4crqJnGJnnGZnZhoWx6r89k36mmn5IFC8rFpcAUDk
	kBFwMHJkzqaMg1ZyKeaB1TBoScI5QyZBKJgnNcLU9/IRNBDE24+wTvZzGtB19eMF4rDVY3ZbBRf
	bPXi98MlEfW5/Py4P1Az9lN6VmWKQT/KqdyHkfCm0Lw+Y7SD314hirh1Lw4db9QY+U8/jbQpASA
	YAWxu0ebvZlGez0FzuPkTm377Lw/JySp5CA9c8Wkwx6Cy2DGoOjhrq7NmOEaiaDi1YA==
X-Received: by 2002:ac8:7d13:0:b0:4f1:be94:a2a8 with SMTP id d75a77b69052e-4f1d016f9e8mr138532021cf.0.1765894953643;
        Tue, 16 Dec 2025 06:22:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGLka2aPm5kcLMw81Glj5wcqGXzKV+fbovovPiWq46VkUyXjutWSMKQIVx5nuNvfrNPXYI43g==
X-Received: by 2002:ac8:7d13:0:b0:4f1:be94:a2a8 with SMTP id d75a77b69052e-4f1d016f9e8mr138531681cf.0.1765894953151;
        Tue, 16 Dec 2025 06:22:33 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29e060sm1739241466b.2.2025.12.16.06.22.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 06:22:32 -0800 (PST)
Message-ID: <821a7dc3-7b00-40d1-9332-ef57ad22f9ca@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 15:22:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt Add PWM vibrator
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251211-expressatt-vibrator-v1-1-41bdc47217b2@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-expressatt-vibrator-v1-1-41bdc47217b2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zMHdOr_psNCkRU3r9Aa0djO1bN0Jfs-v
X-Proofpoint-GUID: zMHdOr_psNCkRU3r9Aa0djO1bN0Jfs-v
X-Authority-Analysis: v=2.4 cv=KtNAGGWN c=1 sm=1 tr=0 ts=69416b2a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OQN141zOAAAA:20 a=pGLkceISAAAA:8
 a=t16J-YH1rFAZ6FeKiOcA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEyMyBTYWx0ZWRfX4mRWVVkI/0y6
 5RK1f0LQj5Fs7NZ0lP9P8ErdN/ESoQRvBQBdr/V5Xh1HdxJv+CRk+UVuSJ+DdiZq0rzcAn3ZtMU
 5EAFVDYcG7dwIkv1OpVPIxnhGKv3biS+G3uCF9g+sBN3QmNRrUzoZKL2ePM09rIWc83guVx/2UT
 YdipYPKcedQw287b3pHUCiuCe8d8K2AZCZbDsCwgdOIDAjMZxo3bsVdY9XWXWgxYR9ffYE7kx6H
 qfBpQ3tuc1B5n6emcdKHOQX8OuL2BZ9UxDrhRF6Ba2PRZs4uPMDx13I3bl2U+CQB0+/CdwFOp2c
 PNkOAjQVxajBSlfZ9/wu9jSpvbi58VzNWEV4MzbLFYrPmnWjIW469lBt7Mvq4y3sQeuzSpIh0rI
 HSdZwWTJQGDNMPYu6AYVshHHe8W/6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160123

On 12/11/25 11:23 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add a pwm-vibrator to expressatt. Currently this vibrates only at 100%
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
> Add a pwm-vibrator to expressatt. Currently this vibrates only at 100%
> 
> Link:
> - https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/arch/arm/mach-msm/board-express.c#L1767
> - https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/motor/Makefile#L5
> 
> Test:
> =====================
> samsung-expressatt:~$ dmesg | grep vibra
> [   79.892226] input: pwm-vibrator as /devices/platform/vibrator/input/input4
> samsung-expressatt:~$ fftest /dev/input/event4 
> Force feedback test program.
> HOLD FIRMLY YOUR WHEEL OR JOYSTICK TO PREVENT DAMAGES
> 
> Device /dev/input/event4 opened
> Features:
>   * Absolute axes: 
>     [00 00 00 00 00 00 00 00 ]
>   * Relative axes: 
>     [00 00 ]
>   * Force feedback effects types: Periodic, Rumble, Gain, 
>     Force feedback periodic effects: Square, Triangle, Sine, 
>     [00 00 00 00 00 00 00 00 00 00 03 07 01 00 00 00 ]
>   * Number of simultaneous effects: 16
> 
> Setting master gain to 75% ... OK
> Uploading effect #0 (Periodic sinusoidal) ... OK (id 0)
> Uploading effect #1 (Constant) ... Error: Invalid argument
> Uploading effect #2 (Spring) ... Error: Invalid argument
> Uploading effect #3 (Damper) ... Error: Invalid argument

Looks like this is because GP1_CLK does not implement .set_duty_cycle..

The downstream driver you linked to does so in a terribly hacky way
(from the vibrator driver and not the clock driver):

https://github.com/LineageOS/android_kernel_samsung_d2/blob/cm-14.1/drivers/motor/immvibespi.c#L53

Upstream, we have an implementation for clk_rcg*2*_ops, whereas 8960
uses clk_rcg_ops.

They look very similar though, perhaps you can hack it up..

One thing to note is that you're passing GP1_CLK to the clk-pwm (as
you should), but we need to do clk_set_duty_cycle on its parent,
GP1_CLK*_SRC*. The framework will take care of this:

```
--- drivers/clk/clk.c
	if (!core->ops->get_duty_cycle)
		return clk_core_update_duty_cycle_parent_nolock(core);
```

so long as you add CLK_DUTY_CYCLE_PARENT to the child

[...]
> +	/* TODO: Vary the frequency besides being 0% or 100% */
> +	vibrator {
> +		compatible = "pwm-vibrator";
> +		pwms = <&gp1_pwm 0 54347 0>;  /* ~18.4 kHz */
> +		pwm-names = "enable";
> +		enable-gpios = <&pm8921_gpio 4 GPIO_ACTIVE_HIGH>;
> +		vcc-supply = <&vdd_haptics>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vib_pwm_gpio>;

pinctrl-n
pinctrl-names

please, both occurences

> +	};
> +
> +	vdd_haptics: vdd-haptics-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_haptics";
> +		gpio = <&tlmm 47 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-boot-on;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&haptics_pwr_en>;
> +	};
>  };
>  
>  &gsbi2 {
> @@ -241,6 +270,21 @@ touchkey_i2c_pins: touchkey-i2c-state {
>  		bias-disable;
>  	};
>  
> +	haptics_pwr_en: haptics-pwr-en-state {
> +		pins = "gpio47";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-low;

Drop output-low, the driver should take care of setting the state

Konrad

