Return-Path: <devicetree+bounces-253609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2CED0F31B
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:46:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D890E305E35B
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9A534A79B;
	Sun, 11 Jan 2026 14:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="K9ADx+2q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE1434A765
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142711; cv=none; b=YtIpTIdYJZ+gsZ1p7A/eMImhIaizlS/gSJ+WS2g+Lj1y0rmsyDfRMyBjWTeyPEGLj2bu8hFijCUOJghT+oTsb0ChD/fQWrJUe+0O3TWQ4ldgKY/o5d72eeIFaq7ZkYZS6KbIKrny03QwVwXkQk+hjPUmljYIYpq6Oa3BdyH7oF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142711; c=relaxed/simple;
	bh=gDiL7diPPllfiqdrICUaz2pklt2cpfwEzlq/42pPJS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V6sbWRdwMSl8OrPv4yOuwuAiioTyWvljLJrfT6sArFUjqFm+NcdQX5FE1q5625lvb46BMN3Vpd8+ozAUhvIJHckCiv4gOZUqZEepuKXo94M4waSauixIB5FKGEfXhF9BpQQ4BgBi9xQFI70gh7XzejlwUzYrP9O+NSQlRzl2Z1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=K9ADx+2q; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b8710c9cddbso52188366b.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142707; x=1768747507; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bR5pMB9Z21CNTk1B6+opWEfUH+WjtdKh40K9u7GvYSs=;
        b=K9ADx+2q85hi1Y4+enhphqyqyZpZ50jBbUQejVQ9+lAyuPt1J7eUMJcsTH5Bdu91+/
         8uKGBqR2SSjJrxX/lCcEn9SiYTF/WVBgYkIGEyzvckX0wje75OhEfcmjaMUigKJwIZRs
         e06XzNxpm7i19SZ0LSNbNWyN8H9SmAT8nuB4Q15uT1Uv8OpT/U/AiGflgqftkaUx04wS
         FC9tKAq3ltBYaTZkCdn5SXY0EGMBHqbdzuQwDPZYYV0jMRzS64ApUPcVOjXPvySqbrOy
         U8+WS76PxjSbXLX1BI4gqBrNFoWcvXvKZgA6KNPOhcW9KOI4VzIXbxSQNQP75cdKv3IF
         4osQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142707; x=1768747507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bR5pMB9Z21CNTk1B6+opWEfUH+WjtdKh40K9u7GvYSs=;
        b=Cqk1lv+sfC0sV1QzD6M0LDKmy29sEOUUW5gp5YEFAarMXVbxoK/pzQDdTRutJ4dHGm
         BbPDARSNv1Lhpb/R9xLlFrczXofmPJXIWSLsrCHVeyJi7jhimabncYu9eh4szjUFx4ja
         fxbw2HQiYGlczmH98IBSIXxYh6pEaFzM63Uejw/UcgdGUSPPogdlagCxcdpMBdqXS1cP
         eV4N6H2PYBHhfhNH3sCc+AJExNG7vzqh3sF7r5fBWTSdVCsFmf1Mpbr7vGS0T2ChrJaD
         b+9ZZ+3mRiLOe4GTy89fMMN1TUARFuS9affmCH++ewNeXVL4gzA8xYOJVJnXJ4LE8kpb
         omHw==
X-Forwarded-Encrypted: i=1; AJvYcCW30Dz5yfLKrJaVKjyNYn38YZYKw4mmv6WDh/UWRx5pwZ92TI8Q7HkMfhtx9C0fSRZQgOkeEmWb7jsX@vger.kernel.org
X-Gm-Message-State: AOJu0YyceVob9mul3dQ4mstoS9d66zD7D/2ALJ6lU+9/r3X0dE0W4cr+
	llbr2L9/vCqOcMM0xZuPVLQGhGWaPfGthM1ve70qfwRaPBWbvigYIq5Fe5FPbg6XG5M=
X-Gm-Gg: AY/fxX41oBng9Rr5HH8d9QR9mqZq3iOkche2Frvw2ds5wsXZrPHuC8RdVphWd317VmB
	uh4RAhljEZlIZ0pj+7R7rWsv9fiysS8uzKs/6WfViXAI/phFFCfGdk/yVRqgkZglgJ2LgxWJ5Lh
	XhdBxClkD79pN2vmINoCtN24v3P+6sUIXH32gyaor+x7YKmiJe642P7NpFELbnL1xMzDBjy/r5h
	VS43TrdFprR+cq+DorlgcEC2lJVAc8AZm+/76OQwS5X1k1X/8hyrVA2wzigSPvnqFf0r6rXSE5u
	qvS6EuRX0H0raiAx1gLQpEzLWFWq2gxiltsfCE08MPjgdC3zdVQ09wBU4LDW3LHTcOqld0gSkL3
	O1SOGZffjxcg/0HZflzVbftwBCgVIevy3rOybEmBMVhksmAtmn2AoMhQyes2v+5PHyEIW1yxmLh
	wFyE1bVBr5p4rdtcOpEvNHpAYOhO06Dns8qQ==
X-Google-Smtp-Source: AGHT+IEnRprofKW6iUFW+aOMnt2p1AYruny/NjK8tSS/dtcvBYVRc/tCV4eudi2xBk8lGr0c6zLI/A==
X-Received: by 2002:a17:906:dc94:b0:b87:b87:cdbf with SMTP id a640c23a62f3a-b870b880077mr194416066b.53.1768142707046;
        Sun, 11 Jan 2026 06:45:07 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a235c0fsm1673227466b.9.2026.01.11.06.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:45:06 -0800 (PST)
Message-ID: <19f25a94-fc90-4298-b3ea-58bd66cad11d@tuxon.dev>
Date: Sun, 11 Jan 2026 16:45:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/15] dt-bindings: crypto: atmel,at91sam9g46-sha: add
 microchip,lan9691-sha
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, vkoul@kernel.org, andi.shyti@kernel.org,
 lee@kernel.org, andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linusw@kernel.org, Steen.Hegelund@microchip.com,
 daniel.machon@microchip.com, UNGLinuxDriver@microchip.com,
 olivia@selenic.com, radu_nicolae.pirea@upb.ro, richard.genoud@bootlin.com,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.org,
 lars.povlsen@microchip.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-i2c@vger.kernel.org, netdev@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org
Cc: luka.perkov@sartura.hr, Conor Dooley <conor.dooley@microchip.com>
References: <20251229184004.571837-1-robert.marko@sartura.hr>
 <20251229184004.571837-9-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-9-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Document Microchip LAN969x SHA compatible.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>
> Acked-by: Conor Dooley<conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

