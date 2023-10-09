Return-Path: <devicetree+bounces-6920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 159F47BDA92
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 14:01:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 463521C2091D
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 12:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40FA918C10;
	Mon,  9 Oct 2023 12:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xRHRdrOB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DCE63DF
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 12:01:10 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA4E0F9
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 05:01:07 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32003aae100so3323145f8f.0
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 05:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696852866; x=1697457666; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1dQhgAOJRNqoOh1Ien+h0xhg7sd11cwuiObrfM0AE80=;
        b=xRHRdrOBS7i3FSEfOc0nQZDmpxypTmFqSxHK4neDlGWtXksaLgdUcZ0iXazzFx+JUg
         VZwo/2sqGbE53guSpgOzTC/9PHsw/O9CTev4niZU6T9ja78osZMZog5zbH0nSxP/9209
         54gtl3pmcpEyCwakaQbjf4RuES2Mvi0KR7oVrWhMjyGPNn2K79AV8kmDaWjVp8m8/4bb
         gMtSpOoMvH/9C9Nk6U0t0lf/z0U0hLYaVT/pUXok0rWWJuR5AIkG17oQ1FjxqvwTCIkE
         kv658P3oxVN9Mfh1NVp+U+C81bxT5/bWJDHBcp7dN9stHjrq5zEYLGgbWwJ+aSFfSTGK
         7hIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696852866; x=1697457666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1dQhgAOJRNqoOh1Ien+h0xhg7sd11cwuiObrfM0AE80=;
        b=GsNwBrtVRrtQzrXkQV93VQQGeLfZJLA/AJYzYHTfV4Ak7oCxQQzNiTbZNJkKl3ybEM
         WtYMMY3oaQ3URvSCxDkYPN/k4wje7XySDekQUIrZ1bkqRiSrVxWkhtHosLO4rgL/wfBz
         fcJTCx+6LVDc8VfBozAcuokzPnF2YW9P04Rng8sycv85OkSKgX1bUQXeJve38IkloRb9
         7Mo0SVqrjvFi6ibJ1WKW93RGeqpRl173YDb6XDNClqiIfD04mc0gwqovLBmlUoHW9zy5
         YiKpJ/Kss2iLZt+kRaKDB8p6JidVBufBM7W2r4vGkqhBSzNVM+2XAPAFLTl40M7Eph7D
         TCnw==
X-Gm-Message-State: AOJu0YyIBUScJDKA7Lu8Mi4ISVZFRaic7Wta7vAI7wa6AqXbpfgkcsDb
	jaK675q/Mamx+97d+3zM5nNSDQ==
X-Google-Smtp-Source: AGHT+IH7e7GhrAvk0ajA9tZ0NEiTbxzb/d1XRPhB3D/cod7tcEkZk77rF0aFAvoTRaN60f7E0kWhBw==
X-Received: by 2002:a5d:658e:0:b0:329:6b53:2c82 with SMTP id q14-20020a5d658e000000b003296b532c82mr7129118wru.31.1696852864934;
        Mon, 09 Oct 2023 05:01:04 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.123])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d6b0b000000b00324853fc8adsm9384768wrw.104.2023.10.09.05.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 05:01:04 -0700 (PDT)
Message-ID: <5c2442e7-8e03-433e-9b6e-bc9aa6881cd3@linaro.org>
Date: Mon, 9 Oct 2023 13:01:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/21] arm64: dts: google: Add initial Google gs101 SoC
 support
Content-Language: en-US
To: Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com,
 s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org,
 linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de,
 olof@lixom.net, cw00.choi@samsung.com
Cc: andre.draszik@linaro.org, semen.protsenko@linaro.org, soc@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-19-peter.griffin@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20231005155618.700312-19-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Peter,

On 10/5/23 16:56, Peter Griffin wrote:

> +	serial_0: serial@10a00000 {
> +		compatible = "samsung,exynos850-uart";

This deserves a SoC specific compatible so that any further quirks or
incompatibilities can be easily addressed.

Cheers,
ta

