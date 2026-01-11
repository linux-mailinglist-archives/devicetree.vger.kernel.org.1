Return-Path: <devicetree+bounces-253610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE8DD0F355
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E791306D53E
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5392334A794;
	Sun, 11 Jan 2026 14:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="X9Wk2tta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FAD34A3BC
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768142730; cv=none; b=fNzYgfEhxqhjO77UKV3za7j44WnHjA22Hv7i0SSfXLZ0D6gVaPHPbXN1e5Un7NFD3RClNlh8dtgDdaE9eNlUJzvnm4R8C25eoqtgxykvm//Ty04ALjG/i8/rf4v0vwxe3EpU0I3HP1fQINPwlGp0eWuqOFeSHsfTUYeOgu8js+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768142730; c=relaxed/simple;
	bh=YDHNGLJfluFKzT2RaL2uk9Ugi0ok4Sk7jIeMDkApg6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VPrxx7CxX55DtYc8w1/3F9UGoggDk6oWqqymvK+4OPfl2zlox1A6Ti+buGioxZCM3saW6yocBos36IQvxVbI81TWJWhsUdrcNtzW7SQvIisRj3T9M7m7vE15uUXGTTMa7k3dDtkXVCnfdpKePmtcGR2dA9cy+TL2OVdo9caMCoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=X9Wk2tta; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so9069102a12.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768142726; x=1768747526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I6rwalswAWwTHAknUrP94zFyJo4NhuP+T6GegkCWM/M=;
        b=X9Wk2ttak/FxxYeh5WLK137PvXT2Bo+6f4tTd7DoZEvDfH1xyhWoL4n6yF/gvnCw8z
         z+h9Pq1VYPIop7EYoYHEF/ZvxNpxMSSGAdL55uhaBcqSfbLSS6+O0g3gtUKbcER1Z7IK
         s2S2cmElL/gpcQWFvwhm/u+qSVXzl+qK0VjAc1Dk2jlacBc88hyZK8whHoOR0r+uNnl3
         9BPa6sdp3h6wLWdtn2N8cV2+HuBUCgov4KQjwoG6XwRdQ8sxApffjIH+TQL/Pc4vRPxm
         y7mX4RoTw9OGMaAtnsluf6omcNfoTTI99nG19wYn4YbH2bFtmLM64ISHwLjSgcuMJIRj
         qGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768142726; x=1768747526;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I6rwalswAWwTHAknUrP94zFyJo4NhuP+T6GegkCWM/M=;
        b=A2bZXeLPNQC4DS75/ETDr8cjl+sXUBmxLbAxIMZUSuGWsPwWyRjde7eoUZRFDa6o0j
         gcVf9M+nPAaLREvHsBqTOOJAdpZK9xuDfZetecuuDSY9x7AR2qIkLv91FFz+fshkS2kd
         0AmIEUtLoWQxviAH0SrG1T1wrZdPwsJCroRUCB4DetiNofwQGPp6nToKOpdEjQ5cHLMm
         a1d96kfJjw7ybNzyCsA3gaWAHxYScndKBgdGHcVxshh2UhMX2vyIB1qzzBMvULtkvAoC
         U7pyuZFQTi/LhcfOLHxOzMkZHixV7YpPR2JZX5g5VLh+fmthKn8VNvmnYS65Z5P9OHwh
         aQGQ==
X-Forwarded-Encrypted: i=1; AJvYcCU135+ReBSgaztvAfIRwEASs04XYOz+z0kjJvQSiruIrpzowDri1v0j8fdmRerWVfq7VQ40YpkoxcgU@vger.kernel.org
X-Gm-Message-State: AOJu0YzCaB4g+vWmQ4vvrtrOJ31sqoyJEHBhnJQYfz59oSl3ivOmAWBg
	Xj2OmEXjZbt+JUQuX634WITgiohQdSzP7rizzXr1KKDFyL3quNA0Y7V/+rmYud0W8dg=
X-Gm-Gg: AY/fxX5lW32XerHPbNRdCX7pNxFd5cd7WjXp5F5gkMbfWJ9k9rATWOD0pPRHHiQw86y
	RedFS9kopkmQisQrdvL/OhCH5YerTct4rASEjFT/W/t3bfY5Nb1PHnXD2Rk39ppnCy++5BOvekI
	a0K/D5itXwGjLKuMgswm0uHTb99Wjs9+w0y2PZ8V4bvAxYZ2M1DVgTP/kpAzYJFM3/4JD4jjXDh
	l4LFP6fjyRVfuPvj0q3yPXHbVnjxcmOQ0okYXaHakO3FL9PmDy7aL0HoMt5WazPM8EEk8bUhxmF
	XKOBm1iQbLOxIyOJV2RYuX9vYcS8cdZ0No7KTdFTRR/C9kCCQDirFet3V3sioyyteG8UkBdBboJ
	fHk85jrUu2+WcQEhdHXjJfmx2GJ6VrmC9GAbYxrQLHTNAcyxh1LW8LyY4geaKfxIoh93BC3wlWP
	OaPMgzDcq67S6zZQIQ0oXvvD0=
X-Google-Smtp-Source: AGHT+IGvS7IBApFn5Y6caZIpVWCcEKkW6+CPDWe6wxvm6P/BpWNKX4ZQoy1X15u9d+HjeZrWR8LDZA==
X-Received: by 2002:a17:907:6d10:b0:b84:40e1:c1c8 with SMTP id a640c23a62f3a-b8444f4afb5mr1764352266b.33.1768142726523;
        Sun, 11 Jan 2026 06:45:26 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a56962esm1699865166b.66.2026.01.11.06.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:45:25 -0800 (PST)
Message-ID: <7081b61b-599d-4a59-8a27-291c55a0e52a@tuxon.dev>
Date: Sun, 11 Jan 2026 16:45:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/15] dt-bindings: dma: atmel: add
 microchip,lan9691-dma
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
Cc: luka.perkov@sartura.hr
References: <20251229184004.571837-1-robert.marko@sartura.hr>
 <20251229184004.571837-10-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-10-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Document Microchip LAN969x DMA compatible which is compatible to SAMA7G5.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

