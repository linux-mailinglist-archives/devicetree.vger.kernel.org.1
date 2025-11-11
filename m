Return-Path: <devicetree+bounces-237114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5D3C4D122
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:35:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27E243BEB10
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DEBA34C804;
	Tue, 11 Nov 2025 10:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UnXOCB3n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4957B34BA21
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762856858; cv=none; b=KzJdkRLTzy+CHlpxOkmTHIRA2pTkgD9yIAyLgEjEwUQZ06RSRTWjgWMOVNsZ5CWRq/BGYhsasMwo2W/X3wNgU2TdhdZJwOfzuGKKk+rJteMyjUO1sDnBSi4hMQt/pd0hT0/XPZZ03HtzdQ7dShW6nlAKdv4tQSHB+8zC3jhwEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762856858; c=relaxed/simple;
	bh=VZRK3bOsG28vtltYuXm2i797l0KnAcCOqsty2XViQ3k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iGxtiYdBIYbehI3dj3ViCbKtpyDaOPF0Ce7ZvHvkcgdi/WMZP2O1N/jeBl1Ln+j2xsErkVq03fZEz66foc8a7ihMTJso08lmsim2dU3m3wk96kyZQ1LeZkpXGr9LDDJmFW0UJsLBj2xf6jDN47Diblo+8/h1oKJ8TucQWZIrgoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UnXOCB3n; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-786a822e73aso43671657b3.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762856855; x=1763461655; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k7khBtzXIp0xZap226+h9tuV9rGquBxGHwh18nz6WYA=;
        b=UnXOCB3nbrh5o6rQpnpZZdB7puAKAMqJbwVuncHooLP8MBfkQqVrEPwlWt8oo+/E80
         VAzZ5GpSxZDl9P3C/Y0OUtrSX+kPrcUsfH2lZlGnq9J2wbiz/aUo7JYuCYHaezCvSBIj
         fTdxxbgMQcwklpNLlNoGlybHiI7x/q6gXMX/N9Qxwa8/b2CW4+Y8ZHLHPP5ZZtJfuSB8
         FOCXloufjsLfeoMZY4nYyZ11edNfmCc6azyW4acykw6NP+75daUIWx7FkpiLFU8CPB6y
         CCwjdw5JGGvRzi9nLDVDjIx2mdp29+GKBcJKvn4d8/SM58fjUw63p/hqE3ZSsqcRVzIo
         mPpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762856855; x=1763461655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k7khBtzXIp0xZap226+h9tuV9rGquBxGHwh18nz6WYA=;
        b=YDS5QjhvIq+t3qI/d2C01BYZYM21jqq/2+FpSkWmsZTiK9isLLNt0aEmCUXZBeRETF
         3hwXoF1rTTHWaKWSUlThgy8pKMZGS0VajeGCmSPQ2sUdvfx+1SBTnRfSHdi4G0CHw6Nv
         qyBXQmRsr/sazV1Tpu8MZUn1lqDEedG+IQr+y5F5eUUQoCObEDz26VakNCpT667RDmMk
         fvkbRormQNyGvdEJM5CGAwjEo987IRf9Q7nRM7jY+h7GYWmT8tTVRq0h/SbsFgln+1mR
         VIMxaGU31oW96ZkChG/zS5BNJpWpEjMInbzWKqLISfOehBsfdlmHvcL3NYERToQFuPO1
         7/1w==
X-Forwarded-Encrypted: i=1; AJvYcCXbOIvzkwoCxbwgFGLj0+An+QqOG87UFe0rRHY36bVPEiLzngjet0xNhbeYRCgT8Cnihxw47hI9RbyV@vger.kernel.org
X-Gm-Message-State: AOJu0YzrHrcVWLR+XoPYlPYguacuFAq9FcIu6KZ/w+hRDm1CULRC3vpr
	1ulGrzlybaR3T0LnkSfVY/fiB7jOSuLy3QMKjYM31ADcj2fcUaD0L1qOkFrUNGZZF/z/8kPxCfw
	c3ZKrRT/gbHqlArcrsyB4v0jvKBveQ0sbbxJ4UxOJlg==
X-Gm-Gg: ASbGncsiWWhvEbLyAA/Qh5Oz7UZgSXSAraWrcqpU+SlclXO7Cy/KYM8BhVmzEHt/6jq
	2Fso26lXltNZgqFPxlXfQwPY34i/AA5ue/niOIgXhvfe4+PBkDuMMQ9uarGYeWfxP/j723yWoEC
	6LzCcXj5JapTVwEjJJqOdvi22xwKV7bxCaXhn9PUikA5U62FqmfQB13fSvWGphMW/XG+ntKJ5Hw
	dsexBxZnNg0kWM4wJ0OBiaZ/u+excTYZc+lBsjJdGdiibYxccRirvlfEVnhXFarr4HurAk33ITV
	k/SdOw==
X-Google-Smtp-Source: AGHT+IEk2H2YEsL0xkuLYpOfGFRgLDQ2g6ngSvt7pmfpCRqNXC2Ha8alMkiTsvLp5xWvt7eGkkSPVDpfAeg1vJdOmAA=
X-Received: by 2002:a05:690c:6ac9:b0:786:59d3:49e0 with SMTP id
 00721157ae682-787d53af614mr120208927b3.25.1762856855161; Tue, 11 Nov 2025
 02:27:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251108174055.3665-1-antoniu.miclaus@analog.com> <20251108174055.3665-2-antoniu.miclaus@analog.com>
In-Reply-To: <20251108174055.3665-2-antoniu.miclaus@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Nov 2025 11:27:17 +0100
X-Gm-Features: AWmQ_blJ-ik6xUXE2LXYUaqjihmL45TeO1-cQ_uCDnErJH-waDrg2-SaMoDOhR4
Message-ID: <CACRpkdZLK722xOMFxYhYyO9LudnKVgmeHNYBha0e-BoBo8sr1w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: adg1712: add adg1712 support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 8, 2025 at 6:43=E2=80=AFPM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:

> Add devicetree bindings for adg1712 SPST quad switch.
>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>

My comment on v1 stands.

This is a switch controlled by a GPIO:

-----/ -----
      |
    gpio

The resulting binding is not about GPIO, it is about a switch.

There are similar things that have unique bindings already,
for example:
Documentation/devicetree/bindings/power/reset/gpio-poweroff.yaml

I think this needs a new binding folder in
dt-bindings/switch/* and cannot be hidden away
as "some kind of GPIO".

Maybe it will be modeled as some GPIO in Linux, I don't
know yet, but other operating systems use these bindings
too, and they will be confused by this "GPIO" which is
actually a switch.

I don't like the idea of GPIO being used as a dumping
ground for hardware that isn't properly modeled.

Yours,
Linus Walleij

