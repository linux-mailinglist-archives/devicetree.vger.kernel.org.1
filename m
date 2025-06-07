Return-Path: <devicetree+bounces-183484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C22AD0D20
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:42:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A039117138D
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72FE221F16;
	Sat,  7 Jun 2025 11:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="N5Ss5/xf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD45221DAA
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749296516; cv=none; b=c1miLq22X8f4wXDhLTPt6Cin/aiNRZINYGRG1/IgRTipxVQAiiun19zfAsBZJXFM6SCWhBNBcJjLAOt7QwZHA1xlljF45yd86ndXlZnO10en6vZE2K8Lu022Bq/kA36tZDunOsXg+cq1Vr+4ZFbWWaaLLC4TaNE+ATkCn3kRK6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749296516; c=relaxed/simple;
	bh=n9BLRiYHp/pW68m9cNwDmNZcQuNo9c+EYcVWkQCKl/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B0TiybHs64idmJGNnGi5W15GELNzRy2uhL3kGZSM3VVsqQuWeI5JiwlEPywQBmPJUZ7zMgSM6qHSzFRVs7oCYEZ1NTuHOd59frc808QgFmBQsbWuJnsonGNyTyH8R2NWc6jsSniY3l9CHV85Lw/qfGiiH5z0xK5rH6E8ZXVLvz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=N5Ss5/xf; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9ebdfso5176377a12.3
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749296513; x=1749901313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hHhYe6pzYBYGqwKCCAoMr63vtu8LUhyKvXIdPxuXhzg=;
        b=N5Ss5/xfQFbF0pfSdsUliAuW1l7OXrya0ipva4o1vQ3+MeQntkTc815PRK4jP+XkyI
         pj3EJnEPgiHhpfSxwVJbLUsKEb1e0V9I/Meg+kJLlyift3dw+pL8rTN/v1SJy7SQMvdb
         19LKmZiMQPLzNVHV8uxS3gzQpWAkfgcA++ITseCxYyf7kZHgVX1xrHWfSsTAT9lpQb3y
         gnlxZ3cQH/kEMuR+5rPSR26yrJnmIDfcLoFEbtPBEHK7A/HlkI0isdy5WTRpmYQL0qEs
         OFhN8hA4aKOssKzc17b/pIlC0ZC+knexq3f1Vq/Znl1QQ24bVGUJ1zGYyB9lYtu90dOt
         OfUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749296513; x=1749901313;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hHhYe6pzYBYGqwKCCAoMr63vtu8LUhyKvXIdPxuXhzg=;
        b=H1AiKWerie6stAsoZwpTRGXn71SDf+TTouJ4TgcuTbYd3IZvPBABEbxY4C5iOpZHLJ
         XDkEoW9rlt7XYtTQKOwa6zsAcoh9RwrNokWwn/z8zCyVMbio1doHA0Vr9bytP6wPzfsr
         yySUKu6/1ctv/p9/CNV7r6rmUoDNxoqmrNPbmh9hM1bAmxHUcZT3OYfjHG9pn83luiuQ
         DrdDdWkS0S9AUjIJeTzkkHO1DCkLx5IK+C3B3RSGau6ReVVdCQw+p361jtjtbbbi5Yhj
         VEBj044no+PqRrsSuZqS5V5o9gy0fu/wiJ4eR0TGZMP3n3cg/q9sAs8uwXSn5giJ+hjQ
         TDVg==
X-Forwarded-Encrypted: i=1; AJvYcCXcwlsGX7mQnGnkNobN2Q4DGsCpTeNVqm/IQRHF9QxaQY1Rb/iHJLZ2QmYoUCVFwe5alS8MgOTkFFz1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8vHftJHEcnHHTy1pspzPlbB+sD09bv3XPpE3dC8j88Tasx7cv
	R6dVESh2hrDSZV2FsngLs6g0cP7AHAD4fcOAT54KbfKVdf7JKqEAZ59npyUGvp6gSMU=
X-Gm-Gg: ASbGncuF9No6d7vQBUgZRWeF3ywQI1gKcmaIBbe3+0DKsv4dxlIxaHNGZYGafvIrtJZ
	RT4ympkS8XSfYtcNHmeo4RbRpRRGM1X5PFR1TxEuGYp7jBUYq+vTJ3sbQLleVrESk2yclxmXX+y
	qPzfjGI8OZ1UAZZhgTD7BRUpalm5dIIKucO8aQF5C9yQeuukJWLjznDcvVrq2sq6C3OaUF7DFlq
	HOf/+iN0XWkq1hcjEDaWq0YK7XYLwHhjG+mxOh4OoLInJjAM3t3OLnphYN8Zvbeh20s2MonrHCz
	zk5UG5nddbjEJy/eHHOpLtBqaJYN6pV77rbKAUgvEi34BlB0PqNuvcn6VXDgg7Ju7J5MbBc=
X-Google-Smtp-Source: AGHT+IEHOrHRiEO3rlu+EznwzAVzUrSE49TkufXjg7ZU/CfkAver/3Sye31MfxSallpfyQfqoyrzfw==
X-Received: by 2002:a17:907:7282:b0:ad8:9c97:c2dc with SMTP id a640c23a62f3a-ade1a9fcf5fmr648072866b.15.1749296501262;
        Sat, 07 Jun 2025 04:41:41 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade38c11d28sm137366866b.12.2025.06.07.04.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:41:40 -0700 (PDT)
Message-ID: <84184dc6-2f6b-43ae-ae44-c081b8d510fa@tuxon.dev>
Date: Sat, 7 Jun 2025 14:41:39 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] dt-bindings: rng: atmel,at91-trng: add sama7d65 TRNG
To: Ryan.Wanner@microchip.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, olivia@selenic.com
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1747077616.git.Ryan.Wanner@microchip.com>
 <68e45a56e70e0b0b001870905917e8f7ddac61a3.1747077616.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <68e45a56e70e0b0b001870905917e8f7ddac61a3.1747077616.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12.05.2025 22:27, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add compatible for Microchip SAMA7D65 SoC TRNG.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>


> ---
>  Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
> index b38f8252342e..f78614100ea8 100644
> --- a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
> +++ b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
> @@ -24,6 +24,7 @@ properties:
>        - items:
>            - enum:
>                - microchip,sam9x7-trng
> +              - microchip,sama7d65-trng
>            - const: microchip,sam9x60-trng
>  
>    clocks:


