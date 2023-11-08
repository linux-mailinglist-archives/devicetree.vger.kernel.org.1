Return-Path: <devicetree+bounces-14586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F267E59D0
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 16:11:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DC411C20919
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 15:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC3E30332;
	Wed,  8 Nov 2023 15:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="a4Mk9mfH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5193032D
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 15:11:42 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08788188
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 07:11:42 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507a3af69d8so2205150e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 07:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699456300; x=1700061100; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UUxKSl5xvPnPZc8xesOknmD+ele1gvP9a4k80mJzrYs=;
        b=a4Mk9mfHLqk/vZgx/naAa18UdyyXhBudweECCBHX+AUJfgMQsOrAzKkSIMmNQlNHZn
         pJAL6L6vCB6IbFs0U5BY/B8tzRynpcJWtXMCsNk4DVDyj9Pz1QabIrc6xPB/f03BpXup
         6Y/dhf11TvJHk2m9lUcBJkSMHLeWaN9I1yAkLlbrzoyQKoySFxlwbpLLFb8xpnvR20qF
         O8U5H90TVJQSG1z2UpZFkAhYGb08572T3dLPvBOJx0mCD3OwreILHETE5ZP74seQ2wmP
         Nz+Nx5O6eUtx6dBGYb+WTJ+r/z5VzLfWRXXhXa8HhXr2oVRbS7MxetIwjF+oUEdmUm8e
         7Oog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699456300; x=1700061100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UUxKSl5xvPnPZc8xesOknmD+ele1gvP9a4k80mJzrYs=;
        b=X2sqfAwOhuiHussWZgNPAW6rx9OuXuBsecO9XOdGvOWkoo+poes39gsUJDLkhtIbLh
         TZPhTyw5jJfNoV10wrDan/r+YwuS7hX+bZ9B8a9laLEaxoONwqmAbrg5XJW0atfrQeGu
         8HGz83bH2EeZKEKMKDrabnRMzoL4INCSzC8e62KFrKtNmEpd9xgQfKVwjXE7j+PliCHr
         0VaAvFHfp3sCxGgL+QH+Ki5oSZGlRIlZ0PnxGAqz+/4mHSb8Uk7ncxuP/fgeEcKX+lbO
         ZMsoaiGQILozQHEHjrEF0jOKE4Z8cwvkkxIQlkAZDlkhpmNZEWuI3blaHF47u0nhyj8/
         A7dg==
X-Gm-Message-State: AOJu0Yz9YffskZRxQceg9Xek5ghrpap59rJ3L5fN5aKiV2lzoJPgZkB8
	OPffWB6WXjTDKkSvVukQGKWysg==
X-Google-Smtp-Source: AGHT+IGgd3SIwzRo05crHQZcZdIwfB08YjDuFbDQxrEcjaJXxfyUwP7xDu63tVHI4IbBCdiWq8CvpQ==
X-Received: by 2002:a19:ad45:0:b0:509:3806:b86 with SMTP id s5-20020a19ad45000000b0050938060b86mr1403227lfd.3.1699456300131;
        Wed, 08 Nov 2023 07:11:40 -0800 (PST)
Received: from ?IPV6:2a01:e0a:999:a3a0:22d4:745b:9658:6dd? ([2a01:e0a:999:a3a0:22d4:745b:9658:6dd])
        by smtp.gmail.com with ESMTPSA id m13-20020adffa0d000000b003143867d2ebsm5159107wrr.63.2023.11.08.07.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 07:11:39 -0800 (PST)
Message-ID: <c5766c6b-5a85-48ab-89c5-9bc43aeb20bd@rivosinc.com>
Date: Wed, 8 Nov 2023 16:11:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/20] dt-bindings: riscv: add scalar crypto ISA
 extensions description
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Andrew Jones <ajones@ventanamicro.com>, Evan Green <evan@rivosinc.com>,
 Samuel Ortiz <sameo@rivosinc.com>
References: <20231107105556.517187-1-cleger@rivosinc.com>
 <20231107105556.517187-6-cleger@rivosinc.com>
 <20231108-grower-handwash-63526d449e9c@spud>
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20231108-grower-handwash-63526d449e9c@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 08/11/2023 15:57, Conor Dooley wrote:
> Yo,
> 
> On Tue, Nov 07, 2023 at 11:55:41AM +0100, Clément Léger wrote:
>> +        - const: zkr
>> +          description:
>> +            The standard Zkr entropy source extension as ratified in version
>> +            1.0 of RISC-V Cryptography Extensions Volume I specification.
> 
> So the topic of the seed CSR came up on the U-Boot ML in the last few
> days:
> https://lore.kernel.org/u-boot/20231107212431.GP6601@bill-the-cat
> I think we need to document that having zkr in riscv,isa-extensions
> means that the CSR is accessible at the privilege level to which that
> devicetree has been provided.

Hi Conor,

Indeed, seems like a good idea.

Thanks,

Clément


