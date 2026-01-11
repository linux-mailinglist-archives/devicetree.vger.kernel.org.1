Return-Path: <devicetree+bounces-253607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CBFD0F2A3
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:44:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE9C43010514
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57583349AFE;
	Sun, 11 Jan 2026 14:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="isTsJ1t8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E06133F365
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142660; cv=none; b=O5wreOVfkAig8g9ZLzU/ObXVPNxQnqtvDJ7DnclmsSYjHYES43N98IDrm0hkTlOeU22FomrAkUbLN5+GCu4/FgDOJdk9lICJYZYH43A6Knqch9oZzTcDlIFDlMD7ogfxjS6gkDLIY5CtGG69ZAHJTYoWII9K+uBJTozKOeZk3jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142660; c=relaxed/simple;
	bh=w4Acm3yPEzhNfgXHej8RhBm1qF1q4y2VgssP/5Zk1hM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R3JWS/DZXBW9SzfmiAaAUiBmhElrHp15ezr39SG24pHVi8GtW6LBJQzv4rKHNkkhQe62Uwm1cErmj1j97kto5snhmClZ2G3liFIbhDkEigk83nJR2jrhdsMEoIMNXRUbm+c3AzshXyeobAgJWWmv/QApO2TEBKGaO0KxQieWhCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=isTsJ1t8; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b86ed375d37so160652566b.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142657; x=1768747457; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vh0+NaFNSqUUr0lRvi0qh/0gFpaLfgRir9e/Vu9U7W4=;
        b=isTsJ1t8ThUdJlPcckoMxmOQN5p6f/iPi1Qz4+ymaOaMGg0HLRsEsqSZm3KEyOWwaR
         ZyJVvDBUIjMFYRKBQWAAqUA2E8lh2ITkmYgecHewN41dPFpOps4j1iduS0RDablFZa6b
         HpMQqEuK2qHm4wLB8ElCKvNNwpBajX3awNIIukUBvuu/LJEu1PULd34b1y6SP3deF3w/
         ntQWAuPAxbyU1xlmVWz0zMWNGEeFBHz89/gZfq4/2h+F0xF4+AreQNuoFSvgXYEv2bpu
         Oy7HVBxdxvC5W0dQ4KZbQxmbi94FjFBo9OMaPT1Trz8YzH8aDwWO3B6X+slFxjvyAKcG
         eCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142657; x=1768747457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vh0+NaFNSqUUr0lRvi0qh/0gFpaLfgRir9e/Vu9U7W4=;
        b=oOZXspSP/FLzXVeSYpfHkro8LPlIXG/TZzfsV45yPSEergJuMcX6IR+S/2JLfwUMDP
         dPrykm+J1g2VVyz3riHDxC9MBgPrkVzpPL1a/BYJfGago+cpjtB2gj6hHw9KcP8GXHvq
         IU43Na4gAPTYbbgd3LuFdVFkKN3b5cOfNXUgjR/aIhknUwWjSXvoeuJ1lCfmBirE6veT
         aYTEWU+O48V9O9iNJYe5Uk6Q/e+u2EgtFEyXDfL01wn0OahrlzVSlPPFUm04uzO9wipQ
         oI/VUXKLXLGU/V5ZlIKEQb1APL46V/nRlnK/ipj/lCY1Vyog6MZhZYEbFHmU0MsLO54U
         LX4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWzFku2vZuTOmCxdo2VE9f2+98QRb/9EMSQTutFbPmKuU7rilwVP81bX1tNi/TUGZN3xCTHETXCjFlr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvcf7X45EigGTBk91C4cGNLrjFTYOUItbq9g9SK7HlgclVpsUm
	wueTfTNzn/E59pdB6hND8so3q04wJXNIQnB4RVLSAV6gDw8EE8Z0Q1DDA2SMvik6pu8=
X-Gm-Gg: AY/fxX6xphA7QT8bcUo48oOkM9aKy0VG3IDjJ7Fd93G8Oti41gaDe8N0aHvog+7SJu5
	fFhJQ2OQ2vjgaAb8u6Mr9sf/SJpd3cvUmbwPHjj1p3vsgHhiIccURm/9Ff9BiyWtTCWzX0J4cWD
	iRrMwUk/AZD33qhwmpms7npiJdOuNUBT9pZm8WeLsmaIBMNKvm/ngUdmLH09t7KZ46MSaaKAnRa
	Ha8HrPlS7NNpyaIX3S9TsKlSwl07dnDPeWOrvpLAvsk7vfM0PJ7xl6TOh6+CPKMs3pz7T6aQZxF
	dnyuUTFhRLuqVYUN9KbyDCAoQXO84LN556Cmj1KZx8JgFQOnfvtao6wHLiUNshJpuALuzxD0aYp
	lU38Pmu3zFhyoTxHPT/K9qmi8AqplH+14X+ORrTUtJmxP6BBA0IQRcNSNXmQdqo6M4lxcIVesq9
	BiltbTTQNY+HnnNbDWl4G4ojw=
X-Google-Smtp-Source: AGHT+IGSkgRdvFAJszoEIUVPnmxFKxpG81LZeaQDTCtjgK8/9NBkGo4UJCrHj8/qs3u8e7/Yxpu5vQ==
X-Received: by 2002:a17:907:96a1:b0:b80:6ddc:7dcd with SMTP id a640c23a62f3a-b84453a123amr1485279866b.31.1768142656775;
        Sun, 11 Jan 2026 06:44:16 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d3831sm1727347466b.44.2026.01.11.06.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:44:16 -0800 (PST)
Message-ID: <bb0c473d-0a86-407b-9c4b-9a39f9985ab9@tuxon.dev>
Date: Sun, 11 Jan 2026 16:44:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/15] dt-bindings: serial: atmel,at91-usart: add
 microchip,lan9691-usart
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
 <20251229184004.571837-4-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-4-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Document Microchip LAN969x USART compatible.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>
> Acked-by: Conor Dooley<conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

