Return-Path: <devicetree+bounces-37533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 630598454A1
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 10:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87BA51C28DDB
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 09:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FD7D15B0EF;
	Thu,  1 Feb 2024 09:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="moGi6o0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D181586E6
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 09:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706781502; cv=none; b=Z7qCaRrQ4L3oAPjl80p18NqI1UJlPL+63M8pdpBocTz3U1b0lQAXUdufyNdROCWjLGSKf5OUdRIgkbEoUX/hItEatboqJBJ/YB4OBI81rOBLbtG0Yu1HnKSP5tPBLSdxSaZ++vcPGDSpka4qmqpGUGWvXJ/G0j8w7i7qcQJy3Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706781502; c=relaxed/simple;
	bh=Y9LE38e8dbbj6exGDddJU+HpYfFxt/cetrcky4yHZl0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fl6nlApL3HXM/e4jvnCmSIpCXckTrsfLPH6I1W9Zu7nBwh0SqwEUHRc52fRs3Kq9Gx7CSGJDDqD+13hEx4L6SVXj26wz3yLXKggPNg+tQDIzxjohCmV4DlZJjANFQFVTC19GOfAQ64dMNktnkpltU/u9mrmkqzrLrozdeU+EnZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=moGi6o0B; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-55a90a0a1a1so1008938a12.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 01:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706781498; x=1707386298; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=tOBfbH9ijKcG1dos3q4LFKYc+IyaLOr6pgviE/4me0w=;
        b=moGi6o0BJD52w7uPjermHzdWLhAvqL6/78vo/9F3yooMLoDWmrrbWWnJr4M7dRYJ8i
         eTdfbU0aQPJhl9Xl9u552PNCp2s2FTqUZoxJdxBqmk6D48EwVsdWhK2U7w+5xo0Vawc8
         ZZ6gk4W5nPJe2QaGmG6v1JHII+6C6RL3xlZwYYloGrTAIqMk7OU67m0JXxrMfLLUmB3h
         pEZVZc8hd8KyyiAQVyz1mqoUMOendIdIZp0r/j43p9CRptIBEFRneB93LXtO5FQZFx44
         +GeIPmMNXPyJwqf/DmAKXADjrt/ZwvIIgyF6ThgWUCFDdJP2+aL4fhuZYz5s9DC981/1
         tIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706781498; x=1707386298;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tOBfbH9ijKcG1dos3q4LFKYc+IyaLOr6pgviE/4me0w=;
        b=w/cAi0gRRG3wPKfR6iOaW/44p8b0C9tJLVhyG/S2d+TUSRitp74pvD383XdvYkJDaE
         eiomg5AAnUKj+2+jw9Jv/vv6s17in8Nd+E3ESg0cawnbZktaHaa1JguRUKh//NrDui1E
         8bnczfihdKvrXKfqoh3ov9Q46poZRIqu5L3RiITUFA6eZ4Z4XX81W8ySd0kHzfDf8pP3
         ErXmYRGjG6Zkp3msE8uhUUDsLhQik+9sUOk6cDoRqmH3XRonmufJkVDmtTcnH9A+0eyD
         dg+X86WltR8pANzfdBRSZKOHBEFweAjO9UGB9isAexwdkNQ81IdG8n634ZfsuYYwUj44
         2iRw==
X-Gm-Message-State: AOJu0YzP195Ue3aLWTPxUkY/V8eLmmueI9Z1xw6Z58/EzZETqo0R7ohB
	5qAnC7w8EqDivBCkQ+gtwxpkPMZs5tEHJLfvLwauq7jW1qCks7nQYNMrpxBUOo4=
X-Google-Smtp-Source: AGHT+IG4BWF2g6u9jLs9anavFXg3QLExGVCmbR/xiS1MQnqk4XnbYKZo1gFRHFfmkJsH0z9v4vsRIA==
X-Received: by 2002:a05:6402:26d5:b0:55f:8a3c:bdc with SMTP id x21-20020a05640226d500b0055f8a3c0bdcmr3777930edd.33.1706781498634;
        Thu, 01 Feb 2024 01:58:18 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUaFLYsxH2KWlTsWVRrURIBBE9KwAyc+BpXxXX8rsNIJGQGyA1qS4nMJuDwBTGqWRH+zi2IA/6TMivMUeUE3Kv2oy0fX59aSqbdgW6uVLIFLUc+K4yzfIL2Q9NK7oo3dMWwwUjHg1erYSzqUE2D8+uGJMBbLotiVcsmYBIjwOkYz4KoyRWAlTs66r5eprwe8GYNZLOr1b21aARGh3tFkQH9HYmANOZggw/0uSX6cDZ1LsUx4CcyB8Tst+77h7ntiXXAkTRuT/yjleW2ukgU53fo1TEXbazI62s19Ev2Cjsz540AfuB+sknk+AmzZAE1APsN0GAc5m2Jar6rFh/UocCNJjvl5CdYYXC1X1RiQS1DqcEDeKjKIzJCIftSWp0NDhTf51DvpihY4kancLn5HGDy34CwNnM0pMvi1WLsALSSDnhHMO1aBewsdmlOY2rCNyl+W+u6RfB1fifa8KqNByNm5Xh4bsJ67v8E5w24PXUevzQtuftkjbh7q4uQdenJVV0Hh3tjxZ/O2rbTA6Uxyh+YmOLVUleOaQCzGfAivJYRaMefL93mhw2lbZ9wCtzHDY+LlrQFqaoJBOM/MBWf6KkR9UpVnXtOVidNgr2mCQliEESXxcyLcZsfO1A1B5oSZn49UVOC7NEfZMpMpnllx+94leipv/K6tXscmTiZcMkpVU44sQCnTQ==
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id u16-20020a056402111000b0055f0de1166csm3492011edv.26.2024.02.01.01.58.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 01:58:18 -0800 (PST)
Message-ID: <31c4afb2-b80a-4f41-bc09-badf8aa5818f@linaro.org>
Date: Thu, 1 Feb 2024 10:58:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] clk: samsung: gs101: gpio_peric0_pclk needs to be
 kept on
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 tudor.ambarus@linaro.org, willmcvicker@google.com,
 semen.protsenko@linaro.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20240130093812.1746512-1-andre.draszik@linaro.org>
 <20240130093812.1746512-2-andre.draszik@linaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240130093812.1746512-2-andre.draszik@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 30/01/2024 10:36, André Draszik wrote:
> This pclk clock is required any time we access the pinctrl registers of
> this block.
> 
> Since pinctrl-samsung doesn't support a clock at the moment, we just
> keep the kernel from disabling it at boot, until we have an update for
> pinctrl-samsung to handle this required clock, at which point we'll be
> able to drop the flag again.
> 
> Fixes: 893f133a040b ("clk: samsung: gs101: add support for cmu_peric0")

Dropped fixes tag. The driver looks correct, it's pinctrl issue.

I really dislike how these patches are inter-mixed with DTS. Makes
applying difficult and confuses about dependencies.

I assume there are no dependencies here.

I am repeating this and repeating, but in future I will just reject the
patches:

Your DTS and driver changes cannot depend on each other for new feature
submissions.

Best regards,
Krzysztof


