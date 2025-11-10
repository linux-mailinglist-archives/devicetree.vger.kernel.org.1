Return-Path: <devicetree+bounces-236746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1002FC47032
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7F76422F4B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B43D30BB94;
	Mon, 10 Nov 2025 13:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pbc7vYrC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4933626F297
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762782089; cv=none; b=iN7txGH8EpQJmrKcUFr2VaDH19yx0EyXGl9HrM4VIiqBx1uMUvqDHvWt6XHltSn6sWFT2PcGOGjjFuxpyNkq5SewknRAayaVEjruMseOWTc1/X763N6+P41fEeVrAm2DmajIz94nAW75wBNkbFtfTUC4g6aCp7oO7Exp7uWcj4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762782089; c=relaxed/simple;
	bh=KN0w6qAe1O5qDfYrH8AatfJd0V7Fi4K8T0H7k/dpmFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AcSz0Eb+yrVRv0vpKMcrdaERe1MF2WZPeyN2136kw0ArGnaXHawWUZYk4LAVoUnFK6A5rCL6y8pfYzVmFk8sWC5aMBtYS+mGnuMb/dfdt/gcK4xkDZMLtXHuHVSCmDvFzuN59aWJ5kZF/6z7eW3q7xxxGdJq0nlH8m2hxnYQsfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pbc7vYrC; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-42b3720e58eso1155189f8f.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762782084; x=1763386884; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Z8vx2FUknmzQrwBbS9dXJNGrhupJ+dgMCFmrh9YnAA=;
        b=pbc7vYrCAjZSR4EwQO642ibKThe7vnJWylQzVu6ScWbxHZgRXx61Gsa7WXDTfTYFjU
         o+Fk0th0ZhrVFTDCSIHHdGsKDrnN6r94K1KXy0ORW6ztJkBWs5RQC/T4ZQVvt4qUt9rH
         pGr6pjpx+1gwXwwZp2Zicth61lLae9S2iQ6lMfsjX+1MwxUjFwPkCYwQJU/3tYpIVNuQ
         hga+qIxHJczsFmGngWXOI825HNreq6iihkIUtGeu+NtNSccwO1bcla/w9vENYDL3HNBx
         hxh9+mMdS382cBVu34i9nGhAzxEQgod6kdNYpAHGuY2dFsJ5LR0wpKmnU8W/UEXxM+16
         IVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762782084; x=1763386884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Z8vx2FUknmzQrwBbS9dXJNGrhupJ+dgMCFmrh9YnAA=;
        b=b++eenEWU1bq0Bp9xfo+mDVgVCkpxnO6cMV/MFzKZnQQVp2+DR+T+NeOoc4CZaZ+/R
         v74KHdEjxDo8fR2s3cq/3tR+9X8djHH7EBCPDQqmj0JbEOKPdk9j9hNANgF3wzGU36ME
         52FKRVekESrzG5XwWrVU1GqyM9bYHqaIvflXhBWvpgSTGVvV1Sw34vEG08ZrenuUkIEw
         rJwY50ffuq8rFGon8zNiiUdyHElcexiobv3+bRrJ4IpbpJjHGc7ETykg5f0W1Ep3bsVP
         sH50HMzpm+hMYojHKT91IOvp9q28cab+IRPQIw7rqUdI091uMfvDC7gMMbhR/vroZSx9
         HYoQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/h18BaEzuYknL9H+g+N/3mZsSRhC14tzBxbYKrw4SXSK6DMpqo8FnG/aGJtQN414j1jKzq71n5AmM@vger.kernel.org
X-Gm-Message-State: AOJu0YyFuKdv+V1e78KbnJnYUAZb7C9qkTepn53hfoLVPb9CjmkXPG2l
	cfswom0bY3L3hUgLrqRSg5pAZ3NSFFMYOLGrkmHXCn1JTdLi9OfFFkiu++8PRDNgQg8=
X-Gm-Gg: ASbGncsWyOpw/JbUhtvX/qa+y8tqDaNylmU47Wj8Pl5JYaDYJi0y0Ww0VyLKDRdXAyl
	vSN+zdH+BLLem8OshGFhre/hqoBVXIul9ihMqmO6ifhNfFPROwhENKXH2+PIeqkvCAbm0WaFCZY
	//fXzifJM5EWWKaUXvVGGzD0VEkeY1o7MJ82txoo7D+1VGVWebdcOQM2HIEiw/8cnfhxhgurfet
	84gDfYhohYucLoeOwGc3q8E+NCJS0mIlt5aLr4w2uO8nXeZnhujVor+aMQaX5DZfyalRLxahj5L
	WZmCf9wk5SZXOpmaNC98eb08gOOBJVdBBcAZLKDeZVKw7O97moGsHBozRiejqsW7yJjcXBhpx5/
	D/xJQOWQMBXUc6qjH4D7g0QRPDCg1MJl3yCVGoisg2yqGI+SYnGs+vlfv+eQVlzX4nueAuOzCLC
	rbznR5Op0T3hU=
X-Google-Smtp-Source: AGHT+IEW9Js0mnXx/rOq3W/yNiXQ1UEN+TONe9DJgelI9gDGHI0fV/F2A2Mdg0LAb9R9hkSCrd5i2g==
X-Received: by 2002:a5d:5f42:0:b0:429:bca4:6b44 with SMTP id ffacd0b85a97d-42b2dc1f4e9mr7119563f8f.13.1762782084288;
        Mon, 10 Nov 2025 05:41:24 -0800 (PST)
Received: from linaro.org ([2a00:fbc:eb43:2253:ad6a:84ac:23bf:2782])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b29e4b9bdsm18489964f8f.32.2025.11.10.05.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 05:41:23 -0800 (PST)
Date: Mon, 10 Nov 2025 14:41:15 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Georg Gottleuber <ggo@tuxedocomputers.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ettore Chimenti <ettore.chimenti@linaro.org>,
	Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
	wse@tuxedocomputers.com, cs@tuxedo.de
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: Add device tree for TUXEDO
 Elite 14 Gen1
Message-ID: <aRHre28Nbyv6ShbU@linaro.org>
References: <20251105154107.148187-1-ggo@tuxedocomputers.com>
 <20251105154107.148187-7-ggo@tuxedocomputers.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105154107.148187-7-ggo@tuxedocomputers.com>

On Wed, Nov 05, 2025 at 04:41:06PM +0100, Georg Gottleuber wrote:
> Initial support for TUXEDO Elite 14 Gen1 based on Qualcomm Snapdragon X
> Elite SoC (X1E78100).
> 
> Working:
> * Touchpad
> * Keyboard
> * eDP (no brightness control yet)
> * NVMe
> * USB Type-C port
> * USB-C DP altmode
> * HDMI-A port
> * WiFi (WiFi 7 untested)
> * Bluetooth
> * GPU
> * Video decoding
> * USB Type-A
> * Audio, speakers, microphones
> 	- 4x speakers.
> 	- 4x dmic
> 	- headset
> * Camera
> * Fingerprint reader
> 
> Signed-off-by: Georg Gottleuber <ggo@tuxedocomputers.com>
> Signed-off-by: Srinivas Kandagatla <srini@kernel.org>
> Signed-off-by: Ettore Chimenti <ettore.chimenti@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |    2 +
>  .../qcom/x1e80100-tuxedo-elite-14-gen1.dts    | 1486 +++++++++++++++++
>  2 files changed, 1488 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 296688f7cb26..598bf4c6e84a 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -350,3 +350,5 @@ x1p42100-hp-omnibook-x14-el2-dtbs := x1p42100-hp-omnibook-x14.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-hp-omnibook-x14.dtb x1p42100-hp-omnibook-x14-el2.dtb
>  x1p42100-lenovo-thinkbook-16-el2-dtbs	:= x1p42100-lenovo-thinkbook-16.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-lenovo-thinkbook-16.dtb x1p42100-lenovo-thinkbook-16-el2.dtb
> +x1e80100-tuxedo-elite-14-gen1-el2-dtbs	:=  x1e80100-tuxedo-elite-14-gen1.dtb x1-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-tuxedo-elite-14-gen1.dtb

Please also add x1e80100-tuxedo-elite-14-gen1-el2.dtb here (similar to
the other lines), so that the EL2/KVM-specific DTB is automatically
built and included in the installed DTBs.

> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> new file mode 100644
> index 000000000000..0bfe5931434e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> @@ -0,0 +1,1486 @@
> [...]
> +	vreg_edp_3p3: regulator-edp-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_EDP_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 54 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&edp_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-always-on;

Does this need to be always on? It should be possible to enable/disable
this supply together with the panel (and it is already set as
power-supply for the panel).

> +		regulator-boot-on;
> +	};
> +
> [...]
> +	sound {
> +		compatible = "qcom,x1e80100-sndcard";
> +		model = "X1E80100-TUXEDO-Elite-14";
> +		audio-routing = "WooferLeft IN", "WSA WSA_SPK1 OUT",
> +				"TweeterLeft IN", "WSA WSA_SPK2 OUT",
> +				"WooferRight IN", "WSA2 WSA_SPK2 OUT",
> +				"TweeterRight IN", "WSA2 WSA_SPK2 OUT",
> +				"IN1_HPHL", "HPHL_OUT",
> +				"IN2_HPHR", "HPHR_OUT",
> +				"AMIC2", "MIC BIAS2",
> +				"VA DMIC0", "MIC BIAS1",
> +				"VA DMIC1", "MIC BIAS1",
> +				"VA DMIC0", "VA MIC BIAS1",
> +				"VA DMIC1", "VA MIC BIAS1",

Please drop the two "VA MIC BIAS" lines, see
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b49e37de8e70bc433b526a9f4382f72b7ac6492e

> +				"TX SWR_INPUT1", "ADC2_OUTPUT";
> +
> +		wcd-playback-dai-link {
> +			link-name = "WCD Playback";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +			};
> +
> +			codec {
> +				sound-dai = <&wcd938x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +
> +		wcd-capture-dai-link {
> +			link-name = "WCD Capture";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
> +			};
> +
> +			codec {
> +				sound-dai = <&wcd938x 1>, <&swr2 1>, <&lpass_txmacro 0>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +
> +		wsa-dai-link {
> +			link-name = "WSA Playback";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
> +			};
> +
> +			codec {
> +				sound-dai = <&left_woofer>, <&left_tweeter>,
> +					    <&swr0 0>, <&lpass_wsamacro 0>,
> +					    <&right_woofer>, <&right_tweeter>,
> +					    <&swr3 0>, <&lpass_wsa2macro 0>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +
> +		va-dai-link {
> +			link-name = "VA Capture";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
> +			};
> +
> +			codec {
> +				sound-dai = <&lpass_vamacro 0>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +	};
> [...]
> +&remoteproc_adsp {
> +	firmware-name = "qcom/x1e80100/adsp.mbn",
> +			"qcom/x1e80100/adsp_dtb.mbn";

We need a custom ADSP firmware for the TUXEDO, so this needs to be a
device-specific path (so that you can upload the correct firmware to
linux-firmware). e.g. "qcom/x1e80100/TUXEDO/adsp.mbn"

> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/x1e80100/cdsp.mbn",
> +			"qcom/x1e80100/cdsp_dtb.mbn";

If you expect that production versions of this device will have the
(firmware) secure boot enabled, this path should also be
device-specific. If retail versions will allow loading arbitrary
firmware this can stay as-is. 

Same for all other "firmware-name"s.

> +
> +	status = "okay";
> +};
> +
> +&smb2360_0 {
> +	status = "okay";
> +};
> +
> +&smb2360_0_eusb2_repeater {
> +	vdd18-supply = <&vreg_l3d_1p8>;
> +	vdd3-supply = <&vreg_l2b_3p0>;
> +};
> +
> +&smb2360_1 {
> +	status = "okay";
> +};

You have just a single USB-C port, so I would expect that there is also
only a single SMB2360 instance (for charging). Perhaps you can just drop
this node?

Thanks,
Stephan

