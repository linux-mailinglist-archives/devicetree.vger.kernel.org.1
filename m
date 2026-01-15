Return-Path: <devicetree+bounces-255599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4733AD24A42
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F65C302C9CB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB9639B4BF;
	Thu, 15 Jan 2026 13:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MRFSAmew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CEF39B4BE
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482011; cv=none; b=a9ILTSa3RF8oAwbEPYhbYCEhs4WETSOyNgFzhQ3mp8dW4TWXPbdJ+ymdJb4fO+CekjV2Vp31FXpzNwRgSlE6rFcSPP1jpKjLlGTrSQM0xHB+v7V4kKQq97++r31opTTUYtsllfWYv+tUQt0R104bpJU7vN8ck4ec63EDdt14A18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482011; c=relaxed/simple;
	bh=TXL62PCDwG9JwzjUUzF6Zkx1s0b1+6vUQcrTKugE4K4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=jZnHA7xOxEtJUM5hpPi/Od/rTdXksnzs84Gru4sMz1BUfnHTkTPigmq7Ih1H2YIYoWwtKsLbBNKnL8NcVvIf3jkekJW8KFWeHiCCM0Xsvniq1MAqRHFqAWIr562WrajFBK862q8/5CfJgYG/8SDnVowsPrtgxoKdhQXHOc+5YBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MRFSAmew; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so7665875e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768482007; x=1769086807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1fqfrZsJuS2h40JtZKPA7gA8RgFa7H/SeAdYuKnitso=;
        b=MRFSAmew3yMwW4+0q/uUEl/EozUcqaRUGHvoaXXBh5BxyH+YdFaf5HE0VqPkB/lMCY
         7yOqpSich4onLd57Gf9W1TAYWJ/pGRDww4jt87YEINcofISlc5KHogJGBWt7K4TH35Ij
         0DystoHwlGtAYxkVtLKpOu7DQEXBrSObx/KvSr3yIe0M4AFnDhGtwZa7o+nbY3Z1Wblg
         7qhr1CDNTqmwlNwjkjRvZ+Ww7A6NEPKxdnsEA6QsGHgTiROO1Cbt8sMpsoInhPWlVByh
         Dw2TRgbwE7WMcpcHuVqfXXQ/Ho9UzpolHi6yvM4HhNRKP+X+Bep/Be6qxlbFHn0MmKQz
         pbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768482007; x=1769086807;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1fqfrZsJuS2h40JtZKPA7gA8RgFa7H/SeAdYuKnitso=;
        b=DUgcT2RDMYBYGuCUnPs6Ge0h6gwXrMwXPzR/8vrBTMEUlAM7LjhCozDz9TtPMvvgjm
         iEO1bvJdY/KlqVlYz3G+9I6hI7vkcypRXfulDJy9h/4Z0V9gD1cALOCrbPs64kxURyrH
         9PgZoWiTohgewgXN8H0BTVQhWDyrEZTtFollMzAPF7s1sAlRuBysPLnfpAvHcEWPGDkI
         BQ8hoVaD4RTZ/0JyC5bQWBnqXCkFPKg+TinLvxBJ/linY1K+KAhItA7570RTWWpRNlwm
         Ml5ZvEneods5Jsn3nGJQER5Ao2rBCUSlPiEuzunbHjgDAsbLXzLz8q5ZQk2xcpSefUF8
         xi5g==
X-Gm-Message-State: AOJu0YzQzf/D+iIlavmbrJgSUqMrlq4CrDmlbBorFnK9QT6ldr4NlSoG
	5aufkRnk8VFtjXTgh99U7Q/nB+PS9LOPAyxrULfM1eDoI9sBOVVujIqjma0/mP4o/fY=
X-Gm-Gg: AY/fxX5Oya8BJsy0TJvwMjDGVc+kDmFpV3As4ajw66ZnRmWUPGBMLk3ZVwFR9Q25NTv
	qUPMHF1L2L2NxHpHhwxoZab3wWcaOyOkaYrMRWq2J6D3u2Q7GLnuy1ywT7ACN91Y7w0XJaKj57U
	/YqIKpOSCtOJa9TBbhgqxK/pF1dJJK83ZQBhFXJTuDxqgvZORs8e3Z3Yft5tFLjm5szJCCa6rQZ
	R7qH+mbINZvCwBubLKvJruVXT3/ijBh2bhBHeLeX4BabhuXj2y/GfkeXK33DrVHMk8r2uWXiXev
	AJOpVLsVuN6+8XUBrZz+gkgAFZgn4T+9cDXxRXziiCc72mO7/MMTueTzHtSBoeL61fv4PkkJIOR
	DV3stVaei6KF5qwRWmo2DXW/RI2nyZ0ThC53wPBguoeUpc5w6FJVzN+j4L2ufq69FnOoq/WXOiR
	aB+/cfrAHrEApT5H+PBgBxG3z5jvNcUZu4GN86iB8n3b6Kt4ZtyAg47M/0SaiNVR7FKpmAkb3Ki
	Q==
X-Received: by 2002:a05:600c:4e92:b0:477:7a87:48d1 with SMTP id 5b1f17b1804b1-47ee483f86emr63957345e9.30.1768482006562;
        Thu, 15 Jan 2026 05:00:06 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d283:7a7e:4c57:678d? ([2a01:e0a:3d9:2080:d283:7a7e:4c57:678d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee0b34bc1sm44745085e9.0.2026.01.15.05.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 05:00:05 -0800 (PST)
Message-ID: <aeaee3b5-5f08-4abe-b646-a45ab79a35ab@linaro.org>
Date: Thu, 15 Jan 2026 14:00:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add the type-c controller on
 Radxa Zero 2
To: ricardo@pardini.net, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
 <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-2-8b5cdf328fde@pardini.net>
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
In-Reply-To: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-2-8b5cdf328fde@pardini.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 1/14/26 23:48, Ricardo Pardini via B4 Relay wrote:
> From: Ricardo Pardini <ricardo@pardini.net>
> 
> The Radxa Zero2 has an FUSB302 controller on i2c3 at address 0x22 and
> INT# wired to GPIOA-13.
> 
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
> ---
>   .../boot/dts/amlogic/meson-g12b-radxa-zero2.dts    | 32 ++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> index a37776d22b09e..125b064a15c1e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
> @@ -364,12 +364,44 @@ hdmi_tx_tmds_out: endpoint {
>   	};
>   };
>   
> +/* Also exposed on the 40-pin header: SDA pin 3, SCL pin 5 */
> +&i2c3 {
> +	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	fusb302@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +
> +		pinctrl-0 = <&fusb302_irq_pins>;
> +		pinctrl-names = "default";
> +		interrupt-parent = <&gpio_intc>;
> +		interrupts = <13 IRQ_TYPE_LEVEL_LOW>;

OK it seems I did read too fast, this should be 74 !

S922X Datasheet (same as A311D for this)

Table 6-32 GPIO Interrupt Sources

---------------------------------------------
| Input Mux Location	|	Description |
---------------------------------------------
| [76:61]		|	gpioA[15:0] |
---------------------------------------------

So gpioA13 ==> 74

> +
> +		vbus-supply = <&ao_5v>;
> +
> +		status = "okay";

And I get:

   DTC [C] arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtb
arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtb: fusb302@22 (fcs,fusb302): 'connector' is a required property
         from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml#

Please add a minimal connector, like:

+               connector {
+                       compatible = "usb-c-connector";
+                       label = "USB-C";
+                       data-role = "host";
+                       power-role = "source";
+                       source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
+               };

I'll drop this change from my tree.

And you may also add support for the superspeed mux to switch the USB3 polarity.

I have a prototype at https://gitlab.com/superna9999/linux/-/tree/topic/amlogic/radxa-zero2/fusb302?ref_type=heads


Neil


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


