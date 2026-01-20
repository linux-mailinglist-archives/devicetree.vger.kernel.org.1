Return-Path: <devicetree+bounces-257227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9872ED3C267
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 98CD64C0BF2
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09F6A3D1CA5;
	Tue, 20 Jan 2026 08:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c5dKmkuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159563BC4D5
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768897812; cv=none; b=u/zY4GFpi80Q7s2W5spMtL5KRdnL/sPcRKFARmt0dR3960pUfrISnqdRHDAV50ohdGdtOZUO0IsWbfR/CTyEE8/nHCjbRLYyw4jvaVlNmwJgnXW0bGGoD3GIayVJl+DR9O8JtwbJUFkx9u5NYg/yLQtBx1o/mn1OFPNHnoWXzHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768897812; c=relaxed/simple;
	bh=95sPAOS16vc879VaWaNJxzLMmeJgfmIe/hqtTxVzJpE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=CG0Xx1hD06MHY9bAxWYNjGjqSug2pS8zUz1QqaMNppn9lW1hIWzk92rGFLIU/QIpObXYtpc160qKxdRZFMHEIFvlp9CKaKMYmiCYRxaoxQl9To8oAq8IuuB1Tbkz2l/jwDIDsYVcdy+2SIBY8pAvXKoK6bFbGMCB1z4jcIEE0xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c5dKmkuH; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4801eb2c0a5so31759045e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 00:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768897809; x=1769502609; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p3+3UUuGy/B6GuVgP/n+D0fJxxzWSK2/g/0DLsfuws8=;
        b=c5dKmkuH6RHYXPFkPDdNJPyEksKCo1QJCtnmCGgBiOxQtpemx0bwTwrPFJk/c0uK1b
         8f+jC/rNaDBjZ6WcL5nfSsKFdgl3WK1e+esRgjzCzFZAw+quyhAqL0fIboG3fZr0WqOH
         FoJIbE1FwaFF3k3C7suI0oFnhNzfe1H1E8mM1XmFTKEOdZ8t+KE4Ziig4u4JfZtf7x03
         Qh6t1qUg+sTHsE0pyv+yeoAu1D/X6dU6TjORZteJcxUR/lCtUBwXO4lYoyodX9GL/KT3
         1u3aQjpR3OQflUCmJhVCPW2gN0NdaDNFsGp6zzJWMseV9bjLHLMZVjG+wqlK19/VOFRa
         6mBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768897809; x=1769502609;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p3+3UUuGy/B6GuVgP/n+D0fJxxzWSK2/g/0DLsfuws8=;
        b=iyRsGec+B/WZykTYODeF7j+1vUbOTyo+Fbq86YyQ5lzcxoPC2h7ZMYb40Kc7Ez09kr
         XCJpqzSebm3lzh7l3FU4OBCY4uf1BEV3QcZNhS56T8njURsX/H5ie39frrRUG+BpNiEs
         +dWtXfiM+/7qMG0qXacYNhTm1bK9yOHtrVRkD5ERc2EptuBH4hkDOp1pKEwy/SXh1svL
         PB/slMTjMIIhCLJ4mQO2wJeTpnNeU8TvPrkgCv/ZPFWbfP+NmBwZVEfSuQZmg69ODNcV
         h5CJ3taxDfivTQnkjv5IQmQ3obRwz+gnieXnGmqR95cMHndilLEay6SesScjOtuH1YY5
         wt7Q==
X-Gm-Message-State: AOJu0YyOPwzYED/0ZzvIBs+puiUPjJpkLDwrvRfzNnYfLl+FRJi20exe
	3Wsw7lvHkO1VFSA1zox2PxLJhrSeG0tIEoASKJXRwNnJTQ2ZkLtbnpFFFBhPHVfXXVY=
X-Gm-Gg: AY/fxX7BEnq3p6AqLUu1bxXbHFWqwFHJuGXUFZ8DDGIlVK7krwUNGiwdjPJta8woBqA
	lfGuZUrv63C2wk7aJ5jzAJ5HHgQXturYyiQH+VnlVeju9TZufUYkOPJxO9hmS0xLaDC3iKg5t8H
	dJE5lO4D1N0UvbI4Vm8FmXJVKNwfkh2J6mu5llu0spvVwtUqLS13kjode+nTGza/SgdOiCv+wpA
	/TJxemfB6cE/Kd/o/oVuZf7IjOSvmIj1V+XoreKfLK0FyOpVgHp/cabrj1RQs0UI4ynUtfWh7Zx
	KkTZs8EWaQM6rsGOabYMxKT6h8afHx5c9aVbRbvkuKnqToIeFLT6Ii2LHcChcWohKXFoscSUh3S
	y740tthajyKVFTfNISKu5nYYWCQnMMdQJ7q8YSnm1EDmPhdEF8M1oi0nP3IYBPfXZPDdTeuwsIx
	H7mUYmIpdMgJAY7+7rnrzPQSrhmtjJwJtmHlds+MRWdqjLIUmyZOZs5LeugpliOJA=
X-Received: by 2002:a05:600c:3b8e:b0:47b:d949:9ba9 with SMTP id 5b1f17b1804b1-4801e2fe362mr172842035e9.13.1768897809018;
        Tue, 20 Jan 2026 00:30:09 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:f0d5:3a84:e303:190e? ([2a01:e0a:3d9:2080:f0d5:3a84:e303:190e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e9d8ba8sm101682935e9.3.2026.01.20.00.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 00:30:08 -0800 (PST)
Message-ID: <23f8d531-26fb-4049-a0d3-6ffbaae46b3e@linaro.org>
Date: Tue, 20 Jan 2026 09:30:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] arm64: dts: amlogic: add the type-c controller on
 Radxa Zero 2
To: ricardo@pardini.net, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260115-arm64-dts-amlogic-radxa-zero2-additions-v2-1-948bb0479a45@pardini.net>
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
In-Reply-To: <20260115-arm64-dts-amlogic-radxa-zero2-additions-v2-1-948bb0479a45@pardini.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/15/26 18:52, Ricardo Pardini via B4 Relay wrote:
> From: Ricardo Pardini <ricardo@pardini.net>
> 
> The Radxa Zero2 has an FUSB302 controller on i2c3 at address 0x22 and
> INT# wired to GPIOA-13; include a minimal connector.
> 
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
> ---
> This series adds a few things missing from the Radxa Zero 2:
> 
> 1) NPU (etnaviv), just enable the node, similar to what was done for VIM3
>     (dropped as was already picked up in [1])
> 2) i2c3 (also exposed on the 40-pin header) and the FUSB302 at 0x22.
>     Describes it minimally, adding no functionality, but reserving the 0x22
>     address since i2c3 is also exposed on user-accessible 40-pin header.
> 
> Krzysztof: v1 followed the node name I had found used in amlogic; I've
>             looked around more broadly and found 'fusb0: typec-portc@22'
>             to be quite popular, so went with this. Hope it is acceptable.
> 
> Neil: I've fixed the interrupts pin, and described the required connector
>        even more minimally than you suggested, as to avoid including pd.h.
>        It is also done this way in a few other boards, hope it's correct.
>        I've rebased your/Christian's full-enablement patches on top of this,
>        tested with an r8152 which then works both ways, it's available at [2]
> 
> [1] https://git.kernel.org/amlogic/c/29deec49146162d06b17739c627d062191e03814
> [2] https://github.com/rpardini/linux/tree/radxa-zero2-fusb302-minimal-plus-full-impl-rebase
> ---
> Changes in v2:
> - npu: dropped NPU enablement patch as it was already picked up by Neil
> - fusb302: dropped 'status = "okay"'
> - fusb302: declare as 'fusb0: typec-portc@22' instead of 'fusb302@22'
> - fusb302: use correct pin (74 -> gpioA13) for interrupts
> - fusb302: add a (very minimal) connector so dtbs_check passes
> - Link to v1: https://lore.kernel.org/r/20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net
> ---
>   .../boot/dts/amlogic/meson-g12b-radxa-zero2.dts    | 34 ++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> index 1e5c6f9849456..5d32c04de938e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> @@ -364,12 +364,46 @@ hdmi_tx_tmds_out: endpoint {
>   	};
>   };
>   
> +/* Also exposed on the 40-pin header: SDA pin 3, SCL pin 5 */
> +&i2c3 {
> +	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	fusb0: typec-portc@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +
> +		pinctrl-0 = <&fusb302_irq_pins>;
> +		pinctrl-names = "default";
> +		interrupt-parent = <&gpio_intc>;
> +		interrupts = <74 IRQ_TYPE_LEVEL_LOW>;
> +
> +		vbus-supply = <&ao_5v>;
> +
> +		connector {
> +			compatible = "usb-c-connector";
> +		};
> +	};
> +};
> +
>   &ir {
>   	status = "disabled";
>   	pinctrl-0 = <&remote_input_ao_pins>;
>   	pinctrl-names = "default";
>   };
>   
> +&periphs_pinctrl {
> +	fusb302_irq_pins: fusb302-irq {
> +		mux {
> +			groups = "GPIOA_13";
> +			function = "gpio_periphs";
> +			bias-pull-up;
> +			output-disable;
> +		};
> +	};
> +};
> +
>   &pwm_ab {
>   	pinctrl-0 = <&pwm_a_e_pins>;
>   	pinctrl-names = "default";
> 
> ---
> base-commit: 0f61b1860cc3f52aef9036d7235ed1f017632193
> change-id: 20260114-arm64-dts-amlogic-radxa-zero2-additions-905549fbed3e
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

