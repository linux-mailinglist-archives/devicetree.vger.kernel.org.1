Return-Path: <devicetree+bounces-193214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA6CAF9EC6
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 09:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBE0E1C80E6D
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 07:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DF22222CC;
	Sat,  5 Jul 2025 07:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hKO9sjLz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BAC1B87EB
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 07:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751700762; cv=none; b=BK3yMohH1wCL5HYuOZ9NBsGyY0b3tbRl5Mn3M4KMQvG2vVRQkTpc8D6exnXt0eNqXnxPVEhbJ97aM/P0ciRAdK+cbD1gA6CzdSGgmB5BqUSAXT1Ufiw9NFtHeKWwgklLRvYx+b6eIxavpACNNKCfcxHqjSGZUDB9Cgmg43w0SuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751700762; c=relaxed/simple;
	bh=l1rQoQVa2ndGcvWoVAsqpdUY17FPSHUf1rwLp3qlXSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Z1ApGGKq3w59+QuJec0Re+nJfNUN52v0kc8CGqvsggrgPYqD06VXtg6P3btWyDCvaakHjBeHr0PEwblBMLk7EwAIqZg4CTuWMmigiZKFQM2OjMxwaCtMq3KqwSDowc43Bt9IF574251n61j2Gh/u4rex0SbetHQT8ZoJm1FIGbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hKO9sjLz; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ae0df6f5758so239688166b.0
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 00:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751700759; x=1752305559; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bRBmqpVTxqQUQSugi6++6zjAMo33X4fuKAzeU/I+2SQ=;
        b=hKO9sjLzWgVUdmM4Rf+ktW+9+c71K7Ay1phlnTOeySs4+e9xIFcB729KaNfl0YSSVA
         ty97c+rkHg2WfT+oKHqeOIq6E+l2JNg1QbP35H6189jSgzD075vQ+jaHRmfj9cZg2YYU
         b0CzLijr6d9jxQsWyF5C2wicNRUnl8vhZakB+kxg3uhUkgkOnpXyvSbz1S+jAfiz6oZP
         Jbk3XhTvp5H6Gvcan+3Wi9FnVIKqFrkz3Rhi7qvJAPF5O4qg8hDO39w7pVCWPF2+4hOU
         SfHW3rLEXAOAQGSNIjenQXyXgX89yWFO0+zvkLFB6x7ZcZG2vpea5SiEf1rB0ou9WCN8
         lmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751700759; x=1752305559;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bRBmqpVTxqQUQSugi6++6zjAMo33X4fuKAzeU/I+2SQ=;
        b=LU3CFyhG0Xm5Emj5ZNCzzAAHgivSsjQ5en6ZugoZwNCfJVKuH1Y1v94awGYhSJklnw
         Jk2teT8TZ8K9g3GRsOCsqto6QE7M/CiwHbHmAnHByNLkWffMqDJ5jwLz9npWO92vuevk
         pKLaSIU3R0CNTGDA94MLrkXoElb1Flkg5uWxaGl8YsIrRoMy0/JZMZXNOlWp05XHxwGy
         n7Z0RDDq9f1FztB61Rju/jUj6jBwyRabnMEgfYV9Drg8m0t8ul7FKf4S1bsa/zwsLq/Q
         RcpLqOHQD6ilRnj0pd9miGwbWEwFGe9vrrMy+cVffNyxqKz1K9CD/vQNwv/2mJy1Sb3V
         eKnA==
X-Forwarded-Encrypted: i=1; AJvYcCVgUKuiw11iDYZihJlFvkuHpwH3suWwv7fPse4+yQBccG99nreSXkcPhZAZy3OJopQ9ZFbTopp5IiCb@vger.kernel.org
X-Gm-Message-State: AOJu0YzOswQI+5UTB53QaA/LJa3cviON6GgBdEynIkpxsartr6WKAbjE
	snJDo6Qg8ulyzFKU5DWwVfMzREc369jfN3H8wodEaOh6ZJGv9naFxbRR9gAf7DNUWyM=
X-Gm-Gg: ASbGnctqKXgByHFa74o6DZN9VzP5bczo4IjDEngEI8xo4p8qWLQG6moz44G5Bu8PYfp
	U4klPbLRRPY4odZO/OOdxzXqMbPw7CG3VTPEVIkbDBxqoRolrHG0+pH61tiKCgVUCcC9PTB2ncK
	eMBAWnTOuGBISHgg/uC90VomMKgZBYhmmrstNKNAqx6XSf3WExDD2kYI17l42pohuXinKs5rJHQ
	wF/JYUaG/xiyCJct6FzbgRexp4P66s7sD1toPOPlfwxi0Oj56KNCd5OGsmWCKQVUhiztOpESYIA
	ix4KoZvm5cR8EqMzEivsUyx98VrtOB1+lFZxbPMnjIJDM1Jx4UuYsiwhtAeMl5gsIE8srA==
X-Google-Smtp-Source: AGHT+IEs70bmSg33x6Aa+G47FWLw9oUy7Z23mFZgwi21TG9W6JihA6+ud5CNq1C0RxyIqlIE9DyHqg==
X-Received: by 2002:a17:907:f806:b0:ad8:8cd8:a3b7 with SMTP id a640c23a62f3a-ae3fe489847mr456652166b.23.1751700759229;
        Sat, 05 Jul 2025 00:32:39 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6949cb2sm303805066b.67.2025.07.05.00.32.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jul 2025 00:32:38 -0700 (PDT)
Message-ID: <69f543ba-30a0-43ae-841a-19b209937b14@tuxon.dev>
Date: Sat, 5 Jul 2025 10:32:37 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] ARM: dts: microchip: sam9x60ek: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-1-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 2c0a1faa4da5 ("ARM: dts: at91: sam9x60ek: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Applied to at91-dt, thanks!

