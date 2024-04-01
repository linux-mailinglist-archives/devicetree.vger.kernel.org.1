Return-Path: <devicetree+bounces-55023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E688939CC
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 11:53:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 456301C215E4
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 09:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0962010A31;
	Mon,  1 Apr 2024 09:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xFlM4/Zf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D2C10A11
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 09:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711965208; cv=none; b=e/PfGjFTTUNHqUFpuNQ/R5OSUD/LQbpOgGSCAOMqgtZuWmuCMh6jNYk9A8rDPAPsBaEvDBLGizUIMXJasys85qTor+TaCViFTgSsjbCL318186W73C0Vk3KDGr0+BTDhCMfKGsvS8ucLsDhkT7FyX/okMW7scKy1pErS5vVEQZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711965208; c=relaxed/simple;
	bh=wSeSHSkxSv9BKdY7p7/IgD++XClDcXUT1bBvWMVGO38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pRFZ53ZF/KJEkz6zP1uHuTScYjSyZbjmT+28qZJb5NXWb7JEvA8a5xK2n9P0LHYUYc3Okc6iK0PJV7oninopY+rasIam/6Qe7Go8mxXuuW6le8aG4BFFpi5GutGjJBcRHLlBtUg2TxjLn4ib70QSXsyh1JBBL4SZsDWhpmlcn6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xFlM4/Zf; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a4e5ee91879so123797466b.3
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 02:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711965206; x=1712570006; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vJLSReGupxbDND1LJRyaZWMTkBhBt3K2g1xwcsN8FhE=;
        b=xFlM4/ZfLzunLDqzvNDpvR8ibnhbjBrEm6FjEgIZa66HcLZ68WMlb+CeaMhEiuY/uk
         8H0duaNSUT96jjlZQyO5CFECORnRlxnEgRnB3U5WMSn37chDZppMmqN5Z7Me5tcLLHK6
         YGwFaTSyu1SMm30MZX5J1koA0Y39+QB/ymc9YrGA90m5RHsqrvr9CTgu2Z+4jKgWAqPp
         G76il3IYHw4XSb888wiDDfM49WCRclqyg7waszvlfmvtNRu0y9sPwWJ3vRT88QuY51xe
         2H1Ar90HbK+lkbB6TZjV0giMJbT8dN2BKv7n2mOmhkB408MIRhg+lDLgBEZE3kb933Bn
         ldqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711965206; x=1712570006;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vJLSReGupxbDND1LJRyaZWMTkBhBt3K2g1xwcsN8FhE=;
        b=UHnZe1l5iyCImv56MuNY7jZRAeXOewSdNJmWndY7ljmP7vbDBcRuMredKarxlJKY31
         rBve5TROScpRVQbzbHW2tYDgkjNDlvPARgcG+o+d6cMdet7BeAJIlxOEX6pyhuWFD2i8
         ugsHivlR8v4sR2ghm7hnJGH70rNWFtZOwDAuOUKnoeQJBUxpN68pfP5NLuyAZ7+5HJ/M
         qgzWL87aaNVsyOUOJnAmVQWqTaNZu+6pvKhB1NlihOF4FMSf9iM6OBUbyR4gv1A4PrcB
         +1YVQOxRCsy4pqjY39/Va/jYcY5j2mKFRMx5UGjRkm63bjxJMCG1bUXWGSpJhrdqe1xc
         hjfg==
X-Forwarded-Encrypted: i=1; AJvYcCWqUiYkNQKZy5WB3tJ5y9GEbJAYnEGL8xRVY0eQCRR6GkNyVcZqwrWLEUfDU/mZQlHN2tHIPORsWrJXLLmApVNrgX0U1Lcs5S1p/Q==
X-Gm-Message-State: AOJu0YwP48v+zxj8a2C2O2GbFlbl+EbQ2H2d/i5v3sIPbg/F3utPfLx9
	gNp16oO7YABnC9F2ZLZp4HLtyzpd1vtyJvwuPB1sJNGkBwohPaPrm0Mq8/iFr9g=
X-Google-Smtp-Source: AGHT+IGlxvnPlf1UH1BJckd0vZiim7UTtYPcuL+ImBTiKtID4vuz/fJ7QgvzVi6FU4o6qJBrqYu+tQ==
X-Received: by 2002:a17:906:751:b0:a47:533b:10 with SMTP id z17-20020a170906075100b00a47533b0010mr5339129ejb.62.1711965205410;
        Mon, 01 Apr 2024 02:53:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id v18-20020a170906339200b00a4df78425dbsm5065880eja.36.2024.04.01.02.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Apr 2024 02:53:24 -0700 (PDT)
Message-ID: <7d344878-867f-4a03-90b7-a61c3fff0fce@linaro.org>
Date: Mon, 1 Apr 2024 11:53:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/2] spi: dt-bindings: add Siflower Quad SPI
 controller
To: Qingfang Deng <dqfext@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Qingfang Deng <qingfang.deng@siflower.com.cn>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240329015147.1481349-1-dqfext@gmail.com>
 <261f2995-b279-48bc-b9d4-023a8a705857@linaro.org>
 <CALW65jZoU8ChPg+e-5T4+ZmS2=g8O3wL96mjaRAPbomHJhg4gg@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CALW65jZoU8ChPg+e-5T4+ZmS2=g8O3wL96mjaRAPbomHJhg4gg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 01/04/2024 05:36, Qingfang Deng wrote:
> Hi Krzysztof,
> 
> On Sun, Mar 31, 2024 at 1:42 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> On 29/03/2024 02:51, Qingfang Deng wrote:
>>> Add YAML devicetree bindings for Siflower Quad SPI controller.
>>
>> Describe the hardware. What is this Siflower?
> 
> It's a new RISC-V SoC which hasn't been upstreamed yet.
> 
>>> +properties:
>>> +  compatible:
>>> +    const: siflower,qspi
>>
>> Except that this was not tested, aren't you adding it for some SoC? If
>> so, then you miss here SoC part.
> 
> I should add the "siflower" prefix to
> Documentation/devicetree/bindings/vendor-prefixes.yaml, right?

Isn't it already there? Then obvious you must, but that was not the
point. Please read writing-bindings document. Compatibles should be SoC
specific, not generic. "qspi" is generic.

Best regards,
Krzysztof


