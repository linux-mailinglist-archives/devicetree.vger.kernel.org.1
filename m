Return-Path: <devicetree+bounces-40117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A95D84F4DE
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:57:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A18661C254CD
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E40D2E84D;
	Fri,  9 Feb 2024 11:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="d81OdcC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B344C2E651
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 11:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707479839; cv=none; b=LdvX+sabmwEXpfnNCcbVrY6Yb46qduDwJtYFz6kb1eBTLyiCBpRm6v+aUPF95er25WyynIx/Mt8Zl1yyiSob+5/F6yp3biCpgVKW69pDw/WRm59OZuCRoy3G9tdALUyvyzRTgnqUYcqIs/D6UQSzIlM8lzTCduduQENmhzFjmKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707479839; c=relaxed/simple;
	bh=o4EHuYCxFzdlSmTFph+ybaPuKYFCpmiTOIxz9Of8RU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gCgUFNm81N54NwDjUdeS7XN60cXwm5E+Or/e4v2OGOBD1pRFHylRC4wY7DR2AtrbqgcZiUZfBlrkbOiZY8oa/+EGM/i++//hztyhY7Eh2AOLan4fLNS9Nm6eRndOxEgblqnrZvXX6owbLxlMX1OXHtKsBZj64DhalRgg1OOLybY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=d81OdcC+; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40fd72f7125so7182035e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 03:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707479836; x=1708084636; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s1AGI08loNSP5zs2tQjZO2F5Z+x9CwlZlooCUALsHSk=;
        b=d81OdcC+uGFkuiACN81NmABpWndf6O/f0e/rry7IRkxxTfSVUWFTy+3iDSbG6PIY6Z
         Pzkb7gnFqfDw0OIJLCg5H1mMQTN7pONNyZiXKw7hh3bJFzXUjpk61v8acjgzk2Do2/yN
         3lpQVNAisMyme+MOlbBiPCGvz8jjuPddN/28GZEMxSBVhAOPl/3Nc58TZt+WhqJhbf73
         h8vbNpbk9V4wUhqMokzmw5A6SD3hq+a4uGO8Z6XTl3YIgo/EVwLed4XxdwjW9w5PRr1X
         O3z+19iwXH22jTzItughDnS9H84eBI6T/Vdo/9ZQjLvrBLbClEoDQDPt7YCnRRXoG2JG
         /0Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707479836; x=1708084636;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s1AGI08loNSP5zs2tQjZO2F5Z+x9CwlZlooCUALsHSk=;
        b=AOIRzlaTKRbJA+yVxt1cb3xhnTup+xDbD+MUqPMOWscxlaQrw+vl46/pViPQej9kH8
         Q5Mj4yhX9WUp4r9kvWKZDMtLTCra6fv45JoNfcVbq4h9V6PsoHcmwb38DBWipOLHztg5
         98SIKWfPaXTWVwgc/crE8IGGiyxaOuXMXEWSDfzVgehFn6gMTwvMUxCFqaQtsLMGQebq
         /1WXUjtx/4659UcAUTFjLdGC7qRceaG48S4vZv4bgskCIAik2lqHMBkQTmp6ySZ438MM
         IuZmTKxGDlh3EEGhk6bxXL9jFRRiT4CCOvZVE9+N4V8QVqkm/ys0g8bocEfC2Xjjubhr
         0T8w==
X-Gm-Message-State: AOJu0YxCNIh0G7cBIY7p6WgqJ/GeOzHXg0SljUEmpCTWtuO5r/aZYZCD
	C1FNLhy41O0/g2TNrgM3c1a9yn44cqTxuy9BOdn3v85O+Um2zlFXh/Yo4vUH/Ww=
X-Google-Smtp-Source: AGHT+IEKzu4OuFFBCPwKZoMQia7OUvrZSIFd3Jvmqto4G+RVfQMhTVHmnKJdeyHKOtvS5NI6eTUdog==
X-Received: by 2002:a05:600c:19c7:b0:40e:b447:ae7d with SMTP id u7-20020a05600c19c700b0040eb447ae7dmr947456wmq.33.1707479835728;
        Fri, 09 Feb 2024 03:57:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWaqRlja5LmVmSLBC34yIDZX/OpKcoeNWEH/++uyCsiufhNaTzwB+ruJGChVPLdlAc6+inB2hhNBlnXPee11Vspf7mMh/6ALqIHyj/GUhdqXNqNTx81mvyuBGyu1p/4sO8hfpuGuGk1UuEOH3bjQ0hs1xHFlt1zdTg79SEH2xqEaZs8q1sngx8EVRTb/p7TGpRzwjNOjcF/EnNOX2ER2X8bChWnGpKXLRtPBI7iF2YDRXbE0wmRk3LSOfKzC1eyVIMoy0tUZI/BtZczJHiy6NtyG0ChhsZR086Elt2Qa6xaASy0CIoBm2Q9PMwIpkGCY5yVczBepGfG7JpD1sa19dk5CfjxOiEVRYTeoP6TdnT2gpu1EA5aTEzApEf1JaxmKPmMXYEOg9moAwW5bimJHnIoa9nstIu+AegPhZoT1GxiZV8qoFkfeTDfBM+QQ6mwISC40lO1LrtIO/9J+bWchpDs96iY/H1QXSL/N/7LMm7FGvXfthIlbK/CtqmbAFllEeXXsXdzjFEPBDDj3/CsqqLYOOkt7x5c9+X7uTqtI9GlluFYfhD+EQ==
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id c11-20020a7bc84b000000b0040f035bebfcsm412491wml.12.2024.02.09.03.57.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 03:57:15 -0800 (PST)
Message-ID: <a280eb6b-e7ee-4136-a555-3c9ec19dbb8c@tuxon.dev>
Date: Fri, 9 Feb 2024 13:57:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/17] dt-bindings: clock: renesas,rzg2l-cpg: Update
 #power-domain-cells = <1>
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu
Cc: linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com>
 <20240208124300.2740313-7-claudiu.beznea.uj@bp.renesas.com>
 <2ca67a77-b51c-4f7f-828f-8d91d8971c75@linaro.org>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <2ca67a77-b51c-4f7f-828f-8d91d8971c75@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 09.02.2024 09:56, Krzysztof Kozlowski wrote:
> On 08/02/2024 13:42, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The driver will be modified (in the next commits) to be able to specify
>> individual power domain ID for each IP. Update the documentation to cope
>> with this.
> 
> You are affecting existing users, so you should explain that you keep
> ABI intact or if you break it, why it is fine to do so.
> 

OK, I'll improve the description. The ABI will not be broken with the
changes in this series.

Thank you,
Claudiu Beznea

> 
> 
> Best regards,
> Krzysztof
> 

