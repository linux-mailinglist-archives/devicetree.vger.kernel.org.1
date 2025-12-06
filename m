Return-Path: <devicetree+bounces-244927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D0FCAA48A
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 12:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 17BDD3012ECC
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 11:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E192701BB;
	Sat,  6 Dec 2025 11:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bVKa0Cwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D562EFDA4
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 11:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765018812; cv=none; b=Ok5pnx8ETl8R8hIs9Y721ifYKZ+YJ/jqDVZudfaabF2stnbAVVOD9tYt1wE9hhblygtD3AahTouBkzJwuE2oiTKBS/zRcGMTxkiiptjRpO/XDv3JPQ4vTUg0Q335bo6HbqTnArbaQ/4zMxWymGXPql/gewINF7yfC9UkY/DMUGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765018812; c=relaxed/simple;
	bh=W22pc8A4ukzEwT6ppr8Q3Jdx4tKKFLbsRyG9E+Jr8sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DaHe6FvW3eVD6yrt48OEmIbVM2cWjZyMeSdHBdizbYi4G6GGqXi07SZBmGAvr0arFllq0wvKaCf1hXfgh0uKFCfC6niNNGIXgbm15xnnHvj5qWFg4QRz/oU6KgFdZu4FFHvhC4SJcZ/4O4EDGG3Ywn+nSOXnM0sN/nGtDnMAaJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bVKa0Cwe; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4775ae5684fso15423265e9.1
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 03:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1765018808; x=1765623608; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kc2JaiF8YDuWbd1/5kQ+QwF9rEqB4RzFSqHFAqyBPiM=;
        b=bVKa0CweXuRgRamSPyyDqFNO8RqiS8nmh3eIgO9LLv7SnBPMCHVfnhYHzIJQHuQ6JE
         lWEEqOaJHp2rc4Fj/uc+ukePZeXCvlJ2MbQaIevQZLJlbjr0MuvkzkpuhMJwNqZYu7/7
         c2KxoB6fX8osHgt+ghV/eKTteOXu2W4Z4gfrsokuykv2LMDfiCxOW1jJmzrdcUph68NE
         2gFp+B71N36Qv/THxe4Jl90NyOrXIRZa0WF7tT40T14DJUzie/aJ1Un79YbWfSzUkxz3
         oD0/H2dFeYK2fU6F2wUuIfhbH/g4d6W59+8HfEDGkdXJ6TzdFDndmd6eew7Y+vjRdU/j
         LCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765018808; x=1765623608;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kc2JaiF8YDuWbd1/5kQ+QwF9rEqB4RzFSqHFAqyBPiM=;
        b=LcLumrojdNrtvwa1q3qhPJDXwtR08o5eAVGtexbfNeBnaK0yRpHzHl6nImfQgtv2SD
         7e10AUgp9WrSCSiv6EnZ8KMQ360rqwDJzazwWU/YAsHpv3H6k83XBginXyzpgmGPDbcG
         UgTTR4+LZehlhwTeU58auhyRem0sPF12EixIUEt6uAIM+LPmuDRrvUMg5nw5BnfZs1mC
         N0+7/AROlXFPpGKLqG39iyVxNJHh+/GP0a4INphP5vpGTOrx5I7saH1H3X023r1TvZlW
         IJY/WD9bdEe8U0JrYK5GsHJXfCx4Hn63129EH8AdmqYasJUQ9b8rrhf1OLmj57gcv7O8
         U+hQ==
X-Gm-Message-State: AOJu0YxNlLTGmz88b+rx9cRcC82Q3bFCkb79FKuX38SkPkRoN4tZgiFb
	+wGrS1aJf7JGLZmGz3ip6Nc6m6zUomYX41DrjChHIBBWR7ebBzQTF6VpnkUe2nH0vZ4=
X-Gm-Gg: ASbGnctyJYtGpO9GEZTnq0QDkhwxrf+9EvvxSfY7BP9d71WbNgz6gbNLkjq3Jc/DVXP
	NqvgxRMuse6gbQXkuvCgXOUs1LOXX3CPLRH2+OIbXC26GRj/enlCR0SkM9RWiGHWISPtp/03oSM
	MP6AX3JKVBdWjHuxArWqt9wrqarRf21CItPmvd+Onfu5Pij8XKAO2FTa7GrEWUls89yct3855t5
	Xo7qos3Sd1+u8+/8a/sZh5EvIU8KH+8iEQhnaG52xZBzBNUMNrnOa6LuN6/gehNRn17wrF249SJ
	ElBJXffMk+wtUnxfKvv3jj/+bL4xupn3fPSXfr4yw3ASk8NTE1o71KjC3KjwVVqHw8f9JvY1j89
	bA9glnIvmIfMfyoST5qtCJ8uyQwsdEEpgbj0/vAf8SFRFlPGeQjheCARjTzHne1AGjYNLa8rOy3
	nGBmebT/Z4X1lIumXQvzU=
X-Google-Smtp-Source: AGHT+IHg5GdDTYGQOEHD3cwRfpUfOQHlfr14pGaL0IqRsshKFqaVNowhZrK6AXN53S2hvgP3GnnKew==
X-Received: by 2002:a05:600c:6989:b0:477:9650:3175 with SMTP id 5b1f17b1804b1-47939c913d3mr24108895e9.0.1765018807726;
        Sat, 06 Dec 2025 03:00:07 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479311e7142sm133083685e9.11.2025.12.06.03.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 03:00:07 -0800 (PST)
Message-ID: <190349af-77c5-45e3-beb3-d6f82ce1987f@tuxon.dev>
Date: Sat, 6 Dec 2025 13:00:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: at91: add lan966 pcb8385 board
To: Horatiu Vultur <horatiu.vultur@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, wsa+renesas@sang-engineering.com,
 romain.sioen@microchip.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
 <20251201082629.2326339-2-horatiu.vultur@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251201082629.2326339-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/1/25 10:26, Horatiu Vultur wrote:
> Add documentation for Microchip LAN9668 PCB8385
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 3a34b7a2e8d4e..68d306d17c2a1 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -235,9 +235,11 @@ properties:
>            - const: microchip,lan9662
>            - const: microchip,lan966
>  
> -      - description: Microchip LAN9668 PCB8290 Evaluation Board.
> +      - description: Microchip LAN9668 Evaluation Board.
>          items:
> -          - const: microchip,lan9668-pcb8290
> +          - enum:
> +              - microchip,lan9668-pcb8290
> +              - microchip,lan9668-pcb8385
>            - const: microchip,lan9668
>            - const: microchip,lan966
>  


