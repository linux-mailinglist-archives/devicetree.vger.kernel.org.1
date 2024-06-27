Return-Path: <devicetree+bounces-80961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7294D91AD70
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 19:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C468B29025
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 17:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D401C19A298;
	Thu, 27 Jun 2024 17:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="c6Sqtcc5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5D819A294
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 17:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719508063; cv=none; b=mClZtXcHZ7moOrHTjjKdd62A9FNcHQ7FKdAU/kyRNjSGP247SOlPfy0wtHINzFVbNNY0320aSAc7r/gXNa/slwY7e15Bk5jNnUNLR0CnXo9tjygF3/DjoWYNFF/S++7TpgfOh0Z1DVLFORrW9SGf1JfRl99oyeTtokbpeF3RE5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719508063; c=relaxed/simple;
	bh=o8zNlAlcShmBRovMXTMDVK50aW91n26cIg4Ny+HU+fU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PcZ4Rzlq95ZFBFb+d4UagOip3BwUZWYpfuYh94Fp5XU9aVUP9wp8D493Tn6mDQRQPM5y3uqOE4q7KiwqSKMHT4sAbK1i3iJ0yHe63BDM2AFZbHESbQCMdQ0aUXVwQQPzUqaKPbn44mV4uPki/8d/H4Lc2zYw26AHeAgOcjU4RL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=c6Sqtcc5; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-724bb90a5e4so336310a12.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1719508062; x=1720112862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6upoDDEet9bVrpuZ2jFI4cC1S8hx2hs5bmLBz5BuEhQ=;
        b=c6Sqtcc5tpJaKnuhOUjdNr4qP/FhVLhtP7h4wsGnoJk0S3j/XELAuVUMzi12DtLUlV
         mfQeiFlP4yPGC7XUog7LTslzmqZf8hJaxQyn+sVSjIobfIvw7bmDUtbOBBahNM3axw1c
         x9Fhq/tZAhpwPrU1i++ewgqK5JGm+GGDiG/ZG+2qdlmFw0EYQuB8vaQI3FlaMiM4R/yV
         zSPFT84kMcC1EjMV60xzowdJ4bUji+XedV0VYOCwTM1yT1ysjjxCSyn4FGePuNy5qYWf
         H+gy2d2UVdnora+6U+U854Fst2DiVeyrtumhG4g71MBDtBaPMzDeYmvVpeTSWRbssYJY
         v5Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719508062; x=1720112862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6upoDDEet9bVrpuZ2jFI4cC1S8hx2hs5bmLBz5BuEhQ=;
        b=YN9tAjB8esRn7X1rFl8BGvdKtLPNJ2tgOT8TyRAwkFZs3tdWJ21yzh7uucB7L4T0C3
         X4JTKvnGdYIWzgE3Ww2pH0IN3odBRqBX6WiPFJMYyDqLmbyaKFoisECb6SUTmOq/XWyj
         gJtM4Em7KmxH8KRvx7t4vZ6b3/8hdaVoJC0nGSaRaEqxgWNExacS/l6a4h7tos/9Fj3T
         IjXTBcgBY+n8sBysDpVFZ65BQiT//XTDT1Bb97fONm64U5lF7rQScZ+UeV6+IP28y2FL
         uQBMX9djg3bkE3TMx+5eiKATux+QwtmdvGomlQc99xcxXKFZKfFoLgkwPekvasefF9hJ
         bN9w==
X-Forwarded-Encrypted: i=1; AJvYcCUhqbQoUHWYHt1wG1/Lp87icUBbOZnc/cfnfp/q84ZS54kdDTd85yTP1ZC1RiNPgk+mZ8KxN1/+kCG8NVB9g7vjPujr3MaJtI4fMQ==
X-Gm-Message-State: AOJu0YxCM/4DGsDptbojLD4wEmBY3YGAeiyzdAXq1+kpfEws2lOFjPrx
	AuwF/E/8GopWcPovKWdm1Opgvb+kj3ZxwgdVbeVFTpS6fkBG1eiO+6AmyspNoA==
X-Google-Smtp-Source: AGHT+IF77hbbjSr6W1O9CeAPf2tjHMYxmLjMsHjTFIYJzBKA5OqXY81Q7q/98uqpHaJ1iKmr6W73Zg==
X-Received: by 2002:a17:902:e54e:b0:1f9:b19b:4255 with SMTP id d9443c01a7336-1fa0d817757mr182240435ad.4.1719508061763;
        Thu, 27 Jun 2024 10:07:41 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3e:18b0:f314:9f76:9f94:eb43? ([2401:4900:1f3e:18b0:f314:9f76:9f94:eb43])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1faac8e180fsm15702045ad.3.2024.06.27.10.07.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 10:07:41 -0700 (PDT)
Message-ID: <9fe2ee19-51c0-42a8-9c4d-0e60e93a1092@beagleboard.org>
Date: Thu, 27 Jun 2024 22:37:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 7/7] dts: ti: k3-am625-beagleplay: Add mikroBUS
To: Nishanth Menon <nm@ti.com>
Cc: Mark Brown <broonie@kernel.org>, Vaishnav M A <vaishnav@beagleboard.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Michael Walle <mwalle@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 jkridner@beagleboard.org, robertcnelson@beagleboard.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org>
 <20240627-mikrobus-scratch-spi-v5-7-9e6c148bf5f0@beagleboard.org>
 <20240627164221.st5ugtn2n7bctj7g@justify>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20240627164221.st5ugtn2n7bctj7g@justify>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/27/24 22:12, Nishanth Menon wrote:

> On 21:56-20240627, Ayush Singh wrote:
>> DONOTMERGE
> ^^ might be better off in the diffstat and explain why DONOT MERGE :)
> [...]

There are 2 reasons for DONOTMERGE

1. Mikrobus boards config should not live here. It is supposed to be 
independent of the system and arch.

2. I am going to be cleaning up and sending this once at least the 
dt-bindings are approved.


I have included it in the patch to provide some idea about how it will 
supposedly look like (and anyone who might want to test this stuff). I 
will try to remember to add it in diffstat in the future.

>> +	mikrobus_spi_pins_gpio: mikrobus-spi-gpio-pins {
>> +		pinctrl-single,pins = <
>> +			AM62X_IOPAD(0x0194, PIN_INPUT, 7) /* (B19) MCASP0_AXR3.GPIO1_7 */
>> +			AM62X_IOPAD(0x0198, PIN_INPUT, 7) /* (A19) MCASP0_AXR2.GPIO1_8 */
>> +			AM62X_IOPAD(0x01ac, PIN_INPUT, 7) /* (E19) MCASP0_AFSR.GPIO1_13 */
>> +			AM62X_IOPAD(0x01b0, PIN_INPUT, 7) /* (A20) MCASP0_ACLKR.GPIO1_14 */
>> +		>;
>> +	};
> we could potentially get rid of these if we get the gpio-ranges correct
> on pinctrl? I have not gotten around to am62x yet - but see this:
>
> https://lore.kernel.org/linux-arm-kernel/20240627162539.691223-1-nm@ti.com/T/#t
>
> [...]


Thanks. Will look into this before sending an actual patch for 
beagleplay dts as well.


Ayush Singh


