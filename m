Return-Path: <devicetree+bounces-126412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8727B9E15E6
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 09:37:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13FA428136B
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 08:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CF81D89FA;
	Tue,  3 Dec 2024 08:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="COjp9zXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4071D5AC0
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 08:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733215063; cv=none; b=mHFO1k7AzGy7KG/RSYVRSQp0MOjQld7+u0BmccNGSTSlIQcPLBFzmk1xSpTiR4sVDkSEddK9uNAqqImgaRxMOs6OkpEcaScg1YKxoPNUdsqLsw99ySrH0fv0prO2htHT/o6k1P5GbgshibMPxXgDJ4qealwb4Q2i+cbnW3QDxWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733215063; c=relaxed/simple;
	bh=eQXk4fAin6gkXYY9ucaSAgsUJyLa8K7nn85rI/niWEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=XkUj7rQyeAF+zIt2Pww/pvk18ISMeaHpRFqHrZbcEdkDtBqq7wmIaxsVehoqpPXBMqp6e7jmotem1WHEBrC6Ssy23Cqc5DbJj+G/O1RUNj8gX3Pb19XQ4K5XxH5ihU7puhWiZ+7bmpPi8Bz8FOdE4/wj6WzOF4INGz7/9N16nes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=COjp9zXG; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385f07cd1a4so1773435f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 00:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733215060; x=1733819860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BfKWy1F7pYEgwpS+G6giCP7uqJsq7NFXHIZFcYCqRdo=;
        b=COjp9zXGEXFrjzMMlTH8iQrHcH7+v+4XoGBJt3JXaD+U+xoTDTnUToE13rYxruHw5p
         AjpegoZ6SKJAen2i2F61Tut05Qk/HhHUA73h573bmeivT70k/Dtwug3ptpp409XXJTgK
         knwcbnJmAuet12FbugngeF9okQGU+eXc/G96NAe27yLG9oNB11ldqlGGPIwcYla0BMna
         6T20xCASD7WygyyGRgWZmOmJp4/Zdngm4ytOyKfvpR05vwL+Szum13i9Qao6YUSJHcCe
         0aLTwyNNzR8Rw7Ao58Pq7FDkw9XAgG+IdAN9qRFJmiaDqGkN90tGY6I1rxt3GkA6paR3
         i0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733215060; x=1733819860;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BfKWy1F7pYEgwpS+G6giCP7uqJsq7NFXHIZFcYCqRdo=;
        b=dbnCxiOnD1YuhLZTMCOM/ko0unM1K84ahCfT8AFqR/AfXwGTAb4Yu2tD+uRmw/kN/8
         //Q2c3/1Exjo1pOIkIl9KguqddOAgopXBz5kUwCH8+fiXKBRECwK5Hpe8vQw5i44+Vgq
         nAVTs6Ccwcb68xvDfCiWBW0M7vYvQDe5h82z8VVvD8IXoXJCnP6gphOWoiuzmdnFoz8v
         YRvzzBwu/Pg5EoIO5G9aKW0JR+MaKAuZVz8ErfeKp8BFyBN4sVSPIIM+ZNxt1jN47sHI
         Z5uTuNkffuWOYkZqvD9SGks+Jcg2SMAkwtSq9XOc51zGWp1vZ+0AfcgSXEudpAV+R6PH
         5Xtw==
X-Forwarded-Encrypted: i=1; AJvYcCW2EcgTP6mwvPz6JA5OQkfY/dkiECmZ41UynzacPJe0/sPS2xnubr0JGybQT0QyaYZx6e6nPMSf+kms@vger.kernel.org
X-Gm-Message-State: AOJu0YxrflVtksGBcREFfR4TQfupCijTKbTTrxonma2EU/scfjix8HLn
	y0zjiXqL4cB+ux3HXKwZRhoMricbIOXGuIwhTawIF3Pmm1Y1TrS7KQ2up8ytt0s=
X-Gm-Gg: ASbGncughn200VPIv1cfk81mpRvYVgCdjObdd4/t1MRdbhq6VphLI0IYdQ84whEEW0z
	UligHNLui8d37dd+mBUC/vw3WNntTGdngW0otwFunp+JX7qOgGVNp2ea7yKXP2PNwLdTzF5ASfq
	M8G50nLJnjDmgJKJvmAOUGI+3u3N7gQ4xmw1TlxeXW5tbQ1kJNe8XCtjgY+pJt1NxBEV1SwK385
	8cR+Gy6aOx7CKsvlCZ/3ZJN721SZOyaIqZtR70r/M20RV/92zXsAqRRYbc=
X-Google-Smtp-Source: AGHT+IE3H3bcSinK5Q3eRdpnA47MzQBNmGfvbe9r3ouVy8hLnAWthl84xXpTMD1MB7r7vaAGmTp6AQ==
X-Received: by 2002:a5d:598c:0:b0:385:ea2b:12cc with SMTP id ffacd0b85a97d-385fd3e779bmr1474754f8f.13.1733215059572;
        Tue, 03 Dec 2024 00:37:39 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0f32837sm184681645e9.33.2024.12.03.00.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2024 00:37:39 -0800 (PST)
Message-ID: <b1e053da-04dd-4b66-86c4-60e1d6b5a5a2@tuxon.dev>
Date: Tue, 3 Dec 2024 10:37:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: microchip: sam9x75_curiosity: Add power
 monitor support
Content-Language: en-US
To: Mihai.Sain@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Nicolas.Ferre@microchip.com,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241122080523.3941-1-mihai.sain@microchip.com>
 <20241122080523.3941-3-mihai.sain@microchip.com>
 <2d8dd1c8-fd4b-4dc1-ba62-312ac86335a6@tuxon.dev>
 <PH8PR11MB68043702680864433060E9B482352@PH8PR11MB6804.namprd11.prod.outlook.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <PH8PR11MB68043702680864433060E9B482352@PH8PR11MB6804.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mihai,

On 02.12.2024 10:32, Mihai.Sain@microchip.com wrote:
> Hi Claudiu,
> 
>>> +             channel@2 {
>>> +                     reg = <0x2>;
>>> +                     shunt-resistor-micro-ohms = <10000>;
>>> +                     label = "VDDOUT4";
>>
>> On the schematics at [1] this seems to be named DCDC4. Is there a mistake on
>> [1] or this patch needs adjustments? If so, I can do it while applying.
> 
> I just wanted to use a more friendly name for buck4, since this regulator is not used.

For consistency with the rest of the channel names and the fact that we
describe the HW though device tree, I would keep the schematics naming
("DCDC4" in this case). No need to re-send, I can adjust while applying.
Just let me know if all good with you, too.

Thank you,
Claudiu

> 
>>
>> Thank you,
>> Claudiu
>>
>> [1]
>> https://ww1.microchip.com/downloads/aemDocuments/documents/MPU32/ProductDocumen
>> ts/UserGuides/SAM9X75-Curiosity-User-Guide-DS60001859.pdf
>>
> 
> Regards,
> Mihai

