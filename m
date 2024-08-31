Return-Path: <devicetree+bounces-98762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F2D96725F
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 17:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C7771C20E84
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 15:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D08B2262B;
	Sat, 31 Aug 2024 15:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="REX5TnHI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9901CF9A
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 15:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725118163; cv=none; b=C3Db9YrnF4c01F6c5HVaZqa6JVn0sOBxSEmtvQDknrGoq4j1Z4dhUVdxuxYoyxoDujrhQA7W+GBTKSImk6ekxOBEQAePpLI/uq2mGQ6THuMFNY3SFCQtCnDR0jXfucTjlExl+A02G2EbZ7BqSgWv0ic0hzVK6CLJPnE9wdAxubw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725118163; c=relaxed/simple;
	bh=o1dbJ86oCg3TnnG/1I4nHOQNnLyWx7i6Cy0GoomQTZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IBbG/kI9JQ2+8FgcD20ekNuG465UcOUsqywrZnYiTIwAKxkVC8GMwPnKg2KbECLVRAf67e3td1OII/Tx4GuRUXWNx+qlGB3ep91KD9O6wSOoEXGdqcQ24Z+RSGMpO7j5gqXe+KrHNoF0fnUrMm9ROjchWI5Q+NntxL0tzHy7L2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=REX5TnHI; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42bb9d719d4so17217865e9.3
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 08:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725118160; x=1725722960; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UqG1I3pLaErdof2yFJozBhLe1kftcjRzLM7E0m6PE84=;
        b=REX5TnHI0SnXGB1TRdsTu6ZPQUmX6yYd0pi6vfLhWnsNdcyHvop0HHH8SmKUYoHGaS
         gXjBnQ1LDG+De2gcmZIA0Ukd6xX8QZHDbEpCIy3MXXQRCDtwLZ9KEOLPfunVYBPwHcqo
         k9izLy/Xbu7omzOUKtBKmMOp/aAUqYl6z42r91WlVzJEbsXROplT2B8hKQJ1WkDAdF12
         uOZU2TsUhYiwK/NLIqy0c1205zu8xRecuoC1jd5a4hUJpk8/J9p44TXLaQIXWJbPR6i8
         5mEI7T+C9iSKx2jcXynu7XYFvmp4rO/u8L8A+5aqa2aBeOjLcY67vO+kL6Nll+vP9d1e
         GExw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725118160; x=1725722960;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UqG1I3pLaErdof2yFJozBhLe1kftcjRzLM7E0m6PE84=;
        b=ESI/swyXVsIkze4BZchqeLhavxGOOTajLEvk3NunJbVVaGRLbXEjSSvuOtvIOAeiEM
         kg9K5QAmJuW8S/6PuStUX9SwNzHqWyMU+i8kbZJsoXRK75Wwz2Gdx93IcujZcdqcklD4
         AeQC1e8QVKeTYb5G1Xu5ALCp9n1SeHQBuUA4CnMZD7/C2QELrirrLMlc346omNHh3/sJ
         0RI+v28Kv0LdWv4kpTANnfbvwj1ia7MrNcA6K9lVsP7J66+46a3wi+BAAaJc11SaTrIe
         2XkwVXL/YkbQL8DFukO15R4GPnPoyMJhmOm+QlMBuU94GTNVGrB7ccxYdJv5bG9hSgBV
         dcbA==
X-Forwarded-Encrypted: i=1; AJvYcCXETySWz8+wwQiK2Tudrjd47JgSs5224HmuF9T1vYgRpcRuvLUwsghJ+qNxPGb4NRJTIv5FwcMpcde6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw50N7JEOTqYj2ATM0tZ+Yc3zPI/nJ/0YzRzin8M1zw0KOr0JVJ
	rF4BcM0/67vVmB6VXK3VS/muPTAnFe0fst7x9w6CSd9jtaxXFnXq9NKlpvIzJPM=
X-Google-Smtp-Source: AGHT+IESNe5n94eeHhugi5qWN5pl2DKDZXFu/lA0O12m9FDrhevLccPAvSA0hbLSDMP8+QtD5LvSqA==
X-Received: by 2002:a05:600c:c17:b0:426:5e8e:410a with SMTP id 5b1f17b1804b1-42bb032cb54mr66335135e9.24.1725118159111;
        Sat, 31 Aug 2024 08:29:19 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749efafd65sm6781328f8f.93.2024.08.31.08.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2024 08:29:18 -0700 (PDT)
Message-ID: <fc488ade-4ced-472d-83d4-505d7fc73a27@tuxon.dev>
Date: Sat, 31 Aug 2024 18:29:17 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: microchip: sama7g5: Fix RTT clock
Content-Language: en-US
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 eugen.hristev@collabora.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240826165320.3068359-1-claudiu.beznea@tuxon.dev>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240826165320.3068359-1-claudiu.beznea@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 26.08.2024 19:53, Claudiu Beznea wrote:
> According to datasheet, Chapter 34. Clock Generator, section 34.2,
> Embedded characteristics, source clock for RTT is the TD_SLCK, registered
> with ID 1 by the slow clock controller driver. Fix RTT clock.
> 
> Fixes: 7540629e2fc7 ("ARM: dts: at91: add sama7g5 SoC DT and sama7g5-ek")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

Applied to at91-dt, thanks!

