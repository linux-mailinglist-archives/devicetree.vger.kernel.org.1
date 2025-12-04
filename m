Return-Path: <devicetree+bounces-244287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D4FCA32AD
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 11:13:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7BA8330292CE
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 10:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE5F33342A;
	Thu,  4 Dec 2025 10:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W5VT0h5o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7EC3093CE
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 10:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764843186; cv=none; b=PDG5mTIIowKw5siZy+LxBg5Q/ll+0kqLbeXiAtauAjhyIcpYz+CPste6YtT3u97UJGFQsTfG4/09GTNeUTlICF2kSk5ewOEmpRnJ8q8w7Y5HJx9j7sGw7ABxbm0Scn4N524gN/Da7DEqN12alQbrIHB22toS5+82HgCumEqV5qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764843186; c=relaxed/simple;
	bh=uufo6f/Ee5aTtBa+npjKMAOBZVU7mzp+8psYi1cKyq0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ura5qtIbUmEvPNDkhaLqKYDLlvDCYWuocVT5yPiJbOQKqSBJ979RqAiwjCdrTRWSfIYwGJwQn4A5fPSR3a3kA0coYlkpTW7duPURZs9RM6XCztEFATibpJ0RMcUGrjIAeqeksAkv0MJtokY3pyHNippL732NyYrWSNz++LUp12k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W5VT0h5o; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso7565025e9.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 02:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764843183; x=1765447983; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=laKWGGjDNrFf/rpSwSowd4wZR8PRhBfH9jS/Nxhk/S0=;
        b=W5VT0h5oDtEARHAjVyqnDUXcUK+fj7lyWp8a31P/CPrigveTCRAfpmo3OHibM9m6nq
         gFpkbOEXjFXGkL9FIj8hYxItEuIRTzBhxY2bf2NxhIZyJvRFve8Ee+8o3dOVox+V/dtE
         HoMTqRoSaQu2Sb/F7lcG6/rh0vJYPzKZAaT0ryAw2G7gxG1GrGUO7m4o+ZSg3bt5bsYF
         +nPWc3I7o8rMZh+QMRwqTbHuTmwTpZ9Fw9PUqagv1/svDfdyasZt0CV/Vu7hm7n7+Khz
         SKYe5/AloxHoaxGJUqCTK7c4A2+/Aq3ANEa9vpeMZwVEs9W6ssmYyVktjyI2bIakukIk
         nlIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764843183; x=1765447983;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=laKWGGjDNrFf/rpSwSowd4wZR8PRhBfH9jS/Nxhk/S0=;
        b=M0eGf4qJS8hs6DwgyIA2zafEaAQ4hczJR3AEqj6ZbHXbURSqAGoAaQWdn7Hqd4uONC
         T3INfqTUGMpYgWzrLG640cTd3qt285VzFS/okYqbLMcyJwayekg4XB2mNo9LZB6pjN0z
         H1kK0NvR332rkbKi5/zv4tMOinc9+anfSHYxafbFYoauOpLG0kwjz+Jhe7wqxNsAW8zw
         9zFua9L+VLYMLbhpyUNekcfM+ufFOjUnvOq49RhGo03XCN7po1HepWDtwrzvQg/yI06r
         VKm6x/YfdY1na/UShguaANPYMYWi2O2lHX9msIWqUdR+GgJD2Dm/uBBfr4ZUvPE9YOjf
         aEmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaKWzC12d+1Au7ZzoYeYRJrRximGS7GHaapUyEhU12ls0IigZL27eWoRLcr2B88JpSfrC2h6DrJWmj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkfkr+yhMSn8xibxOQe8bq2XDfr41MvtWN0J7CfdPsrjpWAxkA
	qcgqPsVtSoF8tQNdUoZCk2KG9mVXMDRqLkkmVvunF7TOFq5dlVzeJfduw20ksfxwU3w=
X-Gm-Gg: ASbGncv3gIZsBgD1qhnClewz0mGL2PDpthkPxYe/iOdCksU3uPtDPYopT32HuqFr2tA
	0VfbwIQLuaaIIcVblTl1ZlAC78Bu0Qrar38OKx2X1kvVmudWygC2lJR449Nkar6vnxYmBimM9CK
	7xwaLBBtlqNYsdql9DLnjCbDS6uaYasvoQ/eowYjdTZQTc38pYVWHS2XBFptxozTlejGXB/IHdW
	TmEUSJnG03trX6UMvufsn7JoFcA2dwQgF8XZW+9aYVlFiFpmunnd72jT8QOhwdRV/hcRWRC1Ph/
	z/WNZ5mq8uywVqpuUyld5p2vTiUrziQw09meejsEpa0FAMtQto7BEahj7XV3wKkMTFfcpO3SRE5
	K3egkQOR2mxTckK94xXPBHFQkHidf1QsM/f1qVcy2De67h/116F4mk0BTpfYXA9sLfeQPwPanWH
	uL9CoaFGtHpFBP0sSMBBVQ6sqAwDN+li8SEDMko8lUsctI8nLTwFp+i8+WvhBrSYA=
X-Google-Smtp-Source: AGHT+IGzFITX5AHreOCkeOY6BVksP8l8VgjlqPPE8PLLhLKRFkxyTw9uZc0n1AjDE0j++FPJT7Bvkg==
X-Received: by 2002:a05:6000:1889:b0:42b:47da:c316 with SMTP id ffacd0b85a97d-42f7318763amr5947412f8f.26.1764843182842;
        Thu, 04 Dec 2025 02:13:02 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d3319ccsm2241938f8f.34.2025.12.04.02.13.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 02:13:02 -0800 (PST)
Message-ID: <2025c0cc-9899-42ce-8550-a7b4742bc0ed@linaro.org>
Date: Thu, 4 Dec 2025 10:13:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8650-qrd: Enable CAMSS and
 Samsung S5KJN1 camera sensor
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251204041505.131891-1-vladimir.zapolskiy@linaro.org>
 <20251204041505.131891-4-vladimir.zapolskiy@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251204041505.131891-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2025 04:15, Vladimir Zapolskiy wrote:
> Add support of Samsung S5KJN1 camera sensor connected to CSIPHY3 over
> MIPI D-PHY interface.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 43 +++++++++++++++++++++++++
>   1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> index b2feac61a89f..f990e68c7a87 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> @@ -741,6 +741,49 @@ vreg_l7n_3p3: ldo7 {
>   	};
>   };
>   
> +&camss {
> +	vdd-csiphy35-0p9-supply = <&vreg_l2i_0p88>;
> +	vdd-csiphy35-1p2-supply = <&vreg_l3i_1p2>;
> +	status = "okay";
> +
> +	ports {
> +		port@3 {
> +			csiphy3_ep: endpoint {
> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&cam_tele>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci1 {
> +	status = "okay";
> +};
> +
> +&cci1_i2c0 {
> +	sensor@56 {
> +		compatible = "samsung,s5kjn1";
> +		reg = <0x56>;
> +		clocks = <&camcc CAM_CC_MCLK3_CLK>;
> +		assigned-clocks = <&camcc CAM_CC_MCLK3_CLK>;
> +		assigned-clock-rates = <24000000>;
> +		reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&cam3_default>;
> +		pinctrl-names = "default";
> +		afvdd-supply = <&vreg_l7m_2p96>;
> +		vdda-supply = <&vreg_l4m_2p8>;
> +		vddd-supply = <&vreg_l2m_1p056>;
> +		vddio-supply = <&vreg_l3n_1p8>;
> +
> +		port {
> +			cam_tele: endpoint {
> +				link-frequencies = /bits/ 64 <700000000>;
> +				remote-endpoint = <&csiphy3_ep>;
> +			};
> +		};
> +	};
> +};
> +
>   &gpi_dma1 {
>   	status = "okay";
>   };
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

