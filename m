Return-Path: <devicetree+bounces-23749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 928DB80C3F4
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18D491F21390
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6C01210EB;
	Mon, 11 Dec 2023 09:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qBlvmSfx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F4AED9
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:08:46 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3333131e08dso4804814f8f.2
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702285725; x=1702890525; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4cJRcFR29fUFWBTO/HJarR+HfZgSnSVtsH0mlT3fpCs=;
        b=qBlvmSfx42z7wrIP+emY1hGZJSQoaprPcp7ld4rhYIlzUgu/ppHtEEtIqszC/89NIn
         0qJd5N0sHG9mAC5LFDHj1h71zuoe0IOHrI/8vzp6EMTFC8AnheHgiMmowmxCPKcHe+4l
         UuC/WyWcbMUXuTgTm/JVPa9Y1GKd9HpC7geosuUqxFDOH5AMB0ItCroLOW0XFJIpCV7p
         EAhGEM92vlgGrTlG2WDIZ5mlPe7lbDbsBizt7VuNKUsR/qeIsEB2GFCoNs8pXIZ945Yl
         x9Njj1AVJD1iT2+lhtAs7i0ImTaTjSsxAJj5mFd9aj95gXF4nQsiJEwWDWCfa/S5Bmz6
         ZcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702285725; x=1702890525;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4cJRcFR29fUFWBTO/HJarR+HfZgSnSVtsH0mlT3fpCs=;
        b=t+Y087NS0hiXodr69VvHp6wl2M+K4xai2b4NHVN3FAPtuX/8C7HZmkha3+pV6eE67o
         IS3mDRQMALOfCuwBZwy7hbIqZ9hZL6/tvMFqdff+Ab0+tkeLl0W/JWZgw2ZYc1nECVpH
         lDVc22Bq9OmBNV0pfiKn7wLOtRayZpnwZLgY2f//z5wezrUzFb2gZGIjbzpI1yFdlalk
         4xR6xFPwaEchkZbxV+jK5cp/RWE6GhmNgIfuyQzCaKSgjV8q3DLEMJZ4LQUABgUvP2lY
         nHQDIyX6Nt3KYU+YwrCd3m+tT1hEZyCqOvFb4YK9Rr51jkjLSkm5pffUcjRwYsHTAnFJ
         fAkg==
X-Gm-Message-State: AOJu0YzAfC2KEzAOlSgPLvVbuumfPbnfSCw+0new/9+cdFIYUJdEWzur
	59fYe2YJOgqliKhkSaOGNyKazw==
X-Google-Smtp-Source: AGHT+IEnvk9MNR1IJjMMAShUWmT0BdgcUG9TFEnOg7kUWjlvknurjUNKhaRZmMNg1DXk/w9jg2yZxA==
X-Received: by 2002:a05:600c:1f1a:b0:40c:3508:b40e with SMTP id bd26-20020a05600c1f1a00b0040c3508b40emr1761630wmb.245.1702285724992;
        Mon, 11 Dec 2023 01:08:44 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23? ([2a01:e0a:982:cbb0:302e:e0c2:d42c:cb23])
        by smtp.gmail.com with ESMTPSA id u17-20020a05600c19d100b0040c440f9393sm4627069wmq.42.2023.12.11.01.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 01:08:44 -0800 (PST)
Message-ID: <c336d071-34a9-4635-bcde-3861c7f11bd6@linaro.org>
Date: Mon, 11 Dec 2023 10:08:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: amlogic: drop redundant status=okay
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231209124401.93814-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20231209124401.93814-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/12/2023 13:44, Krzysztof Kozlowski wrote:
> New device nodes are enabled by default, so no need for status=okay.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Tested by comparing decompiled DTBs.
> ---
>   arch/arm64/boot/dts/amlogic/meson-axg-s400.dts         | 5 -----
>   arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts      | 1 -
>   arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts     | 1 -
>   arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts      | 1 -
>   arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts   | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi    | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts     | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts        | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi   | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts    | 1 -
>   arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts     | 1 -
>   arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts       | 1 -
>   13 files changed, 17 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
> index df16eead2c80..c8905663bc75 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
> @@ -66,7 +66,6 @@ linein: audio-codec-0 {
>   		VDDA-supply = <&vcc_3v3>;
>   		VDDP-supply = <&vcc_3v3>;
>   		VDDD-supply = <&vcc_3v3>;
> -		status = "okay";
>   		sound-name-prefix = "Linein";
>   	};
>   
> @@ -75,14 +74,12 @@ lineout: audio-codec-1 {
>   		compatible = "everest,es7154";
>   		VDD-supply = <&vcc_3v3>;
>   		PVDD-supply = <&vcc_5v>;
> -		status = "okay";
>   		sound-name-prefix = "Lineout";
>   	};
>   
>   	spdif_dit: audio-codec-2 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> @@ -91,14 +88,12 @@ dmics: audio-codec-3 {
>   		compatible = "dmic-codec";
>   		num-channels = <7>;
>   		wakeup-delay-ms = <50>;
> -		status = "okay";
>   		sound-name-prefix = "MIC";
>   	};
>   
>   	spdif_dir: audio-codec-4 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dir";
> -		status = "okay";
>   		sound-name-prefix = "DIR";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> index 0ad0c2b7dfef..4c4550dd4711 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> @@ -45,7 +45,6 @@ dmics: audio-codec-1 {
>   		compatible = "dmic-codec";
>   		num-channels = <2>;
>   		wakeup-delay-ms = <50>;
> -		status = "okay";
>   		sound-name-prefix = "MIC";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
> index 4969a76460fa..9b55982b6a6b 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
> @@ -22,7 +22,6 @@ aliases {
>   	spdif_dit: audio-codec-1 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
> index 8fc2e143cb54..0da386cabe1a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
> @@ -22,7 +22,6 @@ aliases {
>   	spdif_dit: audio-codec-1 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
> index ce548b373296..6396f190d703 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
> @@ -17,7 +17,6 @@ / {
>   	spdif_dit: audio-codec-1 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
> index 18f7b730289e..e59c3c92b1e7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
> @@ -26,7 +26,6 @@ dio2133: analog-amplifier {
>   	spdif_dit: audio-codec-0 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> index e238f1f10124..f28452b9f00f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
> @@ -18,7 +18,6 @@ / {
>   	spdif_dit: audio-codec-0 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
> index 292c718ee19c..591455c50e88 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
> @@ -18,7 +18,6 @@ / {
>   	spdif_dit: audio-codec-0 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> index e8303089bff6..74df32534231 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
> @@ -21,7 +21,6 @@ chosen {
>   	spdif_dit: audio-codec-0 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
> index e1b74b174915..376760d86766 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
> @@ -17,7 +17,6 @@ / {
>   	spdif_dit: audio-codec-0 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
> index 7d525bdb0e06..ad2dd4ad0a31 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
> @@ -28,7 +28,6 @@ chosen {
>   	spdif_dit: audio-codec-0 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
> index 50d49aec41bd..d05dde8da5c5 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
> @@ -37,7 +37,6 @@ memory@0 {
>   	spdif_dit: audio-codec-0 {
>   		#sound-dai-cells = <0>;
>   		compatible = "linux,spdif-dit";
> -		status = "okay";
>   		sound-name-prefix = "DIT";
>   	};
>   
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> index 095579c55f18..109932068dbe 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> @@ -32,7 +32,6 @@ dmics: audio-codec-1 {
>   		compatible = "dmic-codec";
>   		num-channels = <2>;
>   		wakeup-delay-ms = <50>;
> -		status = "okay";
>   		sound-name-prefix = "MIC";
>   	};
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

