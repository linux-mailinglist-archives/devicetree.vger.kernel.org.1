Return-Path: <devicetree+bounces-276003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKXVI0y/t2n5UwEAu9opvQ
	(envelope-from <devicetree+bounces-276003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:29:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B166296252
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:29:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CE9B430099A3
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83889373C0C;
	Mon, 16 Mar 2026 08:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XMht8q4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660A536492A
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773649734; cv=none; b=jZ1MYoEbeH4uw0WqCI+kpJ30zN8sk16/celu+kGazPOKdHLcrVGDKN0x9hEN8rwUJutgUlsnlOJrXpP775ZGfHA2+xaOEA7P02s4XOO9nIiAnHtRmEH109VdGMypI+vsDiWCZlaclo18tppRb34nnFuqMFjAn6N6Evnv7a2DXnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773649734; c=relaxed/simple;
	bh=tFidrwbsSVF0BctrFcOY3al2UBO/vzHaTCHov8ieLq8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cIokBRVAveitf6WsCjO7FNnTFfTLuLFEzIclEOylDV3M0lcQAHcVnFuxKuO37YCGTDdR63lMbIr34dnR+KniqFlXI/T4oy2ymymJkDF7eZefmF9Lblx5BcfOXyXcqIjc1tb7uRWDWfAWlI/oM/qHcdwvI6iEswoaCOFBXrp+xG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XMht8q4b; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439b6d9c981so3011767f8f.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773649731; x=1774254531; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sI0jkZdZQ/XX2Ny4kKQlN4TDMozZ6Lmx2d/MpWh8cBU=;
        b=XMht8q4bBpmU8rdMuyUSXRxcmcTtm4DZDIEhKsbRH5x0O9RfAyyyIhiU8EO8/TnCTp
         tX4mPdhN+B6KGAjHhJhAXQ506v0rxbfbUSVbCRFuDG7prU2lHcRH2fvsBJVrISm8/tiR
         1hfhPOtAK07aYWAibQTufAJj59/EPPok3IhVSYRUUX8wGJX/bM+9/uYXXQ+BEe47oRkl
         rNxp/3qK9KLPuTquq/Q3Q5Komvsuu2fNJlzZw9mnLOPQlyJ7fOqsRBC6xtUI+mCzY2Q8
         RX6b8qn7GcUFYeDMnReJKnq9ylpLXfZbKyY3/4dU/IQYWF+UD/OUGQCJonDOFwqZVY7u
         A40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773649731; x=1774254531;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sI0jkZdZQ/XX2Ny4kKQlN4TDMozZ6Lmx2d/MpWh8cBU=;
        b=OwZ5jKrGzJBj8vF1TYX/l+FVJWNmEBmshQkMrweKQpS6AdUYZ10VdqBiGQtxJYDPmS
         q7uGBDAT8G0Ddi2HdIBmZxgr0U4kDEQ+gfigmfQkJWoqoiONRw321VBAhVQUI2vOJw2g
         KmxYiMsM5CQBHQg9KRttrMpAORRTlciLq4vDjWmGKs7+eujjX015BHE1u1CXxqIrKYZe
         IFkFF2cndTwIH4JcHEdCQNJmRULkl9z2BRXOEbXHPjAQ2H32rZOKx968I72TiXEwkuj4
         2Cs5qUVYErb6Lj5JFFzcMqRIxt8vSZ5gjNmPFXCOAkT/ha5z/y5Acq9vrQOZycIl4366
         Nf8Q==
X-Forwarded-Encrypted: i=1; AJvYcCU7gx6ZVPLSBMpUO60brAzVGjhBaztHat0mfJaqILrGp6VTJLeQGWElw3PVvAMxUcXQB+BW6PW74/68@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0k0luQ/kTD52sAtcSMzS+ZPw4HQ4eGHRStLJBZDiPejQN2NLX
	RTXZdqPdyPz+j+51K2MKOpCXrs8g0dwj7Z3DXlNx7x8YNdaXF59/w2DIycXrunQJbOI=
X-Gm-Gg: ATEYQzzzgLdcE/dCqtYo1HopVKdakaSyg8XequjniKk1Yb6I+S1zBH6p1iomudaClXO
	UU6ty7XS2NUaw/qT2iJg+tJDEErkcIg3+q0WEMxIVbg2gFHWjkoc0OsciIneQ0KLPyVcOerFvdO
	wI2vM47eLvVxLhvPJLEJza//y4bDcm7eXBJJ8j92qpWwzDqiQfsHih96E9fdd5gE6NDd1IkfVlX
	SnoCxfRzxI7x37MC1kQ4e4IuEm1FltRUmww+LwOyH+w0K4SNHE/KRrGYAVjO40Q7b53m/t+h0Os
	d6a+Es1ty9nuuVBnZHX3oLWyVsXdsQElv1nZOGF6XidgKRoICmFSGtmpo9jz6M2rTPhHa8MtEiF
	jA3cl4a9TPYjbmQI63YSlRRp3ruzoC2bVMP0LsjclWaTdbyBiYb7PxPJTN8Xq6NvV3d3sl6V44K
	O43MDEyTrwZ0slwx0DX1PrCrkBvv79Ac3G2T41Gev51MT8ED4qZizN8QTU+wPsLOeLyfVbckJ+5
	/gG+v0=
X-Received: by 2002:a05:6000:2501:b0:439:d0ac:8a8f with SMTP id ffacd0b85a97d-439fdf3407bmr29701850f8f.1.1773649730716;
        Mon, 16 Mar 2026 01:28:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:a12d:6e5e:e745:c5e8? ([2a01:e0a:106d:1080:a12d:6e5e:e745:c5e8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19b936sm43500946f8f.5.2026.03.16.01.28.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 01:28:50 -0700 (PDT)
Message-ID: <b8d00023-ebe1-4abe-82ef-c8dc20f333dc@linaro.org>
Date: Mon, 16 Mar 2026 09:28:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 10/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add ov02c10 RGB sensor on CSIPHY4
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
 <20260316-x1e-camss-csi2-phy-dtsi-v2-10-859f3fa55790@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-10-859f3fa55790@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276003-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.36:email,linaro.org:dkim,linaro.org:email,linaro.org:replyto,linaro.org:mid];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 4B166296252
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 02:12, Bryan O'Donoghue wrote:
> Add in the RGB sensor on CSIPHY4.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 77 ++++++++++++++++++++++
>   1 file changed, 77 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index 1611bf7302ddf..b09b437e0cd50 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -7,6 +7,7 @@
>   
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/input/gpio-keys.h>
> +#include <dt-bindings/phy/phy.h>
>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>   
>   #include "hamoa.dtsi"
> @@ -863,6 +864,66 @@ &gpu_zap_shader {
>   	firmware-name = "qcom/x1e80100/LENOVO/83ED/qcdxkmsuc8380.mbn";
>   };
>   
> +&camss {
> +	status = "okay";
> +
> +	ports {
> +		/*
> +		 * port0 => csiphy0
> +		 * port1 => csiphy1
> +		 * port2 => csiphy2
> +		 * port3 => csiphy4
> +		 */
> +		port@3 {
> +			camss_csiphy4_inep0: endpoint@0 {
> +				clock-lanes = <7>;
> +				data-lanes = <0 1>;
> +				remote-endpoint = <&ov02c10_ep>;

This is quite wrong, with the PHY in a separate node, the lanes layout has nothing
to do in the "controller" ports since the sensor is connected to the the PHY which
configures the lanes functions.

The PHY should be a media element in a port/endpoint chain to properly describe the
data flow from the sensor to the controller.

PHY as a separate node is a first step, ideally all components of the CAMSS should be
in separate nodes with port/endpoints describing the whole data interconnection.

Neil

> +			};
> +		};
> +	};
> +};
> +
> +&cci1 {
> +	status = "okay";
> +};
> +
> +&cci1_i2c1 {
> +	camera@36 {
> +		compatible = "ovti,ov02c10";
> +		reg = <0x36>;
> +
> +		reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_rgb_default>;
> +
> +		clocks = <&camcc CAM_CC_MCLK4_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK4_CLK>;
> +		assigned-clock-rates = <19200000>;
> +
> +		orientation = <0>; /* front facing */
> +
> +		avdd-supply = <&vreg_l7b_2p8>;
> +		dvdd-supply = <&vreg_l1m_1p2>;
> +		dovdd-supply = <&vreg_l3m_1p8>;
> +
> +		port {
> +			ov02c10_ep: endpoint {
> +				data-lanes = <1 2>;
> +				link-frequencies = /bits/ 64 <400000000>;
> +				remote-endpoint = <&camss_csiphy4_inep0>;
> +			};
> +		};
> +	};
> +};
> +
> +&csiphy4 {
> +	vdda-0p8-supply = <&vreg_l2c_0p8>;
> +	vdda-1p2-supply = <&vreg_l1c_1p2>;
> +
> +	status = "okay";
> +};
> +
>   &i2c0 {
>   	clock-frequency = <400000>;
>   
> @@ -1410,6 +1471,22 @@ &tlmm {
>   			       <44 4>, /* SPI (TPM) */
>   			       <238 1>; /* UFS Reset */
>   
> +	cam_rgb_default: cam-rgb-default-state {
> +		mclk-pins {
> +			pins = "gpio100";
> +			function = "cam_aon";
> +			drive-strength = <16>;
> +			bias-disable;
> +		};
> +
> +		reset-n-pins {
> +			pins = "gpio237";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +	};
> +
>   	edp_reg_en: edp-reg-en-state {
>   		pins = "gpio70";
>   		function = "gpio";
> 


