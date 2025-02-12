Return-Path: <devicetree+bounces-145677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C043A320C4
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 09:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20852164B49
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 08:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1D4204F8A;
	Wed, 12 Feb 2025 08:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="I1308Cii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8271EE013
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 08:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739348305; cv=none; b=f7LWFLUORJfbVrv3U0ddZmgQtt+dffGIeHRQQr/FOA63EvPbCDKUvtbCxmqlRFHHkJRE7Ma7CDDbue/UStv8hXGXwtylLXsO3wg0a4BOUOHxLRwFapoNaveGaIiyJTSW5ABP3ES4t7HLUAp31U6Vk4W7c4XwgSjs4b2xNIXr0os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739348305; c=relaxed/simple;
	bh=pe1GAinqTXmMtWLyQJVPYf2smmZnVgMAETxekYxmBgg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KirPRpSkyg0TQD8EwZYQ2kmrNFDGpVvgQRFq7l/UVZ4oitBIVc+ifNiFcnCLnysu/uM8I5jEIIepEdU+/JYcEPPMNRWpFS295LwSImvuG5geWa1bvMllQt62QDL35CuniUjB8EnOTv4W5aPCC/6dEj5qC8zlC0R8NHuoE/HPAnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=I1308Cii; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5de4a8b4f86so7776115a12.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739348301; x=1739953101; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DUWX2C7v/npw1BHngSXdIYBv3kYifI6qQFt5lUSdhNY=;
        b=I1308CiiauivOZLl7wCUkbBwv7xmfnxCfMYEpciY7ws78/QoPsGiuedOVhZKHM4z3Z
         a7jtLEXUVLYTVALfyY9TIpf25LEuMUukYwBiA0AmH2zvynLgi0RYaTYjs2WjJpc34vEH
         alBObgjsd7OEBJ+oRAVL13NoSByqWeE3Ph9oDWDF5cqnZPfvPErq0NoSwHOdWXMSTj9p
         gmTQ7IWvJ4yn688PXLni2RK0gjsRVQ2QT8bQ9nqoLfoN4wEk30EBLTCYkv/Xdw/7+okB
         VIt3eZfW9UZ5DdQkCd4pBZCUz2qy+3nm65w3mqMYiISyvy8FPE//5IOvdI20DxAnNbkd
         VjFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739348301; x=1739953101;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DUWX2C7v/npw1BHngSXdIYBv3kYifI6qQFt5lUSdhNY=;
        b=gxmHVVTV/xc/tKG8duzDSVAt9JfWtIc4hAuus5c8703/Ypyi0b/BaubJIIBIhWrny1
         EvW0GO3OArXlCUfyipN9P5ZkzbnxGhm3vY3gYH8tzQVJSjU0dCNxILg5416ks+li600K
         4LGW//pNzOqCC/nL6jHK2ZGLcXs7kKSOCv45Yq/CfFyz79c9oAJiOjrEBgjfHu4Ptq1x
         Rz58lzmz+SBWVFfkhCPMXiNdhYkhn+z+XujhLI+8Rmioz1ks5gDf2aPu/rqsivMauKAf
         ycxE/oO6/vWKqlLQJmc27okOoEQzgFE0i+aYsFcB6uixCZm5wBxvAKmG8NdiuA8UEsaL
         UL6g==
X-Forwarded-Encrypted: i=1; AJvYcCWikM6E1hN3FibDIo7Qc5CHVgHFzlA0QSnkr1sVzd1bXp0FCmIT2hYw+HTsbnDTlEGIY56ZqWJfTH0a@vger.kernel.org
X-Gm-Message-State: AOJu0YwTI9DR/Ahyl31dcQu0gIs/26f8B8nU2D9W5fF2Lj17qPP33hOS
	0SXXU4z3coKFHRWdnPP/3djqdf3Qh7058hU6r60CJA5vS4fFkn+XES1+frERE2o=
X-Gm-Gg: ASbGncvrkBNj9pa1s4Mo48pHTqSj7mp5UwIh2Y9sg1KCXoSzLYFiQ2dTLE1J+kaKDW5
	QOUp9IYjxES5QHnOOuihzpu/6DrlSXiEOTxCMUhAkMflPFf3dwt1B5A5brnxT3/9y1HBzq9lOx3
	QaeaVboyGs8TRR5t2xF9QGJDrGrqzMUqwGMAAg09FXJYOkSynk3/cIH0ZMHZMSru0rsqhGkmmOB
	6p4sQRVDfwL+ZP+Be+6tB9STGoKJStTLKexcDUwtRyDBW8GHD3DaE5OqzFQC45Bfh7AzeIZAcVW
	VNffE3n+z6DxnjqgtI8Qon15
X-Google-Smtp-Source: AGHT+IEwjSS+zOVDgDiChTpc71avmO2oV3vQhPuCatbzyoXLnyMKNa1d3LFoa9iHYB9Jc1QHZRsUnw==
X-Received: by 2002:a05:6402:1ed6:b0:5dc:8fcb:b224 with SMTP id 4fb4d7f45d1cf-5deadd829cbmr1660137a12.8.1739348301352;
        Wed, 12 Feb 2025 00:18:21 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de5a2fc79esm8071036a12.10.2025.02.12.00.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 00:18:20 -0800 (PST)
Message-ID: <9baea17b-fb8e-48a5-b12f-7eebee406ee6@tuxon.dev>
Date: Wed, 12 Feb 2025 10:18:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/15] dt-bindings: at91rm9260-rtt: add
 microchip,sama7d65-rtt
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1739221064.git.Ryan.Wanner@microchip.com>
 <b437898b518910a2f94f7d827608db35e82c5828.1739221064.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <b437898b518910a2f94f7d827608db35e82c5828.1739221064.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10.02.2025 23:13, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add SAMA7D65 RTT compatible to DT bindings documentation.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  .../devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml         | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml
> index a7f6c1d1a08ab..48a2e013a6b24 100644
> --- a/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml
> +++ b/Documentation/devicetree/bindings/rtc/atmel,at91sam9260-rtt.yaml
> @@ -23,6 +23,9 @@ properties:
>                - microchip,sam9x60-rtt
>                - microchip,sam9x7-rtt
>            - const: atmel,at91sam9260-rtt
> +      - items:
> +          - const: microchip,sama7d65-rtt

Can't this be added in the above enum?

> +          - const: atmel,at91sam9260-rtt
>        - items:
>            - const: microchip,sama7g5-rtt
>            - const: microchip,sam9x60-rtt


