Return-Path: <devicetree+bounces-253611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA431D0F376
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:49:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3BDB308C8E1
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B26F3491D3;
	Sun, 11 Jan 2026 14:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="g58+wShN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4736342169
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142748; cv=none; b=L3SnTY2FaNepQO8VJjerChlY8QBZP6FZTOFdKOvKF3scbnI0QbSq+SSD1/QMVAQKEyG8NbNr6DctQYAtaE2P2i97sstUmLnAbr15Ulf/Y1wN5fHwuN8EStWXZm2H7mvcwwU0mLzzmkiTVfUPtfOCD8DVWCTJ7+XN8zcyJfo/EME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142748; c=relaxed/simple;
	bh=8+o9CrQDP9rR7vhYrkmBD4TEK1Ah1Um118V33OBjIn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VaiK6Wo0UD2MDApacqvltKvace6ByosPFzh/rHYorfZhY60SA//mxzevhLWIjvTYAXpdCC5ZWilPydKwOJfe8ywjgocAt89Z2CiZEiQ38gM3Y5sIuACDA+i8GCI6xO7sZA6IwwKfnwhVyXu6CyFIzKsvdLz0gfhp4kdZHeps1OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=g58+wShN; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b86f69bbe60so99401266b.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142741; x=1768747541; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lfDtjbPnZQpFER+nbClQWcn44IBaDvTgM6H9iNz+Pz0=;
        b=g58+wShNUGm4cSq/cIFs5BcjtBtziWlVwOnRIYJ0JBVThU79/8vxkDEUyOzt7AzJBB
         cTZ9e0Q9nDikPkEBLmzCCkAYBMC9A64/OO6AU4Ed+EOGygTBTQEKuknv7Bvpc0Hq4pfW
         tWuCEazhna5tzsEGgmV/QS1mDV7AI8F7irWQCIvLFAdd6UBceXKAjkUon+m8Sp9IuWPs
         p2XYZJYaezhBjl4awlNqxLX5lYDftU2jHR0SSz7JmKdP4CM//mkBYchNBUXZFooCPe+6
         dp21GWl3JMqXh5qWiJlPzG2nBfXylKpA9kssFDHJxDnXDPKiHgK0Z6Kpaw+F7SivT7OY
         h9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142741; x=1768747541;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lfDtjbPnZQpFER+nbClQWcn44IBaDvTgM6H9iNz+Pz0=;
        b=i/05Im5SVZZGqcknNyAF/p8ePRoPQCFH9cFzN6xpfeUY50SLrht7swqjLaf7E6LSnF
         UnFV/WTbl8XITXL7jQqtm0CzoAYu2djg2GE3NTM2Lw2Yj0LUVrLm5CMozgKiVKaHN0UD
         riKhlG7rFHNaddpV99KJM6MpUZH2XtlGRaCqL52cJIyU50ilRn7nT9PicrqopUNj7Faj
         46z7GOREYv6COf7tMucbHkXPDjko8IBI1Csf9I7Eu0rfrHvEwm5Pyieci0WAH6AG/5gv
         xpPAcgkgzri2WGORz5i6/ZbjnPmsh+JwDDTGtG60ct5x4SRMmfquOKPzdWAZG6gstxgc
         9Kww==
X-Forwarded-Encrypted: i=1; AJvYcCUO96b84+sfxt8JbTuJTsCtOl/abpwbEYthP/lOXPqnGcvjx+kCxptRghFbiNpUMe1mVrhGX60PhfVT@vger.kernel.org
X-Gm-Message-State: AOJu0YxUCKABA54Sw083Y+pdOhtPB/j392JuQOhRz6IZMknqmeBs0t93
	MJwA3pTNUZTZ+9T4yq4kLhAr+97PgY7vvJHRgeOkW476/GesWlKe7uZ8Bkl8gTbEgyo=
X-Gm-Gg: AY/fxX4WwgmXOwjP0TXpJySajTY90YJsRccN0n9rqxNDpAqVZ7fMYddC82XKcSJVORN
	WlMP8CVt/U3eQA0uSeumx/4Q/4NDb/7mzJvfN+yhZOtt3Ljr2ojmyfeW8CpIKOfEl5CenTmUc5n
	EReiPssYM72LbZSfTIhKPQcSquLLyuhXGasWx35UyXZdyDpsRnCGBU79iE+KADjVRXl3085SWg8
	HUM0SjXQVqfF0J/5n8h5rqsZt3GLvroBczp8PttwVDDoioKV+cPg15/D3T6ZV84AoIdkQCCcwGp
	SNXDJjHDi76ITLG42C1zkMDgh2Xz9tlpsbDPIPt9J/c+LqNFFZxaVPB7niKx0AaAiG1o3YearpL
	F9QkrqjvV2uBzBo5uxmdkqN6dIyDavR6uCYnpSm0K6luvsqZ7WzbQuQ5UajEs5kkU/ycE0yg8H6
	FrxNdcsuh0VCuCamUay8lUx5o=
X-Google-Smtp-Source: AGHT+IGzzRSG9JPiSsYLBto386guzGNBLdjrzZm8+JQDEKUQ0tWs5J3FidjE880cd/bBYxLZJrvW2A==
X-Received: by 2002:a17:907:9455:b0:b3b:5fe6:577a with SMTP id a640c23a62f3a-b8445169517mr1585237766b.8.1768142741298;
        Sun, 11 Jan 2026 06:45:41 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8706c2604bsm260020066b.16.2026.01.11.06.45.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:45:40 -0800 (PST)
Message-ID: <555883af-66da-43a0-a4d6-bd3bc52581b6@tuxon.dev>
Date: Sun, 11 Jan 2026 16:45:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/15] dt-bindings: net: mscc-miim: add
 microchip,lan9691-miim
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
 <20251229184004.571837-11-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-11-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Document Microchip LAN969x MIIM compatible.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>
> Acked-by: Conor Dooley<conor.dooley@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

