Return-Path: <devicetree+bounces-76400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A6390A75C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 09:35:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F12D9281F31
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 07:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD21E18FDAE;
	Mon, 17 Jun 2024 07:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CD1ALidB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3212618FC9D
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 07:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718609657; cv=none; b=ZujW1VGI272UbsyEATNcKHraAzzMBTod3bXtgXBZNcVAAv9axlV3autX118Nog728Ps6QjAtGmJj+sNnICyhxLAgw3zPpV5JGg37E8+bCPItlHHj8iR21/xoOl6Xfm7uWlsgYakWCg90QnLh+SQ6TPMzVwh6+FT3eiLidhd+YW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718609657; c=relaxed/simple;
	bh=zeWiuilCPHFFpyWvuMbpXBQefcVonCeBKJtUM5B3kRo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gh5dOZ37c2erDov9YldcofS2E7HqqT6FRu3SDvakpALKQA28mSsl35qyWyjnum+LFcrj/COuet55iEpO/hJoivxnYSER8WSV5A/UW3EWPcRagVabteXbKNEfIBeRV6oT8EFWJGgSMj9qcGTTFAa69PW/NHIVtT3xGUauo7WthrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CD1ALidB; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso4014126e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 00:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718609654; x=1719214454; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AClyXU1pi3aF85OV5YDv3ie7wh1G6ZH8NgIWnD9i/jI=;
        b=CD1ALidB2NBE+jyz18WgTrkyh1PcGsIpx0OD1yxDjw8IhXyMEC9nW9gzCqJNKMgAFy
         b2tM/7cMPIlzx3cDlRx9vIEZyuxazR0Cmm5F30Tps65sxf9BXKk9QyXLBV5qIyeVEQ82
         8avBt4ggoF0IobsaHiK2Wn7ZU999KDtOKmrC5xaWLLUuBuqLjDrBpkoVNluj6zZEI7TL
         3r10AC84w9zLhG0FFKhWGILoJdPlj50nAIewh4kv+1QaNZ8hIUSj8GUSk9hSAKRmE+/R
         viyKPF1SsmQxglIgBB5Yee3FHsMH3IgbLkUtRxEJpmj+K4QyGTjl03GsdnQa/TYCl3re
         npWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718609654; x=1719214454;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AClyXU1pi3aF85OV5YDv3ie7wh1G6ZH8NgIWnD9i/jI=;
        b=mK0SL9AFV4QMvssaNh9v1P25ucaSo5FjLtQp5jMUEXTXYpPVmPe8wp7dsF3IXIj7VH
         Cqo4RtJUf0aQ7gvSSCQT2wkIjFB2S1anNv+6rB5DjxZMuCQFN+PdAD37LjJaE4WO5lF4
         eKFSMMz2w6A8t+rwYQb1fSCdkvKbN40YrSl+rcyq/U41mAvwqJ9rJnEFw4t3+pzsEFnr
         4oPbrBcQiHH/NRnu1oFQzqAoDBZ01CNjtNdEnHHQiqhRhu3WDNrz3lFnoVWYlR2ldvDP
         imZLIfYn/44FJPG8dTVZjNzSm6V74z3lnG/aSTuWwJNtNPQ5GP82p5vLOBOhXJQ7j1bN
         itDw==
X-Forwarded-Encrypted: i=1; AJvYcCWtqwWaB/XdDosgWIE3jKBZJhlSuQL/keiaCGjUQqHaCYxU9UAG2wjGi7ydsBe0gs3WdUVSMqEOCOZrKL57mZpWcs1tg94smd+cOg==
X-Gm-Message-State: AOJu0YzkkPQUSMxS751o+x/1lZVTEKkIhN3yvBqel40rFr72dkXHmOsO
	X8SIrs9kUmnG6n+PpdeRsOl+x40LYgxGGq4XmJhiJgywlXlY5W80OCgetveYJ+0=
X-Google-Smtp-Source: AGHT+IHUlZ9yVF0/d21oqhr/RhfPE4nfbgHcDlIeSpz0UE5KNmeRW7vE44kzi3qUrQ4kCBqjj8nN7Q==
X-Received: by 2002:a19:6a02:0:b0:52c:81fc:eba2 with SMTP id 2adb3069b0e04-52ca6e91456mr5494441e87.44.1718609654566;
        Mon, 17 Jun 2024 00:34:14 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-360751037b6sm11240074f8f.98.2024.06.17.00.34.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 00:34:14 -0700 (PDT)
Message-ID: <035457e2-c1ea-4a9d-9bbe-486f74074cdb@tuxon.dev>
Date: Mon, 17 Jun 2024 10:34:12 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] dt-bindings: clock: renesas,rzg3s-vbattb-clk:
 Document the VBATTB clock driver
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, geert+renesas@glider.be,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, lee@kernel.org,
 alexandre.belloni@bootlin.com, magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
 <20240614071932.1014067-3-claudiu.beznea.uj@bp.renesas.com>
 <dfb0680e-7592-48dc-b4a3-5aec3a6bb188@kernel.org>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <dfb0680e-7592-48dc-b4a3-5aec3a6bb188@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 16.06.2024 10:38, Krzysztof Kozlowski wrote:
> On 14/06/2024 09:19, Claudiu wrote:
>> +    #include <dt-bindings/clock/r9a08g045-cpg.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    vbattb: vbattb@1005c000 {
>> +        compatible = "renesas,rzg3s-vbattb", "syscon", "simple-mfd";
>> +        reg = <0x1005c000 0x1000>;
>> +        ranges = <0 0 0x1005c000 0 0x1000>;
>> +        interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
>> +        interrupt-names = "tampdi";
>> +        clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>;
>> +        clock-names = "bclk";
>> +        power-domains = <&cpg>;
>> +        resets = <&cpg R9A08G045_VBAT_BRESETN>;
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +        status = "disabled";
> 
> Drop.

OK.

> 
> And keep only one complete example, instead of two. See other complex
> devices as example.
Do you have in mind an example that you can point me to?

Thank you,
Claudiu Beznea

> 
> 
> Best regards,
> Krzysztof
> 

