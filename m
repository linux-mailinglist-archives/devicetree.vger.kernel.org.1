Return-Path: <devicetree+bounces-7124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5388E7BF55A
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:11:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76AF21C20A6B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 08:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF3A14F90;
	Tue, 10 Oct 2023 08:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dZG5mqvE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54D0BA57
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 08:11:02 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0F65B7
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:10:59 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c3c661f1a8so45272641fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696925457; x=1697530257; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1a48CmyL9ZDxqT8GaS516AQ8gzDOMjf9YgIiThoGiys=;
        b=dZG5mqvEEyqUmZ7FZCUTfyZr8RoNXpZHQMZbKDKqIeK6NHGWJv/KOBBTVDl5k0iwPt
         MgaqlKNZ4Kg8WFnvnPFLEv50VKg7U9IBtQSKf+9Mme6/8aOJCbB5qdLK632xpHCLfO1a
         eDGBoHAdoF0FdKGUFpY+It1ReKl682bOQLciZMqSXnQcq7RuJmhIhuADLB9X0IgBFW7n
         2lDUvXiOTZWVXujDSqbkqygaNB+mIoAqMfO37Y3yKOTcfbl5O5xi7XkegFsn+BGmY2Di
         D8KwIO4qfr8KYWPuGR0enmfAxn6C3JRy1ZhoUpYv6zYsuqOZjTT0ikLHTnnksToKCPsY
         srOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696925457; x=1697530257;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1a48CmyL9ZDxqT8GaS516AQ8gzDOMjf9YgIiThoGiys=;
        b=OXcJgjl5fbu1TBOjHpeVW3G1/Xrn25LwzPEzeH0zKdY18W4H5Q177dA04HlbVE8jSI
         R3ZIxubkeIYoVaWD4xWParKt4DoCsc1B32pOwlMuySuGNuKJw9pKj36hTq/zF5nymbL5
         mEBv0SYbfnYyix6bA1Z4OYH2vVHn9OqqUui2Yazb4LxZDE2opN9JzWDrvSiCPJhYRgLi
         n27f11uTPGROZXHWa+LT86kTl/PMBANP8a7EQhMnDK9lrQp6nxKfe5pLITRrEVIx4mqU
         iLIXtTqVJqZzk50ywZk6FKBvJ9GqbCvbHQLqfvGtuT2KbrUnuK6C2llQg11ed5zZ0j3L
         en/A==
X-Gm-Message-State: AOJu0Yyx75368bEa2p0lhL1Ys6gQJPsfe4DZFKm9pPIIfKfVpv285sId
	y6tLxgJrRke3BhNY8lJ/5I7QSA==
X-Google-Smtp-Source: AGHT+IH2EG3+O/1Qs0XpA1QByo9hC1ybArnKOkeeU3N5GC1Yqu4n5+ax+pQS2hcoI9oYEWdqf7rZ7g==
X-Received: by 2002:a2e:9455:0:b0:2bd:19c5:3950 with SMTP id o21-20020a2e9455000000b002bd19c53950mr14597002ljh.33.1696925457458;
        Tue, 10 Oct 2023 01:10:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:2eac:5b51:e0a4:4807? ([2a01:e0a:982:cbb0:2eac:5b51:e0a4:4807])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d6b0b000000b00324853fc8adsm11818176wrw.104.2023.10.10.01.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 01:10:57 -0700 (PDT)
Message-ID: <9fe7d0d2-3582-4b62-be9b-aa9134c18023@linaro.org>
Date: Tue, 10 Oct 2023 10:10:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v1] arm64: dts: amlogic: Used onboard usb hub reset on
 odroid n2
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231010032446.3194-1-linux.amoon@gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20231010032446.3194-1-linux.amoon@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On 10/10/2023 05:24, Anand Moon wrote:
> On Odroid n2/n2+ previously use gpio-hog to reset the usb hub,
> switch to used on-board usb hub reset to enable the usb hub
> and enable power to hub.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>   .../dts/amlogic/meson-g12b-odroid-n2.dtsi     | 36 ++++++++++++-------
>   1 file changed, 24 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 91c9769fda20..9e671444eca6 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -31,6 +31,30 @@ hub_5v: regulator-hub_5v {
>   		enable-active-high;
>   	};
>   
> +	/* USB hub supports both USB 2.0 and USB 3.0 root hub */
> +	usb-hub {
> +		dr_mode = "host";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* 2.0 hub on port 1 */
> +		hub_2_0: hub@1 {
> +			compatible = "usb5e3,610";
> +			reg = <1>;
> +			peer-hub = <&hub_3_0>;

It seems peer-hub is missing from Documentation/devicetree/bindings/usb/genesys,gl850g.yaml, could you add it ?

Thanks,
Neil

> +			vdd-supply = <&usb_pwr_en>;
> +		};
> +
> +		/* 3.0 hub on port 4 */
> +		hub_3_0: hub@2 {
> +			compatible = "usb5e3,620";
> +			reg = <2>;
> +			peer-hub = <&hub_2_0>;
> +			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
> +			vdd-supply = <&vcc_5v>;
> +		};
> +	};
> +
>   	sound {
>   		compatible = "amlogic,axg-sound-card";
>   		model = "ODROID-N2";
> @@ -234,18 +258,6 @@ &gpio {
>   		"PIN_3",  /* GPIOX_17 */
>   		"PIN_5",  /* GPIOX_18 */
>   		"PIN_36"; /* GPIOX_19 */
> -	/*
> -	 * WARNING: The USB Hub on the Odroid-N2 needs a reset signal
> -	 * to be turned high in order to be detected by the USB Controller
> -	 * This signal should be handled by a USB specific power sequence
> -	 * in order to reset the Hub when USB bus is powered down.
> -	 */
> -	usb-hub-hog {
> -		gpio-hog;
> -		gpios = <GPIOH_4 GPIO_ACTIVE_HIGH>;
> -		output-high;
> -		line-name = "usb-hub-reset";
> -	};
>   };
>   
>   &i2c3 {


