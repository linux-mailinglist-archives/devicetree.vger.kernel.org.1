Return-Path: <devicetree+bounces-8714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E947C9BF8
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 23:40:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 69D21B20BBD
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0243B1427A;
	Sun, 15 Oct 2023 21:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mnn3Sd/A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444BBEA1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 21:40:48 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62877D6
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:40:45 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-405524e6769so23693715e9.1
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697406044; x=1698010844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=84EI/C0H2U5kpXItq4vWpvTw4cdvIc3S0yzxtEetzSA=;
        b=Mnn3Sd/Alhzndt0LFFmWeDu8OKL0d7UKQJN6VyvPjXYvjOrmt9bkobhsktPVS+KI5s
         x57aj1PJZw02yeuFce36H/EBoPUns681sGmUunqkgJqYvp9KDFsYYqUlNKmiA9ioq+vj
         ZnwZg/LluCoK2YtBUAReJtoPDyGviNF0cOWSVWXiyr3oMXE3+iLnlvvZoPVMwMU90Mwp
         POjaPrWzeXA/a4ILQBhpKr6shILI/AC4SyvF8X+i3ofk2FmkhZOkzW/0D2tT6/v4xz+G
         944hiM5sOJo4WixcSqGq3vg3T3HY0Xx6c3inKPMb9GMdv4kmfLHz01OxTbCBudt+kyDA
         X4Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697406044; x=1698010844;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=84EI/C0H2U5kpXItq4vWpvTw4cdvIc3S0yzxtEetzSA=;
        b=rZUm0ya9r9vECQqBN4xFB0UBP4t7Fsf6xqa4+djDvc7nwEvjAH3T6QFMYocMjXuf5p
         1a1/y+8T6zH5NQf6lleRFr46/icPrtkvEFr7LwsYjuydXxw3phT7HGIwc7kvZgXEFdfH
         w5GCxlpcZyzXXOXZDYeSsJSvCug1YlXV+M/bFgkHUafQlLYAUafnDsLAS769JsWnqjws
         tYuIp5H13921kkfKH8jdcqYKRkc992vma0LxRYetLc0jpZuiILUUlRFIEsUQ916LzeyB
         vWvx/EvYopSVqjenY0DoLpdOQLp/ZE4f4VXWNXJeNMj9GJ7rcjPOqS1NIxLHvYGhS7fz
         HFQQ==
X-Gm-Message-State: AOJu0Ywf8HrF0PC83jEmgWtl5JUe5BEenOnPlXnGgezDmThS2C6oFbGq
	wMkBMeYACMkwwMwo5ZOgUYGT9Q==
X-Google-Smtp-Source: AGHT+IGrmgXP2uJwEz7jr8G6P+8BU4AoOva1emaX72Aq3IkIyPWIe83RE0djxlqiAwFDDM8LaZEmKg==
X-Received: by 2002:a05:600c:444f:b0:405:409e:1fcb with SMTP id v15-20020a05600c444f00b00405409e1fcbmr4891612wmn.5.1697406043591;
        Sun, 15 Oct 2023 14:40:43 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id m4-20020a5d4a04000000b0031980783d78sm4174069wrq.54.2023.10.15.14.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Oct 2023 14:40:42 -0700 (PDT)
Message-ID: <8f3d4222-1661-4930-819f-e23f5ff0467e@linaro.org>
Date: Sun, 15 Oct 2023 23:40:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/42] dt-bindings: timers: Add Cirrus EP93xx
Content-Language: en-US
To: nikita.shubin@maquefel.me, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-11-a1d779dcec10@maquefel.me>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-11-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:10, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add device tree bindings for the Cirrus Logic EP93xx timer block
> used in these SoCs.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
>   .../bindings/timer/cirrus,ep9301-timer.yaml        | 49 ++++++++++++++++++++++
>   1 file changed, 49 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/cirrus,ep9301-timer.yaml b/Documentation/devicetree/bindings/timer/cirrus,ep9301-timer.yaml
> new file mode 100644
> index 000000000000..e463e11e259d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/cirrus,ep9301-timer.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


