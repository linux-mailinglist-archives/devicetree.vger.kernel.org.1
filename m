Return-Path: <devicetree+bounces-69877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B48428D1D26
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16576B24653
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F159E16F844;
	Tue, 28 May 2024 13:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A/vZxkx1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F4116F831
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716903255; cv=none; b=FljMY3gBiPZWXB+2xsRXrUHPstidw/WsIpVNRfBNPHJeWxEFMF8ALiJCSrDpv0+Dtwh1aZ4L7F6VL2XAmY9GAylWPcyRBnRDugUxyLHt+B91SQcE2SsD/2yuYYOt/n9og9XcVx4PEqBMEMiO1Xgo/9sLEaWl3TD9Wn//P5ioVbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716903255; c=relaxed/simple;
	bh=/D/BZxkV8W2P6r6SxTpr8oyRNUh6k8SoRVxsDh/8djY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=s1R7vuYnOBw8TG/IwzQ1JBA57oUgy4wYVy1VRvGiFKsXsv1iGDR/5SQQ2/DxsKSwB+UP5jCeS7aD6ZoVBCivreRQGDQ3mFuTX3MvUpUwPdH0ydZkAsj0wdVIRstaNiL14lryp4Taxs2vKxjWAmCN++0rCLcgjpBQ9qQir5t9liU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A/vZxkx1; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4211249fbafso6633495e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 06:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716903252; x=1717508052; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xtaRbzBW2FmBq00uLRNYJrl9av0hwx9CNWB6QXoBHec=;
        b=A/vZxkx15IJscvgkx7VhIDjq7gK6oRvhE31Mbt6GKD4dShXHtpEGvjhpFmNuBQUPGZ
         fNYcSOn0fueYlXPkQEdymwby5k7nrKyRvGJrlM6jMSI+puWcMI7MP94elMp3g7BFJPyT
         xAC4KYpr/v7lwSq/1us95DsdFgeHeQtJVTL5IwoHqiiuNbg5VHfM+SMxqFeff37KSSH2
         M2x2l8fQB0sgsh31Svo7auPx1I9VNYlH9o+L2pDM/a35xeBCOLpcdgzJk49iPCB8bpwG
         k47h3l7sR0/wDAe0dThPX8zmkTXCHQIRG+yCFOhY4fo+H5GSPh/cXwQDyC3aljgqLvWV
         tyuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716903252; x=1717508052;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xtaRbzBW2FmBq00uLRNYJrl9av0hwx9CNWB6QXoBHec=;
        b=EtUNPgivgmKfLWJ1p/pRMIrmm6tFtXxmDCbeIfsftEso6gddNaRh5Z8M6ljRLh+3M+
         2PPhusyhx/f2fd/028ictZivM+tQPNDEwjrtDkOxI6pNQZ9ZzxS2+QC5CAt63LBHchRT
         iM+hgql/ExcJjs7M03lQh1xj5lx+7hOnyjm4NdVEjlhO6WFdmC6hptPIKU9l0wFt8QWE
         60ZeWKgt5L0MKpSkQZGxa1RA4xwIqxcGhwIjUE6I4qbXrPohoHq1ry9bDC21YebyKpi3
         XxlNBOEbENKyBMQ4qBn03qsha7ovnxayvVw3Al2JXPwt83wNIdiIhZHDFF/XjFHIhArH
         xuZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlSFL7m5UjTHoJ5HIROw03nPORPK/W9oPAuTTe0SF74quS5GRcezlAezLTqGk0PKRdK2Na+7YbeBF+gG9x0v60JgUuEbL9J2cf5g==
X-Gm-Message-State: AOJu0Yzg1Lg2xGA7pMkDV1ne+fkdI3regyjxSjVhBf3vSH3TgiwgBe/u
	mJmfvmHxfIICUvx06ClUwvhajIE5jkBrBK8zWNaGFej4MD1N/wRak1Q5CVrAF4A=
X-Google-Smtp-Source: AGHT+IHHeRm/5PPbzVOg65qBFrOHryVw+fWU5RzhUNglYGlZLjg3MKIhQAyFz6f7vlPAODV6LnnStw==
X-Received: by 2002:a05:600c:558b:b0:41b:d8ef:8dcd with SMTP id 5b1f17b1804b1-42108a1c620mr80958335e9.28.1716903252257;
        Tue, 28 May 2024 06:34:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8f19:f965:3f93:6385? ([2a01:e0a:982:cbb0:8f19:f965:3f93:6385])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421212c487csm7821565e9.9.2024.05.28.06.34.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 06:34:11 -0700 (PDT)
Message-ID: <4765cd08-c105-4a48-ab00-4c44fa104d7f@linaro.org>
Date: Tue, 28 May 2024 15:34:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: ad402: move thermal-zones to top
 node
To: Arnd Bergmann <arnd@kernel.org>, Kevin Hilman <khilman@baylibre.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Dmitry Rokosov <ddrokosov@salutedevices.com>,
 Igor Prusov <ivprusov@salutedevices.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240528133215.2266419-1-arnd@kernel.org>
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
In-Reply-To: <20240528133215.2266419-1-arnd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/05/2024 15:31, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> It appears that this accidentally got added into the spi node, causing
> a warning.
> 
> arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts:119.16-161.4: Warning (spi_bus_reg): /soc/spi@fd000400/thermal-zones: missing or empty reg property
> 
> Fixes: 593ab951232b ("arm64: dts: amlogic: ad402: setup thermal-zones")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   .../arm64/boot/dts/amlogic/meson-a1-ad402.dts | 62 +++++++++----------
>   1 file changed, 31 insertions(+), 31 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts b/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
> index c8579b6e67cf..6883471a93b4 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1-ad402.dts
> @@ -84,37 +84,6 @@ vddio_1v8: regulator-vddio-1v8 {
>   		vin-supply = <&vddao_3v3>;
>   		regulator-always-on;
>   	};
> -};
> -
> -/* Bluetooth HCI H4 */
> -&uart_AO {
> -	status = "okay";
> -	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
> -	pinctrl-names = "default";
> -};
> -
> -&uart_AO_B {
> -	status = "okay";
> -};
> -
> -&saradc {
> -	status = "okay";
> -	vref-supply = <&vddio_1v8>;
> -};
> -
> -&spifc {
> -	status = "okay";
> -	pinctrl-0 = <&spifc_pins>;
> -	pinctrl-names = "default";
> -
> -	flash@0 {
> -		compatible = "spi-nand";
> -		status = "okay";
> -		reg = <0>;
> -		spi-max-frequency = <96000000>;
> -		spi-tx-bus-width = <4>;
> -		spi-rx-bus-width = <4>;
> -	};
>   
>   	thermal-zones {
>   		soc_thermal: soc_thermal {
> @@ -161,6 +130,37 @@ map1 {
>   	};
>   };
>   
> +/* Bluetooth HCI H4 */
> +&uart_AO {
> +	status = "okay";
> +	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
> +	pinctrl-names = "default";
> +};
> +
> +&uart_AO_B {
> +	status = "okay";
> +};
> +
> +&saradc {
> +	status = "okay";
> +	vref-supply = <&vddio_1v8>;
> +};
> +
> +&spifc {
> +	status = "okay";
> +	pinctrl-0 = <&spifc_pins>;
> +	pinctrl-names = "default";
> +
> +	flash@0 {
> +		compatible = "spi-nand";
> +		status = "okay";
> +		reg = <0>;
> +		spi-max-frequency = <96000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
> +	};
> +};
> +
>   &usb2_phy1 {
>   	phy-supply = <&vcc_3v3>;
>   };

Oops thx for figuring that out


Acked-by: Neil Armstrong <neil.armstrong@linaro.org>


