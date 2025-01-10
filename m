Return-Path: <devicetree+bounces-137473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8A1A09234
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:38:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16C043A185F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FFDB20E307;
	Fri, 10 Jan 2025 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nM+L+GcP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8EC20DD7F
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736516313; cv=none; b=OdBnob35vw1zWl/A1yVexv4au3gXBh7mYSRyJM4x/BhjxrrqWK1HNpf4LN4SYziYYfjjn4q0WEnoQInUipzQc47Y910wwnEHvyDmEh09p13SI544/T3ewbXGKeFKtaDIv09+lsTGI9g03BL2X51ZHLCxyN/MuV3hf6P9XtfC7DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736516313; c=relaxed/simple;
	bh=kzKpy1Sjp/SvWpHSpsmUjkEIaLMqjSa1M28GhpvJCz0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qrTj9mANkSqHMfOaYQ4tvcNUeU4NzYtUCjP+4OKpCeuYuxD/DiRdJRmhVmH0BJnEG5i/7adq6bhXsS2lwQGdx5ijsIjj/qumgHGPRu87giMpRV7DU+M+K0aprhcwjyqJ1qLoxPb9kYrrj/NLFUJuK1vPW7XkX5AUbLmsaF9Fm/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nM+L+GcP; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53ffaaeeb76so2204651e87.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736516310; x=1737121110; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JWsGafOO+0FzGsoN5Au+l4iQO+MU0TJ5sFUvbzRMqhg=;
        b=nM+L+GcPnMBNpBXnY9p4bMam2A7EUCrGisFHres477XdpLGwgRgu470MQB4tln/z74
         6XsE7REoc70Qnw2QWZSN7v6KC0520ULzYbr7fbaPTPCW9vb5jwrHLc2AfLBfFTke5fMC
         oQ0fyGxq0wnrNyQTkZU1Q/nsFsJv2sNhvQI89WnEiSVBNL6DyHs1RQR8/roJQyAbSyZD
         bPASWdlMDrk8JLiIHXAKoJ2wvDcD0+WEtbwoapPSza3eq7RCvFiZGzYN+AW80O+6VVCH
         yORK+F/cbXOye3gB7O0mu2W7WkoUcj6bgrlK0RyVj23cZ1+U4e//vkkFiO7j7Xg7Kgld
         BLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736516310; x=1737121110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWsGafOO+0FzGsoN5Au+l4iQO+MU0TJ5sFUvbzRMqhg=;
        b=JzWkAwJM1mPc8az5MtVZFNJF3fF4DsRD4zPj+YkexIstTNI3ahI7/jb0pjT9hGwTG+
         RxURRQzIZNTJmbW+MjFwzHPwaibLUlTi5ZM+WrIwqcFnlirV5q4ZaFDwoORfZxr++vSc
         xUlocgWDQ2FfkTLKVLQWvfe2Zeh/Ps4wOvrf4Zb5+7kdrErIQMHiAQLkgwMIWdijdC2G
         T+YMFQyP2lY+98MVZ4b+mZFOG/XiPOnvRILtRabFAGMYN+VbX4R06cPzDE9qIrPotY2K
         F7LDZ8vi5zEhXov9KBdNf1fuORqMp6yKKru6oxFMqre0Gu2p4PHBFisO4cwljhro8X3X
         64Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUCxiXMeEf/65gk9b9q6/Psx4Evvtp1Un6Cx7KGily3AINpyEMrwWqG0JwXrlds1g67ydziGjgjFJ5A@vger.kernel.org
X-Gm-Message-State: AOJu0Yz34BPe0I8cDv559BBwA8wJyDJyWW9544ezodkgmGUbhGs+mzTS
	gjiO1UPsIcHlTnwutxxLgsqg3qj0aE2wIweqrDldWImvlb2+esaGSsEYiQilHjtOu0DnFneOwZi
	DFUHdkGxdmv8eNdFX+s4Gzjlps9s5aJhVMozoFQ==
X-Gm-Gg: ASbGncvCeKMwZU5on/nr+PSRGsb55OJ6T/qxv/4FS9lZ37wjsurrCkR5M9G7HsUXJBB
	4iwjUp7/TE4lk+YvxB+umjRYUWKjlJXx43XVCjzpfDZi8y9UUpxuuIbLSr2XQK0bQqGf5
X-Google-Smtp-Source: AGHT+IFNqvdmFuTkcp6aH+pBfg7KRtBkZ8KfO6HRQp2EORO0iiILKbIm2reemzaUqQs4Vd3gqJXs3eaJO1hOKGwiADo=
X-Received: by 2002:ac2:4e0c:0:b0:542:2e04:e9b8 with SMTP id
 2adb3069b0e04-542845af12emr2933720e87.8.1736516309749; Fri, 10 Jan 2025
 05:38:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110130025.55004-1-brgl@bgdev.pl> <de6b70f2-8fd6-4e2a-a6c1-466698be8a6b@prolan.hu>
In-Reply-To: <de6b70f2-8fd6-4e2a-a6c1-466698be8a6b@prolan.hu>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 10 Jan 2025 14:38:18 +0100
X-Gm-Features: AbW1kvYL0TyL-1cDsiHr5pCeW2-Sp93tIsM4Q28XJyxsK7hP_dwoKrlFKGssujo
Message-ID: <CAMRc=MckJfEBK_ZUZ31hh7SMdbr4a-vZLtTGDCFttGK65wbXdA@mail.gmail.com>
Subject: Re: [PATCH 0/2] gpio: 74x164: use a compatible fallback and don't
 extend the driver
To: =?UTF-8?B?Q3PDs2vDoXMgQmVuY2U=?= <csokas.bence@prolan.hu>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?= <j.ne@posteo.net>, 
	"Geert Uytterhoeven via gmail . com" <geert@linux-m68k.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 2:32=E2=80=AFPM Cs=C3=B3k=C3=A1s Bence <csokas.benc=
e@prolan.hu> wrote:
>
> Hi,
>
> On 2025. 01. 10. 14:00, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > There were other suggested solutions (for instance: just use the
> > existing compatible for the On Semi variant) but I figured the most
> > common approach is to use a fallback value for 100% compatible models
> > and this is what Rob suggested as well.
> >
> > This reverts the driver change and makes the "onnn,74hc595a" compatible
> > use "fairchild,74hc595" as fallback.
>
> Is there any reason to introduce a new compatible name at all? Does some
> pre-existing, widely-used DT blob use it in the wild already? If not,
> then I don't think it's necessary; for any new boards, their DT's
> authors should just use the pre-existing names.
>

I don't have a strong opinion on this and will defer to DT maintainers
but a similar case I'm familiar with is the at24 EEPROM driver where
we've got lots of 1:1 compatible chips and we tend to add new
compatibles to DT bindings (with fallbacks to associated atmel models)
just for the sake of correct HW description in DTS.

> I'm especially against introducing a new, vendor-specific (On Semi, in
> this case) name; if we really want to introduce a new compatible, at
> least make it as generic as possible, i.e. `generic,74x595`, or even
> `generic,spi-shift-register-output`.
>

If anything, that would have to be the fallback that the driver knows.
The first string in the compatible property has to have an actual
vendor (I think, I'll let DT maintainers correct me).

Bart

> > Bartosz Golaszewski (2):
> >    Revert "gpio: 74x164: Add On Semi MC74HC595A compat"
> >    dt-bindings: gpio: fairchild,74hc595: use a fallback for Semi
> >      MC74HC595A
> >
> >   .../devicetree/bindings/gpio/fairchild,74hc595.yaml    | 10 ++++++---=
-
> >   drivers/gpio/gpio-74x164.c                             |  2 --
> >   2 files changed, 6 insertions(+), 6 deletions(-)
>
> Bence
>

