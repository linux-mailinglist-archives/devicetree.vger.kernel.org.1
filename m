Return-Path: <devicetree+bounces-188862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B1DAE5D7A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D0E33A7E29
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20F80246BC9;
	Tue, 24 Jun 2025 07:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fE1SRG74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27390335BA
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749219; cv=none; b=U5CmuwsBs+F+sF8dG7pd+Ne6Z00lbL40lTNahHaisG2jdL/8XGzD2EGWGsqzIcMeWyxEgO8iAlO8MeBY5hQPP11F1wd8gfCECz+kNOWGtcAlY4tcABcOBH7E1KrqAnlL+2mCjmMKm+iMweCU1pcB3dHv9u5vW35EP+tzCwg78eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749219; c=relaxed/simple;
	bh=HSfLMHu+9cPEqXJHQ1n0d/wG3aX3Z2AaECQBXPmkgNU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KwXVv5V8ecV7FCmyRO5R7DsUFjZzk8NMBKsO92oi86HRXHWZgCwlFCJx+tHxsLqhOy8zz6WS8DCTQ6iF2t3YLy6DsqtYrawaID6U/1+E5mdJEW43typAXf+Jwn9SYQ29qUdLDGd22Y1+LzkxNKzkuqEq675piFWvFTbzSmb6Fbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fE1SRG74; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-adf34d5e698so1197653866b.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1750749215; x=1751354015; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tZsqPIlzakM9CiQKEYZw0VMhLSMsXirFzLyiqiLeJ8E=;
        b=fE1SRG7469vzaynKU6sGvpbcyuJwrJiCl4UDW7ryc2xir977d+WPKwAgjY7C7KsZL/
         c09RFAMPpFA4yZYlneFQc4VMnGzi4CUVPVXFbTHtq7jB5brGtt9LnEmL+XdUfNOKPRU3
         b+0waMtFzhiuWzX1suUtWUmvv/AT9nesvyq81EVREQ/8J+mxJxK07wOdnRnjU3kQpEiK
         B/5rJjuh1+7/+dazP7epIjAJDebD6OzjUl7FZ6gQXayjE7xoq/1vIrz3Ci83G11Ii0/b
         4788W7rGDi1V0FfQHMkr2hGeM4yR/5W87BFgSsots1ibNRYyFQ8ZUmTDzjf8HiN8kH/M
         a7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749215; x=1751354015;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tZsqPIlzakM9CiQKEYZw0VMhLSMsXirFzLyiqiLeJ8E=;
        b=V+Kft/s1i34ENiI/6dLQpDTMcTQGZmsvmNVSMEYfIg8zgy5GK3SXmQnLDBKzV3WW5T
         7Wia5VSWQ2AkVFdRlBHxE64n87Yu0Si+avomMtyP539j+6b2UEs0keRvKbtl56vRhcIg
         rAb6D0Gi7H+Dzulij6ODTm2K6HkmViwSOEg4btJhCvGwLXmBHaRIYqwItQs0aadHjJcA
         Hp579k4gjPw2n49TmjtJYiul1N8ss5psc7njcVAymT/jQF1hyJ/XH7ZQmKE3uAA36Ty8
         rViYrVD32NBaCpwb1kxof9MaowJM4E2t7HFmAFJJLbEq8WenldexHNrLaTAslpFrKJiz
         70kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrcEBBSN6VxkNSPtFREDGyMBUlAWHO9Jitc/7iTn3A3edHAZY8i/YaKce4hkGd9a1yVNE3N1MSGn1L@vger.kernel.org
X-Gm-Message-State: AOJu0YzzxDHHNzCU+kpea/LtRYk6cVcl4F9g08lpjjpjHZhjw96ooYY4
	UUijaSyhpozwu2FTs66+DNc+g6Z4lEZzaQ7xHJwJDi0GPaF+6QEHblyInJ6MudWgwsI=
X-Gm-Gg: ASbGnctprYedf8FWGo1j8PY9K812o8zwKWcYPvsJq+bc5rIh+JnebCopCejxxaXJ07R
	tnCfI4QJieFUo8y4x/kvoOEaZPz/+l+E7Smnnui44X8gnin9UimHF+c9HdfZ0hk82heZm+bN9a7
	Xh/XgcmH1LPa9PVNipGXuTqgfpXPq29WENNwaX7g590u96NPylZmnw0Wm+aovJth+XjL7QHhsqe
	gB8xWTbtGE5sjF6Ku6HbYLEmFE/xoEtED9il71r2NbjKMEq6p9kI5bIbM0C9OpRiTB84Tz6+xwO
	nKLshYk8YN5ywGpc9LyjM2b7wAf60A32L6jwebn4V334d3tjKwt8aAg/K3XVv5YUPj6y1Qg=
X-Google-Smtp-Source: AGHT+IHKnr+Ic27f5Dqtk9V1XEvi1k7erHnsJ8svDB4g8oyxVwlgZRh/6GZoFZH6tUF8NCWR+LBHiQ==
X-Received: by 2002:a17:906:794e:b0:ae0:a0ab:245f with SMTP id a640c23a62f3a-ae0a6efc2c0mr247497666b.0.1750749215471;
        Tue, 24 Jun 2025 00:13:35 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.110])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b3448efbsm13120566b.177.2025.06.24.00.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:13:34 -0700 (PDT)
Message-ID: <c3895975-b02e-4648-9cbf-9dd7f62ed4cf@tuxon.dev>
Date: Tue, 24 Jun 2025 10:13:33 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ARM: dts: microchip: use recent scl/sda gpio bindings
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org
References: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
 <20250519112107.2980-4-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250519112107.2980-4-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19.05.2025 14:21, Wolfram Sang wrote:
> We have dedictaded bindings for scl/sda nowadays. Switch away from the
> deprecated plain 'gpios' property.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  arch/arm/boot/dts/microchip/at91rm9200.dtsi  |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9260.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9261.dtsi |  4 ++--
>  arch/arm/boot/dts/microchip/at91sam9263.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9g45.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9n12.dtsi |  5 ++---
>  arch/arm/boot/dts/microchip/at91sam9rl.dtsi  |  8 ++++----
>  arch/arm/boot/dts/microchip/at91sam9x5.dtsi  | 15 ++++++---------
>  8 files changed, 22 insertions(+), 30 deletions(-)
Applied to at91-dt, thanks!

