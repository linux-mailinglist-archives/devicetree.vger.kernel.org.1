Return-Path: <devicetree+bounces-63503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 756A48B5286
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 09:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A05B91C20D37
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 07:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C7414A90;
	Mon, 29 Apr 2024 07:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ou+SZkO9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6B410A0B
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714376935; cv=none; b=G9sclS8NDPNUzg/QMddoTQVTNP8Jf/iH+vMYglRpn6r47TZOAFOQRVxTx1RKqquEb6F+PuH1DekBXQDeaHXkmH/nfFyncfGeOU6Xspgd/btllUhu6KCjqfLhS/IWslbVCHlCf7oKzivxAC+nLgjtbaLUMQiizTkW57KAJSeQsc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714376935; c=relaxed/simple;
	bh=3c7zy3iSVTlQorEG/DOBVvSVS2bP1zYxg/tNrFtpIL0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=CNIW9hPnAwg9H9s59ZLI3Ajl5sXkrGDvo2uhju91He30jEAWUNqHSKLdwgv+4ja5bOmQrQEiAF/f+ObS49AXG+7JXDtaiGm4g2TK0PEuSscja36OmcMLdWB4AhQ0Dmi+Ks/GQLqnmqLXc69UY3Ph6QOxgRjVmpruVrcAefEGcqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ou+SZkO9; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-56e1f3462caso5145172a12.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 00:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714376932; x=1714981732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+UOjRndgrxlYnQuIQ0BoNUYlVsmwnDC/3XZ5al12mRI=;
        b=ou+SZkO9boujP22bjZraGfoSQFWEReW5eYzguNUjcmTZfewdJbp5N3d2Kq7AxcLygp
         EH0AaryHFGLieG/gC5yaQHslvab69LjfgC2mZOBrdr5uoYfxj8sChwtPUojqEfIA4WJl
         MgwbIU8qZyEbnOs0URmIJpM7ZLiDl3kW+vdRg+5V1T4jRHmfMuLS46njj32XG9J3np/C
         RNatrd7TUJgDkW/kmdL4f8D2PvnroaoQfBitxoXCeq8mHj6XCqPN6NPLskBv3wbHDHYh
         GBNsdi0FaX6vebggdGfJT3Noh9LmlDGbOYSEC8acDtW9hUAXSmnIX47Q4kJqSwE7Ta8E
         7Kuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714376932; x=1714981732;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+UOjRndgrxlYnQuIQ0BoNUYlVsmwnDC/3XZ5al12mRI=;
        b=X8h3itXFZ7hrTD7/GZhQaPzo8Z8n02lqmlNXSITjrYEEjnRTA0BP7r63I3N/mt+hkS
         DWEwT0MOFtKebw3x3Sur1Wu6YUlWpD9KpuFJlfUYaLPGaBsbBpLOC5/c96T1vh+5koy/
         uUpWPNIwVZ9ViPlifNbXwE0YTczq2R4iV4zE1IUBSm7DnT8OMBZ9MvOQesYuYArrpI33
         ikHDLo0aJbwubJS3WN/Lcxebdf9OAurbuLyOYebsEchytYLjYETdkLr1zdtm9JuE8FOc
         fWK5xhBxedQ/01TfNp57zTbAXzvYzRdGmCGcIGnbFjK/BVS00U+rSInBFa2XuV7dJre2
         xA0A==
X-Forwarded-Encrypted: i=1; AJvYcCUg4xpPGr9qbUNuICNuOhkWYTdw2KdGC37DO0hnvTvlEoY1fssxFOWduXwo2HDNpDK0lQoirBddDi3uKn8cdic4x/UmQPaWDL7BHg==
X-Gm-Message-State: AOJu0YzfGu6kMtOJWMMDZDmAPjy3clvDHWE9atMrv4diZhy/OT4aNk+m
	CYbYqlfYjOaTuaqeN6M8Cdb2eY/rbMKu1XpZz3sPqiInEg1tq/VN/mmevCk21Ew=
X-Google-Smtp-Source: AGHT+IGKT/RjKWi5HrDyYeVBP4XaPU5/i2eOwcP54jLz2CMiGk4BSAM4mx9I/BVTljFgUBmiNnM9Ug==
X-Received: by 2002:a50:d00a:0:b0:56e:743:d4d9 with SMTP id j10-20020a50d00a000000b0056e0743d4d9mr1764727edf.42.1714376932066;
        Mon, 29 Apr 2024 00:48:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id fg4-20020a056402548400b005727e798b5bsm1138075edb.63.2024.04.29.00.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 00:48:51 -0700 (PDT)
Message-ID: <fa857531-0d8c-4cce-865d-066a95cd4f77@linaro.org>
Date: Mon, 29 Apr 2024 09:48:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] spi: cadence: Add new bindings documentation for
 Cadence XSPI
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Witold Sadowski <wsadowski@marvell.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org
Cc: broonie@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, pthombar@cadence.com
References: <20240329194849.25554-1-wsadowski@marvell.com>
 <20240329194849.25554-2-wsadowski@marvell.com>
 <52f49ae7-e15a-4aaf-b66d-42895e8352de@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <52f49ae7-e15a-4aaf-b66d-42895e8352de@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/03/2024 12:32, Krzysztof Kozlowski wrote:

...

>>  
>>  properties:
>>    compatible:
>> -    const: cdns,xspi-nor
>> +    - const: cdns,xspi-nor
>> +    - const: mrvl,xspi-nor
> 
> It does not look like you tested the bindings, at least after quick
> look. Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.
> 
> There is a lot of things happening here, but I won't perform review if
> the code was never tested. Sorry, please test before sending.

Hi,

You did not address any of the comments and build issues neither here
nor in previous mailings. Starting from 2022, all previous comments look
ignored and then after some time you send another v1 expecting us to do
review of the same code with the same issues.

I gave it 1 month for some sort of response from you. None came.

Therefore let's be clear: I will automatically NAK any further version
you send, based on assumption you ignored entire existing feedback.
Before sending any new patches for this XSPI, please first respond to
numerous emails you already got (from the last two years). That's way we
will know that reviewer's feedback is being addressed.

Thank you for understanding.

Best regards,
Krzysztof


