Return-Path: <devicetree+bounces-34084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F36638389AE
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 09:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D2511F260DA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAC7556B83;
	Tue, 23 Jan 2024 08:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DhtSwhEF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1252E5BAE7
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 08:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705999965; cv=none; b=rYfkB8CNuq3GhCtHupPEZSNd/otZbO7BvMV+HnOxyLahNZc7Bg82EH6/KkNJKGlnzYtuVgdDlNQLDRULpHVjNOpvZoPiqdg+gzUdTQj1rg5lKJvkYLeWNKEdr7ZpUmexl88f830sAN17IoXmwqAAL6Ad9c6vSkzxggNqbO9F+qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705999965; c=relaxed/simple;
	bh=f5v0CvlGSJWTAYjAB98cGFJdPfwwZGc3ks5mDwpM1+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZlARyhA2yzSpC443nbT2pgfF3hjU6uOsWv9y6kmOTOcOgRvvwgbo31izN9S0OQtg94bxekqiak73hl3KAir2KYTiULnLwBZraKirRcjkdi9begdLGykcnyXZuo1ZJjY4Vlo5t4es+r0WNsgLGlNQXjhSbIZLYhF9rD3eH+NJXC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DhtSwhEF; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40e7065b692so44208215e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705999961; x=1706604761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v2BkueZm+LjwnpmBuKqVCjT5ghMCRMCol9G4dpWknsM=;
        b=DhtSwhEF6QAEpsI4IvGFifuUfxBjKQ0PB4dFMViCWL7UPI464GE8evpBD/5TVCTX/c
         OBSSL3dkXKfJbeNd+yVvSrtogmP+VF6z9Ge2TJqJFbp1plcXibj6Q15XFKa4VHkzcMGH
         TElIrsVHBfKSCR6G/HNjUIcmzb7cDCN62mi/m8pdbTiG3R7H0Fe7KmYzyzvHgHuZ3rzT
         niaCiLImaNNo6H0v297yG0eEmfVWJcFH/8Nh4opli9FbNhcTu+gWduE/mNzmAQg/4+ma
         6uXATXWMZHIbREiV2vruSTD3M1x5vLXUhl/y6bljpkhC3nLKIty9c8pQeWmx4g4izNEM
         S7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705999961; x=1706604761;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v2BkueZm+LjwnpmBuKqVCjT5ghMCRMCol9G4dpWknsM=;
        b=aDE9gC3Lo7SvKYswEMPtjBR4/eeK98dXO2vDcG/5KpeIGoadOAGpmhEWi8G43ARpkV
         UhFNBjtgWXmlZDA9T5S+TGV7v6xGpZ8re3HLZJwTDrtZXegHulmL0f+T25Ji8wqi68bk
         ki4noILzrobqTiy9MzhNFmaJJRjgRMGhsgwLEu8jNoIs7D3UslsUuYTXjRmvaZZMO3is
         39VcdaIddKfb5Ds65yR+8VNUscW4NnQGBU/OUWsYKDr/UJK6o69Q+AKffwYXHCtSB8rY
         fYZmBiEOTRkVuH91jUsI9TPErnnxp2irRGbNHuf75SU92LEhSJbIxM943o07P8nHh0dv
         Lb5Q==
X-Gm-Message-State: AOJu0YzhsMGNXuEtILsJ/vDL+p9hCGdnHOEa2/Ykvhov1XjxtHI1SPOp
	8s4dm/qApwQl0utvbLhyQIwDx7yU62zp2Qu9iI+pVQRt1T7aLn8wXE2imS+3uiA=
X-Google-Smtp-Source: AGHT+IEnKGDYAOonsLMPj3so4sHuOk+6angyAsPLDG7m93F1oExjXsXuQZCh0fjggRGWXs921ORvcA==
X-Received: by 2002:a05:600c:2988:b0:40e:49c4:43c7 with SMTP id r8-20020a05600c298800b0040e49c443c7mr303418wmd.159.1705999961416;
        Tue, 23 Jan 2024 00:52:41 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id fc11-20020a05600c524b00b0040e86fbd772sm23263252wmb.38.2024.01.23.00.52.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 00:52:41 -0800 (PST)
Message-ID: <d8fa8ef8-9c93-44fc-a87f-6afce11bd71d@linaro.org>
Date: Tue, 23 Jan 2024 09:52:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: add support for the
 SM8550-HDK board
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240122-topic-sm8550-upstream-hdk8550-v1-0-bff7eb3a17eb@linaro.org>
 <20240122-topic-sm8550-upstream-hdk8550-v1-2-bff7eb3a17eb@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240122-topic-sm8550-upstream-hdk8550-v1-2-bff7eb3a17eb@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/01/2024 11:19, Neil Armstrong wrote:
> The SM8550-HDK is an embedded development platforms for the
> Snapdragon 8 Gen 2 SoC aka SM8550, with the followwing features:

Typo: following

> - Qualcomm SM8550 SoC
> - 16GiB On-board LPDDR5
> - On-board WiFi 7 + Bluetooth 5.3/BLE
> - On-board UFS4.0



> +		reset-gpios = <&tlmm 108 GPIO_ACTIVE_LOW>;
> +
> +		vdd-buck-supply = <&vreg_l15b_1p8>;
> +		vdd-rxtx-supply = <&vreg_l15b_1p8>;
> +		vdd-io-supply = <&vreg_l15b_1p8>;
> +		vdd-mic-bias-supply = <&vreg_bob1>;
> +
> +		#sound-dai-cells = <1>;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +
> +	hdmi-out {

Just one blank line before hdmi-out.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


