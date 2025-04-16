Return-Path: <devicetree+bounces-167920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DDDA90B67
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 20:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72A2C17DB2E
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 173EA22425B;
	Wed, 16 Apr 2025 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KG8NPEKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C27322423D
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 18:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744828703; cv=none; b=gBZM7C2IK884Vj7Je3PnGql7umTJs+1J4whtelFkh0nS22QTe87vqNBtS1kGx2EdKFLfuqw8p4UAZcY+CXebG/GRZuTtzWBhXR2pnGSOByewQvNj3JBTtHOFqlm15r8uInxE6wMnVAqAs8ed4Rf4p5SNFDLtOCa2YCcXkJwlVU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744828703; c=relaxed/simple;
	bh=h2gb2aaLNETxBykAcxNCX0wPL5kV5DokaxdYgDODkII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sNubqsq76zbBQ6YIXx+ua5FeHOqGZlDiFG6DnRUt8yb/UYwJL/6BhOTdr5fH9xAT+KuTBT25OWF2mJGRMGjy21Kh6Vn756Ibg92YPY3prnSxqy/0t5y6WzNh0vvH+Frdc+N2Ac9cx5NDobWoQ+cXSLpY5r3RVOiOnRuQ1ODgsl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KG8NPEKT; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3fa6c54cdb2so5232321b6e.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744828696; x=1745433496; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b9sY/HN/LGdgvtFdsZcaEiPxjht+cFZcMXATw7Z4WEk=;
        b=KG8NPEKT75Ib1TSyhnQhvNUfg3caH1X3Lh05MNjAacI8PH4sjAnWy2ANhKxagQdDyV
         8N/XbTOncRMSe0FPcx5A7XAP4Y51NTg0uJ0GR6u2MHLAnRIM5ZgXr464Mxm37gA+wrM+
         wZ0AP0QzSlo53bbSbPhsxbaaAwUSym8GJJnxMTep3YK1EZXA1Mp1Tt96EWoBfvxuV2HJ
         N4CDQ12suFHm32pKkndO31P+6t/7f9NyH7o0avZjCJwxux49AdV39Nj3cXfj9+3B7seV
         MzrkU1KxyZ0nVb9zhBuc2SyVF80j4G7dw9Xjz96H6x050h7ITCTEeNy6UUnOPn3/oeB3
         abIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744828696; x=1745433496;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b9sY/HN/LGdgvtFdsZcaEiPxjht+cFZcMXATw7Z4WEk=;
        b=QPhknIkod05IAUCGjhKPKSjauw25xcvPIFPbN1CHZR/PJwMX1ADI+Pke4CfQE13F53
         wQ7KZD/0QJurz+NohmSlFD5WjEEfzWOjFic4S5yaKyIRlmQpiK9PMXxBCz1yuFdsIZIr
         SMMgSbLCz3IHPW7eEbY85rCZVxN4PPRpEv3f3wXkpyoLOptZe0rt9fPvJAH2etL8Quhv
         Qzr2g6hU+g5cfUI+JSo3lZ/ztUf9ewBRxPmi1O8BvoNvfm5oJXebshW1bbl2C7t8WvCV
         ocp9KgXML7QstMa4mHFx7h/bAw5cwea0PK1xOzYQeUFSqsrFE5bp3NrOKFbRQxMaJFGu
         XeUg==
X-Forwarded-Encrypted: i=1; AJvYcCX5ZZNx9QpD8WFOpGNJSP9JyoKWspbjNIf78vZNhxutbQJe4+1wZC7JwxyBBq2iCes/Gt9HPSEIa7Zi@vger.kernel.org
X-Gm-Message-State: AOJu0YwoNZSmoYKsYbhYKqsMal5Ulv/8kEIekEBX0guL2SAnNq+1A+Pk
	EFrxRDbF0UCVPU4nfkPq+y/9qzw0Di3tM1nB1X9JTzuBc8roLlCe05qt6eBtmJo=
X-Gm-Gg: ASbGncs/e4GOmZ6bWMFax14l1RkOfcyMh2bnUvRbe19UgXdIx9Hf37NTKtJsKWhl4l0
	B3kQTBowGWzd9Q9HRIiVQvEjdVnU55xDzu3A5/rCg7e3wGiYQ/b60o2t38/DPrcCkkTLMP8dTUD
	xfSS1q1Ot9s0+zhvtMTGjPFwHjjJHtAOUJ75D02dPuO7VPaQYrEVAusFB1/ZfMHx1+VJWBkXR8k
	BYqrMr9enfcx52KLwdkQQr3o1E8PPpc9GVJEKor/g1C/p16if8sHCN8LT4sPM3Vc7CQlffr1NMI
	haiUSItqSU4sL+mlhTxRSgP0RnlC3aAIgojJPVxjBvd3tmpIMpoGadhs9cACZohKA+kTVb7rb1n
	zcTZLWPmj8rPkzMuAEg==
X-Google-Smtp-Source: AGHT+IEHpixfYLQ8d8XW9pFSR0q33vUhJbw2GwxLqv8IPvVSJvgfVlFlUazzgGh993Sed/nw/j0RfA==
X-Received: by 2002:a05:6808:1b06:b0:3f9:28b9:702a with SMTP id 5614622812f47-400b01c393dmr1926683b6e.8.1744828696461;
        Wed, 16 Apr 2025 11:38:16 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:58f0:670c:6b15:7fd3? ([2600:8803:e7e4:1d00:58f0:670c:6b15:7fd3])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4007639c638sm2866501b6e.35.2025.04.16.11.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 11:38:15 -0700 (PDT)
Message-ID: <96765a57-9e02-4f9e-837c-c0513e74ade4@baylibre.com>
Date: Wed, 16 Apr 2025 13:38:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/14] dt-bindings: trigger-source: add generic GPIO
 trigger source
To: Linus Walleij <linus.walleij@linaro.org>,
 Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com
References: <cover.1744325346.git.Jonathan.Santos@analog.com>
 <414f5b60b81f87f99b4e18b9a55eb51f29d2225a.1744325346.git.Jonathan.Santos@analog.com>
 <CACRpkdauyPb3bhgK4MTYN4Xq0cM80vwT8i_jcKoQcicpvMo7yg@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CACRpkdauyPb3bhgK4MTYN4Xq0cM80vwT8i_jcKoQcicpvMo7yg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/16/25 2:43 AM, Linus Walleij wrote:
> Hi Jonathan,
> 
> thanks for your patch!
> 
> On Fri, Apr 11, 2025 at 5:56 PM Jonathan Santos
> <Jonathan.Santos@analog.com> wrote:
> 
>> Inspired by pwn-trigger, create a new binding for using a GPIO
>> pin as a trigger source.
>>
>> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> 
> Is this actually documenting the trigger sources I implemented for LED
> here?
> https://lore.kernel.org/all/20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@linaro.org/

No. This is something more like "pwm-clock" where it is converting a gpios
phandle to a trigger-sources phandle. Doing it this way comes from some
discussion on using trigger-sources for the SPI offload stuff I was working
on recently. [1]

As a result of that work, there are generic bindings for trigger-sources and
#trigger-source cells in dtschma now that can be used by any node. [2]

The way the leds subsystem does it where you can have trigger-sources = <&gpio 0>
or <&ohci_port1> directly has the issue where it isn't easy for the consumer
to know what type of node the provider is. Effectively, we have to have the
linux,default-trigger property to tell us what the provider node type is. By
adding this extra node in between we can get that type info more naturally than
the linux-specific property. And each subsystem won't have to have extra code
added for trigger-sources like you had to add for gpios.

[1]: https://lore.kernel.org/all/20241031-croon-boss-3b30ff9e9333@spud/
[2]: https://github.com/devicetree-org/dt-schema/commit/93ee8008959e362548168eaa7bdc20c115f3d586




