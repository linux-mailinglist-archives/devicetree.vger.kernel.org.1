Return-Path: <devicetree+bounces-56472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8C589964B
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F17CB22CC1
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 07:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A93C2C1B8;
	Fri,  5 Apr 2024 07:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AbnyM01A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC3326AFD
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 07:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712301127; cv=none; b=F2vyYfHjNhRmGJANVxS9mez3tnvSw7y2654UXfs8wO8+J4yqdxqEEtTacHyl0XPAmGXD3SzZ9qRihSbw93p4zisrJGoPip/mukydGEd1nUiese7wV2RxFtKxUGlyKW79iFs/hOfsrwYxWMrYhkY6I4hhuoprCUQwQs1lGPWXqHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712301127; c=relaxed/simple;
	bh=9ZmDcHjVphzJDpqeqlMtTugVZWFieu1EET//VIQ/KQc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s+KtV1nwZPINOTOTu/20atWj4YLWo7oGdPgVuiO7o6N4TICUWwdvNmr9yLhcR26vWxiFBTOYUavOHHaIRATEWFjPcijvOjq1iYRDdQiAz4HULqUgVpO+u+vYhhOORUcX60ck1Kstp27/Npi3m9lHYZKwlIbyvivLGS2rgjq9ATQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AbnyM01A; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a519e1b0e2dso87920666b.2
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 00:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712301124; x=1712905924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jk3yTPKSxJv6jDXRc+fgcdQBaaKfS7p6doieHQmPjAI=;
        b=AbnyM01A4SHxYxLOXh6rb4ySXqFEsXm+k+oRubKYHHyCx5+0NVh51RZIabcLcBPTpM
         9q4uvuu9JGUvv0JetTJkCqTi9y/ksXBCTriLDTGVpjerPLLrLNwxA9/zSlE2OWBvqmUX
         qTg0TWA3slvUFWjTBNsTGQXP4dWEWe4QsrtkSuyyf2ORb41xzBJjH9AVE+OUvwd2tZsw
         6G+NnFClFOEKooQ14cKY9MQHXi0vEKOuQXgYUCCJX/fbq8qvQvGEu9KL2fguirMHHtUC
         0prgSl06h39o8bHi8ohzpoQYFiJ5nKElOe1z+kU4v6dIlUno3B39HidOawu0U/pS1Gcl
         u4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712301124; x=1712905924;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jk3yTPKSxJv6jDXRc+fgcdQBaaKfS7p6doieHQmPjAI=;
        b=V+UNXFqm7gCYNAEtpSvCfCGPkd1kSstFV6N4HmMo/3Uk6rBcj7BwZywoFv1w8BsfKC
         sTKtfyasCkWfB8U7PLO7wtLe706ZdBI/if4caZOAY3iFhQHbOUrRplViaOqEuOKldY3S
         RukfoAezXQoXdJ7G+zfN5zfTrU29M94LcwQiZARfHpA1rV3sIRUQ38fUgTWY1ffVqObZ
         +aOrCW6oUkPXjlKHYGdotN8nboB/6+x/09VCa50bLa465Qdf+rGcIXo+Lr2EEka8K3sS
         3xnxQ4yg/WSP1fetiM/YjGqOGZqsRolh9TTrFa502YKf7O17V/mRJbzPKiCqkK+nfpzZ
         QsjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTm2/sd+ZfxjreFIGUYVfJTW1SaNoy/lQRa0v6zjV5la+CLO/ZLbvL5j3QcKz/oqBYixGuGBFXLFSneZmRXmal8ZALSEVbDE4K/w==
X-Gm-Message-State: AOJu0YwmPwg3Pyi91/25jJ7mksbuMPIZW8tbJK+G+o7vP8c4KrStI9lf
	Pd3410c1qkf2a2cpliFKVFh4ELWuZYUv1X3fyQckWRCIndpz/Lg67m5cmITNVY4=
X-Google-Smtp-Source: AGHT+IGxsg4UAeJZFngiUaJ8LKjRP+9zUd33ieVF2oXq8obYymAUDU2FilKOdbwRYxKwuzY5ymqbMw==
X-Received: by 2002:a17:906:260d:b0:a4e:61ac:c3e9 with SMTP id h13-20020a170906260d00b00a4e61acc3e9mr310912ejc.31.1712301123665;
        Fri, 05 Apr 2024 00:12:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id jy23-20020a170907763700b00a4ea0479235sm503796ejc.107.2024.04.05.00.12.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Apr 2024 00:12:02 -0700 (PDT)
Message-ID: <e70dc513-df9f-4b99-b9d9-7ebaf83e8f3e@linaro.org>
Date: Fri, 5 Apr 2024 09:12:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v9 2/4] dt-bindings: stm32: update DT bingding for
 stm32mp25
To: gabriel.fernandez@foss.st.com, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240402125312.277052-1-gabriel.fernandez@foss.st.com>
 <20240402125312.277052-3-gabriel.fernandez@foss.st.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240402125312.277052-3-gabriel.fernandez@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/04/2024 14:53, gabriel.fernandez@foss.st.com wrote:
> From: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
> 
> Now RCC driver use '.index' of clk_parent_data struct to define a parent.
> The majority of parents are SCMI clocks, then dt-bindings must be fixed.
> 
> Fixes: b5be49db3d47 ("dt-bindings: stm32: add clocks and reset binding for stm32mp25 platform")

And except what Rob said, this does not look as a fix. How ABI break
could be a fix and what is even to fix here? Please describe the
observable bug, how it manifests itself and what is exactly the fix for
that bug.

Best regards,
Krzysztof


