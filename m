Return-Path: <devicetree+bounces-12989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4417DC215
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:48:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ECE41C2037D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D268A1CA95;
	Mon, 30 Oct 2023 21:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l7PyBKhN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A961C2B0
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:48:09 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EF82FA
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:48:04 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507a3b8b113so7216355e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698702482; x=1699307282; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39zBQ7Lv4OY6ZQ6jAQCAhiBPjfEsp/lVgnyzep+BRIU=;
        b=l7PyBKhNEoYDen879vPYd7p+0UR/pD+gIIL4pwWDTsQ7XpG/S80R2hntq+9A9I5AhK
         fWMbyLDV8X1I+9xrTO4FX35h2tXKZIVcUxRz6FnNBjtuDIpMKr1N9+qr63g0H79tF1+U
         2JQ4zGKs4QJAfLO+3CC14LOO4HLIHbpp5B2KUAeBKlna68ywDHz7Axacu5u94Ckbktf7
         GA7D9zJGNYgaZTMdiMEnsoU/MfdeOZJ9F0bcwirtMCHlUcDUBN6lw4tviOaOaNmbsKCx
         wITjsae2uG8hFXYPxmPPBvptWtsXyPa6f1AM9A10RGQ7bos5Wom/fr9qOEFJobA6uGHe
         wHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698702482; x=1699307282;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=39zBQ7Lv4OY6ZQ6jAQCAhiBPjfEsp/lVgnyzep+BRIU=;
        b=neTGlLbUYVOEHWJBFuDRqx/4IXS8CdLQyWx8CVrtCCKT30/QJL+dilNhjN7ce+JaKW
         R3BHA6cR4C5P6E0OR78zGKKZ+hKTKLWkPw8YAxZ/OP432kgBGrO6icbeqMgAe67Jkv9G
         QGwrN8C9gx5jHbfBigwwg3jCs8eZ7mvJDCb8RHTxlL9GxpTfb1a2aU/lCQb+J3l8zymx
         6OyUokYUDURzHjtLDLBBrAPBCgMV0glGBRHJgHxJgcfVwoVQEUj/YyHBoMKwdoDomwTO
         Fxn7FLjuZTfQUwBGOzBk01+drIHPjYzI5Tl3ZeM3An9ZtBz1J6TBPENkAcNby6TOXwFm
         4l8Q==
X-Gm-Message-State: AOJu0YwyETaak3fdc/w3JfMCc/zjIJ8Syd8s68rWshZ9aduWR3JGdXkd
	l+9yy+yeWPM11Wk+S2gnOx7l+VhM/a0fIY8KV3w=
X-Google-Smtp-Source: AGHT+IExmCtiffCOXXfRgPBCFXL9WyDBC0+w1jBgcZfCnqmspOVMrptm7ki4K9T4UO59u4rqgC+utg==
X-Received: by 2002:a05:6512:31d0:b0:508:1332:558a with SMTP id j16-20020a05651231d000b005081332558amr10997903lfe.2.1698702482305;
        Mon, 30 Oct 2023 14:48:02 -0700 (PDT)
Received: from [192.168.133.160] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id bp42-20020a05651215aa00b00509133c05aesm1053784lfb.306.2023.10.30.14.48.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 14:48:02 -0700 (PDT)
Message-ID: <3a423cb7-cdf1-433a-a848-8636917640bb@linaro.org>
Date: Mon, 30 Oct 2023 22:48:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: acer-aspire1: Correct audio codec
 definition
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>, cros-qcom-dts-watchers@chromium.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
 <20231027-aspire1-sound-v1-2-5ff3cf8b5701@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231027-aspire1-sound-v1-2-5ff3cf8b5701@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27.10.2023 16:42, Nikita Travkin wrote:
> When initially added, a mistake was made in the definition of the codec.
> 
> Despite the fact that the DMIC line is connected on the side of the
> codec chip, and relevant passive components, including 0-ohm resistors
> connecting the dmics, are present, the dmic line is still cut in
> another place on the board, which was overlooked.
> 
> Correct this by replacing the dmic configuration with a comment
> describing this hardware detail.
> 
> While at it, also add missing regulators definitions. This is not a
> functional change as all the relevant regulators were already added via
> the other rail supplies.
> 
> Fixes: 4a9f8f8f2ada ("arm64: dts: qcom: Add Acer Aspire 1")
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
> index cfde8cd47107..00b442696618 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
> @@ -209,9 +209,22 @@ alc5682: codec@1a {
>  		AVDD-supply = <&vreg_l15a_1p8>;
>  		MICVDD-supply = <&reg_codec_3p3>;
>  		VBAT-supply = <&reg_codec_3p3>;
> +		DBVDD-supply = <&vreg_l15a_1p8>;
> +		LDO1-IN-supply = <&vreg_l15a_1p8>;
> +
> +		/*
> +		 * NOTE: The board has a path from this codec to the
> +		 * DMIC microphones in the lid, however some of the option
> +		 * resistors are absent and the microphones are connected
> +		 * to the SoC instead.
Would that not also require more DT changes and maybe UCM?

Konrad

