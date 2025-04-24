Return-Path: <devicetree+bounces-170477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE033A9AFD4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:54:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B30E71B830E1
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 13:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB7419CC02;
	Thu, 24 Apr 2025 13:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LbJAJE0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA821A0712
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745502723; cv=none; b=a/U7MS0V9zno48/mRplYroeZ/HZ+aA+JnZiJodFq3suz1Ayt9kf+34Xfkqz62nj+tERt15ptzAnPMV2rxB73xG9d78gWmo+NbHB0sUffDf1wt+CZKdjwOVjVxRJG+A0buEUX8osq7B/xyiVOpD2Ibqn/s+jShCEESTATuDzDWRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745502723; c=relaxed/simple;
	bh=HuSOrMsBPvuGrn3yCiHEz7f6WJyDx/K7FHHcANFQ3v4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Cn5Hj3MHNsWu9mvPyDPFDTrm+uSEzJ2JoGx8cBjClObDVv0k0dmnM7z1ZWsMFZdNmPXzKBVl6mhMZKvlHijJKj6/3N7DPK+/vps4GXrpRR0x4Al6czFPEVHaVZO/80qS5lPkKqZJs18yzHXv3wYlegIcGbZa1BTFOYc9XxWCJc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LbJAJE0R; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39c13fa05ebso713565f8f.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745502720; x=1746107520; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ol+RP36G4w38iAX1eUTpERYoeJnh8WjSro9BvevXWbw=;
        b=LbJAJE0RonQRNOqt3LtqDyXav18CEHyT4p+BINufoiJKCiZS0qLXdC8Rd716QSmAQm
         7BIj7kq0ibcARscoaWNbgxbm2b1hm1yOYCr0c8+NIIv6XHNn9yyTmCQOFniDAat/rmsH
         lvyWZz/OeOwrPaTiEEFsC+GuwH2AVC5A/6yD1ASaVwFaE/Fmb6xjZAaAftbOSOiqmE/i
         eJOx49HEnrZf057V5AeOP89tf/dtc/yoaxTgke/OxqaquJdkSxQHbEy/UYoXnV8G+VRh
         PhGQpDTa+xPS+80TrA0A67fmOQsJTvh/2On4sSv476YyT+cfIQVFWa3xRnm4+1r2txv9
         E+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745502720; x=1746107520;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ol+RP36G4w38iAX1eUTpERYoeJnh8WjSro9BvevXWbw=;
        b=nR17YsCmRuE1OYuwww/uKbGRZK+l5cmQnq0/PaePstavC5TF2PhxeLbahXhMuWtW4y
         bpi5QOdJ8hP3sjMwXCP0ZeUOLpKdF7E6ah31lI05/iCz+n7b2Bw6HyDMvKPpwskPMjMQ
         UAhA/J6vM3rjOmZ5uOONOLS1LsyjQ/IIkvRTC6LmfPD0gNzZ5ZaoelNxqEEXqx9JaO1n
         6AOHtx3J0GSM2x2jgV6/h3CHM8YZfcMJ5Fyl8ZXIkLpjCtI3kCJBS5iKq1GNr1KxLtfe
         fHvu2gpxu1SAjpy1PBND71zaKai/MdfP9gXzLz296BkR0uADEWFjMeBHfflP+y2xlXD8
         aw7w==
X-Forwarded-Encrypted: i=1; AJvYcCUFLVgvnQ4LSLmSq5+pwrJFWo7d7gwLFb5VrzzP0uaY7GZKPiS5X5dKBa6mObQEV11HHYsBq0k4xc/U@vger.kernel.org
X-Gm-Message-State: AOJu0YzeI48MWrw3gTV+k/oJFMAF8/4Kym6JjWo2nWsOvm/qzT4R8fOR
	fuX7w4GTasty7BG/QZR/ZgAJEFieUsbDafBL5q1opQ96t3GP1P8eCe2HZNvrH1s=
X-Gm-Gg: ASbGncvQDk2OEg50gcawFd9WEC9cXvG6lgS8U9w/0ji75nVqBM4MIqAETgm0o7Dm8gr
	op9DJeQ+CoMg1Yp6zXKAkdWxUE3lq9rmB4KSrVJPCiqOvRIfwN8MaS7ymM1mmTig3EvbAH9c08S
	oCvymtTZaNclb4KPN0iK9E/0sIxY3Ml1Vc3gUr+Nt36M0OGei+GaGFw0LCuahKpsIfVdnyBo0VC
	0eBTqqekM+J5Pbql88yxhRGSn9xY4PCw1gQR8ErJGqrgSOONklbJ6RyyhIGQHl15w7beqmMFKEa
	q/fGtv6LJnuGNPbwAZRGiNyWSnuoszLVLW8IX4e+dsholNOex+1eWiaNnNumajw5uLaOwwVk5X7
	0w8BVg22RrS86cOdenw==
X-Google-Smtp-Source: AGHT+IGt0ddBz4oRFk+JyZ3+u5ZV6Qt1q6gXu50XzgPpKAgL/bI02kyNDZx6wTjkCqJ8NEWTMa8wfw==
X-Received: by 2002:a05:6000:178a:b0:391:4674:b10f with SMTP id ffacd0b85a97d-3a06cfa2c6amr2261345f8f.36.1745502720246;
        Thu, 24 Apr 2025 06:52:00 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:a24a:bfda:f031:720d? ([2a01:e0a:3d9:2080:a24a:bfda:f031:720d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a06d4a815bsm2169998f8f.8.2025.04.24.06.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 06:51:59 -0700 (PDT)
Message-ID: <479224f1-86f1-4561-af28-01b6354b4829@linaro.org>
Date: Thu, 24 Apr 2025 15:51:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC/WIP 3/4] arm64: dts: qcom: sm8750-mtp: Enable USB
 headset and Type-C altmode
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>, Abhinav Kumar
 <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <20250424-sm8750-display-dts-v1-3-6fb22ca95f38@linaro.org>
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
In-Reply-To: <20250424-sm8750-display-dts-v1-3-6fb22ca95f38@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 15:04, Krzysztof Kozlowski wrote:
> MTP8750 does not have audio jack connected and relies on USB mux
> (WCD9395).  Add necessary nodes for proper audio headset support along
> with USB Type-C altmode and orientation.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 58 +++++++++++++++++++++++++++++++++
>   1 file changed, 58 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index bd0918e8a7a7e03530eea577c7609454fecfdaf7..c3470e1daa6b7f31196645759be23fb168ce8eb7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -53,6 +53,15 @@ wcd939x: audio-codec {
>   		vdd-mic-bias-supply = <&vreg_bob1>;
>   
>   		#sound-dai-cells = <1>;
> +
> +		mode-switch;
> +		orientation-switch;
> +
> +		port {
> +			wcd_codec_headset_in: endpoint {
> +				remote-endpoint = <&wcd_usbss_headset_out>;
> +			};
> +		};
>   	};
>   
>   	chosen {
> @@ -220,6 +229,14 @@ port@1 {
>   					pmic_glink_ss_in: endpoint {
>   					};
>   				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_sbu: endpoint {
> +						remote-endpoint = <&wcd_usbss_sbu_mux>;
> +					};
> +				};
>   			};
>   		};
>   	};
> @@ -845,6 +862,42 @@ vreg_l7n_3p3: ldo7 {
>   	};
>   };
>   
> +&i2c3 {
> +	status = "okay";
> +
> +	wcd_usbss: typec-mux@e {
> +		compatible = "qcom,wcd9395-usbss", "qcom,wcd9390-usbss";
> +		reg = <0xe>;
> +
> +		vdd-supply = <&vreg_l15b_1p8>;
> +		reset-gpios = <&tlmm 152 GPIO_ACTIVE_HIGH>;
> +
> +		mode-switch;
> +		orientation-switch;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				wcd_usbss_sbu_mux: endpoint {
> +					remote-endpoint = <&pmic_glink_sbu>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				wcd_usbss_headset_out: endpoint {
> +					remote-endpoint = <&wcd_codec_headset_in>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
>   &lpass_vamacro {
>   	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
>   	pinctrl-names = "default";
> @@ -973,6 +1026,11 @@ &pmih0108_eusb2_repeater {
>   	vdd3-supply = <&vreg_l5b_3p1>;
>   };
>   
> +&qup_i2c3_data_clk {
> +	/* Use internal I2C pull-up */
> +	bias-pull-up = <2200>;
> +};
> +
>   &qupv3_1 {
>   	status = "okay";
>   };
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

