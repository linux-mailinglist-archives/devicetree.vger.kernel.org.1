Return-Path: <devicetree+bounces-253602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AC6D0F0BB
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B615D3015EFC
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CEE133EAE0;
	Sun, 11 Jan 2026 14:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="A5h3J93L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E110633D6C4
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 14:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768140343; cv=none; b=npcT7jLvuiNLAKlEKalou8yJCxm+/xPdqqY0bJOE58m7UXQivHq49bwbPa3ctmAu/DgWc4YEOnX2yUQctiu9CwKQBsUKcs/Fy+a+4nAHfcn4vOh8P7EN3exAKkg/dWZEPfaXMLgKhxaViueqAZaZnDjlAqAPlEcx6cRVifQZaqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768140343; c=relaxed/simple;
	bh=La7kZA2oSwRqBuL7cT5ghruILrR4PN0GG8fEmUQohxU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EwUX4v2sPZAh7448fKBe7l4eVISnrodM/R/PfqDLd7cqFQnyjgFBwbvfFD2CxIHdeyGPi+Adp4lg3dMK9pOSrnEGIKOkS+94rHf7OZtHhshez8Dh0e97HKn/TYDr32bz8OZOSVrDcB5To9J1kkOeCsXLbvlWMik9V2VRZWTJp+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=A5h3J93L; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b8123c333so8931428a12.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768140340; x=1768745140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TXunsOKck5NLaqPP1pj13fhYNQN15zYs+l2jwEoFO8U=;
        b=A5h3J93LIBKbImOKSk/PuMD1cA9Z5C6EZEowbXbuQQWRqoIAibYcsoDlQw3TBJfR+T
         u0BiOjCEJXktgpsZjOdLv3j4NKLAL6vWzf02hINhGw9gtNLdyMqKWd3DOyEcZSvo3jYX
         8ZK4HrP0vXDrFAoG6NVNSCZ3YaSVLqWlNr0VD2t95cLlw4Jh61dPCSWNeQ6oulesS2tN
         wj79fRG7ILgJ3A7li2jIzTbZtZZjrXs2jKlLHtMo0WNwEe++CfnFmumACmX2K4HiMsrY
         hZYR2bZ1STtKcGYBa3SuMqw2+bwsgdTMBUMyBFpULbdi1sES9VrFIvs1UBE/wqWbzzwP
         APAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768140340; x=1768745140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TXunsOKck5NLaqPP1pj13fhYNQN15zYs+l2jwEoFO8U=;
        b=ilGoelXe+mmEuHbntnyWiWicKj7xw3f3ncDtElqKIAc/ZIatAv7B+s10WjqVy3Kwxf
         LsSX66NwM6qqIwejPklh1WGqmrOkPl/V8mA+pBf926/c50heXUHgGXLjYc5FtbP+d0mD
         cw98SgBxRM4B76Vu2jQKSnq5vKw3avjoz3/Z4K0smkxk9/v21hHVNn7fXkGnESw2zigg
         5uZTTrysjHE05iRrQeKNzt3SBrIm6qKY07DwSEy85A3kmltn5B3G0DGBSL9GJJI+GQWa
         m4XIaZOtdVIUzVERRzX3U0imBtBecIirMfULOPOK1qZsW4uWlbvs3TFyhOEnD6LCKUBy
         V+UA==
X-Forwarded-Encrypted: i=1; AJvYcCU0axcMpxX1QjCmkyqz9gDOWXHcpT0dMhbAw1iRfNY2FwXLU6mdouIpuZlka2yi2DWaWWxV5RnepGR5@vger.kernel.org
X-Gm-Message-State: AOJu0YwmC+6PAefXj5YRNSuvybi+teq1oCvicwisgd7aQTdm3hAvbTuD
	D8UVJ8ylOZjFnTqSX5q/SLVWcJADsOhcaDyMxMMCBPw9Vl1TL29kxUAOwda1HHiNzxw=
X-Gm-Gg: AY/fxX4EA7HlS3WVEjci8ERGWkukn0q5KtCWexJDum4kK5s3Ar+mqPLCAIJp/DV7o3M
	5z7L/BoVjnKfDipKPE560zjEdr5+WEZCLmTRdypBcx7211LVF93XgGZORDbgHJTSyNfqPir7TOl
	RghBCTKZ8HikwWbLchYydZlyCzaxfaIb1e3vDFoVKzcoK0hPgQwafcoMSODDHy5WhjyrvSLj8uT
	f22oQTn3MY0gfF2wgf8Rga/N4OGUQxs0mJf7OFtUlcanC6+esOaCmbcQ+ItzMW1yCP92Bwv14yO
	ZYZc1eU5jjnboaCCBbq8o6qAwUUHFAKnQ5bfzOUSfNjiFW68ghpXe50M/363FbpPk+mZC/Wp7A0
	2062efJFwlw1waBmTgkyjKVyi5z1mpYIElhigXry7wqRIrVtz0EaHz/mAKW1KEyWO+YI+j50GPt
	RMgPrs9NvQcmE6BptelCwqIU8b4jJ4LdizhQ==
X-Google-Smtp-Source: AGHT+IGAomJOik8MqjiZHm7eirNShLlujIRGUrfTNhxgz3sez9ZGd+euk5Raj7DyHYRFF75x4SXADw==
X-Received: by 2002:a17:907:3fa1:b0:b87:908:9aca with SMTP id a640c23a62f3a-b870908b37bmr200612566b.9.1768140340256;
        Sun, 11 Jan 2026 06:05:40 -0800 (PST)
Received: from [10.216.106.246] ([213.233.110.57])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86f1e95273sm439916866b.62.2026.01.11.06.05.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 06:05:39 -0800 (PST)
Message-ID: <05184245-9767-45ef-a4a6-d221f90fd20b@tuxon.dev>
Date: Sun, 11 Jan 2026 16:05:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 13/15] arm64: dts: microchip: add LAN969x support
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
 <20251229184004.571837-14-robert.marko@sartura.hr>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20251229184004.571837-14-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/29/25 20:37, Robert Marko wrote:
> Add support for Microchip LAN969x switch SoC series by adding the SoC DTSI.
> 
> Signed-off-by: Robert Marko<robert.marko@sartura.hr>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

