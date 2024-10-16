Return-Path: <devicetree+bounces-112131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FDF9A1271
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 21:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A0F01F231D4
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 19:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB022144C1;
	Wed, 16 Oct 2024 19:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bSFquoqe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70332139D1
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 19:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729106716; cv=none; b=q3Kn6SBxYuqsP6/eoOZYJM4eqOeN2eulj0fJ4YTaNDCZk7cF57ba/ZDIRaLT3Ugo8JMEG4g4/EI10glxmgQvIhnAxZ/LwV5LF2xX8Cmvcvh+TqFv+wa0faFwsQPeVoG8e0I1LWkeaDTliJGg8ju8716qT1PDu1BHE9x6a2gEq7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729106716; c=relaxed/simple;
	bh=wNxPrVxXoi2e1Tzvafjzv1SOgOIdTCJ/dCL9LHe1ia4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VmtwuVtll5ROmaCCbtWmhWCCLNXqIxSdAlQ3cbUkPUWZN2IeU4qvSD66XT/U4z86MVV5gAzoirrsPWyOWVW8bvBy4FbBKWv+dCYPPJI61qpMZJDNp8DyDIhs9hyoDBobia4dWBYYfKNETzH8AQICgxg2PKgulGQdoxUboQsZt1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bSFquoqe; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6e2e427b07dso2475087b3.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 12:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729106714; x=1729711514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNxPrVxXoi2e1Tzvafjzv1SOgOIdTCJ/dCL9LHe1ia4=;
        b=bSFquoqeHXOG5dOx2RdRCl8HrtgIxUqX2Q0I/05WZR08C79Mhu/84GftwkpCZ57y3W
         CkIWvytlZJyJ076GCAorIaMoxIzVJ5bMLWzKZTm5pLYjeKr8uF/O46tk9ZnzGUnsCvDc
         VYuaZ/i5GD7JF+KAyr8ShXwHeMDrHAGAEIHuep43GYZUKYkFl2OjNHUe1CjotMQQpBWe
         gJ3KEQg6EPlPnwahz3YYV9QhRYCmLHd21YysXDwEsY2Ewxyt+DCnQbrao/zaIssrJ6g+
         yb0pQ3FcKidkeE3f3t9/0CBnFQp43gTZpufJAtZ0/7eY6dFOCyGWVZSgvWJ4QwI1CDMR
         xAFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729106714; x=1729711514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wNxPrVxXoi2e1Tzvafjzv1SOgOIdTCJ/dCL9LHe1ia4=;
        b=MlcGoJYyQ8rnH2iousfn14m/ix1IQUBvi0OrUuhE4hUqU/M7JW5PRpSzpaBqbo8bYq
         wMKjbOCXSZxiF1r7WZn4EUNu38G4s+2c0iuoNNeMFeWm/EnPWWN+owevrhSjO4fJ6E/o
         4t+2D9O5h/otWaG8wBVGumTQHf1FG5kb9Afz2zJ92a/jVjdKplbXEeLAPp7d8pCC8syY
         yVwLt7CzYQbFiTmNYBE1o8E4DiFk0HNN3OytXL4D8/CzOrLojeO3cxJZZnp8Ng5FhKi/
         0GAKzUev1ei5s8IaShkEtOqja0IMZTHPGOKadoE1EDUl7FB/ZetlClRMhHWMHI8Eoypc
         /j6g==
X-Forwarded-Encrypted: i=1; AJvYcCU3f1zHuR4OrrR/r0Cnyc3QBwpgUxYvaXhBO+tFnNQpkcrywAWM1KhWE+hXX3plZVKo57d+dVf5kHH/@vger.kernel.org
X-Gm-Message-State: AOJu0YyCoUD/9v/cBddAfbYRHy2TW2k2FB82mVg2Sou2WG7qXZ64TkQz
	EDoe2BipRGPmc5Ypod6ppIqrfXhyTz7JDqwHzlJwMAaYbBVTPlxqYtZZig8VN1cgSH0hmux16yv
	P/Wx+5BEMiEy1gzTORoo7n+5v9/dgirMVrdpsvA==
X-Google-Smtp-Source: AGHT+IFBVw/RdlGqnPnp7qsotKzxhR9ZidNG2YXblCllHBleF/Mnxzr0wnJO+4NvNGIVA03KRekKbqt8X8YZP+lN9oM=
X-Received: by 2002:a05:690c:6703:b0:6e3:3407:8579 with SMTP id
 00721157ae682-6e3643c9b62mr151632797b3.39.1729106713924; Wed, 16 Oct 2024
 12:25:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240723-supervise-drown-d5d3b303e7fd@wendy> <20240723-underage-wheat-7dd65c2158e7@wendy>
 <CACRpkdbRE695f-+do1HYpOZ6e4qxgUBWJzEPO2hTCuZ3xxYHQg@mail.gmail.com> <20241016-shallot-nerd-51eeba039ba0@spud>
In-Reply-To: <20241016-shallot-nerd-51eeba039ba0@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 21:25:01 +0200
Message-ID: <CACRpkdZZeDyHJPZBuqnK1o+nWXgSAgNO7RceYB3Ao4tEOGRpDQ@mail.gmail.com>
Subject: Re: [RFC v7 4/6] gpio: mpfs: add polarfire soc gpio support
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org, 
	Marc Zyngier <maz@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Lewis Hanly <lewis.hanly@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 11:56=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:

> I dunno if I'm making a mistake here, but I don't know if there's much
> value in implementing this suggestion - as far as I can tell only the
> get()/set() functions can be replaced by what's provided by gpio-mmio.c.

You're not making any mistake, you know the driver and hw better
than me.

Just skip the GPIO_MMIO if you think the result would look ugly.

You can add my:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

