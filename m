Return-Path: <devicetree+bounces-61298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7CB8AC36A
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 06:24:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E6301F20EF8
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 04:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BEC911CBA;
	Mon, 22 Apr 2024 04:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YkeOTKVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A5A8831
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 04:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713759861; cv=none; b=avkaEz6CLpJzsdKiNRQE4XpfbrK2ma+UcWSUAl40/zcnk4aFKwt2+SjVBwyJzowNzHVpd0lVgT0o2lSEVe/dFJ6SOgsKa5K2/dEQrJghraVFSSdnOY1WUJNny6zY8QpFwOuokP2M5g80uoGjxTok+Oz5dJK6UvuP0gVOqdQ2db0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713759861; c=relaxed/simple;
	bh=o2ARyi9Lyl3kxJUrdrjGWY0CM4h7cKHcXQLmoZsjKV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ctjxf0Q31Eui0mRboCnCTevDsDcHr50jMgYTxSVUugTZKulaRhwngA7wJBVoLkO7ujpsym77kLU0X/nyZD4ZUFQEm0F1qvM9z0XSdp5ImSCrKk0MWOA+t0FcEDetWbEDu+GgMD6BIP+DztRDFbivMi1jaPFgZ7QwUFvCEv8rq8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YkeOTKVI; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-343c7fae6e4so3574710f8f.1
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 21:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713759858; x=1714364658; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fSaSGiGvfjC+mZWTNxqkMqV3neG4fZMVdkdPk+gn2dY=;
        b=YkeOTKVIlIaEdYxFuoSIyWVMyUfzQCt916FZPHLjGJS9LdyG74UlE3FPSj2kKk7aYq
         gBR2nu0bo0oUrxyQJ3gmRFGnk2fVBniVkkQeYc4AVKun7Wah6qoW57XdL+DmVwiMKg2l
         U38UQW6TsqSLMLz6FuveY7n+XxngXTtUH4zs19rS7kcF+5mFzSVvdwArJBXyovmw6d+x
         LQfJUcihFy1sUUhAy0G9LO4FkrldL3tPLED1JHeNjB1/LeDcmaDy/sukTCDsd66Pz5CG
         /nuMZI+05D9xoNlpM9j/ueyXTyIrGZCEG38u8I1+3Y79ZsAWIO2F9imLdyZj0JFHAssX
         dsrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713759858; x=1714364658;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fSaSGiGvfjC+mZWTNxqkMqV3neG4fZMVdkdPk+gn2dY=;
        b=Td5x2zE+ctjqW/cj0TJwnCdbBigXsEnuJJAPtTCzewdBRqIEUNIcJHgTUrk2micw4z
         w7o1UvKF6wt7MhaLy/sEPC8SmkCN/2znYMvvaNCKzJiAog5f4bG37Wum0BjRrFHpwdbF
         srPXkWxebZe+OsCzrX4l66U8kiVqFY/iWKFpNwsyxiexDu6owxkdpY9e0jo1Ch1EPMX0
         hZo4oovsvvEjuwK7glr16xs65TF606TIV7sYrQ0hsvG2LVmhRrCxg6TcxgthdH6OdezG
         nW/lX9tIH2X7K2HsJ0fg/fuuAaxgc9G6tg//JTFPv7Q7AeJJjkQADOTUHi7BCUhpNsPz
         9Zrw==
X-Forwarded-Encrypted: i=1; AJvYcCV0DHGFZNJgzCUH4TWF/nwZUm655GRUTix72P6MvA+8g6JlzOVgGAwY4O0nt32WBhwwvvcjEyVcIMa8AhayC9ddIn/7rtDtUJn9jA==
X-Gm-Message-State: AOJu0YwW97mLKTp4pERcjVt7xEZ6+3ulr6dLY5g0uZQ8e7dxSfQQGudd
	GiGh8JHkm2ZdbXfzUOA+/WRRciNxSunbDDW6+CSZX5cusKxM1sGIrdbnraMSNxU=
X-Google-Smtp-Source: AGHT+IGv2OFu0AoXFD5onc3TVvcVrO0/Q/OpR1hRZGiXrFpLKSawnw0+FOej9cwEjlmRuoKgztS02A==
X-Received: by 2002:a05:6000:4008:b0:34b:88f:a62f with SMTP id cp8-20020a056000400800b0034b088fa62fmr1361928wrb.10.1713759857274;
        Sun, 21 Apr 2024 21:24:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id q6-20020a05600c46c600b0041892857924sm15225398wmo.36.2024.04.21.21.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Apr 2024 21:24:16 -0700 (PDT)
Message-ID: <71f2e031-41b0-4a47-9bdd-e8fb6334da5d@linaro.org>
Date: Mon, 22 Apr 2024 06:24:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] dt-bindings: riscv: add Milk-V Duo S board
 compatibles
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@outlook.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Chao Wei <chao.wei@sophgo.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240421055710.143617-1-michael.opdenacker@bootlin.com>
 <20240421055710.143617-2-michael.opdenacker@bootlin.com>
 <c30cc11a-209a-4919-a382-7588daff0d71@linaro.org>
 <b1f59075-f2b0-4f2c-aea3-bc596ac45f1c@bootlin.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b1f59075-f2b0-4f2c-aea3-bc596ac45f1c@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/04/2024 20:55, Michael Opdenacker wrote:
> Hi Krzysztof
> 
> On 4/21/24 at 16:12, Krzysztof Kozlowski wrote:
>> On 21/04/2024 07:57, michael.opdenacker@bootlin.com wrote:
>>> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>
>>> Document the compatible strings for the Milk-V Duo S board[1] which uses
>>> the SOPHGO SG2000 SoC, compatible with the CV1812H SoC[2].
>>>
>>> Link: https://milkv.io/duo-s [1]
>>> Link: https://en.sophgo.com/product/introduce/cv181xH.html [2]
>>>
>>> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>> ---
>> Where is the changelog? It's v6!
> 
> Oops, it was in my cover letter 
> (https://lore.kernel.org/linux-riscv/20240421055710.143617-1-michael.opdenacker@bootlin.com/T/#t), 
> which you didn't get because of get-maintainer.pl. As the recipients are 
> patch dependent, am I supposed to describe the changes in all patches 
> and not only in the cover letter?

If you do not send the changelog to everyone, then yes, please describe
respective changes in each patch.

It's your choice, but if you decide not to send cover letter to some
folks, then *it does not exist* for such folks.

Best regards,
Krzysztof


