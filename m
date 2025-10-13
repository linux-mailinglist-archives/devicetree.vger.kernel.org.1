Return-Path: <devicetree+bounces-226038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB64BD31D9
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B3C354EE0D6
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD77528DB52;
	Mon, 13 Oct 2025 12:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PcScEYLT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B538318DB26
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760360324; cv=none; b=N36pw50QeVDHqfLwIXHNuqaQJGFGOYPsXTCCX4jdvEfOfmr4fgk9bWP7udXrAIMRcNo9B8pa09NoCmKgmRHVRGVtHUNeX0oxF0DzQqP4j4oHvLfG/VOkyDllDSMiK5R0dWcUspGbgrJuQ6me8etLwMk8FXURFP/T5pVsJ/58s2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760360324; c=relaxed/simple;
	bh=+6DOi+zFDcSixxAiCDvNV19cTvKji5N4xXay/KDy6tw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LTNNKMm1TX8ssDjdlH6RqZcfPpOYdBGmJIs7X2XpvBueJZRu9nOHVY1b3yVfq+wMNpCtsXQY8duFvGqgEKT3TPVGVdasQ3HNhBhYOXPxTwpzS4F3BABfC0D4E40RUlnhpBv/MNWzFYz07222321QL6CUrVLYtR91XALBgnpPwA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PcScEYLT; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59093864727so2724396e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760360321; x=1760965121; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Ht5/EMJSIYJ4/8VE7OBxc2V6zKOUNS2Eq3oer2OJVc=;
        b=PcScEYLT58MFeR4j2VmdBnQ+dVIb1gkRCReMkRUDr+BNSxT7yx9km3MBDi0NfAVMOJ
         kgpqBxXwWU1FDNNy0ZnIW0WNtkjtpe+hohNtsiR1tEVhhwko0trpJMN+mcVWk5RtI68A
         l8RHFHpe+ZLPwbE5RD7+kw/TgTyJ2raBy0xBysTKJs0IJTaIDyPIuS6EJphfRj9vQ8GA
         tsti1YsJv7Lb8FP/fsJQgX+N35SuQ4fjV31bwVM+69b4ruuEi+7ezTQOtsQPRT77yCSJ
         QZiyrbtnRoAF/8NiyuDEb76gsOmZxaxqJiRLOyJ6OHuASTXS524Szaxdq/McFlpSXa+h
         L2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760360321; x=1760965121;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Ht5/EMJSIYJ4/8VE7OBxc2V6zKOUNS2Eq3oer2OJVc=;
        b=uPganUGBxyDQ4KGOaNhu6n8YgzNuLoZHxJ6Dj4hzqcajCcnRAJ9/GUa7o+W+nibW7a
         YgnLjDek0yNT2CRmcslqpG7TOelbl8PdrTbHH0LNoEw4Uk35pzx34rUJ5miRe9sRYVy6
         UVwYE3h4TuoNkMpxejrv/qum9e7e6Vm9IYhCRth9rRCnA973yMUVxbTrgHKOIE47qe+7
         E3gUGD2zBjd2eM3utbKDb6+s9JW+YIGfEcBGILU4leyxAppg8jiOqjuxI8T9S0JIHdq3
         h3Z9yrwPdLB8v/EhTmrKDt8B0EHr4IToRDAEZBzpsegVa0E8+0SE70eAGCAvs0Af/Oft
         /tVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZaPuSkLJnN05WNQj7stgs+lw8E5pUqjovEjeIJarwNZ1s2MnFfjMsFqT0hibMRKrkcIj8U9J3Psee@vger.kernel.org
X-Gm-Message-State: AOJu0YxCDR2ls0pwJYOY3CDWNwFuuPyxNQoBsnj451csHG2z5sJnZwTT
	FeV/25DbPPyCKw1dhGIpbhgEb2ZytDiydfNyJtztJYAMkHJaiPm5JJVq64dzjcFFH5olwWE/kEL
	4mdsPd5T/2kcNDMBZdZERIt69t8IT/J5k4gvReDxcPA==
X-Gm-Gg: ASbGncv0VhV82jaWZMfp+JvJ0nplO+oKOs1Vx8veshhYqsPtS4GFROypi1kel4wrRH0
	/zxf/Gdf1uQemVnXLN0ZHxjfFJWOIY+qDxr3ydt1FXMvqcKkV9oR7Hl/itzmv/JZugodJrQcYDY
	b74wbekiFnvHEfkAUW+rvpqwNDSd4G7ojN9vy3aYKBuZ6rtFYS9xsROwXXjmaSlBiL5oADbd8iT
	KBH7E6B3yWhRJMepUUaemUVsD+YIYOTNtwOhTnb
X-Google-Smtp-Source: AGHT+IGmJcna4P1VxV3V0jOZ0m71QIrApGlSi2MBhjX9FcOguThuom65noGE6ae3tVCG0FCkFDEalP3RVaBolboPqdE=
X-Received: by 2002:a2e:bea6:0:b0:372:96c1:b276 with SMTP id
 38308e7fff4ca-37609f4d946mr54391151fa.45.1760360320778; Mon, 13 Oct 2025
 05:58:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1759824376.git.mazziesaccount@gmail.com> <fe1f4a0947c864496f4eeec8eef806afcf6094a4.1759824376.git.mazziesaccount@gmail.com>
In-Reply-To: <fe1f4a0947c864496f4eeec8eef806afcf6094a4.1759824376.git.mazziesaccount@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 14:58:29 +0200
X-Gm-Features: AS18NWAGQ68Wo4eF3C0qjr38optVh4QvaXrsoq6Y2fimhDOSTIOXcNl51Lg8PsM
Message-ID: <CACRpkdZnoMvYBXN7b6dw+uPs=f1WXr9wX-0VF1c1qd-rq+17LQ@mail.gmail.com>
Subject: Re: [RFC PATCH 04/13] dt-bindings: mfd: ROHM BD72720
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sebastian Reichel <sre@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andreas Kemnade <andreas@kemnade.info>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matti,

thanks for your patch!

On Tue, Oct 7, 2025 at 10:33=E2=80=AFAM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:

> +  rohm,pin-dvs0:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description:
> +      BD72720 has 4 different OTP options to determine the use of dvs0-p=
in.
> +      OTP0 - regulator RUN state control.
> +      OTP1 - GPI.
> +      OTP2 - GPO.
> +      OTP3 - Power sequencer output.
> +      This property specifies the use of the pin.
> +    enum:
> +      - dvs-input
> +      - gpi
> +      - gpo
> +
> +  rohm,pin-dvs1:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description:
> +      see rohm,pin-dvs0
> +    enum:
> +      - dvs-input
> +      - gpi
> +      - gpo
> +
> +  rohm,pin-exten0:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: BD72720 has an OTP option to use exten0-pin for differe=
nt
> +      purposes. Set this property accrdingly.

accordingly?

> +    const: gpo
> +
> +  rohm,pin-exten1:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: BD72720 has an OTP option to use exten1-pin for differe=
nt
> +      purposes. Set this property accrdingly.

accordingly?

> +    const: gpo
> +
> +  rohm,pin-fault_b:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: BD72720 has an OTP option to use fault_b-pin for differ=
ent
> +      purposes. Set this property accrdingly.

accordingly?

> +    const: gpo

These are a bit idiomatic, not using the actual framework for such
things (pin control) BUT: they are on the other hand crystal
clear for an integrator working with this device tree, and only
four pins so why over-engineer it. I am fine
with them if the DT people are.

Yours,
Linus Walleij

