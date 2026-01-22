Return-Path: <devicetree+bounces-258264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wN7HOeHucWlKZwAAu9opvQ
	(envelope-from <devicetree+bounces-258264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:33:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 733C064976
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A6B40608C51
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:25:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1393333C1B6;
	Thu, 22 Jan 2026 09:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ehJnnwBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8050C28134C
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 09:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769073935; cv=none; b=GxVIytgepIbZsc81AGReh31aw6EFVzYlfOMBuxOx+ZxPvIwy0aB0sMPf9RPhvJWd6xQpEf7b/qSQejPC/jw+X8w1cTWXuKe4I4pUxr7aG+lX91evzZFNVnqJDXieYKrp3iKOCIu0QdQJYJjkVW4hgpc+SVjG9VB6pWCsOKl3E/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769073935; c=relaxed/simple;
	bh=IG01gYL4yyOWn3gh2nWit+q/HCd3/kni6PxfNbyS2g8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=dWrGsINPjwr2AIqsmc6Db11E7aTLNU9v7Xwb5AohgYOh0HXTYVLAKULux9ZlkiXadA8rD3KN8PQCCC00wLuHLHgJZmv1huvIi7GlFvSddyKA29KIKWmAyq6ypfPWotfkdFDTNBlUy4tIcJ6ugKfFtq39C8ytUo9IOiPNAnWkWfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ehJnnwBo; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4801d7c72a5so5505325e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769073926; x=1769678726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1wh7yPBI+oxYltmzoz6sUaPuJ2ob9U5MNpZ+a6WNEGQ=;
        b=ehJnnwBotLC5aVGR9HNJA07t7x4QEuLm7fxQVQTUZp5ZAP1+29Ka5g8vrnGV6AkJc6
         2gSUt5qQcwAhYkCJtJa0xqjBY8g73Cqzq6791LMx2gGODfyRZo86JaN3byx6u59XoHgV
         rFkBtFsFPlT9C/nkFk7AaxSJXjGAVSlcDkw1omIWXSqT+KAmHkLzFgOciP2fo3t5scSE
         L0Sk6dceXqzWvp0DL3wkAeFQchpAbFP49w9c1h5QZSNMejngBRPu4nrMUWYSRRbY8NCI
         r+tsRfeT5bZlt6sTjduwkeP30xYn/lbW44pnBg1aI1zfPLn2F0wyOaKNwIQQ2SvX1tz2
         f5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769073926; x=1769678726;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1wh7yPBI+oxYltmzoz6sUaPuJ2ob9U5MNpZ+a6WNEGQ=;
        b=pm/duPAdwNGXUq8N/wQl3Mr57UX/aIeYLs/nhcSBkzMbo1S1pczBo4ISsfgGS+vgvL
         npR5W7zNI9JobECeEOrKRmTVyp+ZkrJjklXjhGACM706018XHmAsY1m0E45W1q18Ifq9
         3y+PBJouV3lOC89G3cOI5FB6/tsD76k3sc6Ir8R7Xx9IHpOvxRoF2xCAJ6P8S75ns5NC
         Ub+IZuPCNweiqmtrFnPRlMsFccFyzLe3VrH5rnlF5c9fQ+/JZ6Bfy6AXk1z0Cd4Mfw7q
         Hbvh1MoTzLW/ixxzSAltU/2L6j+TBWZuhruJ/DnexIX7Xt3frJrEYiq9pCU/mZBdsJDN
         NAUw==
X-Gm-Message-State: AOJu0YyqotJFkf2t2PgeHDzfl0Cga2AwPCoDk+8X7Sm7k6lr7wf/N23j
	RghVG1ZhaIzfSJ/auTFVOTrM1/rSC0l7FoZpyKSaLVHEWi/vo9yUuqEyWn7Y8fIvQ9s=
X-Gm-Gg: AZuq6aIhHp7zGazOzbXdZKeEYB/XNb5yx01WjuYTtCFKVlf2HzBgg6eB8uJboujtem4
	Sg18QRlcSQ3ticaMl0X5AiI3zEUpUkm+w/Qz8O5DWKc5q3VpYC3dXxcsDXM9U+Lb2u4dMePMzJR
	czmuc+0IsHmS+enCMmyraW6OnTV8bIUa4Lumr7G63PFPYMJ6sEZdpYq2OkMSrECueoFgTpXQ6HP
	taIzMEgO38Zsdhm9FwNUHzoV2dOJ0bACzRMrlQD0xsr/OthO/Jr4XfBt4zHQKLiBkdnXtPq/owR
	R9Y9pbTh+kFMhE/ST0UWUb7BSkDzzZrdjsP1NCViVM6iiEYLJHu9+L/x9FIrzQt6eIqbFKLWctG
	MiDL/yifdiAXFcX9pTopo/MniyvEXHGxI/sigSpdqOglQDAXIhrZNeu33ekVTHSDyB+TiO0mDtn
	MOewQAEFdBc4GVkSVcYth/qP/tmapFAoG7cbiXgyf0al9GwKgFJu3995kp1942qx4=
X-Received: by 2002:a05:600c:35c3:b0:47a:81b7:9a20 with SMTP id 5b1f17b1804b1-4801eac0617mr298875535e9.9.1769073926248;
        Thu, 22 Jan 2026 01:25:26 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:9dc7:6955:8850:f258? ([2a01:e0a:3d9:2080:9dc7:6955:8850:f258])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804705b277sm54563365e9.12.2026.01.22.01.25.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 01:25:25 -0800 (PST)
Message-ID: <53a1370b-89a4-4276-949a-e3ad95dbad2c@linaro.org>
Date: Thu, 22 Jan 2026 10:25:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: add basic devicetree for Ayaneo
 Pocket S2 gaming console
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, KancyJoe <kancy2333@outlook.com>
References: <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-0-bb3f95f1c085@linaro.org>
 <20260121-topic-sm8650-ayaneo-pocket-s2-base-v1-3-bb3f95f1c085@linaro.org>
 <01de9fc2-f60c-4bc0-af61-c070213df29b@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <01de9fc2-f60c-4bc0-af61-c070213df29b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,outlook.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-258264-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,0.0.0.0:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 733C064976
X-Rspamd-Action: no action

On 1/22/26 10:15, Konrad Dybcio wrote:
> On 1/21/26 5:40 PM, Neil Armstrong wrote:
>> From: KancyJoe <kancy2333@outlook.com>
>>
>> Add initial Device Tree for the Ayaneo Pocket S2 gaming console based
>> on the Qualcomm Snapdragon 8 Gen 3 platform.
>>
>> The design is similar to a phone wihout the modem, the game control
>> is handled via a standalone controller connected to a PCIe USB
>> controller.
>>
>> Display support will be added in a second time.
>>
>> Signed-off-by: KancyJoe <kancy2333@outlook.com>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> [...]
> 
>> +	fan: pwm-fan {
> 
> I'd call it fan {} but gray/grey
> 
>> +		status = "okay";
> 
> You can drop this line (nothing disables it)

Oops will remove

> 
>> +		compatible = "pwm-fan";
>> +
>> +		interrupt-parent = <&tlmm>;
>> +		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
> 
> interrupts-extended looks neater

Ack

> 
>> +
>> +		pinctrl-0 = <&fan_pwr_active>,
>> +			    <&pwm_fan_ctrl_default>,
>> +			    <&fan_int_active>;
>> +		pinctrl-1 = <&fan_pwr_sleep>;
> 
> fan-pwr looks like an EN pin of a GPIO-controlled regulator

Probably, will model it as a regulator

> 
>> +		pinctrl-names = "default",
>> +				"sleep";
>> +
>> +		pwms = <&pm8550_pwm 3 50000>;
>> +
>> +		#cooling-cells = <2>;
>> +		cooling-levels = <0 16 32 45 60 80 105 130 155 180 205 230 255>;
> 
> Does this come from a preexisting map?

Kancy ?

> 
>> +	};
>> +
>> +	gpio-keys {
>> +		compatible = "gpio-keys";
>> +
>> +		pinctrl-0 = <&volume_up_n>;
>> +		pinctrl-names = "default";
>> +
>> +		key-volume-up {
>> +			label = "Volume Up";
>> +			linux,code = <KEY_VOLUMEUP>;
>> +			gpios = <&pm8550_gpios 6 GPIO_ACTIVE_LOW>;
>> +			debounce-interval = <15>;
>> +			linux,can-disable;
>> +			wakeup-source;
>> +		};
>> +	};
>> +
>> +	pmic-glink {
>> +		compatible = "qcom,sm8650-pmic-glink",
>> +			     "qcom,sm8550-pmic-glink",
>> +			     "qcom,pmic-glink";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		orientation-gpios = <&tlmm 29 GPIO_ACTIVE_HIGH>;
>> +
>> +		connector@0 {
>> +			compatible = "usb-c-connector";
>> +			reg = <0>;
>> +
>> +			power-role = "dual";
>> +			data-role = "dual";
>> +			self-powered;
> 
> Is this property interpreted at all by our setup?

Kancy did add self-powered, but it does charging so it should be dropped.

> 
> [...]
> 
>> +	sound {
>> +		compatible = "qcom,sm8650-sndcard", "qcom,sm8450-sndcard";
>> +		model = "SM8650-APS2";
>> +		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
>> +				"SpkrRight IN", "WSA_SPK2 OUT",
>> +				"IN1_HPHL", "HPHL_OUT",
>> +				"IN2_HPHR", "HPHR_OUT",
>> +				"DMIC1", "MIC BIAS1",
>> +				"DMIC2", "MIC BIAS2",
>> +				"AMIC2", "MIC BIAS2",
>> +				"TX SWR_INPUT1", "ADC2_OUTPUT",
>> +				"TX SWR_INPUT7", "DMIC1_OUTPUT",
>> +				"TX SWR_INPUT8", "DMIC2_OUTPUT";
>> +
>> +		wcd-playback-dai-link {
>> +			link-name = "WCD Playback";
>> +
>> +			cpu {
>> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
>> +			};
>> +
>> +			codec {
>> +				sound-dai = <&wcd939x 0>,
>> +					    <&swr1 0>,
>> +					    <&lpass_rxmacro 0>;
>> +			};
> 
> 'co'dec < 'cp'u
> 
> [...]
> 
>> +	wcd939x: audio-codec {
> 
> 'a'udio-codec should be way higher

ack

> 
> [...]
> 
>> +	thermal-zones {
>> +		cpu2-top-thermal {
>> +			trips {
>> +				cpu2_active: cpu2-active {
>> +					temperature = <38000>;
>> +					hysteresis = <2000>;
>> +					type = "active";
> 
> This is shaky.. let's perhaps reference each thermal zone that you want
> to extend with a label.. Or maybe a pair of labels for trips/cooling-maps
> per zone?

Yep, will clean that by adding labels


> 
> [...]
> 
>> +&pcieport1 {
>> +	pinctrl-0 = <&upd720201_active>;
> 
> Is this a regulator?

There's s 3 gpios, the 3 are required to have the controller to show up,
it could be 3 regulators and a reset line, I don't know. The controller
needs 1.05v and 3.3v plus a reset signal, but I don't know which one
is which and if it's really regulators...

> 
>> +	pinctrl-names = "default";
>> +
>> +	/* Renesas μPD720201 PCIe USB3.0 HOST CONTROLLER */
> 
> DON'T SCREAM! :P
> 
>> +	usb-controller@0 {
>> +		compatible = "pci1912,0014";
>> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
>> +
>> +		pinctrl-0 = <&gamepad_pwr_en>;
>> +		pinctrl-names = "default";
> 
> Is there a hub connected to it? Or does it go directly to the
> aforementioned (game) controller?

Directly connected

> 
> [...]
> 
>> +&pm8550_pwm {
>> +	status = "okay";
>> +
>> +	multi-led {
>> +		color = <LED_COLOR_ID_RGB>;
>> +		function = LED_FUNCTION_STATUS;
>> +
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
> 
> Would a label="xyz" be useful here?

Probably yes

> 
> [...]
> 
>> +&tlmm {
>> +	/* Reserved I/Os for NFC */
>> +	gpio-reserved-ranges = <32 4>,  <36 1>, <38 6>, <74 1>;
> 
> double space
> 
> Are they all for NFC, are they all required?

They are reserved, usually for NFC to be used by the secure enclave,
but we don't have nfc but they are still reserved...

> 
> [...]
> 
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index 07ae74851621..fcd5a1a45803 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -3917,7 +3917,7 @@ opp-32000000-4 {
>>   				};
>>   			};
>>   
>> -			pcie@0 {
>> +			pcieport1: pcie@0 {
> 
> pcie1_port0, please

Ack

> 
> Konrad

Thanks,
Neil

