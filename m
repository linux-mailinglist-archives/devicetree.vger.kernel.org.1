Return-Path: <devicetree+bounces-41195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 054D4852B8B
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87810281182
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C76A1A701;
	Tue, 13 Feb 2024 08:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DZv7Cw90"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14F518654
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707813936; cv=none; b=nzLCP5zAVbIoQbSYuKBcZaO6iFnozteT0cUDDKdSiboEVUE26CCZ1/lFKGoSgdg3u22UOn8uZ3DNoyf/fZ2K3wkFfmTdVLxeQxp0oChAlwNad8dG4XgIbQuDnmh7qBJ/JL0Wgk3wLMY1Oi52CWZgUa6n4WbNYGXzUJpo8Fxcf4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707813936; c=relaxed/simple;
	bh=a+toyq/0ItDGlPo6UDBpB3D+rVsDEKbRkRpMw8A0wA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ANvBHlWQeLDkZpVWVuws2yc5ga+yCKUmQpugQKr3K3l9ZrMImJr1Gk2sKJ0hIxRWXFgOoyv3KoZ3IPEhYNjJzHL1ttOIQLeNsjkxZtJJ1RZ4grzBsNWWrk/WK7/uP6nQhRfWQ0m1cx3zNI1kW7dPnbAtkR/9fuDduWWF34qvVgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DZv7Cw90; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-68d0bcb4a46so12383886d6.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707813934; x=1708418734; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Fw1my7vh+Xb3V/wK1PNZ9g8Xa8RdGdj2KqL8iOkwes=;
        b=DZv7Cw90q2snTjD7IrrsTdvy7GM92RWl6FkUSIxbymKSgEwRnEHB9wMrB2v9fFDTaV
         pVVOK7R7z2sKrLcexgwvZad/+jY4k40YbSlYdEriSbOrgp9s2pF9l7/wVOxTcGPYZlFH
         fuATFGvwJZsQo5keZz4VEA9hjaBZjlx6+A9LckPAi25m+dxQOUumfwo0vFJNrDLKkgnj
         5sb3jKZnZ1Kid9m2N1wdUNdTbxnM0GmIJPS6Oo9AyNqkhBxbyP7DFx4L6Tx1jPAiiod3
         UnU7kfnE5mc34za9nthHMsgqJ8AlaVw+Q+7KIvOUmKklqn5xXtVzI/LNH1jIok+fcKFB
         RJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707813934; x=1708418734;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Fw1my7vh+Xb3V/wK1PNZ9g8Xa8RdGdj2KqL8iOkwes=;
        b=H1+Q2gvOekmioRFma+RXiJAUMrcJsmFONmUhCX2qzDQkcFTq8lMZjQJRDigljknmzL
         y8atIG10hHuiiCnJh+Logusy0VQi7oP+Svmw5cSr/OwDsYHEXUDEuxEdexhF2ujZ8f9L
         bz0NJ92hzgdHkYiNL/EtHbbF0aatrKUXbwfBkK7PAHQSDoyI/Ch4midaTTJHw+clEeBv
         kyIubpb4Hh57eoqUhVOJjylmV51dl2eXB8j1qIgDH6vgm2YybHzEAa/4AZQfKu+sSN83
         1gRSKJVYwLmnPG8fzN6U39QRjPoUdswuhw6lc43m7VoXATAy++rISFdiRwZvVDEJCVnT
         xWYQ==
X-Gm-Message-State: AOJu0YyyXeI2CX/+BgSpzWbmDy+HSinih/dFLIaMdLVwYSymZ2VBw79Y
	TBNexlUBNKBs/XocnOXU7tg9cbDR2iUQ5mLXadf55ObaD9ww38Td1edg5uuSlhQ=
X-Google-Smtp-Source: AGHT+IHBFg+4DXI7iIENZtgDE1sySAz5Z73HvSRJHXtD9kFtj/p003pU5cjn/cKs9mALkfaAIaKe9Q==
X-Received: by 2002:a0c:e393:0:b0:68c:930e:5ae3 with SMTP id a19-20020a0ce393000000b0068c930e5ae3mr8639250qvl.44.1707813933845;
        Tue, 13 Feb 2024 00:45:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUjpqgLjJIQZrXW+BAG1ycOsH0wex7GttQqm5t2pl5hFWtSjbhTlCYSSYTjn3weQan9YPwHFnpsy3TqCDeb7px2v/Y/KRoj/CIeZdU2K7WT+P9Pw5gG/fidZCD8jMl+G6u4WDCPGwXRZty4EKFTBEBZk7sgdmhVgpfbQ9P98DE8c437dUvKhm1B45wQdQYO3VUu9dtiq2ttVBF0+IRChJiVMXetRpOziFZxfsk5N9en8PdsjpbIZUSxHgvuVJX7it6CqAknKCsnVduevkMGonXzGOFl1c9gth7rYuTmWUl9l1rogPO51UZ+RUU1pP5k0sR9vZ5fDz8ysNGUg57E5oFHtHh1Hi1ODOotfyWrpi7i/NljD8m/JTgc+rkB6Ojj
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id lq7-20020a0562145b8700b0068caf5c5fe5sm1068049qvb.77.2024.02.13.00.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 00:45:33 -0800 (PST)
Message-ID: <60cec93b-aa80-4230-baa3-0f64aa0a4832@linaro.org>
Date: Tue, 13 Feb 2024 09:45:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add support for Freebox fbx8am boards
Content-Language: en-US
To: neil.armstrong@linaro.org, Marc Gonzalez <mgonzalez@freebox.fr>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <64f65168-c7b0-4365-8d0a-e57b47797d95@linaro.org>
 <6274df9e-bda6-44b8-aa7e-e4bba5c7c96a@linaro.org>
 <fb26c6cc-53d8-40c3-9248-d41f7598e2e8@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <fb26c6cc-53d8-40c3-9248-d41f7598e2e8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 13/02/2024 09:44, neil.armstrong@linaro.org wrote:
> On 13/02/2024 09:41, Krzysztof Kozlowski wrote:
>> On 13/02/2024 09:38, Neil Armstrong wrote:
>>> Hi Marc,
>>>
>>> On 12/02/2024 18:47, Marc Gonzalez wrote:
>>>> Add support for Freebox fbx8am boards
>>>>
>>>> Marc Gonzalez (4):
>>>>     dt-bindings: vendor-prefixes: add freebox
>>>>     dt-bindings: arm: amlogic: add fbx8am binding
>>>>     arm64: dts: amlogic: add fbx8am board
>>>>     arm64: dts: amlogic: add fbx8am DT overlays
>>>>
>>>>    Documentation/devicetree/bindings/arm/amlogic.yaml         |   1 +
>>>>    Documentation/devicetree/bindings/vendor-prefixes.yaml     |   2 +
>>>
>>> This change doesn't apply on top of either v6.8-rc1 or linux-next, could you rebase on v6.8-rc1 ?
>>
>> Please don't apply, I have doubts bindings were ever tested.
> 
> I need the patches to apply to be able to check them!

True :), I misunderstood.

Best regards,
Krzysztof


