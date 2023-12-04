Return-Path: <devicetree+bounces-21442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A93A803A8B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:39:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9F982810A5
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 16:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A54F22F12;
	Mon,  4 Dec 2023 16:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cuAqk8XI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 430899A
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 08:39:12 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40c0a0d068bso13241245e9.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 08:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701707951; x=1702312751; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RceQfd2kwzQmuZ7IwlKyNuRvvDqLtfY8/yof+Ma1es8=;
        b=cuAqk8XIPlvriXVeR398Ksc3sXcYKIziVtcUAG0HYFKbzEHFKXFBbqGn0MPAL+TW2V
         C3/7r+IlMk4zgZeH3v1CtbcIAqcBMpneYAY3vxUHlPRc47qD7r1eELR5+ENq1cGLU+Df
         AV46Se8abajNsLkGdcvwJKWMKVjxaUr2CZL7OnEjCoLs1X3JLlhGTIId62qTzupZPLrR
         NEt5WDDudh6k2PF/lYVIYrTHK3aI1AZSl4juURpqrJk0v0BAg8OR5HWQAsqgdlcmOTqo
         hKv/8a1n2b/dkv5NMG7K1UhPgcJL5EoF8YdqDnShtE2VquSMmw+uz0ombTjtDwHDGxU9
         cxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701707951; x=1702312751;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RceQfd2kwzQmuZ7IwlKyNuRvvDqLtfY8/yof+Ma1es8=;
        b=OMoeTba34rEP3onqEHRueWThIbN2HENQwAP+EW4B3HEPFlt3lr9NWy8G1YGBMqtTds
         +XoO1T+nlCdcedTyIl3RAtg/xJCxGE8Owp5pKZw42Tq2lY4VgbNON4B18n8efnn0+bPb
         1iFiSoJWZD1cSTYoBsZU1bTUrRQxmRpy8sI/RvyCLchMY6PA+F4tvq8W2BeffidXfDYD
         MZUvMNsHKankiZvl2EZmyYzxerFocZK2EXc5xuvq4M6btjh6dWBNJPycxnq6nS5AEZ15
         8RnexHH1hQUXWdwkpXHUqMD9zUdaxrMJ5/qe8ge3LDzMg3s4VHHmOdZ9tvW3k7GhlaSw
         qaVQ==
X-Gm-Message-State: AOJu0YxfgqAUAjYoAt7vwB0aGVDmelfHfOVFLjkOu3nkrUE2OW9aK42B
	I7+UaGBZUWQbvxjRdshXECJZoA==
X-Google-Smtp-Source: AGHT+IG282oOuIH/Ryb7/0jcCnlMBSY7MmUP8+OPoXqpPn6QejmrQmjmqt9zYHtLmgplLc7jUVzusg==
X-Received: by 2002:a05:600c:1552:b0:40b:5e22:963 with SMTP id f18-20020a05600c155200b0040b5e220963mr3467493wmg.82.1701707950682;
        Mon, 04 Dec 2023 08:39:10 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:c831:1e47:2:5b96? ([2a05:6e02:1041:c10:c831:1e47:2:5b96])
        by smtp.googlemail.com with ESMTPSA id bh6-20020a05600c3d0600b0040b54335d57sm10982089wmb.17.2023.12.04.08.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 08:39:10 -0800 (PST)
Message-ID: <a1374b10-c012-4a3f-b56a-29ef4ca7e5f0@linaro.org>
Date: Mon, 4 Dec 2023 17:39:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Inochi Amaoto <inochiama@outlook.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Chen Wang <unicorn_wang@outlook.com>,
 Anup Patel <anup@brainfault.org>, Samuel Holland
 <samuel.holland@sifive.com>, Guo Ren <guoren@kernel.org>,
 Jisheng Zhang <jszhang@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <IA1PR20MB4953C912FC58C0D248976564BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB49531ED1BCC00D6B265C2D10BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <20231204-germproof-venue-6874ad902323@spud>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231204-germproof-venue-6874ad902323@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/12/2023 17:18, Conor Dooley wrote:
> On Mon, Dec 04, 2023 at 05:51:08PM +0800, Inochi Amaoto wrote:
>> The timer registers of aclint don't follow the clint layout and can
>> be mapped on any different offset. As sg2042 uses separated timer
>> and mswi for its clint, it should follow the aclint spec and have
>> separated registers.
>>
>> The previous patch introduced a new type of T-HEAD aclint timer which
>> has clint timer layout. Although it has the clint timer layout, it
>> should follow the aclint spec and uses the separated mtime and mtimecmp
>> regs. So a ABI change is needed to make the timer fit the aclint spec.
>>
>> To make T-HEAD aclint timer more closer to the aclint spec, use
>> regs-names to represent the mtimecmp register, which can avoid hack
>> for unsupport mtime register of T-HEAD aclint timer.
>>
>> Also, as T-HEAD aclint only supports mtimecmp, it is unnecessary to
>> implement the whole aclint spec. To make this binding T-HEAD specific,
>> only add reg-name for existed register. For details, see the discussion
>> in the last link.
>>
>> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
>> Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT timer")
>> Link: https://lists.infradead.org/pipermail/opensbi/2023-October/005693.html
>> Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc
>> Link: https://lore.kernel.org/all/IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com/
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Although, I figure it is going to be me that ends up taking it.

No, I should take it


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


