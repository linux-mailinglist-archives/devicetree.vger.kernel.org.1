Return-Path: <devicetree+bounces-176956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDD1AB5EF9
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 00:01:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA52B170A83
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 22:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6DB20C009;
	Tue, 13 May 2025 22:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vo3x8pcQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394E31AA1E0
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 22:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747173663; cv=none; b=g14J9APYhnI1pO/OftpNB+8977FNlepE1EAcpHEoHhkiE9dgg9iMb2vY+mUBL9K4GXuSOAiXBuVs2yO0dCZgRnSc7W+Ffz6UU7IGwSaZRtQCmnoSczfmr+fwPb8AAVZ/fZLAcmVVrw3Ue5kXk5tXz4CHrwvBVaqdCugaImO3aEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747173663; c=relaxed/simple;
	bh=M8KwhjSS1RRu3vcmpn2SJ50X7pXkQM18VTy/pRaCHMs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jxYRAIc0vSc3OQ9/8DGrrbkjmIUeXBPTke3cmhkO1v4G5X1E/8SPCMo+lEhvfwTBE3YFTw6Pb1W8egHFh4eqR0Dw2qv85NjN35mfKaWgP+2StJ4Xvn/CDLR5NYad4NytQNWdzmuPRqGhBNl0zDF/nHTikWsj1HlhKpfks7dVsPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vo3x8pcQ; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54e8e5d2cf0so6543764e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 15:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747173658; x=1747778458; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cBfy0IwztkKYuj0G9rqTe8PA4ZbPefuZXYlpy/l1Wu8=;
        b=Vo3x8pcQZ2HFIPHzMA4ouSxGDci88uoAiujFtVopnbPUUOwvAckr+rIqapjT0Zdo/0
         Wigf07pjgHY7g2PW7WKYcwG+xJv1hTw01zFO++o6MfyUNT68ZB4o0aJQNob+cWFm5fga
         JJiQgxAQPeVBHpa+I9Hd4wLn7VXCgVmm25lqsNa2ZRcndZSQyCX7Mv2/DykEziiFuKAd
         Q8VkNWUXIMgyYO+3e0zr+D1YjL9wtM98yAQGIQ6p3S2IufpwLDwFY42VzXTuuO0IE3KR
         xmT+dGMAbtnLdpTJTa39t3EYGX1Qh6sqgCop3FFvQADTbKDMiY+Ho7HJoBNoyltCtOxr
         OWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747173658; x=1747778458;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cBfy0IwztkKYuj0G9rqTe8PA4ZbPefuZXYlpy/l1Wu8=;
        b=RG9uWVm8o83vt8BQQjowcGGJCcXZLvsBA8z3Ozxc4u8V4sMqaUsLo1nOj9CF0ZnhNe
         FOFzvdK+jP8TbizrATwJcWUlnC0jHCDZHkK2c03DZflYzRZo3D/2oXK1uF1sXEB3pA8j
         AXO630uCgReP/JaacQmi6qpDn8Fr/fEn8dUV5IAMkFR94CbqMoXssFvD5zdgD5CTXeXs
         zAhg/GEIdbeC1zZpQZAkMfB2GIiL7j3I+URoTcCjKSTRTbPMH+5Z2dkCrEVFyKPjXG5t
         sXnB6cbzjo8MTzzWIB6etVvTwxOPX56MELunpp/ASifqr0bn4ShNHm/DnMR+GPrU7NwS
         hVjw==
X-Forwarded-Encrypted: i=1; AJvYcCV/Neg33A6h7Tuq0mKjGmyLxiyAsamcN0z1OjwV3pzmlKfC/7X+rdlzAcuoE4xgAQjrCRqpfRWfHf02@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1SUd+N/yBVbz7zlUS29TWC69jI9xBi+1RO8qIEALsKPXHFSqC
	+a1iB0yeIUdMMv7xitGxpF/2gU2LJ8UiTZuxzaJP2eq0ZBHZguEp8MGJrFpwf62FS/IqhgWVeZs
	iZWd5lSMxvhq9MktzUrj4s7M8d/BsDqz9SQFwPw==
X-Gm-Gg: ASbGncsR4vxcF77dkdOu2eXnBVrytGiIVd/J3lhq2fUp9jR2eoExbBTSX3G5C0AufvQ
	7UKIO0E3akaELcB5/bbOOgVc2BZMc2gVYCPaVSbFRYfo1jqWBMEWWTI2jEn6yXHvLKrcKdVi84e
	EdFvmnFrOo0xkq947waby9dgKBYf/fuKzm
X-Google-Smtp-Source: AGHT+IF6oQ8WY4oAI0j38NTw42hro7gIMITGeTqxvpzWEjohz93RMVVPR05oQB98ewc/+Rrp9dNkz0FCv7tTOl0hN8Y=
X-Received: by 2002:a05:6512:3b86:b0:54e:a2f8:73e2 with SMTP id
 2adb3069b0e04-550d5f97caemr383042e87.18.1747173658262; Tue, 13 May 2025
 15:00:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250430-max77759-mfd-v9-0-639763e23598@linaro.org>
 <20250430-max77759-mfd-v9-5-639763e23598@linaro.org> <CACRpkdY15L5PpV9ah_0R3ZPZVMh18OR+Dg2qXiBG=8Kq79-rjA@mail.gmail.com>
 <20250513093414.GE2936510@google.com>
In-Reply-To: <20250513093414.GE2936510@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 May 2025 00:00:47 +0200
X-Gm-Features: AX0GCFuY7ZYIvbVu20D__GD0c9z8y0Fmgn47-CA055_0KC3QdyO02dOBRgGKdxc
Message-ID: <CACRpkdZTB2NSZPYU=iMEFuH=rb3HWVu2A=8OY-sq6X00ZPq9wA@mail.gmail.com>
Subject: Re: [PATCH v9 5/6] gpio: max77759: add Maxim MAX77759 gpio driver
To: Lee Jones <lee@kernel.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hardening@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 13, 2025 at 11:34=E2=80=AFAM Lee Jones <lee@kernel.org> wrote:
> On Tue, 13 May 2025, Linus Walleij wrote:
> > On Wed, Apr 30, 2025 at 11:03=E2=80=AFAM Andr=C3=A9 Draszik <andre.dras=
zik@linaro.org> wrote:
> >
> > > The Maxim MAX77759 is a companion PMIC for USB Type-C applications an=
d
> > > includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> > > Port Controller (TCPC), NVMEM, and a GPIO expander.
> > >
> > > This driver supports the GPIO functions using the platform device
> > > registered by the core MFD driver.
> > >
> > > Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> You're only 2 versions behind mate!  =3D;-)

Yeah I realized ... I'm walking up the backlog and there is occasionally
these double acks...

Linus Walleij

