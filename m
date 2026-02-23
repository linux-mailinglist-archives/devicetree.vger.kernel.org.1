Return-Path: <devicetree+bounces-267307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKe5EpManGkZ/wMAu9opvQ
	(envelope-from <devicetree+bounces-267307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:14:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 846ED173A77
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:14:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C0F030EAE84
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 09:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F3D34E745;
	Mon, 23 Feb 2026 09:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ULa9g2EQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZRWr4vET"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036FA344DA2
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771837659; cv=none; b=WoC2+7sbNuX8MbqbhesESlwhE4hiD1d0O1cJF/fJxnKqtx6FNKr8qjZm66htZMxNks1vRMoJJal1EDM3EIX84qCXQ4LSjhrNWU4qABd3mZ5zajvnz0KcltuFGROLTvwmlaCe3SfwJO8Y16dU4uXrfzGUE2H0FLOAraDZDTPXfEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771837659; c=relaxed/simple;
	bh=zA1BeXhQdtW1QR+mRUEiee3Jg5g6Fdj482GgldGzhbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k2fRuZ+V+QBkA29swtrDfyo2KqdcAkKgL4BFzxQFsmMnSQqcbogaWj+Mrxit0bfSbkesDIUsWtC6THAVEP18k2OXT3zVN5vPl4P4LZP4aDSwMrwc5o+6Qf9fL2PPSF2lDtNcOZeUU4dg11njxkF0xLxh5m7wrOmUMjGtFfvsnBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ULa9g2EQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZRWr4vET; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N8hS2o766639
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:07:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yrr1pmmPZi1Uq+KJFYbh2hBj9DnfGjKAVs869o7hzPs=; b=ULa9g2EQeFWEYBhS
	LvgvZ5Q1W9W4H2e0C+i0HMkCpw1/bUv4rImhqALlqrkYjDQEfWvV6DsDlqTDsq/O
	rIPUpHVaYvF53iT3tX84r2K1f4DcuSB/44EBQQenQ5NzRp/4cDPgmE1G1+o2zg9Q
	9gqI6IQCxeg5JuD2T5GyHGqYizRfJMlSFpfGCdzBVSQ8Vy3c/Rzhw8LsbpQK6zFK
	oRAyoZUHIr8KK1wSoq8QXMU+1btDgfW6I+ektIyoL2j+b55tc4lyZJvua8uuBiyk
	8HX1s/RyY8BFN1AOZJIxYKlGI1NVBrtlKeIOSCWFgqXoSilkVYYIZKgV62Kauxyz
	nufbxw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5x7v3wd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:07:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb45a6b860so362305185a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 01:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771837656; x=1772442456; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yrr1pmmPZi1Uq+KJFYbh2hBj9DnfGjKAVs869o7hzPs=;
        b=ZRWr4vETU5Lkle3ZWgb4EVQxPysSohnTmWnmD/f2gfb62c3FBitypUoUGb95QkFjtG
         VOHA0cADpz4zrK/0EjcezccyjACnhI4jeQb90bZzWuIpJe5qGaVxGFmMakJPxr/EdaaT
         6Q5Zhcpza6IRPgvezLSnMixqA1Q8tWGgtOjeLzO0DlzKRR0jkZC/XJfSvmWJ2asQMK1x
         pnbYaSbUbTUcQwa4v7eTAoetsVJgcXbXRybxr97Ab0bH2nLh/PnSRjpPYl7t3GDrc5Ek
         0/gjC9tB9w4vAGHmyIRdOLcvoB0xPvQHXFEFldJj05SarsOVoflG1KNdlQ3kHwIR+3Nv
         ovzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771837656; x=1772442456;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yrr1pmmPZi1Uq+KJFYbh2hBj9DnfGjKAVs869o7hzPs=;
        b=UI+LDZEu+Ph4KI1cPMighLM2+w02+em2Nqk6CZR4P49TUmarBac8y0QXo+1FLnwW3+
         P9w+2V1QbpzRIy0Zr5z1sAaJ5VyWXLZxovwptf4j3MSPqZR4+xNcZqT4YYxmuP4ytGtJ
         IonF+eZyL9+e0rfqqmNwvfriVbWjft2UblTEeXgyt6P3Irs0QdstOnpPUIIBhQy3KuLD
         k8h6oTuKNR0zuLvx8wQdvUQ85T0iNH2GJgIaQvMkAQo9M3WCAVdf5CoAYBBwnyz9QON8
         Raiwgfewq5ofqYbvurfSeyC0bjj195CCn4rBCJPgKfOibCJmuHqWYcX8kxcPs66TQhgv
         bF+Q==
X-Gm-Message-State: AOJu0YwOz+aU+TTTvMCWvVA7epPFtrWTjLtpxdLpAE6MxIz7kzjM8Xfm
	Gclo5NCf0id1yWwMhESVdqPCnoTSbHpkfz6j9+a8jHuJjCPxwKZQx18V2Dwre/5Z+xr6N/MfuPV
	vEpCP5rEXnICIsVsrfrt76TwzebG31SEL5dng5H0YGwSpxYThwwrg4ciXHvGjtowB
X-Gm-Gg: AZuq6aJ49E9Gg7HP+hhKlrN8uoSl38iEvwmGO5nCddTNYZaGpFhMWyYpXUaPDxudq5A
	nvGipNC1y4y96Ookl9zK0SeghPAU226oX+HF2kSw706VNC4D3Y8Ngzyboj8A1d/xTpPkWLb52QJ
	bZlaYAMee4Ad76dKn5R+TTwFtsVGUX7oZ3auMOGQD67fh1GpY7aQiFES7mSRDN5PO8eR31490vA
	/KPsJgUZF16RHAeezCtwrhcVtg+zc27LSNEgkb4kiWV4Dz6BcshskUL7YZCtiuINNzXa2qYYLGd
	uG6l3+/hqcY6UYxC2PuNrnY3SbH+CQr8g3Xf7t6U8l3Fd1T8GZVRCDxNXEhkLzsid8WYdfwh8b+
	dnUCJVsia9HFVWGdysFEWXr77xkwW8XVg5ro79uNUBPgD3YV9xRYG/bmn5ec5PsdI8jCnbjFpkW
	jXSuo=
X-Received: by 2002:a05:620a:170c:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb8ca924f3mr753421285a.7.1771837656289;
        Mon, 23 Feb 2026 01:07:36 -0800 (PST)
X-Received: by 2002:a05:620a:170c:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb8ca924f3mr753419385a.7.1771837655742;
        Mon, 23 Feb 2026 01:07:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084f18f7asm303345766b.66.2026.02.23.01.07.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 01:07:35 -0800 (PST)
Message-ID: <5d3efb0d-96a7-4ce7-9622-88152715656f@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 10:07:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add
 initial devicetree
To: adamp@posteo.de, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260221-wiko-chuppito-v2-0-6336b1b12389@posteo.de>
 <20260221-wiko-chuppito-v2-3-6336b1b12389@posteo.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260221-wiko-chuppito-v2-3-6336b1b12389@posteo.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4MSBTYWx0ZWRfX78lMQ8IDFK9/
 V7SPaEmI3dEcf9oA6EPhRWJwk/ZNQxVR40ARN4/4G7hrEU52gl0Gw5ccNbYrZBGE9a9huTwMMS/
 vkwb9FDFSi6GNJUeIcRj0BBvorJvawxoyJxbG4CxGhqglW44NB8MAQpzUZiwxks76Ag3CU77Gtd
 W0EY/2jrtlMnxt1nkUaigvzUbPgha9v1PhzjnUZKqVFocrN+aeisIWwTn/Q7ZkJl1botwt1OF41
 dAhRChaZY4z8UUk9s7Yfas6C3njCP2ueup6IL6Q2CSO9Tae3oUCcxSszyOZTHoXuBhFxmn9HT0s
 mnUbOuKwEhZVxYLIe8k5mDGu18bDIzqsKwGQLGRFFsfi1up5Ooe668SZCSnIrGMAQLz5cGLH5WR
 IsUki5HDh3C1DqtC47PFsAitBeieXwTsC2wCIaDqTxkT8Jcf2Z+f6jO1LItxu2qZvlLnvhnRQxM
 fzf1gUYBPQ3XLGJYfCA==
X-Proofpoint-GUID: 8mMOCbxd7-Ypngr0LOu78196vR9juL67
X-Authority-Analysis: v=2.4 cv=X71f6WTe c=1 sm=1 tr=0 ts=699c18d8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=OB9DN5_9geIfRXgfTJoA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 8mMOCbxd7-Ypngr0LOu78196vR9juL67
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,posteo.de:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267307-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 846ED173A77
X-Rspamd-Action: no action

On 2/21/26 9:55 PM, Paul Adam via B4 Relay wrote:
> From: Paul Adam <adamp@posteo.de>
> 
> Add an initial device tree for Wiko PULP 4G.
> Includes support for:
> - UART
> - USB (no OTG)
> - Internal storage
> - MicroSD
> - Volume keys + Power button
> - Touchscreen
> - Backlight
> - Accelerometer: Invensense MPU6880
> - Magnetometer: Asahi Kasei AK09911
> - Hall sensor: Rohm BU52021HFV
> - Proximity sensor
> - Vibrator
> - Earpiece
> - Microphone 1
> - Headphones
> - Wifi
> - Bluetooth
> - GPU
> 
> Signed-off-by: Paul Adam <adamp@posteo.de>
> ---

[...]

> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pm8916_pwm 0 100000>;
> +		brightness-levels = <0 255>;
> +		num-interpolated-steps = <255>;
> +		default-brightness-level = <255>;
> +		enable-gpios = <&tlmm 119 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&button_backlight_default>;
> +		pinctrl-1 = <&button_backlight_off>;
> +		pinctrl-names = "default", "off";

"off" seems unused, this should be "suspend", however the difference
between the two states is already handled by the enable-gpio in the
driver, so you can omit the second state

[...]

> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +		pinctrl-0 = <&keys_default>;
> +		pinctrl-names = "default";
> +		label = "GPIO Buttons";

Sorry for not being clear, I was okay with the gpio- prefix in the node
name, but I intended to ask to remove it from the label.. 

> +
> +		button-volume-up {
> +			label = "Volume up";
> +			gpios = <&tlmm 107 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +		};
> +	};
> +
> +	hall-sensor {
> +		compatible = "gpio-keys";
> +		pinctrl-0 = <&hall_sensor_default>;
> +		pinctrl-names = "default";
> +		label = "GPIO Hall Effect Sensor";
> +
> +		event-hall-sensor {
> +			label = "Hall Effect Sensor";
> +			gpios = <&tlmm 117 GPIO_ACTIVE_LOW>;
> +			linux,input-type = <EV_SW>;
> +			linux,code = <SW_LID>;
> +			linux,can-disable;
> +		};

[...]

> +&pm8916_pwm {
> +	pinctrl-0 = <&pwm_out>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&pm8916_resin {
> +	linux,code = <KEY_VOLUMEDOWN>;
> +	status = "okay";

Please add a \n before status in nodes where there's more than just
that property

[...]

> +&tlmm {
> +	button_backlight_default: button-backlight-default-state {
> +		pins = "gpio119";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	button_backlight_off: button-backlight-off-state {
> +	     pins = "gpio119";
> +	     function = "gpio";
> +	     drive-strength = <2>;
> +	     bias-disable;
> +	     output-low;
> +	};

This can now be removed (it had incorrect indent anyway)

Konrad

