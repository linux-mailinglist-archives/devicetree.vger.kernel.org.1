Return-Path: <devicetree+bounces-243480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF52FC9810D
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 16:35:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1E7184E19BF
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 15:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EED53321D0;
	Mon,  1 Dec 2025 15:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DXeGASKW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DJt86Upu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF25A3321CA
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 15:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764603332; cv=none; b=UkSVIubmeS55YD1QyrDu0iz0dxtkBjouaFz5nmjgXxS3aFtOIRIrKuztmfd+BrZO17M2Sk6XRnm7Z6hHVIrYyDKXGGxFbn5XyuVJhSh/iYtkztUo8lxBjgs6a9XPOq6/M6id4/SAizqKBrm3/+IwAc3XJnKAfoEFEaa2rsVlo8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764603332; c=relaxed/simple;
	bh=tL5e14DVKiDBpXvEaAFJZ5OEe1sjmeo0BOq7BoEIVWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=thikeqTgWecivSjDEYf9QAx4TrKZgr0x/vBVCNGCgFhznuoYF34x5ql4s7mTFc6SDD/lvMysdmhoZyrbc9o0pSXGm625nP9zNINEEy5P5pJxQsGqXitSjZIeoAtklhvaqs242UhVHLNaiOQeGeuun0jKXT6+UwbIjnVFG4yuso0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DXeGASKW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DJt86Upu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1Ax93G343604
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 15:35:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OSdFlfJg6fygSR4AfKJokJCbi6KfBDtyaRTR4r1LbAc=; b=DXeGASKWxKq7m0SM
	TRWuWF5TBz3ya3tuBY5pCz6Uf0HNLr2YCTdewlN4P24Cz5j3Lqs5UHKfzRbwo1Sr
	6OgBaa+HgHnorfVqzBdkwquNmGx2IpmIPkagyCjdphxg2elvGldBzhkqSFBA2Zi5
	dLs6pWIXCuFhUFhe45qL+UDfckivCGJutEzRsZIYH4YbMraqIk5qagoDxfYEmbkX
	gCymLfvy0pQeApmbXyq6YTNTE5CLy86kCJytmu5eLOhj65vgL4FdofQZAwL6f2mB
	GQV3+RCjWBSy69LU/9LbwWbsOVX69UmtJLbc3fNuiRBubmK0r5Err09sZxjfxNzK
	UMBHuA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as9re0rvt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 15:35:29 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-93728a29787so111637241.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 07:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764603329; x=1765208129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OSdFlfJg6fygSR4AfKJokJCbi6KfBDtyaRTR4r1LbAc=;
        b=DJt86UpuJl92979yQ/cYwYEHy8SmBPA6NL+LnFHIj5E1NrG/I5YpYHW1wnZgxom2mJ
         pRF3NGDchMw9ifprOyVEqul3t+j17u/GrTGVKhjJN0kSbPUoIbqjxjuj7Y95t2Nz44/o
         SgB9sTXC6zFweIVNkBuTHK+BlUYRMaDvM3R2d5HcU7/a7zU/JnPaQIINKSne/O5BVU/O
         F83O/JYh7HvebM0+ESyDPMmfkZ4KpjEuoS4sZ4+VrQ260w8LYf/ab6RbMeXcGOzxRBxN
         X7Iz3rAJ+moh+H7qrAsWoAGmJq9jiQjDgWZdA6/YK2zQ8gZ6UkBj1Q/DLPCP9ArrY8Uo
         DmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764603329; x=1765208129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OSdFlfJg6fygSR4AfKJokJCbi6KfBDtyaRTR4r1LbAc=;
        b=RQBUPsXozGyOjJdiYnGOT+QpOPLr25CqFi+TvfY3mEL5Z9pkpSPv+679jIctMfvTSI
         bCm4Gerben5StyWJA5RAzZC+nnkMwjD956qQ+xnGeg0tqhbfoAFW/5CZShpW/cavGs4F
         faQxRNGSnIvPyagDOmvjR6xaZ2kLAnrL83Tt+juOOnVcm1bm0EtCEZMTuqHohS56cAtD
         c7wPEJMLMlZnrxwsOb5l7JKQ52SvPOQnxwC+tdAkVqB9PHadOH/3RWht9o8ci/uNvEYh
         RPg09mE+Q+gHGejKb6EYadUanYaL4xoxn+e64co1NgvYznNPZdhpMIp3Wu7tOEecElzJ
         LzWw==
X-Forwarded-Encrypted: i=1; AJvYcCU4867f/gRElf80YIK0HQ8RYZHEC5l8sM3pfstDTsgGPzkH4gFyJF34w1OhcILHgGkOL1jYPRwGuy6o@vger.kernel.org
X-Gm-Message-State: AOJu0YyY09WK+Z5j6QaEHO7mCNVF8MQ6PAH+0db/3hx/71fRMgkbU69r
	H2u3Dygn/s/A9O5S9MjOyz/DQanEFfB+kzTq8ycEUSKOJT7ps4/EHDjeqvQ2WAn6d7y8SnyAj42
	43zJnHr3SJbhQHbkXTCnXv9fDpM5slzqi+K+oHMVC5fnxwXkUY2nslclO02AJSoxW
X-Gm-Gg: ASbGncvZhuADxFOUUxiLo4pjh067aFjJYZlHdF/O1SWHJmWINOMVen1YuSoDjnpO2oI
	vkVATyzVXcqK8nEuS086gFAdLQQQPwYUdQX51StYtrT0uiTgqVsjMk1ytVOgbEXScEcMrWha/T7
	+YOd+F2Oero7r40wFt93g1ju0hjJySVx22F9SASERAMi7zfhOqVwVr+JB6slbNhGvV9rWy6t5lU
	5Lh+gAR73KnG+ND08uW6+jCoxlJxKU3HUA1gMJP7zEFD4vDy51xUZVq+hJjFe9ZUy+O3AqB9Pk0
	QooF5jeZdmXtIPmotIIXbqaMW+qGBo8EpAjFyuni6MC+wL0qkF5VrNrQfRKUZC1kFpJoT+5W2yu
	GAHzBpFrfiOvRIy2djrS30N9Cx90UvaSI2hW7+XKaupTXwpTVYL3Bp894zle89sw5ecQ=
X-Received: by 2002:a05:6102:f96:b0:5db:cc92:26ee with SMTP id ada2fe7eead31-5e1de35cf2bmr8930131137.4.1764603328623;
        Mon, 01 Dec 2025 07:35:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsjTfhZJ7Z7XDoLd1ax9q9qP5u3h9164L7jlabzwPziATWGAVKEVLRYhouWGN4sCO0X0pbdg==
X-Received: by 2002:a05:6102:f96:b0:5db:cc92:26ee with SMTP id ada2fe7eead31-5e1de35cf2bmr8930088137.4.1764603327342;
        Mon, 01 Dec 2025 07:35:27 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59e8612sm1209835066b.52.2025.12.01.07.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 07:35:26 -0800 (PST)
Message-ID: <ae91cad5-5a0b-4c83-9eb0-6e7baf6a33d0@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 16:35:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] arm64: dts: qcom: Add support for Surface Pro 11
To: Dale Whinham <daleyo@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?J=C3=A9r=C3=B4me_de_Bretagne?= <jerome.debretagne@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251201011457.17422-1-daleyo@gmail.com>
 <20251201011457.17422-5-daleyo@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251201011457.17422-5-daleyo@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEyNiBTYWx0ZWRfX/zbSS6mm5e9n
 AvlB4ALOGONq7mMiv6Gpfs3XB+LHCP+szHzI4Lhdwr4OsQUApiPDtNEY1cJPf3MaBnYg6lnz5ql
 Nr7A0JcmGoFVeGr+Y6DznF90AQDxkj3gZqqEo94O2mgemL8LdTzcjUGp67ppVQIw/6OMxQdbyoI
 Liokf9oZuzAPLDHrZwOmZdrDKZTNpgLHJ0d2eZmMPt/tYR9NglPmqaaiV7vn6Q8HpfOKLi+9fd0
 bqeXSDO0nBuk1HmlzO6z48ldPbqGIdezQ55/mQT13PITbumVEUbJJebjKiXYDzqpqnTMk4D8eQb
 dvs8EAoSGdUoDVeo7ripX2xpRw2SviWA1gFGE7eyXv/P1XqkY8MgMDVNvbJtqMlMk9UxWDCZB9c
 Fh53d82Xd7TipZih3e2OKeOM5keOKQ==
X-Authority-Analysis: v=2.4 cv=MNptWcZl c=1 sm=1 tr=0 ts=692db5c1 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=1mBarluwAAAA:8 a=pGLkceISAAAA:8
 a=E1kxXXJYvyZ95uorfa8A:9 a=QEXdDO2ut3YA:10 a=1WsBpfsz9X-RYQiigVTh:22
 a=o8qfD6Mr5H-_luWk-5BF:22
X-Proofpoint-ORIG-GUID: Ndi3lh3n07Mu9vQrbS1ve0jYjyIVwRRR
X-Proofpoint-GUID: Ndi3lh3n07Mu9vQrbS1ve0jYjyIVwRRR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010126

On 12/1/25 2:14 AM, Dale Whinham wrote:
> Add device trees for the Qualcomm X1E and X1P-based Microsoft Surface
> Pro 11 machines (codenamed 'Denali').
> 
> This device is very similar to the Surface Laptop 7 ('Romulus').
> 
> Use a similar strategy to x1-asus-zenbook-a14.dtsi so that we can create
> x1e and x1p-specific flavors of the device tree without too much code
> duplication.

[...]

> +		pinctrl-0 = <&hall_int_n_default>;
> +		pinctrl-names = "default";
> +
> +		switch-lid {
> +			gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +			linux,input-type = <EV_SW>;
> +			linux,code = <SW_LID>;

I.. don't think this device has a lid - what triggers this GPIO?

[...]

> +	/*
> +	 * TODO: These two regulators are actually part of the removable M.2
> +	 * card and not the CRD mainboard. Need to describe this differently.
> +	 * Functionally it works correctly, because all we need to do is to
> +	 * turn on the actual 3.3V supply above.

There's not a M.2 card, the WLAN chip is soldered on board

https://www.ifixit.com/Guide/Microsoft+Surface+Pro+11+Chip+ID/174016#s370945


> +	sound {
> +		compatible = "qcom,x1e80100-sndcard";
> +		model = "X1E80100-Microsoft-Surface-Pro-11";
> +		audio-routing = "SpkrLeft IN", "WSA WSA_SPK1 OUT",
> +				"SpkrRight IN", "WSA WSA_SPK2 OUT",
> +				"VA DMIC0", "vdd-micb",
> +				"VA DMIC1", "vdd-micb";
> +
> +		wsa-dai-link {
> +			link-name = "WSA Playback";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
> +			};
> +
> +			codec {

'co'dec < 'cp'u

please flip the order of the two

[...]

> +&i2c0 {
> +	clock-frequency = <400000>;
> +
> +	status = "disabled";

Is there anything connected to that controller?

If so, let's keep it enabled so that it's accessible through i2c-tools
It'd be even better if you could document (in a comment, like in romulus.dtsi)
what and at what address that is

[...]

> +&lpass_tlmm {
> +	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
> +		pins = "gpio12";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		bias-disable;
> +		output-low;

Please drop output-low from both definitions, the output state is
controlled manually by the WSA driver. Although from the diff below
it looks like spkr_23_sd_n is unused and you only have 2 speakers

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <44 4>, /* SPI (TPM) */
> +						   <238 1>; /* UFS Reset */

Please ensure your tab width is set to 8

[...]
> +	cam_indicator_en: cam-indicator-en-state {
> +		pins = "gpio225";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	wcn_sw_en: wcn-sw-en-state {
> +			pins = "gpio214";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +	};
> +
> +	wcn_wlan_bt_en: wcn-wlan-bt-en-state {
> +			pins = "gpio116", "gpio117";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +	};

and here (+ these last 2 entries are out of order, GPIO num-wise,
please adjust that )

[...]

> +++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-denali-oled.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2025 Dale Whinham <daleyo@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "x1e80100.dtsi"
> +#include "x1-microsoft-denali.dtsi"
> +
> +/ {
> +	model = "Microsoft Surface Pro 11th Edition (OLED)";
> +	compatible = "microsoft,denali-oled", "microsoft,denali",
> +	             "qcom,x1e80100";

Are the OLED models always X1E and the LCD ones always based on X1E80100
and LCD models always based on X1P64100?

Konrad

> +};
> +
> +&panel {
> +	compatible = "samsung,atna30dw01", "samsung,atna33xc20";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/x1p64100-microsoft-denali.dts b/arch/arm64/boot/dts/qcom/x1p64100-microsoft-denali.dts
> new file mode 100644
> index 000000000000..7c064ad49395
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1p64100-microsoft-denali.dts
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2025 Dale Whinham <daleyo@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "x1e80100.dtsi"
> +#include "x1-microsoft-denali.dtsi"
> +
> +/ {
> +	model = "Microsoft Surface Pro 11th Edition (LCD)";
> +	compatible = "microsoft,denali-lcd", "microsoft,denali",
> +	             "qcom,x1p64100", "qcom,x1e80100";
> +};

