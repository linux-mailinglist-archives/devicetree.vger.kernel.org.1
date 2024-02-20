Return-Path: <devicetree+bounces-43788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B19085B8B3
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 11:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B328BB28C64
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 10:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B447660EE5;
	Tue, 20 Feb 2024 10:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lSGEQ9Wu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04E760ED1
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 10:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708423882; cv=none; b=Es+lGLSffOmY3TANBlyQww1OReRaGzQKX5FZTJDXZ8+gXvYTaREuzvS1n497Tn8S0RxGCeRCjj+YlfdzKwAitva20eOry34RwsRCwFg1r91z08kgSX+nlDUkUO0pNuyDyRltE14OKffPrf7xTEFIsM4z/0Et63oMH5ZEWk+DGws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708423882; c=relaxed/simple;
	bh=367XaILFO8rZ3wKjkG2ZciIgggCgKEiatsLpqhi/xE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A96Z1ZV+DGJN5+ZNlFZckztH23wD9qBHJ0TZUCUEW5xULEoipSSNfZqcsTP/C5mW6WUXZyJYYtLaAHJolwwL6aOzDNAVkuFOsSz+HsElU08ulPxeMf6UB/V2cTH3peIaCirnd3WGBnZl4PPjFGUtT7EyYc5x+s3QWXCmGYs+aAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lSGEQ9Wu; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4126ea3b812so3321705e9.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 02:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708423879; x=1709028679; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9cEevSpcHYR0bJRJ2Pii3xbCZBo/9gOWZM9i89Gz/54=;
        b=lSGEQ9WunQGqcHSaGpXI7LWwDsbGvCa0nbs5CsfAlHIQYo+TSFa90POavErwZVn/TO
         fq4y41EXZYHwfgfc/qkb9fjGcncFBsYtTDIe0xeT1aWwb5zqyA+R4hH7AosZ4snNRm4P
         kqvpzbyHhTXqdWtxH12n9b7+MH4xxg1Fuc3JqygExLsxTzXkyDz6uYHCnZHXxJ+idRHp
         Z+cg9mc3PZQw9RqIhpjZ9h5LuJQ+8jit92K/R1KNIY7Z1QkKmvofLTTlD0MGVJY8sxak
         Js2nmvQ0yJ3oLv1VJ0uQWVzjAxM6/gc+12vcJJKitv3F+as4DVuNnalW3tgQpXO35nCd
         eFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708423879; x=1709028679;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9cEevSpcHYR0bJRJ2Pii3xbCZBo/9gOWZM9i89Gz/54=;
        b=oX0wpTBgjG2uWioINXqI99tPsVDElflsSAf3AuXUTXWdiomzTqebS5WtBzz322ZTeB
         N1WhNWoaQ/SanSO/MuOIbxdVRnmcuXqAlQwVoy5u0LLM7RhAn71C4TqVpl3RJ8fujh8R
         aEw0/0FyVA47k/kegRt0MTliZdJL+QGXvVgBMTH7C9lZfxoauem9VaDfDdCMCnCoR79X
         /p2SSeKhtZyYxAO93//PtB45DUeQZv63z7HmN0GBE5J+Y6g97JHrfE2E32I5obUY/f3W
         WVbsJJqUxNsYeNULa4R0fo72oTIgQcPeSrBeK/dKprp/If07+g4TR7GH7e4hybiKMAHp
         Pp1A==
X-Forwarded-Encrypted: i=1; AJvYcCVVXlSQ2edgZeiHv5aXDS5zlsojdmI28cSV0X7KszhvGAGyZ6FusEESOqscbVg9OrdFod3IxaVVblP0zSVDcSQJ5shlXxTfcTCKTw==
X-Gm-Message-State: AOJu0YxdVFn95/Hp1Q0w55ptmZxKXUB1ax9gl2HSD7levriK61e0j6+5
	GTFAp1yLyfMxqUAoe86dxUKFGxcrCmFbFxbhTUSrYyp+iDBT+lup6se2b9NMlFk=
X-Google-Smtp-Source: AGHT+IEgixbH4lu/2UTycb5gNIqO7D1deuu3v4xgduPKcH9f1PaM4TPLidljmACIVMP6934aAfDefg==
X-Received: by 2002:a05:600c:310f:b0:412:68a1:1020 with SMTP id g15-20020a05600c310f00b0041268a11020mr3082774wmo.17.1708423879131;
        Tue, 20 Feb 2024 02:11:19 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id s8-20020a7bc388000000b00412260889d9sm14022129wmj.1.2024.02.20.02.11.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 02:11:18 -0800 (PST)
Message-ID: <31188f64-7c6b-4279-a2d7-8b5133b1d485@linaro.org>
Date: Tue, 20 Feb 2024 11:11:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 2/5] clk: hisilicon: add CRG driver for Hi3798MV200
 SoC
Content-Language: en-US
To: forbidden405@outlook.com, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: David Yang <mmyangfl@gmail.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240217-clk-mv200-v2-0-b782e4eb66f7@outlook.com>
 <20240217-clk-mv200-v2-2-b782e4eb66f7@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240217-clk-mv200-v2-2-b782e4eb66f7@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/02/2024 13:52, Yang Xiwen via B4 Relay wrote:
> +
> +static const struct hisi_crg_funcs hi3798mv200_sysctrl_funcs = {
> +	.register_clks = hi3798mv200_sysctrl_clk_register,
> +	.unregister_clks = hi3798mv200_sysctrl_clk_unregister,
> +};
> +
> +static const struct of_device_id hi3798mv200_crg_match_table[] = {
> +	{ .compatible = "hisilicon,hi3798mv200-crg",
> +		.data = &hi3798mv200_crg_funcs },
> +	{ .compatible = "hisilicon,hi3798mv200-sysctrl",
> +		.data = &hi3798mv200_sysctrl_funcs },

These are undocumented compatibles. Run checkpatch or properly order
your patchset.

Best regards,
Krzysztof


