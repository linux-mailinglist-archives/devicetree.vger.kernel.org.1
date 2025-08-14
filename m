Return-Path: <devicetree+bounces-204762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ACFB26A7A
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 17:08:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1ECDA166F62
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 15:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5342202965;
	Thu, 14 Aug 2025 15:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hvnhPjAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC84F4315E
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 15:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755183700; cv=none; b=FI9BTp42ei808AwOljnwyDmEuHBqQ63jcpm/95fW15aVRVXOtyTH0uKyME+IiiEvDLuZobnfTiYohOXSvF3xCwfozkwg0SDlBA5/qti13tTJsvaNSxMOGy2w4sRXod4HWFfiktGl15zkMA6ZgK2RgyHJnIN0eTxJUqh3i8vU3io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755183700; c=relaxed/simple;
	bh=eAX3ikxNe6MVJTImuD3GJ14HQEmQ973JjkPPycFOdDk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KkkaOP5a9N8jOiMOXoGu00DlPJgv+5Ns3JOb0PcZQ3isLUn1F0W+tlADSOdQ/lsKZX2NJCwM5G+LlEdYBlO3sb06eJIumo+L7LRCkVEMaQVaM3/va8o2DH5GsOLIE00qtDDUVN3nQLy/f3IPjSn7FpDdq7HgxZXQIykFGy4YfBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hvnhPjAD; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-61bd4d14c05so313742eaf.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755183698; x=1755788498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5+bdefBK94Sf3p8b0pm5TB+67GcihuPdogRAGM60PoM=;
        b=hvnhPjADLatwG0nLHls0CJ2kWhVd8V+0FKFB7KHcn28lDDzC6zrdyCn2XmKMrSJ6PC
         8qH9t1CMYdB6mygv0ltkT81HYaGT22Mk5C+7PHBRdTpf4HCnI2HiZMCaNQEo5bRaKOvV
         LMhtcUzD4NG/q89qzU+SRcrXplGI/1oBOFnk+B9S7/Uv78U9sY6YlAWsmD3CpDNUqWoc
         J8sYrGw8mcyfDJtoGbzDiy7LNRHaYC5YdKQ/WftVB9VuUn3UADG2ZIy+A7LKms/jLAQW
         N4+gsnhsQPzl/pfv1DHxhKESN+3eROS9V4IE7McUGlX0psqwYNLruqJbO5zNwbwwO3Kd
         pFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755183698; x=1755788498;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5+bdefBK94Sf3p8b0pm5TB+67GcihuPdogRAGM60PoM=;
        b=opIaOgowJhAjq6ULdjMKR/HvFU0zVixO0akEvtXzMUh3duhFgWVIBGaiwHwD9wEMWL
         MH2nCziN1N4Yk90wsagiJlnHMgLU/wDofvV8pHAcMW9ZAEkXuN6X13C5PR8zb1DP/dqb
         FGSo3cHc3oEZogOVcbQ5+J0dwf9ggEMdDtUSQTCwBP/UBKNWY0g+S6rh9MWqYINaobQ6
         f0htusTVptttnCzMqi04JII0j2Agiq4I9X91LSgiDN4BkXpDo+5OzoRPTReocWMHwV+0
         I//LpcdwJtPiX1bOzFYqPcIH1FF8Z+431lE/cRx+OxgVmpm4NE+b4+Aql4HMuIxNCmVN
         yyMw==
X-Forwarded-Encrypted: i=1; AJvYcCX1ax5J/LaiKsbnoHCJwtPYjQP33kmEPBvjkgGYG+ZrmG8afCN7W1T4il0rlBpl+cwg7+Af5g1zxeEQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtd20Vcc5ODFeGG4SR1y7+jMjhXnwFfr2wPv4H2Gqb+JgSAqc7
	TXXgkA6VcTuzQiHTSrfs6uPLiNhdq+U8Lv0lU4f9B9Gi47krwbYUsyeCmJiwoxeOw4M=
X-Gm-Gg: ASbGnctswoqwG8XzWMjVLGnel9ShnPaL9l+p8fzzkjfUlI8DxZ76HAzYlXCBwy7fLDx
	xp66brex9cmozE4P4ivtjTGurwOJruXYLBZw7tubUR9Ao5SSMWSjEupvlbth8pxYz9QGYEdhqxS
	zGKqN/Dl+TEysS7vAfCeaXVFAcwb1CkMDEtcMqcXvHwYLT0tB2mLIcVM9R16RggBlnP/ZYi0mpw
	RFJFeEb7Jq/nE4wXpa0QtWgO8FPJwVd1GrhYzn+9yfelXCmtkM/PQogmRHOqifYZZkKEV7V9Wm7
	RLtISquRZaDUG8Ezko6hJuDBGdRyaS6KUAC/gEPrRoyLiO7A48JyrUVsCTz8VQNKYSp8/+u3QVV
	t+1K51I5icBjVJg4vwie4eFDIV+Z9rwqftMC+xfTr4LQ3xv/el8U/kJ5NEQzVCD8l6qUCWG5ABF
	8=
X-Google-Smtp-Source: AGHT+IGB723bs75DAprqEIh1aSatPfXgi38wq6Ht4Qk9bR/OoLw1uP5inRG9suzj74+4IyK4RgkUQQ==
X-Received: by 2002:a05:6808:4fe4:b0:435:8699:40b1 with SMTP id 5614622812f47-435df7cc62dmr1944390b6e.24.1755183696164;
        Thu, 14 Aug 2025 08:01:36 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:2d9b:959c:3c59:5831? ([2600:8803:e7e4:1d00:2d9b:959c:3c59:5831])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-435ce87aa55sm1105850b6e.25.2025.08.14.08.01.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 08:01:35 -0700 (PDT)
Message-ID: <014487e4-f8c7-42e6-a68a-9e984002fd46@baylibre.com>
Date: Thu, 14 Aug 2025 10:01:34 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] iio: adc: adc128s052: Support ROHM BD7910[0,1,2,3]
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sukrut Bellary <sbellary@baylibre.com>,
 Lothar Rubusch <l.rubusch@gmail.com>
References: <cover.1755159847.git.mazziesaccount@gmail.com>
 <e43c184fc6aa5c768045fc772b64d812fdb06254.1755159847.git.mazziesaccount@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <e43c184fc6aa5c768045fc772b64d812fdb06254.1755159847.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/14/25 3:35 AM, Matti Vaittinen wrote:
> The ROHM BD79100, BD79101, BD79102, BD79103 are very similar ADCs as the
> ROHM BD79104. The BD79100 has only 1 channel. BD79101 has 2 channels and
> the BD79102 has 4 channels. Both BD79103 and BD79104 have 4 channels,
> and, based on the data sheets, they seem identical from the software
> point-of-view.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> 
> ---

One small suggestion. With that:

Reviewed-by: David Lechner <dlechner@baylibre.com>

> ---
>  drivers/iio/adc/ti-adc128s052.c | 36 +++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/drivers/iio/adc/ti-adc128s052.c b/drivers/iio/adc/ti-adc128s052.c
> index 81153253529e..2f2ed438cf4e 100644
> --- a/drivers/iio/adc/ti-adc128s052.c
> +++ b/drivers/iio/adc/ti-adc128s052.c
> @@ -122,6 +122,10 @@ static const struct iio_chan_spec adc124s021_channels[] = {
>  	ADC128_VOLTAGE_CHANNEL(3),
>  };
>  
> +static const struct iio_chan_spec bd79100_channels[] = {

Even though the driver doesn't support it yet, there is a
adc121s021 [1] so would be nice to use that instead of bd79100
to keep the naming consistent.

[1]: https://www.ti.com/product/ADC121C021

> +	ADC128_VOLTAGE_CHANNEL(0),
> +};
> +

