Return-Path: <devicetree+bounces-81598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E90CF91CD60
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 15:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FF21B215D9
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 13:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004E0811FE;
	Sat, 29 Jun 2024 13:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rjD6Hi26"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AE180BEE
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 13:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719668694; cv=none; b=o2ZDTAD4iTA60gDqlF9vXTmOTS9OXrjO8iQAOO/DSbL2wYQGbjwFMdEkP7/k1fPSGC4W0i3HS6Tdv6SlkTg5XZxNAyKzpbBk2H4c5fabEhpdRvOSHkPlbO7V0HIKkquIgePjph16ATcxR6m0yNbk112MPNM9fAqs/SqdKRril/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719668694; c=relaxed/simple;
	bh=KrcgbJ1puMGcbkVzIGTwThQKjLIaV0Caw+5FdV2M5/I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=clPIZXJOewV2TwbOTHEYUTfxKHQB+EASDV+u+5zLau7ItEDTwYkv4CKxt6o3ZACgtBhRiuQyw5/3M4KcLdZzTTH+09edgwinxqFVeD6DC5DKnsBRYuSwIMmMRHG7BG7kuH4URO9Za4dSBBIeZpRFOHV8a7BFVH23dALfhmmGuJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rjD6Hi26; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-584ee8da49aso4645709a12.0
        for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 06:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719668691; x=1720273491; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tjqFOHz9rQraJDNUFdzsmiqtJacfGrFQhh+FT7r7mzU=;
        b=rjD6Hi260M5utO2x7cxqzC0oV+qz4UAZWGuKcAFshSAKtAIILt58e3ywqzVXqKTHvt
         z6/kzt1xdSaMN0XAOTgNN1aROYETeARxPbPiYKipUhhNDS60/2RpTDy2cpzbFXILgOYl
         xeH4lT9KTS+ucZbE2Kg1TRkvwqcj69tUvKg/9q6PV85IZb1bkn1RgqaJE4Lgg3JcFVhA
         LITQg1D0LdpZUDueQzkcjTOIWegPH24Dybqf3dU7IEc8j16psKq+QVMDSuCRHkz4pGWI
         8a4Nz5p47uSlGUUgl7PPgmPKbFJ8g35xUtYfVA9Ctvs5bsfsYyyozxHmqe/l7SCfC6Kr
         A05A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719668691; x=1720273491;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjqFOHz9rQraJDNUFdzsmiqtJacfGrFQhh+FT7r7mzU=;
        b=WiTma6uIW7Bje1dEDlgOx7UpznlSh7XRqEgEwF4YSx12xKEinEcalbGvGJKRKkW2XL
         f8OuJpZeo/4O2bGMzf3xE3Om9oTIPDjDoUzLx+VQPvcz9hEvE34fumRdssoIj3c3RBcY
         /Xe7o+m9+Iyl1XiWL+w6ouvY/GFGQ9c5NlD5CIzTQQE2lNRKTmTKIhmyIBsOBoqDFe+b
         LeYoOX3FWjbSUlkP3Gp2sWqX+PNAYeSMQ8omuB+DinqoMENuWhH8pXMv+i/KLLtPASqp
         kGNHEIy8++2reFGTl7iB3Kopam6ka2anEUThRBXCB0LIfsRkOAEp5h/zEbRS9Rx7Q6w5
         HMKg==
X-Forwarded-Encrypted: i=1; AJvYcCVXTunn7M4xEryfgVv9JZM5tnthC5whJKYnS/VLLA/hUzpnrQSxXrZGTQCRVtvogkxuUFXErYKhjqzogfuDeaG8hx3H0UyKqG0mlg==
X-Gm-Message-State: AOJu0YzUOEpQEsF33pRvlwZxl6KdtAq2vniLnOyI3v6o4J0rITvGjZiE
	z7AyOiqfTFrl6Msx221gUhwY2H9dJRMj8cK4ah4v5avO5VNwTNzBsWXISCGaJ8U=
X-Google-Smtp-Source: AGHT+IELUqLfJ5TnvRHiTP2PU3ZaLeU4YyiJYhvuKfCq0XuSqLIyrQU7ywN7liHIjwD3OE/wTlLxJw==
X-Received: by 2002:a17:907:a4b:b0:a72:afd9:6109 with SMTP id a640c23a62f3a-a72afd9622dmr426675766b.16.1719668691213;
        Sat, 29 Jun 2024 06:44:51 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a72ab0900f1sm164829366b.168.2024.06.29.06.44.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jun 2024 06:44:50 -0700 (PDT)
Message-ID: <a2c92840-093b-4ed5-a315-31de357ed2e1@linaro.org>
Date: Sat, 29 Jun 2024 15:44:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: msm8939-longcheer-l9100: Add
 rear flash
To: git@apitzsch.eu, Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Trilok Soni <quic_tsoni@quicinc.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Kees Cook <kees@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20240624-sy7802-v5-0-7abc9d96bfa6@apitzsch.eu>
 <20240624-sy7802-v5-3-7abc9d96bfa6@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240624-sy7802-v5-3-7abc9d96bfa6@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 24.06.2024 11:25 PM, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> The phone has a Silergy SY7802 flash LED controller.
> 
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---
>  .../boot/dts/qcom/msm8939-longcheer-l9100.dts      | 26 ++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts b/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
> index e3404c4455cf..528737929274 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
> @@ -159,6 +159,25 @@ led@2 {
>  			};
>  		};
>  	};
> +
> +	flash-led-controller@53 {
> +		compatible = "silergy,sy7802";
> +		reg = <0x53>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;

#address-/size-cells usually go at the end, but looks good otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

