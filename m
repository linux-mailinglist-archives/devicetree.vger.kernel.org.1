Return-Path: <devicetree+bounces-258052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGcsLlofcWmodQAAu9opvQ
	(envelope-from <devicetree+bounces-258052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:47:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 697975B7FF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9BF117AE08C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6053A640C;
	Wed, 21 Jan 2026 16:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q7Afnigz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA754266A2
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769013846; cv=none; b=ij2hAZLZEnzzjEcdH/tQhbCXiiNRP6ZjEgJEK4TEFi9OLT3Gqig5/V98VAnMX8zzUUym5Mf7ssYFlLbK7E9uTahD17kCcgHhSzqwNF6zqhos9G/OJQWhrBgNT1WtHBRRJ8AJBigF3HP60tO+NDou/ZjNtwwOoT0ZcRVWw2fhgW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769013846; c=relaxed/simple;
	bh=i/jcJbK4ycETd+rUvQz4ZeLeFmTXeuR88Ha0X44aYvE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=HJ3frwsZIlP6YJqkSiz+8F7C1C7+VkB20JczqIooF4mvfcBE00ii6+pe8XGL5kPpoPasu13rrJ/O23PR0ng0KgcjOCbAA+QYADJujFE+pgL3U0rc+BHMygZYdoV1+OzZwu+Un6iyR10bTipFold3pal/I6v4vSWf5uSo45MkvCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q7Afnigz; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so13938f8f.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769013843; x=1769618643; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1myAXTRCFyNcgADPfwfjEtstkbzJqQQ7A3560oXOVyw=;
        b=Q7AfnigzLOJfcHhzuYT4+pal81sCN8aV0N9Mg49Iy0nS5xDwmT+un7kQizUoTLMQ+k
         Jj8TT9MKCe18E2x/87MZy/Fbv2Ds8XwH9V9ueaIjap4e40n4Izn+RT+pw5NWRM47aQz8
         YuO92OVV5bttP4YlZ720Cv2nnI5ndDvwhga4rxz0ZGd3SPB8KshtKrR4B75xJrmxDM61
         zTU88DsGm6Ms9HOOyFxE4Hg4zZbYRSQnFhGyC4nnEfbAnEmUDnWwzWg/Jqn2H1Hwvh/3
         k/d7+Yue0See1NUcADkwvfXyXNfMTJHbyX0RvAyI3BOuJqmZv9Ug3fajtGF7oZq25I4o
         d3Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769013843; x=1769618643;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1myAXTRCFyNcgADPfwfjEtstkbzJqQQ7A3560oXOVyw=;
        b=KIFjsGp+yiF41q3kw6C2bRsrO7NCfLK0bFA076+o/P+9fsGyy5B0ING9F/vO2ngOvA
         SDyMFES0tEfXxn7kTUrjfVgemBcjt3HB5QHNzNqWaWlC9LLgs5mvJN+Z8qJ4ygtzihUI
         QBMx1t7SQsB+tGInjz+9JPfiMHqUsWjP6i1T0KiVB5ToOBI4gjtLK3RJ7Pil3BM9w6xx
         LOk7nbywKcmp8JCJRURK9CJKmoRPy2SFy/Z4NIjB4myRL5FUydvK6wvIdl2hjjdGH6s3
         pew0g3bxqoFYtigUeeEd8AMqap8mqmFMX97q2yFofKJZs7udUwTmWWJprPGX6F9BYlHM
         SoJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPIjaPZKlAkrFhJP0mi2rqBrpZ8vfSaM3z2r/lv/HViQl7fb+7+InvotgRMXzU5mAIp+ldN1VubGl5@vger.kernel.org
X-Gm-Message-State: AOJu0YwrflzKY+I/Y7UOoQKf0X2vFW6qpMQp2iJmbtkRYt5V2GbqkX2X
	kHyyWFF60Slu436XmVnqTgWWXICLRLCqqyw7Jh2/TyVrTJxOC9bjFUGZxa/FKh5Wg8U=
X-Gm-Gg: AZuq6aIxrUgctAY6VdkPyM5C7deKV8Mm+zTDi4A2BmuxCkSDMYSHrZSnIpbPXk1M6Rs
	fZTDYTigj8JQoNDoLkxPEH1b8jIgDMS6eAJwv8WoAGY+NLVOwAFWXQ10qfqVOdc3TTkixmJgZA3
	IyJp+FWuoNY7Uv2Zy0nDmoRqFnZ9Wvl9iDcG1OKwe4LbRQ6jhJHTzJviOwn63witYF6JIt9BX/A
	ZOP0V8Rc6eqCPduCfEtevzZ12Nd22UtbhmJMW9ndfp3hl66zsoAbQRMNr0z30N6JwhoipgQQlAg
	v2VDcLxRlKSzjXKu8dXSgtz909vBfZVBtPGJPkIy0Cav6ZoY6H9x3IqkQnt6i6NxY4/kjlrnVmV
	LQGp2+AyV+QnVrc/JZAIMZ3ltr1WCNj5LrIQAdUSghfYKqgpwwohCYwyfP6kEviKrZsJvUaq/cW
	Tsdc4ARcfy/Ux6IPEJ9jR/McLgQqonMIgFbhFGPK0o/t+p3i+0Et2Ho9yWjFZrbwg=
X-Received: by 2002:a05:6000:310e:b0:435:99d5:9d8f with SMTP id ffacd0b85a97d-43599d59f09mr5736496f8f.19.1769013842720;
        Wed, 21 Jan 2026 08:44:02 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:8ae8:f59d:ae95:f372? ([2a01:e0a:3d9:2080:8ae8:f59d:ae95:f372])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4358f12ee69sm14755862f8f.11.2026.01.21.08.44.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 08:44:02 -0800 (PST)
Message-ID: <49b62589-111d-4d4b-b693-466e0a2f81eb@linaro.org>
Date: Wed, 21 Jan 2026 17:44:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 enable SDIO interface
To: Nick Xie <nick@khadas.com>, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 xieqinick@gmail.com
References: <20260121014725.122722-1-nick@khadas.com>
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
In-Reply-To: <20260121014725.122722-1-nick@khadas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	DKIM_TRACE(0.00)[linaro.org:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-258052-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[khadas.com,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org]
X-Rspamd-Queue-Id: 697975B7FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/26 02:47, Nick Xie wrote:
> Enable the SDIO controller interface connected to the on-board
> AP6256 WiFi/BT module.
> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
> Changes in v2:
> - Dropped 'amlogic,dram-access-quirk' property as it is not required for S905Y4.
> - Updated compatible string to specific "brcm,bcm43456-fmac".
> - Link to v1: https://lore.kernel.org/all/20260116023900.2036657-1-nick@khadas.com/
> 
>   .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 27 +++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
> index 4a66c1bec965e..27d0f6134ea9d 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
> @@ -220,6 +220,33 @@ &sd {
>   	vqmmc-supply = <&vddio_sd>;
>   };
>   
> +&sdio {
> +	status = "okay";
> +	pinctrl-0 = <&sdio_pins>;
> +	pinctrl-1 = <&sdio_clk_gate_pins>;
> +	pinctrl-names = "default", "clk-gate";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	max-frequency = <50000000>;
> +	non-removable;
> +	disable-wp;
> +
> +	no-sd;
> +	no-mmc;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	vmmc-supply = <&vddao_3v3>;
> +	vqmmc-supply = <&vddio_ao1v8>;
> +
> +	brcmf: wifi@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
> +	};
> +};
> +
>   &spicc0 {
>   	status = "okay";
>   	pinctrl-names = "default";

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

