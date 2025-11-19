Return-Path: <devicetree+bounces-240241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5634C6F239
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 809C52FC33
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ABCE3612C9;
	Wed, 19 Nov 2025 14:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qa2VMQg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BB534E753
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763560806; cv=none; b=fQ4BuLxIobxdvgk8Cgo5a5PubWaiNqjXdpLjdmgftjR9D37TH+EM3x/j/IZpbToNUSBR4L8b1K4bH9n5x1wtlptdvhY94dws2HFcS/smeY3dLtOVg32093AG/ilLMOVu+gQHyO4gHgev+0H25d4iY1vcRkQk0t5sUI3MLfQFSYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763560806; c=relaxed/simple;
	bh=tgGUW/G2ERvodoGXwXOyVk7zbU6cf9GD6J6Su9SFwYk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CWddR/na5c9Zu7u5hrlBUvskrRcVZp5IOQZDtA6kqSQU/cBzd/vj9wncfLOLNSG6N/V0A1MErC4SP1KU/X2/b9NB6fPLtaXf8gTHJDj75f53D5+O9IayE5ETvR0ZKfpMNpc3puC1llYKjskUm2vVFn1PruPr5qgw0FVyRUFhgVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qa2VMQg1; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-787eb2d86bfso68013667b3.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 06:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763560803; x=1764165603; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tgGUW/G2ERvodoGXwXOyVk7zbU6cf9GD6J6Su9SFwYk=;
        b=Qa2VMQg1RPm4qJZJ8D15QvFTRCvHVxlw9xowTaBjFMkCaTWKNRWuzJOUiUmRl03t0j
         zYx9PjQxU9LEQDSS9pmptOknBxIY90vl5pKS5CA4YBqvATjAJLSguNPvA3myQX1k2phU
         CkJjP4ALtrImqz1sWcbXvH4ZccvOeZMEL/O5oe+hcZxncZ1ykVQL0417zkVFd8DgpMp0
         YnENBtEFn9Nzi3aG54OkZr9BeNZ5gCcOwTzc/HdgG3gtd8dsRQCB3tDNtt9eaHsNsDBk
         9Ut3h5ATZLOI9EdpKmYHtU/YRmfUqewjN0wRDeMhTirDZMbBU+7YV1ITRuxzRcpzETYl
         DlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763560803; x=1764165603;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tgGUW/G2ERvodoGXwXOyVk7zbU6cf9GD6J6Su9SFwYk=;
        b=TVdu2dP47OegxygX3C2G4EnQ5+VQsjqJGcGAJz8aUq+139COKGZ6F/w/dYs5rkuukL
         UqmMLk7iM0A3bYcpmcQONW0N2BSu/xtz7DCWvrPQ/PokkD59wgVlLWjWFh4Wticfj8RK
         yzI1j/TPqZb5sS0bv+WjtrOV3ibwKkMwWhImnfiP6O2X7b2k7Yv1NNBPHm7RxJSOWe2d
         uCnCtaqtPTVmSkVHkDYK8bYgVrBAZwtdaqIacYxRExwy3ZxCt4RuiENCf274i3Zpzwc8
         2253I5G8m3qFjxJAgTTuWyjfqUNfjhHqT6vIR7QX19qimipytj0FrFh3oaFObEQVv/in
         klJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1zrnhA6ojHS+Y5StPohlJIW1UJa5hYGtV2t+eXoR/VcbIt4Q78pEEnjXreajcmtUS0h9SBSUPWhRR@vger.kernel.org
X-Gm-Message-State: AOJu0YzdREqpqliye1nqqrOOMZRSAobxLltUPSkLeGHMsIW30d/ckZ9t
	nxRcU7jDbox8UuHf65miNMw0FVDpXTZlJRdljldfc4hjf+aksFIZLALKXy9qHm6XbQj9SEl78HQ
	znm8Tf2GO2f30EqyQkXuM/R5lzgRApqP+EB57k45wk3XRjr4hpgI1C0muWw==
X-Gm-Gg: ASbGncsO42fh9kVY3RWfeOsqcbuHZIwHgzd7IvJwVGtvIFqGwNddFdEbfSUm9R7K8kU
	RJDd5r8Xq9BEw5QyzQykamzHf6rMNGzHSJlmHzRmURyS9TWEZPhu+07hhQHEUQpOVc77TFynxtm
	MJp8l/7QxoNh7IDlJfv1IC61x59bXk9ano9yIbhXCxxMCKZlUcE0Z92Ike3FbMCIzBps4RcOkxI
	6m1syTFLA8j/t8/7mpKPOUrOoeOmEYCJAj4lB5qqKZduEh1mBjMubLklpFvtOfi4TeDrKTGVPr4
	gWshMg==
X-Google-Smtp-Source: AGHT+IFby5ovUEEkg/kEZ/NlZpWzBLSST32TuxBsC0mFu2Wjo+qaO4E4CpnrVaFCPwquoGoft/usYgk4VVssDH1Gf7k=
X-Received: by 2002:a05:690e:430a:b0:640:ce59:1275 with SMTP id
 956f58d0204a3-641e75f1011mr13146860d50.32.1763560802780; Wed, 19 Nov 2025
 06:00:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117091427.3624-1-antoniu.miclaus@analog.com> <20251117091427.3624-3-antoniu.miclaus@analog.com>
In-Reply-To: <20251117091427.3624-3-antoniu.miclaus@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Nov 2025 14:59:44 +0100
X-Gm-Features: AWmQ_bkdEjgk_Xzh0Wa5r1aJAQB980HPTc2Twscs3UA0kT8xBN9Unko52LYr0K4
Message-ID: <CACRpkdZmHbYY3kCJN7d0-pkPmHs2xHHgF8VzarPFjL2kMmVm=A@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] gpio: adg1712: add driver support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 10:15=E2=80=AFAM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:

> Add driver support for the ADG1712, which contains four independent
> single-pole/single-throw (SPST) switches and operates with a
> low-voltage single supply range from +1.08V to +5.5V or a low-voltage
> dual supply range from =C2=B11.08V to =C2=B12.75V.
>
> The driver configures switches once at probe time based on device tree
> properties and does not expose any userspace interface for runtime contro=
l.
>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> Changes in v3:
> - Remove GPIO controller interface
> - Configure switches from device tree at probe time only
> - Add 'switch-states' property parsing
> - Change from GPIOD_ASIS to GPIOD_OUT_LOW

If you do it this way, as Bartosz says this is not a GPIO driver anymore.

Create drivers/switch and discuss with Greg how to proceed with the new
subsystem if you want to take this approach (and maybe eventually
create a userspace ABI).

What I've said about using the GPIO subsystem for this (which may be
OK if there is some consensus around it) can be found here:

https://lore.kernel.org/linux-gpio/CACRpkdZf9D2PH5AR46Pwi8UoyfwumKS4P3ncJ=
=3DRN4iu_cJzZ5w@mail.gmail.com/

and here:

https://lore.kernel.org/linux-gpio/CACRpkdbZgxWaf7B7vwD3n-OSbt8h8vGKQ_CmB_S=
NjDG6aXHayA@mail.gmail.com/

Yours,
Linus Walleij

