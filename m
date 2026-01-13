Return-Path: <devicetree+bounces-254348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 841EFD17732
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:02:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B87AE3002D22
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9745B3815CE;
	Tue, 13 Jan 2026 09:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qqqdRzKA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520973815DB
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294919; cv=none; b=mNEiMaIYP5HQmudDM0Zkm9hOQflhv4EQpp3Ev+q4Lio+AGIhd93UwDocbMohXLhxDwVAlktWGc+7wm+C0rlYSBaHXMnaXTk7tmMvQ4lTzaWB2x1f1jz2nkxg1gR7FOLvsVNO7aa0X5GXinvUVUjxjE3JYusUc+w3eIq8d5VM08I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294919; c=relaxed/simple;
	bh=d5vjg7xqY7UHMmCIfFmjlupVbmddXpBXVY3p8jlYrm8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S+Szngm7xThxKoRvMyAOFfIM50N91ZEpipLwc3DNGl2tREwBBbu3lN2Yp6xNDVXQV7cIE2t5sgk9TEh1KuUYCnvA54dptBHrod8tKht950O4EMkboKwV8H+v4h4Pny1nmRKCFn+weBz+MW0U0ZK5tnjqFbrecZK3w4IJCiphPoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qqqdRzKA; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42fb03c3cf2so3877591f8f.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768294910; x=1768899710; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zLayOWuB+aXoZiDViiMppHrDe6uab9ztwbJVajwHoL0=;
        b=qqqdRzKA+Y8PDfN/CVIv9++Oh+tq2fdIvcuGIGAfk8s+eCgv6Mc7864UuMd8OnOfN3
         C8Y8Q9Ij4A/en/qIGG9sAE67Qtuma4J+bh86LFUPAGuwGZSJIhSkuQitILfkRebkJK+8
         PI9dXFFXb+cYB1fm23J+wE8TsCBK1sY6b00hcT7kEnIJInxfWNn36JnZgDwgrkkbU9bo
         yg2mPqBB3gKuQNAObSW6fxRaLLLm4Z9V7sYxjNMuQYJ2ONiuQAqzA4+9zMAVW7dqnmp4
         yn41a4yYk0WEyRnRBHzZXW4ZY9W3K58q4IissEUiP3cOGBrBs0w6pocrRmJmqi45Dcrx
         fKNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294910; x=1768899710;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zLayOWuB+aXoZiDViiMppHrDe6uab9ztwbJVajwHoL0=;
        b=CWsnLchmcMbBin57FIJLIxklO2u9N9pWXuYfqf2Tm2fNohDdPTQO5W2Rm2fLexDxg8
         9NQiysj4sQbLScal7V2qdq4dfZXKvWso6w6J73jLAibO4G2dg1jPwIEPO2jxgbp2Bury
         0oIjMnLXVJgY7mi/t+tfUkFS0hKkSghyn122po3Q2bY8EXt5pl02eOaafHBKPZQllAEC
         +EPTLTEklEC+Uuxum6gjXs5pOLaEODsRj+nguTmpOtQUZRXerva+nncSwGi3T3rqzfN4
         Cfz1/yTY/fvUbltC+JCG4IgZ0PPvHnWzCiJGchu8gO088dIVuHAppVKcTlnNHktsxLs2
         MUkw==
X-Forwarded-Encrypted: i=1; AJvYcCUANSmdis+JpJANYCO4V3D9CqBVg8klOwvxQErI0iI0kHHgtIJfltez/9KeSyjzN8bxEEWnjus0Hgs1@vger.kernel.org
X-Gm-Message-State: AOJu0YyKH8BJ5bf891ygf24l8Yfl53wb6xlobDbzEgD8V1dVq/Jeh6RF
	eRJ1KRuAJN5ZrB6PLUXKAh3rBl5cqQo7AJutgZF7eg+5O3IYpuRfavh0S2dfPE3F2Hc=
X-Gm-Gg: AY/fxX6SCTRWjx5pcfgn8i+7EjpqMdQv3C0gXKvU2dZ6shoEhTUy/4vG0a9prRuTtpe
	iWistkSBYoppdYJMOl2Cg7/ArxkrrmBYcauV7mqlUtIaEbda+Axj4nqtpsXnpu3CZ0316TjJJNS
	t9zwAPjsDNORPm82scVIt4CaVxa7ntWGe+TUqvmvh6j41282GMsqGHJ/atmVRrWrw+engynCI9v
	9L9CBWxPWm1H6WoGTYiRZ8NpnSCl9NY5KTj4/+4DCnTDllFa25+NWvFPlfR+aOdl/5VJ7p7Y7Ts
	zDcjEt/VadsdtUVseyKLJF3ZvlTBS5TdzXQ502FDAWln5K/OQTj10lWjIHDmhS9VcHhA8oQ/eNt
	K5ANW+LZUg1PoAW3DEMZN27+kxAt+FGAdD8VuqJ4zhmczWxSoX0OKb5C740Z/jbD8z+B2pdSzu+
	xdN5RZZhfjM3W5t7MI9iLvk7LSF6v6FbL0HodEXqs=
X-Google-Smtp-Source: AGHT+IGL6cmE/nd1MZd/Ljre/Dci5mn4Zxy9lXnPUTvY0Zx1DkovQdRnHMs/laovytBzLKvFHqa6FA==
X-Received: by 2002:a05:6000:438a:b0:432:c0e6:cfc0 with SMTP id ffacd0b85a97d-432c3778dd3mr26202405f8f.57.1768294910387;
        Tue, 13 Jan 2026 01:01:50 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm45524987f8f.24.2026.01.13.01.01.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:01:49 -0800 (PST)
Message-ID: <782ed3c8-d031-4934-9a8c-6366abefbf7c@linaro.org>
Date: Tue, 13 Jan 2026 10:01:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
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
In-Reply-To: <20260111085726.634091-6-val@packett.cool>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 1/11/26 09:35, Val Packett wrote:
> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
> 
> Working:
> - Wi-Fi (wcn3990 hw1.0)
> - Bluetooth
> - USB Type-A (USB3 and USB2)
> - Ethernet (over USB2)
> - HDMI Display
> - eMMC
> - SDHC (microSD slot)
> 
> Not included:
> - HDMI Audio
> - EC (IT8987)
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>   arch/arm64/boot/dts/qcom/Makefile             |   2 +
>   .../boot/dts/qcom/sc7180-ecs-liva-qc710.dts   | 625 ++++++++++++++++++
>   2 files changed, 627 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/sc7180-ecs-liva-qc710.dts

<snip>

> +
> +	hdmi-bridge {
> +		compatible = "algoltek,ag6311";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				hdmi_bridge_dp_in: endpoint {
> +					remote-endpoint = <&usb_1_qmpphy_dp_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				hdmi_bridge_tmds_out: endpoint {
> +					remote-endpoint = <&hdmi_con>;
> +				};
> +			};
> +		};
> +	};
> +
> +	hdmi-connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint = <&hdmi_bridge_tmds_out>;
> +			};
> +		};
> +	};
> +

<snip>

> +
> +&usb_1_qmpphy {
> +	vdda-phy-supply = <&vreg_l3c_1p2>;
> +	vdda-pll-supply = <&vreg_l4a_0p8>;
> +
> +	/delete-property/ mode-switch;
> +	/delete-property/ orientation-switch;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/delete-node/ endpoint;
> +
> +			usb_1_qmpphy_dp_out: endpoint@0 {
> +				reg = <0>;
> +
> +				data-lanes = <3 2>;
> +				remote-endpoint = <&hdmi_bridge_dp_in>;
> +			};
> +
> +			usb_1_qmpphy_usb_ss_out: endpoint@1 {
> +				reg = <1>;
> +
> +				data-lanes = <1 0>;
> +				remote-endpoint = <&usb_a_connector_ss_in>;
> +			};
> +		};
> +	};
> +};
> +
<snip>

Hehe, finally seems my work was quite useful after all :-)
Thanks,
Neil

