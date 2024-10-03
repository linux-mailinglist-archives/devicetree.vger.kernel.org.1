Return-Path: <devicetree+bounces-107435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7847B98EAF3
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DA86B25546
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE22B12C552;
	Thu,  3 Oct 2024 07:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="wlOQzFRn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D780C823DF
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 07:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727942382; cv=none; b=ttOOL/0VwWpA57hSlNWgN5Jhnm+6rnDv/kY5KZJ6q0gb3vnxCTsiUXPEE/GtSrVAwsh5NNMc9aKzyb8flozk/mS7H/6S5kNMl7vBeIQlh240K2BF8pYe+HuvilwAz4Ten4d4F67aYP6GWfH8EfpqwdWyeG8+ah4HduAO5U9H8kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727942382; c=relaxed/simple;
	bh=CzdQ3i2VK7UMasif6892vGA/ET644xX++JhT4/OWUH0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JFd4IWGbmWVjKmFSdEezYlIxkrEzJKe7XGbyaQI12ljSnICA7cTebLaVj04mteYsPFJtl7/pSpuyQ1H64TSKOaa7UGqwXAN3BsFSas4CGdWxrkTERoXT5I7yNUdPlLX9TAN/msRX4cBAm7lzkUQUyia1NZ7h/+5VdAECZJXgjxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=wlOQzFRn; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37ccfba5df5so532701f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 00:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1727942379; x=1728547179; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7wZTumvS1FX7esdrpRKhVgflOZWM/kXat3TeZ3vkWLk=;
        b=wlOQzFRnh6SzE4mZbV61+OolH9ndGmRDUM+ac8msJLPES30SQF8r3yNSICUjRqFo8Y
         Do65/XugIeLWBkT0e/NQcLs/0av7X5eBUzKS2TU+KgWSUIU7p2pc/0Skr4jow11ulmsX
         eO2r3u5Fn1FumazFhsBkDW5oHT22mQIWNWvCXfCorKs4n0oDllSuG088MqWtYNKmuezD
         VPV/sA1e9Er/HeiRJWMJfju93rr3+Ok/NxLlxI0C+RIVdDmVa0+VUcT8SPeywT+oJYqF
         ywZG88zTOkzBA4B2wZoXw4JRTtVP70Ni044tu/8kDqwhal2rTcpwLZHV5KxDS1mO/cVN
         e0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727942379; x=1728547179;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7wZTumvS1FX7esdrpRKhVgflOZWM/kXat3TeZ3vkWLk=;
        b=S9jtrwrt2JxgjZw1hLeYG3+MdKjSOrbkXQ23l048+hMgAO5/Xs9/V4ABHGoMM+kTKZ
         fAkngV64sM9/nceVOx29wtoKs9xJiho3PabP1UlOH+uD+x4pwWBVUcRp3zVmPjDJ6MuK
         +7ZlPtg7FUMPH97zsIHbpORFD1r7DnHqBROQZ7DyCh8yioD1JTus2y3s2NQkQLMZ1HQv
         c/ZlMdRArgeBrZ72UdbkcR59HUy/Alz9LOwOIz/CdE/kKJXroXLY152PqLlEl8Rpv/IP
         Sw4Ujb1E6pn1SpeAivKLe8bAzxZpG/itstYMa3FYVzIkwYdaHiv5i7tYK9mi/r0K43hk
         gSnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSnF53x/bAWUXWYdJQFrkX7Cy3u4T/3RYvzIZ6y8/IDpEGs+lYBW1WuNrnOONWIVY+xSiMae+kw39/@vger.kernel.org
X-Gm-Message-State: AOJu0YxTcmVdY4oTZ+mjb2fmCPYFsFqnSoi4IubE8GHR+1fwHSuGGkU1
	JcHdf5FHa0iyUnJH0EZ3K47sdkY3H3qwimgFjdxYBdwW2vmG2JSHZhS5EwVXnQk=
X-Google-Smtp-Source: AGHT+IEsSdfcRZjKJ41FslpC8TPMBC/B2mp/qcKIEx519I9XW873b+QBemVm6u81uqeEgDbbK7zeeQ==
X-Received: by 2002:a05:6000:1547:b0:374:c075:ff34 with SMTP id ffacd0b85a97d-37cfba04c19mr4773570f8f.38.1727942379165;
        Thu, 03 Oct 2024 00:59:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d082d94f1sm669315f8f.110.2024.10.03.00.59.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 00:59:38 -0700 (PDT)
Message-ID: <0fa7461f-5c7c-4f18-ac02-66d37e2c559c@rivosinc.com>
Date: Thu, 3 Oct 2024 09:59:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v1 5/5] dt-bindings: riscv: document vector crypto
 requirements
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Andy Chiu <andybnac@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241002-defeat-pavestone-73d712895f0b@spud>
 <20241002-sincerity-urgent-acdb0e8d8a66@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20241002-sincerity-urgent-acdb0e8d8a66@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 02/10/2024 18:10, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Section 35.2. Extensions Overview of [1] says:
> | The Zvknhb and Zvbc Vector Crypto Extensions --and accordingly the composite extensions Zvkn and
> | Zvks-- (sic) require a Zve64x base, or application ("V") base Vector Extension.
> | All of the other Vector Crypto Extensions can be built on any embedded (Zve*) or application ("V") base
> | Vector Extension
> 
> Apply these rules in the binding, so that invalid combinations can be
> avoided.
> 
> Link: https://github.com/riscv/riscv-isa-manual/releases/tag/riscv-isa-release-698e64a-2024-09-09 [1]
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../devicetree/bindings/riscv/extensions.yaml | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index abf2579171c5b..02b822bbf341d 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -651,6 +651,38 @@ properties:
>              - contains:
>                  const: zve64f
>  
> +      - if:
> +          contains:
> +            anyOf:
> +              - const: zvbc
> +              - const: zvkn
> +              - const: zvknhb
> +              - const: zvks

Hey Conor,

Shouldn't zvksed and zvksh be part odf this list ? My understanding of
the spec might be wrong but "Zvks--" seems like a poor-man's wildcard
for Zvks* extensions ?

Thanks,

Clément

> +        then:
> +          contains:
> +            anyOf:
> +              - const: v
> +              - const: zve64x
> +
> +      - if:
> +          contains:
> +            anyOf:
> +              - const: zvbb
> +              - const: zvkb
> +              - const: zvkg
> +              - const: zvkned
> +              - const: zvknha
> +              - const: zvksed
> +              - const: zvksh
> +              - const: zvknc
> +              - const: zvkng
> +              - const: zvkt
> +        then:
> +          contains:
> +            anyOf:
> +              - const: v
> +              - const: zve32x
> +
>  allOf:
>    # Zcf extension does not exist on rv64
>    - if:


