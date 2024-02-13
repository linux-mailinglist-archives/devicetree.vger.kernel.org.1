Return-Path: <devicetree+bounces-41324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAD68532BC
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 15:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 830AB1F27556
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 14:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB99A57310;
	Tue, 13 Feb 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hsf1jpFo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9AF5730A
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 14:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707833543; cv=none; b=hdjipXFiaq4zaY8zZZjmlku3kP0AHpgW1pNwwqlnVRMesrRYzNzkkNFWrhJHUS0WAINaaYLQK3hfwP5H2wyzLJQBQXNnf7mv2wM49ecMWf9agSgXZFhOFQRvjP/ppqmLp1SQJk5QFqPI4Vq0IhI1oIwif4+CqYFBd0bawhO7RjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707833543; c=relaxed/simple;
	bh=dv17gQTB/BTDJJbRtMZGm0UZFkXb54FTn7XFdaEBr7Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fvBG4nRE6wjfUbODqU3L2M+3uuG2QJFfrj8C688Te8v8HiGAkcvOTI/S8SIhAwWAVfvKdztneZ2lyXo670JVh8VmKX0F0z16pq2POhXYB+xH7AoZ1t79kVj1CtWK7pGRotytYpqWepaUnfthWLORsHO6IT3/bgXUO33aSuPA3dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hsf1jpFo; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5116588189aso7604926e87.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 06:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707833540; x=1708438340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lSWustRDmVhI85u01lyQqqB4mJ3wL9eSszhFn4HC1ao=;
        b=Hsf1jpFoFlWVoVKqn8pla8vsSlF7sRcGub5Me0mus4CAunxsJ/VMFSJBLyE3RQZKAt
         z0kS1LxkF9yWaa/dh2TOthNDsBQVRuPmgvBq3dwkb+PtIDZR8L599Kkk5oXC6qix3Lt5
         xO4ChtoEnVT990FXlJYXUFmjLpWUnxtuuFC/L7XO/hSi3qkZYsayhKjQcXqGPTMme4Kr
         aph2+Addt4OJkU2Yf7r6/HWV2/O3Kk2gNiPMpdRRhqhKR3Ri6tZE8aQeOY8KFzdxDCgz
         t1/r2Zkukkd0DBfLcIkt1KsuscUwLrIRlLshwq73PQWUHrfh+nJh9KaJZ8KFQWf9mawr
         w2ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707833540; x=1708438340;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lSWustRDmVhI85u01lyQqqB4mJ3wL9eSszhFn4HC1ao=;
        b=Lcy/cqWXE9u9b2TvdWbSrj2jFUAAIVa7SUnPPMWL2wrKhbzmKsqSQFFLOEnQxyBA88
         HMWin1naqa8Z2GFQdET1mWzvqnk7EAiWppMFTrJAZZjNVFeQvytMnul51ClcnIVTKPu2
         SnQw5N+dgyFEBAeRjsLln+hYgiLs/K3cHq8YkMnSK2q1runk6+2hTVdxj8Ah9FbAe0bH
         OyV4aeDMG3ppoRj4rerEd+oTVH/WW4sy3FTCeaBBLnuESvZL55bT9E11t7D/R+xHspYS
         v9zuOKD2ba/hY7P6WUXUS87eRYTXLvGkTXHFWbBZieLfyp5uDXlNkBmGaSySAyrS8SA0
         PcKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZuV6eAJx4emiuq3kwsmZXh7e01yi7UudwOt6r+MyWU4sgqPgJbywNoQ3pNs73vbsBcUBNUniqIgxg6BdNs1vidhXmOEoxP9o/dw==
X-Gm-Message-State: AOJu0YyAaQ+UB78AV5FTtft6BYM9KhZwvGZizxQHGVF1kF/cxJvkFj+O
	RuNUkdqlzIv8w08aNQTFv8Zoxcw3i/XcLZh03lktrw5SFG/4q0FgUdqPD/MuOCU=
X-Google-Smtp-Source: AGHT+IH0RXvtarg8PiTzjsT8dyRdfoHqJN7gf3HiJFzN5ffOBI/fLoSctHHJmOsKG3UyVb2BurzMYg==
X-Received: by 2002:ac2:4c01:0:b0:511:6f43:b5d with SMTP id t1-20020ac24c01000000b005116f430b5dmr6072272lfq.17.1707833540065;
        Tue, 13 Feb 2024 06:12:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXyE5jXBwBdsO/mN6zCzhJ2ltNN6MZU5Yc50fynq7RyQmny8klhlyguMpzkx8YZi1vmFg/F8iKd8LsumsHaxIt43BxulCzzTOTojxDjrqrQa0zraMVf7G5t9CbpzUZPVklJOaIVwIxigcZe0tUoHjzMbZFUzLlpppGlTK+moRutjiLM8Tl9DtwrV65wy+DC27DveGYjbDWW1p8CCIkylqJMlaUcXMdl54mzjVaSclqBHuzY/vP6AVBtMAqXPXmTFvOImotAd2jTpo4j2aJuH7BsiNUMZKZelRNiKEepBTZR56SDUtU/lvUMtx+icAm/osVf8f17J02VgPfMV9yafuGY5RvhsF434tB2OfMiX0DC8gpYCvlJHHE1Y9463Gdf
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id v11-20020a05600c444b00b004110e8d605bsm4511078wmn.44.2024.02.13.06.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 06:12:19 -0800 (PST)
Message-ID: <ddff601e-d149-4894-84cf-0045b88c1561@linaro.org>
Date: Tue, 13 Feb 2024 15:12:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: arm: amlogic: add fbx8am binding
Content-Language: en-US
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <8a148279-05e1-4f00-87c1-6ed9ed1cb3dd@freebox.fr>
 <959b8135-a687-4781-993c-5fa5ba3b9c8e@linaro.org>
 <cda7afdb-f75f-4376-87b8-882297f2657e@freebox.fr>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <cda7afdb-f75f-4376-87b8-882297f2657e@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 13:35, Marc Gonzalez wrote:
> 
> 
> Looks like my MUA mangled the patch.
> Sorry about that, will resubmit.


I have doubts whether you can send proper patches for us with
Thunderbird. Even if it works, it's risky way and might lead to
unexpected issues. Please use "normal" process, which solves all such
problems, so git send-email or b4.

Best regards,
Krzysztof


