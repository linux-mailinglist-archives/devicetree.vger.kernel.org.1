Return-Path: <devicetree+bounces-276017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8In9BcvFt2kkVQEAu9opvQ
	(envelope-from <devicetree+bounces-276017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:56:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E031296855
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:56:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DFC03014948
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BC95382364;
	Mon, 16 Mar 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Egtk9RdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3193822BE
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651394; cv=none; b=i3fd0Mb5hB/+acjA9qn72PVyvBhFX5N/yn5vvRvUZhptBi/I2HE2xNsabftkgP34F4nYK7Wu9bn/3/+bMJPpgwmMmLuggmcSAHL8uTLxZqbhJojyWaZMpApSHnUPvHPNgE+L7VO19+FQBrYpreK/oBHQM+PFei0gY5xnZPogLZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651394; c=relaxed/simple;
	bh=KqzY/khJNB8puHnDrvTaUqT6oG4aeRRp+ADDOc6nP4Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=joqTxDL0hN6lu8Stg6O2O/9chJXqRt8bQ+sYYEAtwS+JU8qcTf3e0xupnyd/JIizNTsRcX2GU4JVBDJuaAq+zmFSOixAF3AYwmGTtA0wV+QMICk9LMJX0s9lNhYyHHLVfZtXFXNa2YZqapwJ9EqpZydIc1rr6AhgQorgCmWxueo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Egtk9RdF; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43b40003d13so795494f8f.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773651391; x=1774256191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9vmKP6u4FwroVFUfi/7BBPQxTky4D+MDVK9LQ7y8Ms8=;
        b=Egtk9RdFhxtV+c1loSqVKZyTZwb+FLQ/tR4qyW4HzDpfcN0cyd0Nt4/CJlO2uSyIjn
         25ejrUkwucoVIP/4ZUBD+AzCrY2o0+NLMHFc1h3zbyX7OSJaI1qQxIksp109eNtuK1X2
         k2xRK03WVR/6tIdH4lL2CnTC8LaAKGwd7TehO6rR8lQFVoaLtKPfbm8r6KGJ4+m29213
         ywdvAWlDLY9fzyZ+42slcwiXj0p9c7QjVaqBGS1S3+4Bo+Y8pC8kgleO2jfzFfppgzIV
         AYfV/VifbDx1EzxrqUZmybRNTEK/wGuRxfRSWfjqOj/s63ZfhMkzjdQRFQdmFkvqfM3y
         DDIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773651391; x=1774256191;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9vmKP6u4FwroVFUfi/7BBPQxTky4D+MDVK9LQ7y8Ms8=;
        b=Z4mJ9fKFjoXilU/WmADKYk/aJe485/qazSBKRxAHNZWXVnJF4lg0UdygCNJeQDZTad
         7xghMAAlodOE1NX7kKNCvwg6xe14bnH66IIlhdVpMHaMfXsncw7D7xFE2cvbACTSspk1
         Cct82QsaOywsqxBz54GU3aCifolLvH+5FF7ycCE0F8Q5jEh0eFjFNC+y3dednLv1rh8u
         k8AjT8EFKeO5AQ1f8vjNQPkW/vvYPrkuKjQCU1zqF8LnOVb5Hd8MeN+PvB86/Er1CLZj
         9EQlzJCWB6wE88Hn43hzGKhZ9qhnWzn4vL9vmFPX6IHJY21bzZxFf+FerWo+h3XpDAwK
         3N4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNTd5S7IE39PXB+uy6pj12dtx+UovD/NL3NyDigrkVeSjUkOYnLuSTyyO/QW99gt2swQEvG3isX0nx@vger.kernel.org
X-Gm-Message-State: AOJu0YwHBtD2dRMyu+kIVnaFH33Wwifi7f6GQwXQrP5OXFbx1hStw6C6
	NRcL8ozT+UB4yT3aZx/+Y8oZ8x/t2Ter55PsJmPN0t3UiJH1ocqz4uT4LnrAVrlCe26+jqEBHEq
	ImOPxUUo=
X-Gm-Gg: ATEYQzxL064xjP0+PS4/DSEFt14yhO1h2UVhdQLLoUrOAT0dZCVukM39zw0Ly0x1vTp
	NBFB4dg9eu5uNmA+5Hv6n9bfxtRyhSFRbzXpqna20zpI3dAlPUCn2oSuoPkRtdWCYmi8ISKeKPD
	h6RFYLZuf/gHCRd8PxWGLXsYFX3dpgVN79vSFDt0MgWTY91WsV0WprBqdHPdFJQELsRbTMZPd0A
	04rtloTZ7rZvhulVZ1I8s+P6ohA5Gs7DJM3KOR0ro5JGyj5TWTE8dNvBMesu3V4rY6ieuEqvg4i
	byIyVUXgpK/Ip7/kKYHIeEmh8ogUMW9/jt6D9t+K6gNsKbpyZJ0DyYsGkoq5j9XZiG3yRx3q5Bf
	dl3wesScndQqbvUyoc4pUUOwMTjUSz1LwRn0SgpKB/Z+iFF1vBpPdIsfgGQzPYnlwIWq79u8iPg
	C83pbWCGe0mfS5+BTK4FP6zOyvqL7RF9CldBSyHmQiiwqL0dJfbfFxe4K6951rdWNx23YxZngiS
	QEx4ao=
X-Received: by 2002:a05:6000:250d:b0:439:b440:b8a2 with SMTP id ffacd0b85a97d-43a04daf226mr21725520f8f.28.1773651391285;
        Mon, 16 Mar 2026 01:56:31 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:a12d:6e5e:e745:c5e8? ([2a01:e0a:106d:1080:a12d:6e5e:e745:c5e8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b41065f8csm13173675f8f.30.2026.03.16.01.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 01:56:30 -0700 (PDT)
Message-ID: <ca380a0e-2c6e-402e-a444-2332a81c9bdd@linaro.org>
Date: Mon, 16 Mar 2026 09:56:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: sm8650: Fix xo clock supply of
 SD host controller
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
 <20260314023715.357512-3-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20260314023715.357512-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276017-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:replyto,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.134.86.160:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 6E031296855
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 03:37, Vladimir Zapolskiy wrote:
> The expected frequency of SD host controller core supply clock is 19.2MHz,
> while RPMH_CXO_CLK clock frequency on SM8650 platform is 38.4MHz.
> 
> Apparently the overclocked supply clock could be good enough on some
> boards and even with the most of SD cards, however some low-end UHS-I
> SD cards in SDR104 mode of the host controller produce I/O errors in
> runtime, fortunately this problem is gone, if the "xo" clock frequency
> matches the expected 19.2MHz clock rate.
> 
> Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 357e43b90740..e915e7209750 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -4957,7 +4957,7 @@ sdhc_2: mmc@8804000 {
>   
>   			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
>   				 <&gcc GCC_SDCC2_APPS_CLK>,
> -				 <&rpmhcc RPMH_CXO_CLK>;
> +				 <&bi_tcxo_div2>;
>   			clock-names = "iface",
>   				      "core",
>   				      "xo";

Thanks, I confirm the sdhc block is feed with the xo/2.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

