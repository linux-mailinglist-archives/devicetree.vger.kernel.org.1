Return-Path: <devicetree+bounces-226036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D97BD31A9
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:55:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 65BB9189E125
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7999B2E1EE0;
	Mon, 13 Oct 2025 12:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Okjf1fVl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89F92DFA24
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760360104; cv=none; b=WjcgRxf7f1FCY0vgH0moRFrlNZM474QFgdeFhLexT+JblnIdNm+sgdB4ERB91TYYhgh/Klc8/zPhkYvz0bBUOayceUoEtkDbiJtM8ruwH1Kp/aeLERobanEo9FidbdjzLv7zoskiKYtnHbpHuhPvJ1qLYo734+Ze/0vsCtawYxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760360104; c=relaxed/simple;
	bh=zt5hEVCNrevPsGcQxcV2hsOEGoKsyrOWbNv+dHo88K0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S7JyKTIjD9F+zE3FVu7fICVTB3sgT+xpsxf5SJYcMAsAdCIhyA35sGgIdyIiT+1+d0JKcCqil+j1alDy43Yg6B8KF+ZTPZdjLNWbnyccBroNl4wV24nkLkswfek/CHMiqEfIiYvBdUCrscN30QHtjeHswLoRa4WtfEw1IBAM0Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Okjf1fVl; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-371e4858f74so49466191fa.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760360101; x=1760964901; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zt5hEVCNrevPsGcQxcV2hsOEGoKsyrOWbNv+dHo88K0=;
        b=Okjf1fVloCuwHYEltROxYnd2pFlknVZ7B7amVFMf0TvT29v/ZiaAu6yGqj5UhRkVsn
         ldb1ZANPVDzhdk/9R+GUouwe+TNHn+3l0DK3VyNfmWYTMntT0PHCCSd69gP4bNqIRdwg
         vsqql6iGaU5+sQMlqO+LgXskAmil8/7G41ybn9gB10A0EhvSmglVy/1d2tvwzF3eRqnc
         6vGgrM89ZkpYHBlb76aFnODpgWdWmx41QDNzf/VQ3itHnWcyyaGOK/iwp/ZVlKvU98Pm
         2iw4Wd5j4GFnUQCt8OQqkyENvX2EtsDnsjQ/GuWzUeGWpeLQ8ll73tc2PHzwjCYtNlK0
         jF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760360101; x=1760964901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zt5hEVCNrevPsGcQxcV2hsOEGoKsyrOWbNv+dHo88K0=;
        b=chZ+cdmG4IaW37ZMKdqaMep+Fszi+IkcoR3yja/pgO7KEtqJzDn8XvleqatipDpYWL
         ESBKNf8Ow0eFMnrp1BqK3EGQ12a7RiF4Lo35g7qc6qXUhLWZhmUaD/rDIvYxJrI+8igR
         OWNKIzHI9B/ppeqxyRa/ma2CgoV/CcKoICfUerbU4hXJ+sxWvLQ68ZY3GYEVS0+oYchP
         8kwpslRr12U5wtjCJ0tghC4UKj1BCr8GstCxoOvV5FlBpIx/I0n30nl3Z0LSclvwulnh
         6Dvjq1UbUU2RXmq341SidQhlFT+yF688ZDbQxK3H0pSyP5W+2YD6METfxGyA0NHwwBgW
         2n8A==
X-Forwarded-Encrypted: i=1; AJvYcCVIDTiM++zIrpGD9KCwv0KgVaMgfUKD/01y6jeBIsQaEystmqJq6LK2301sGjxA8GNdaorYcl6ZntMs@vger.kernel.org
X-Gm-Message-State: AOJu0Yze74ZjvL8Vw6lo0YhSad1kmQ6TC6p4Shv2WHc2L9txPKNSDFZ0
	iC8bXZmqZEve0piOP34imZE3y0k8rUqyElpsyKqfqgQCp01hPM+gTEDJwH4szfXkyiGGZdP3bkA
	cWYmr2/4Fgj0hHSBaN1rw+ieyLs7CrvHmN1V3dHn4Xw==
X-Gm-Gg: ASbGncui66Q7tzvQh0ycpm99ikn7Tn2zvYw3xRqMlJv1C6ucis33iNaI0LRFGI9gnQ/
	cp3mdj2DJ4B15ie6N6RMNgg3S7K8OzOamkcv39QXQxXfENx+s93jhxGvYSIYHRuzwspdI9bPlHI
	OQnmeSDMTUT329X1edV4qHzECjJYr/HXodgFfYT8jB0P2GV2PYm2RiInBlzh+6OUXr+mHZi9vpb
	Xbrj2bUgUEO/gT8FqwRVEEVrivYqr2eEMMc63yH
X-Google-Smtp-Source: AGHT+IEMJbNvilXOpoOIRQel6Q25owiZoIco1Kl5SF8iRX9hi7hR5hiR4i5XlKv+PrII6XXrbQ676HBjigByg+VgGMM=
X-Received: by 2002:a2e:b88e:0:b0:36c:2899:7a33 with SMTP id
 38308e7fff4ca-3760a29e503mr52205261fa.5.1760360100831; Mon, 13 Oct 2025
 05:55:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1759824376.git.mazziesaccount@gmail.com> <ed65074dbedaf2b503d789b38bd9710926d08a55.1759824376.git.mazziesaccount@gmail.com>
In-Reply-To: <ed65074dbedaf2b503d789b38bd9710926d08a55.1759824376.git.mazziesaccount@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 14:54:49 +0200
X-Gm-Features: AS18NWAwGCk0eH0iAHoOmmcayEjfv4yeRrMRzIvsPRl7tRPyzzsktlv39DuLW9c
Message-ID: <CACRpkdZSiZ_74Ar+tRzVSwRW=6XoUpODyxqZDFyrc-0pcHkaPg@mail.gmail.com>
Subject: Re: [RFC PATCH 09/13] gpio: Support ROHM BD72720 gpios
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

On Tue, Oct 7, 2025 at 10:34=E2=80=AFAM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:

> The ROHM BD72720 has 6 pins which may be configured as GPIOs. The
> GPIO1 ... GPIO5 and EPDEN pins. The configuration is done to OTP at the
> manufacturing, and it can't be read at runtime. The device-tree is
> required to tell the software which of the pins are used as GPIOs.
>
> Keep the pin mapping static regardless the OTP. This way the user-space
> can always access the BASE+N for GPIO(N+1) (N =3D 0 to 4), and BASE + 5
> for the EPDEN pin. Do this by setting always the number of GPIOs to 6,
> and by using the valid-mask to invalidate the pins which aren't configure=
d
> as GPIOs.
>
> First two pins can be set to be either input or output by OTP. Direction
> can't be changed by software. Rest of the pins can be set as outputs
> only. All of the pins support generating interrupts.
>
> Support the Input/Output state getting/setting and the output mode
> configuration (open-drain/push-pull).
>
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>

Nice use of valid-mask here!
I don't know about the special pin binding but the driver
looks good.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

