Return-Path: <devicetree+bounces-194827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 948B1AFFAF7
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48BB67B5ED0
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 07:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB89228A1D4;
	Thu, 10 Jul 2025 07:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="l3HtWAI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18541289E31
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752132823; cv=none; b=h3k4igL3J+/AkL6nkWOGKk2vrKxpDabd9mi4MUZ6mqHICzkfAgZUXLt34znUEupooK4243s7ubbCk7UtwfFKeray4yawa1ZlkuFLzTiCr6mkfkub+996hiYz4TK/w/P2x6f49B/MiMKHdGwGDrdrrNevOe13Tbrg7gKdxGXaEVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752132823; c=relaxed/simple;
	bh=+cjQnk++1bzGkpqMFN4wt4PyunkBLE0VE5bOPYI5+EY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=STcHHUmM4SPAb71c4065BWW8CbKbC8qzuXYj8eiX9E1rWOuI16UEmL1L6W/HnxSKSpieoNFbv4wCYQTPidg+nybdJja/t3nwpcFKHu3ggbv3ZEgxPcs4WQ3Wf6AE+10lDlqiwbazHQgQQNIEnHMU0Oej+39f4IhtGhSF5G0c8lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=l3HtWAI9; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae0b6532345so322011866b.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 00:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1752132820; x=1752737620; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Dc3P5Oeg2bmqCJNQbYoEMD7h352Kk7u8cbR4u9q01PQ=;
        b=l3HtWAI907PF2MtzWugEjsOEFkLy9glYCb7hhMExDJseRo4UKTwHugeZ7m+eDnlYQ4
         FuM0FhunTmEvUw1FOeMGryU14iVA4OxKe9JGc45q2tMeoMS9fIaHuQRxHyEeVWsQvGyr
         saEDZidxexBF5yGCAFRIFzMhmMmqK0JwyNkpMhqsKh1eNP77YLYDeN5kR2Gxu2piYACg
         ZiHAHoVPhiBcyaFPgyzNdbu36zQZChYS2JPbbFwZLXivWoro9X7HiUe7ecDs9oj+f2bx
         bgagzzJrSxEkpvJUn2lE4yKV5e0fxZ0OKqqugu6vWb3OyBq+GT5INouMH4+n4Isx4jhs
         dcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752132820; x=1752737620;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dc3P5Oeg2bmqCJNQbYoEMD7h352Kk7u8cbR4u9q01PQ=;
        b=LzDWAHwH6mWEwK6FKEz5FgIOTj7b+1tfcytlZdDY/SBjq8Z0UVvxjL/xNNhpZF7d+O
         +hTT7mCUWrCN3p00kVQHMjtRWQ65olejBjye/t7t87N1++odD3mb66QOoW7057yJfdai
         Iu4HjpvCOHp4F/jFfZk+L/5fl8wPcTTJYdX6JJgcIQaWFPvF7nSRgOcICipds7EL9Ual
         l8Zk68aiC6qvlFf6PYwDxCB5sGad8BbMj2/14D8yDPazKvIXRr8mUSePqLIPlpryy629
         caUHulYh4un4lJuH1FvAUPldse76TccYDY7UfqgWGg37RCRX7ufC5wjj9EHq+GJkoNv4
         MoFw==
X-Forwarded-Encrypted: i=1; AJvYcCW5LSS6RaFncQ6hmugwfIMh6YiHvxMk0uJnEGrmoX7/NueXdHzSSRoAvo5f3otXkSEKLPkLzj4HdV/Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzbJ4tFHwtPAywNGwJzZ1CaTu45MKh9PCSnyOfXZ3kkj8ljTEtW
	qGSBNDrLl9yyA5gHe26sSF3KCX+W+hmI22Y1lDEkVHnas6+b4BGkfxfSO3HaasM/T8Q=
X-Gm-Gg: ASbGncugc338Wih5cr17gGorld/ltJz5PjjHI1qdNJYBKQ9iS8j7RCpSQMrZrfYkowh
	ymjGFnAHUr1eQhWPUnpMkXFOmCpYTIPlZf7lbZx1nYTSefDHBlOM4J2aynJ8Q9K2OA06hSDM1M9
	s/PCegAFqldRPE3WxfTxPEZ/5nypVKOt4IprZb29Qh6RPR+KcdUgcYOW+dnKL2hi4pqB8TzLz+5
	p05uek1FWrJxGJUPXz4YiUnItxvrsDYLn4sI6Mla1gPI1ox4h7bregsBIYpKfv/UbMc5/dgHxwt
	G32QSn0jpNDMMqIizUDCj56S6AFYqUKUN8qIauf4vMx3UWbJMgc3o18lJRUivmMTKFU+lw==
X-Google-Smtp-Source: AGHT+IFP44qvVL01Qb6g5roOyXaKEqhnKPzl7FYoVy33V/zCBqQ1uZivmGf2cxu6nX3jQYwA8oqa8w==
X-Received: by 2002:a17:907:c88a:b0:ad5:6174:f947 with SMTP id a640c23a62f3a-ae6e24bbf63mr210305366b.22.1752132819879;
        Thu, 10 Jul 2025 00:33:39 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82df311sm80484166b.165.2025.07.10.00.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 00:33:39 -0700 (PDT)
Message-ID: <47a9830f-e0cf-46d7-8f8d-344901bb6236@tuxon.dev>
Date: Thu, 10 Jul 2025 10:33:38 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Update the cache configuration for Microchip SAMA5D
 MPUs
To: Mihai Sain <mihai.sain@microchip.com>, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625064934.4828-1-mihai.sain@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250625064934.4828-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 25.06.2025 09:49, Mihai Sain wrote:
> Mihai Sain (3):
>   ARM: dts: microchip: sama5d2: Update the cache configuration for CPU
>   ARM: dts: microchip: sama5d3: Update the cache configuration for CPU
>   ARM: dts: microchip: sama5d4: Update the cache configuration for CPU

Applied to at9-dt, thanks!

