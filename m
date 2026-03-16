Return-Path: <devicetree+bounces-276022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLy/EMbGt2kRVQEAu9opvQ
	(envelope-from <devicetree+bounces-276022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:00:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D9229693D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1922F304BCD1
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D77382398;
	Mon, 16 Mar 2026 08:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NVadpL2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0019382F2C
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651494; cv=none; b=BcMR01YXyRylizaf7+73vzb7ZMyRPLVSK17lxeahRPLlfVJlbBx21O+7XDF1QiN4zv9dcBHeLfcnva+Y0GLTCdS8B4Nye9TItlwgb7LJk0hSlNNl2FRNb7e2+bEh3iS8juY9qQ7rMtzlwf9Ki1ASKQ0xuadqgQJVreoRsyX1rus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651494; c=relaxed/simple;
	bh=evEz+y4JrPqlRSu8gn5s0qDG6x8WORlkpCuin/XFkEE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=KyrCO+6kx6QwUQLlK117pYmgwv8446TuYfl/uyri+X9OU5KhepUGutokeqY/x1I7MtkE/7BdkKL3Pf3AUKPgjUPWTPz4TXawS7BwkaqV++tE+ScJtjDo5Pha252/nOm4vAb5LjXnNkwBzHX5T+dnqEqXQk5kzM9IJAuxKiGRx08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NVadpL2I; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439fe4985efso3881932f8f.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773651491; x=1774256291; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bnabGK1hfiwyRbECmu0T5fADyNaY9cT0yOGHssfRU88=;
        b=NVadpL2Ih4cHSG0+6B47wFqRKXaP/HaXV+oW2dya3NxZ0TycDgNQ9ch4zI8Q53ir66
         U4mHx4LGKnQsLvCw766lF4YygTClHC+5p71IqT3TMONTo+TB0AznBl3nAt9siP1sYSe3
         9pNW9t6d98MocYCexrqIbKmhOjDNxlu3gRvYuoBgCmqU0Cfw6YMDyEgrJqoc0TgPMbQt
         9t9ULSMq+RFAGHqraXx8t4ta4TERzMdHxjpj7j0mwV1LbJxWMfIy/B1c9CaZ/6mStF6Z
         px4P1LAPwKtpm2URMMqQj4HzUDvv+19KZ2oQSGeAIHY3vbF+fYdcserrWLTXXnONqGlB
         nWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773651491; x=1774256291;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bnabGK1hfiwyRbECmu0T5fADyNaY9cT0yOGHssfRU88=;
        b=ax0APCfLWvowQgDYp0XDQWhvbpCcz2SWVKR+T+X+x8gs5xSz35yucEX0wK9YqzFJTn
         9Vpb6yFNnaaZBSVY++mhQrk3gAc27avsQG/2WXVzijKjUG4IocvRbjXR8w6OQXrly2tw
         Rb61ElbNf+xiIwaGr4pTjli8Aate0/QaSxy8KP1aQKuG/lT2GyP+/IsgDdOaYEbxvXbI
         AMUh/4sVu5CZFAPg7mSfhCloyTUo2ndQWfHi6mUnvi+k7SlV6epJ+Du4qkLHCmMPoeoy
         3DaOPSpd2rLq5GlAqFI/VIFKFaAOMVowJqisiDxr4iipZeskTO656XvwKYQh2fl5OcPc
         aV4A==
X-Forwarded-Encrypted: i=1; AJvYcCWzTUOC39oklcXiE+POF/hTcckpnpc8QhU8zuaG8Ygzq3OZgnLU0AWOSebVNnd2b9VfWp6r99O09L6v@vger.kernel.org
X-Gm-Message-State: AOJu0YyKRd68WOTsgQxLQXywxmtilhrADC6X+Ffxjxi6o93A1UxjMMu+
	nrxXIyz9vFNMuckcRRlKv0ij0ORzcjwlJhMzge4DUZ/LnjSkah9glKg446Y4FExNDZ8=
X-Gm-Gg: ATEYQzxpd6KFFzombTjCpyhAmgulKyuWYc72xMqMM2mSoGlxWSp3w+8BKIXxRh50HmH
	quSwxL8gZuZbMtCuoKbOQPAlSox8IPp5+CstsY06soK8NVYXbMSk4tT6GDShFC9DjqF68vR4CmP
	Phbp9yiy1mASjFrmEDh1IHpZJ9+n9KeDOkCMAdO0sh1bUwyLZVWn4AJBX6hdYdSqENQf7P1T/ze
	jgYmfG4rVKp2HyUAkeEYQjtriAECW3LcO56HcHsL14FgS388ylxDMsQG8Uw6ImxfjY4Qf08b5Xm
	ZdTOYmtevOGa1FRT0gAYAo1XQmPDA/OK/7Er/0ZUfyc8FJG/YEhM4bRyKYCEGmZtsMGuUiNxJch
	8ToQ6KbULRr6qtoy5oRJ7S1+xv8TppOzV2JnCk4IJ7//u0Bf8fSeD1Exps8N1I5dT6uB8x+QZsU
	15rZmhvRdIn0OQ6+di5cmR2hWY0kT+0Y2FBv29tdFOrBF0Cipu6sfs6zq0PV11Q7MnEZjRwzYzF
	HWJf9s=
X-Received: by 2002:a05:6000:1869:b0:43b:3f2d:7d42 with SMTP id ffacd0b85a97d-43b3f2d7f70mr7855926f8f.2.1773651491206;
        Mon, 16 Mar 2026 01:58:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:a12d:6e5e:e745:c5e8? ([2a01:e0a:106d:1080:a12d:6e5e:e745:c5e8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b46b41e93sm2665646f8f.2.2026.03.16.01.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 01:58:10 -0700 (PDT)
Message-ID: <58a8ff00-4959-4ad5-9d6b-fcb54ee2819c@linaro.org>
Date: Mon, 16 Mar 2026 09:58:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: hamoa: Fix xo clock supply of
 platform SD host controller
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
 <20260314023715.357512-4-vladimir.zapolskiy@linaro.org>
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
In-Reply-To: <20260314023715.357512-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276022-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[0.134.86.160:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[neil.armstrong.linaro.org:query timed out,mmc.0.134.242.224:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:replyto,linaro.org:mid,0.134.242.224:email];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.134.86.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: D5D9229693D
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
> Fixes: ffb21c1e19b1 ("arm64: dts: qcom: x1e80100: Describe the SDHC controllers")
> Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index a3a045732941..140c8f1237da 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -4714,7 +4714,7 @@ sdhc_2: mmc@8804000 {
>   
>   			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
>   				 <&gcc GCC_SDCC2_APPS_CLK>,
> -				 <&rpmhcc RPMH_CXO_CLK>;
> +				 <&bi_tcxo_div2>;
>   			clock-names = "iface", "core", "xo";
>   			iommus = <&apps_smmu 0x520 0>;
>   			qcom,dll-config = <0x0007642c>;
> @@ -4767,7 +4767,7 @@ sdhc_4: mmc@8844000 {
>   
>   			clocks = <&gcc GCC_SDCC4_AHB_CLK>,
>   				 <&gcc GCC_SDCC4_APPS_CLK>,
> -				 <&rpmhcc RPMH_CXO_CLK>;
> +				 <&bi_tcxo_div2>;
>   			clock-names = "iface", "core", "xo";
>   			iommus = <&apps_smmu 0x160 0>;
>   			qcom,dll-config = <0x0007642c>;

Since hamoa inherits the same xo scheme with a div/2 in rpmh,
it's coherent that it also needs xo/2 like 8550 & 8650.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

