Return-Path: <devicetree+bounces-80025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB7E917A73
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:06:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 377B1B21500
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 08:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E64D15F3E2;
	Wed, 26 Jun 2024 08:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="srNqJ4EW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7EA15EFC0
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719389211; cv=none; b=GKPRiWe5T/1i3xsY0yMVkDPrkGy+KBVPMqW9PnGDE/zSb+ObzNJLYckY96moSkUp8CnblRgFvmlID3vPMb2S5sWiABv5ntQDdeHh6/LCJhm48vH+a0qwKiWvv+8wv6t+iJ7ng33fHHqaO5k8GEnezbYg1f49Wa9vDGpM+fv4YbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719389211; c=relaxed/simple;
	bh=qg/ZLjmnnXkbHNjaiPc4GkMr3awTO9l1G9H8oEvMCRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qBhF1Mnn39/dG+A3VC3hraTQ8dthYnvcpV0b4RB04L5PU0tTEqMOQ8AobA3nxxEsf01OyMOX3CA73wfTjxL5moW4G0/nCH9vYIcfsuRktZmvDvcNETrVdj2+6i6U4ai8ThOlTLjqEP3HTmNEKcF12ny70lG4ov3XPJJtCJOFi3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=srNqJ4EW; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec0f3b9cfeso76206721fa.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 01:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719389208; x=1719994008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qg/ZLjmnnXkbHNjaiPc4GkMr3awTO9l1G9H8oEvMCRI=;
        b=srNqJ4EWteJ2uPb8qpfLOtHVjO9EGZMfym5QwguWklzFUFt0OYYJrsbrYgr0AsHrPJ
         Bssv7ylH5vcPgFuUj9IWXwNRzcsaOhyHHdcAP2XuwkbGSvZWD05/Rtc7f9vSl7BH1DHB
         O6F0M88nPeZxSUgm+1GqCQjuSsnBjir7lYZKnOKtl4W78d+069ndvzfhNfgWZLd2TqF6
         LMmfHxDfEvdcPGVCZsEKAvApWq+2jMiF4eJEtzViv8mFA+bxYn1lqRPp5Y+fpdrspahY
         EdbsTRpasEvcKXnuLLWK9Glpzl+P2qdNeU5kAl17yYmqa7fxQQhuE4mJkzvbP8lBj4An
         A6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719389208; x=1719994008;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qg/ZLjmnnXkbHNjaiPc4GkMr3awTO9l1G9H8oEvMCRI=;
        b=vlBHXc1x8uVz3GJj3ec8bQRG9b6AP+8IiJ/fVQMi5AQrgNUQl4/52DL/iPsb50NFpt
         T4uOJjmBrLIWt1oHCn478iI8zDU89vng3HHOP5lsT0cD9XVV/QezIXhluBaw8vMXYcJZ
         YCt4AZMAL0vIfQ63BL/wIGOUSX/S5OBrqlH9Q32bcqFLOP9u4declSpqTKvleCklZh0h
         RqFEBdgYnLA4mkHXnQ7psceO13r0iQkH5TzIS/cjmFwW8vdNHhycED90N46ffd0mgw3y
         8yt3MPC5LxoEFW2GDlFhm49M1grp8JLiOrSnni69tfFhnCLM1FpuFH1NE/CUoCKc3Q52
         M8nA==
X-Forwarded-Encrypted: i=1; AJvYcCWLlXB8i8EFWpIClvn1JSpZpfg0U6hJeb5Rr9zV8gBVU07mxb5nLjem4laxMjkeijGYnjFjvekqZieK7hwCFf4y4Lc6/xdGmeGwag==
X-Gm-Message-State: AOJu0YwJ8QbTKsfXa6u8u0pmx+QTSkP0O7jgtLnGJbhT/s4C8Kh18SJ9
	bmsRAr+FSgqUdLL4KafAw6Sgv5fEBg4G9qNZL2CtE+HE87N8ZOAl8pcQGZWdhrE=
X-Google-Smtp-Source: AGHT+IG/kKwWJ6+3DNpbyGEnq3i9gk9FofbUd3EjDcubfw8Ioe5VISbAU0o/oXh1KTu50D03k0kQ7Q==
X-Received: by 2002:a05:651c:209:b0:2eb:68d0:88be with SMTP id 38308e7fff4ca-2ec593d8595mr51997431fa.12.1719389204587;
        Wed, 26 Jun 2024 01:06:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8246828sm15753305e9.5.2024.06.26.01.06.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 01:06:44 -0700 (PDT)
Message-ID: <07911285-d01c-4456-861a-825c1e9d65cd@linaro.org>
Date: Wed, 26 Jun 2024 10:06:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] i3c: dw: Select ibi ops for base platform driver
To: Aniket <aniketmaurya@google.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jeremy Kerr <jk@codeconstruct.com.au>, Joel Stanley <joel@jms.id.au>,
 Billy Tsai <billy_tsai@aspeedtech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240626052238.1577580-1-aniketmaurya@google.com>
 <20240626052238.1577580-3-aniketmaurya@google.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240626052238.1577580-3-aniketmaurya@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/06/2024 07:22, Aniket wrote:
> The AST2600 platform driver can always select the IBI ops.

So it is deducible from compatible.


Best regards,
Krzysztof


