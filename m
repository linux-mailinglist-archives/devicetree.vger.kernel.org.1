Return-Path: <devicetree+bounces-253608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 012D0D0F2C4
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 068EC3041550
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2964A349B01;
	Sun, 11 Jan 2026 14:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ookWjjOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA133491D6
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142689; cv=none; b=Chn7lwRsJo1dyLa8+hlwqq9eS7sTES2VHcKh9d/2T736hY5+yRBeB1BDVsuycDcSi/hYHL8bnxRWqXGXuz9svr6hgUMCt5YDu3F0BN3IYbNEv9qHyq8eKA5o6bw30AyRMZi1FBULg3OMzzEbkTKgF83MZSJd2VLJqOaigxDqslw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142689; c=relaxed/simple;
	bh=6nDyEm7V4aXX61sF6eUN6LhYpH2LhvalQYGjX/umKoE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D8HmbMRggV0IxuzWpjjOZTL86bdkZG+qW2ol8UnZfIYU7lFCuCmkl/zosBeJDZqEP2c+H2cqA1MC9vriSElR3LuVVqeh+olNQVgUu5+agzH6u351t68vBdJ7QuggssjFAL6wGx4WXT4FLOvtnNG2LY5VTJ8lN+KXsIGARwnjAGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ookWjjOm; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6505d3b84bcso8920597a12.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142685; x=1768747485; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j5bvCXfrw0wJAyvC451z7sPKX85y6guKkf78mDKwHw0=;
        b=ookWjjOmWIYoGV8NQWvwlqznn4j8X/9cIu1N+sDUGIRZyYgwPku/XDBbuWd6K70V+Z
         P7HY/w/F6flzBr5IXDYHVEB3ltopxlY2WHQAhLaOCeZR/Hrc1OWjU/V0asR/RmmmcEc3
         tbjCh+t/BspEkplUHtFz+y05jDP3wSvjg3CpDLl8Q1Bh5+kq3Y2fFlpvC/a4tjSPRZgV
         /s9DK4NFB7cEl6zQXNMcpwOkQ/LYani5uYAJvLM+ZJjDPhc1ZKQqnqz5mjqsBNhxaSmo
         d4j1Vc6VbI8lJrz1ATl82rXlA+iKCYIQCQ//J+lmO8a7bTRC9QTjtYFdAUSJ22DHDbQg
         LgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142685; x=1768747485;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j5bvCXfrw0wJAyvC451z7sPKX85y6guKkf78mDKwHw0=;
        b=iR4k4dz7o2ANxWbJCoNc7Jiblt/zAxQhdhJYqhYpA2sCyWFtkqa7F/UOyL1STWb0Mx
         JKiKU2I0B22ntm4GNsY8ZMIF2z/0MLjW/2bd7S1TUqhY84Ny5UJrTSwttkb7DYo6VJ0x
         eWneTWruaCFf2hADG1a0J4kcAdupdyklsGxkLoEEuxHkyNliK0Shi3VcaPcwhF9Tsrhz
         c5SFCiq0un9c5iM6cY8KTRyfT+q684sEXJPbvp42kdrtzoDrxUAxCvKPJyp1oA34mPP8
         +C5OVhX0SWLIzwRV67SLwEM3litmAtMV3e6SO11x0yjU3S/oQf4Bd8kkrJOgIiITsBFV
         XiTA==
X-Forwarded-Encrypted: i=1; AJvYcCWg65UQM8SD+zIT3j00JA4mwNhc4J5AwoYk9CcqctqQyckswP8fWwMf9oy6ibj3FwXMAlOG48ihneTC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyd0I1uxQsw2e8LJ9J2sK6B8n69RhISLecyuWeFr3ql6Old1mT
	iqSyCoKI3JdWDj1R7W/o+U7F2mppkq7FVYxD6KIXfOYM5qGwSPZZnMQKlO487m98PfM=
X-Gm-Gg: AY/fxX6Ci5FJ2EjqeNvgpQCHM8kQY8/vPVVwziol/IZJtgYFbSypxrgNfRLpjOVglXi
	kBKBHh/ifmbm8ckx3JYWHNLcePH+QrjVIza9gumDx2C6fmx3CrJQplxafEGz6VV+W+AgxDUxNk5
	AiqZCrUfLnSyLVaYv5knMaX+RwSfttiAwj9kfh13UjagxNGsWzPQHU+NCmCtkfRc8dwOEWY20Z/
	jf6ITOoT9Il6/qbvsE/U56kiViEexh3Fj60tFZIRaJf92MCpiw3zudqCKpWtsCi0yi01hgyj3kT
	+CGtfQQ8woFkDCSn8dpM16mPxCRlC2awFWDhgqBuRSP6WQaMvPl3oi15sVvquVJRquuLniGjuth
	eOxRj6C2gbYk6gYHdprzddIgeA/ZOhgaJaigGeu6kyRDY3W1X/GG70gnQfiCexxVyRepLuQQXho
	zmoNfLxygrWIKwUbjs+Eff+Fg=
X-Google-Smtp-Source: AGHT+IHGUu5OYQ17yt0Sks10puH6ECXvHmROUNTsHAGUEt843jNznhl0Fa7GBLD0pgo1znXFARhYGw==
X-Received: by 2002:a05:6402:146d:b0:64b:4540:6edb with SMTP id 4fb4d7f45d1cf-65097e4ce77mr13908239a12.22.1768142685334;
        Sun, 11 Jan 2026 06:44:45 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9d44bfsm15272072a12.8.2026.01.11.06.44.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:44:44 -0800 (PST)
Message-ID: <ff941a66-cc09-4f57-a511-d253f48d7137@tuxon.dev>
Date: Sun, 11 Jan 2026 16:44:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/15] dt-bindings: crypto: atmel,at91sam9g46-aes: add
 microchip,lan9691-aes
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
 <20251229184004.571837-8-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-8-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Document Microchip LAN969x AES compatible.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>
> Acked-by: Conor Dooley<conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

