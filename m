Return-Path: <devicetree+bounces-39348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F9684C46D
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 06:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 045B0288DAF
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 05:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87FBA13FF2;
	Wed,  7 Feb 2024 05:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jrbwZJwB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D314114A85
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707284435; cv=none; b=QEV72YhOL9SJv22rofvi8cpZfzodlSd5EyCLFERdCga61TEvK9MXcNNXblomSHHOvX1dIKnWBAQ+bL5/VwXlGlteby3MDqygrfA3xQpIB1Df+LzfI6ixWZqpzZ1QlDIMR5slGoAlE51AaOk4xiehXv8EVcwOAFpbHVIDejT5sLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707284435; c=relaxed/simple;
	bh=DRQDp6mIWL70DqU3ENBhn9k5AyXCvdNM57GCsuhzAkc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DL+3YWpKlkkJJ2ExZSnhu3naSwuTTyHBF3Uu9kc5tynMtQCzFgBmi1lqyMIa56cfl0fpdNHsh8RRm/1UY/kUW8l7tJSDOoCXGgj2gHamp1QGvE9zs0uPg2iNZOQZoH2HailQKhoj9DgprrzN6pKjNeI54WQ4NkvGICDU4cRQn0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jrbwZJwB; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-55fe4534e9bso241480a12.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 21:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707284432; x=1707889232; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Z2UzrcQJ/APxKpzdv1JN9qsAxCXd38NlN9+sOrG6qo=;
        b=jrbwZJwB0/F+1UKUjVGQzRyzZ2Vn+kwnu1ed8Geow+X5hL/HpWB0cfnF60rM9Q9O6J
         QYWDuO/nXOlugOv+438aJ9w9kGOyXg9idQ77PUMCdQI+8yL/rpGvskIpSJ7Ia5cfgH2Z
         pFpikkoYUS/RgnU3gZYdh4PPlCne/0DGzgZT4jUAPJmSf4IMm9L0jFpd4/p9lXrG0x8n
         SDS00+MJKKGAXBpADJi7YHaRlSBr5dkW50bQyp/eQsuJRIY2uAPEZmNdeoUTIwhnr5mi
         ozGZKPbauNWeJBB4dUTtAxtghdC6k+vij/poeh2OBb3EOuti46B7EtePmRR/ytYyy8M8
         noNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707284432; x=1707889232;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Z2UzrcQJ/APxKpzdv1JN9qsAxCXd38NlN9+sOrG6qo=;
        b=kjncfHNcxtm1Q7+cvL5HqmENX8/Jud9vfb5XeR8cFGQuvD8DccvBY2kJSTpRK5dIwW
         fgPBWTzSZYFPP/nm1B/Io9qqwsswlucMELW3FN/AvETjJuMrJ+vh5FPVHidUvkLB4kJO
         euE039hHQUElBXP3meqOJbxDPxyBAZ+lwTc9D+s9q6TL8BKLjmIlRp4k81opSxn9gsKq
         D1qUZ3O4rbykHw8HKx7SFy2AhyUyBle8Ry7S8Om2GEdUvFn4P1UbjGacMH5SQOYydvXQ
         3oVKtBiUXp+IeqChkChinzeBnIvRHuytJLd2980Owr/2CJVkB7WkWTc8nbHAXmSXpCXk
         wafQ==
X-Gm-Message-State: AOJu0YwGy5C+t5OtSCMKi1tbsSCUylNnln7EysiEzW784GRvv9xAtHPD
	YY2KkfO68I3HFZ9iG7eo3ajdqF/jFlHESe4fbJy/yfn9uVHYfq9D
X-Google-Smtp-Source: AGHT+IF7Z/TIFjcYgFkXXQWuWiw6bLCi+9S9KWbHb8+GwD0IVhpLBatu/7E5ufmZHcN6hAImTs4ZSQ==
X-Received: by 2002:a05:6402:8d6:b0:560:7543:877 with SMTP id d22-20020a05640208d600b0056075430877mr2829068edz.3.1707284431797;
        Tue, 06 Feb 2024 21:40:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWW3rLQcUY/Yvx8vUF7o5a9vPwpmRTSIIDVws7TixpvlcwpNSb4X+1ZpVx/kcdrRfVeHzeBInS/fB4n/LOcyEN4ovMcf/Ur+T2tqrDFJnjX6iILLQZRgS+n+9XqhBcGi2cv/C6/kudRa+Xr48+cVEAlfxt3tCrrjMKIdiVoC7tJD1HC0IE1gjUjUurGqzYnxeZ1JMHDpYnQQiYBsIDiLOvlh0dYMk7uSLl738dyV6cdq3MVVjjvPBFSkbS7sVAZ68CuxMA0tIz+TblxfwTm+0stuQdoqO+bSUyX3wF7H431+IhcmWrLcKaoOHI2mtzt1EnFw2jsXhwja8uAU/32SWkaNhu4dQorFvrwXuM/y4wGNfNNmQAubuxPJyO6LMdif+ueuoAvKfPGaLPG4I2u8TLrtZSjttoeAdMzGgcRB7/OFyCTwNy/vUsqpCN6qOhb6eHD79qDYs/kT7KUlh2H56Pvwd77vUc+DeaUm9eF65xR9kI2SkZ9cr8jmIaK0fhxB8Im6rvMn7olEO3gD1q0OWr+FhOuoZ6KIpvyQKdAiQx6bsqg2Llc6XBsC95k2Om/j5UxkC0Ib/JMH1Fc6RJ08YPaJbyMI8nF5d0z
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id h31-20020a0564020e9f00b00560743d2a4dsm283344eda.61.2024.02.06.21.40.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 21:40:31 -0800 (PST)
Message-ID: <b75897ce-a6e7-4e7d-a41c-c6466d9d746e@gmail.com>
Date: Wed, 7 Feb 2024 06:40:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/3] dt-bindings: vendor-prefixes: add acelink
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?=
 <nfraprado@collabora.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang
 <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20231207080512.3688-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20231207080512.3688-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7.12.2023 09:05, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Acelink is a Taiwan company providing network products (routers, access
> points, switches, cameras and more).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

It's 2 months now that I'm waiting for this patchset to be applied.

Can you handle it now, please?


While at it please also look at two more pending patches:
[PATCH 1/2] arm64: dts: mediatek: mt7986: reorder properties
[PATCH 2/2] arm64: dts: mediatek: mt7986: reorder nodes

