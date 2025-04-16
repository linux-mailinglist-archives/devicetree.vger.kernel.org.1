Return-Path: <devicetree+bounces-167946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6D4A90D88
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 23:00:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C81903B973D
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 21:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95DED20C487;
	Wed, 16 Apr 2025 21:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="dWqyRNDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39381DE3C4
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 21:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744837241; cv=none; b=pqdgTnh123nOw1idKBfTMdTDJwnOIb7eL3JCCmkD3QidBTuzyKIPC0jrp7X+bFT5JVC7IRRMDIcj7nrDmAps8Ibs+8P6zIyni6fK07X3zMsnsmF9SGCVv1HIHH9VSyX/EFyHHk9P3LTowHFOxDhTwu3UKtoX4RjzxmeOfnDKps8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744837241; c=relaxed/simple;
	bh=sXjuke0/1XVuLNfiPlV5GEJxawgB3CfnH2aaqTJFQXc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lijhSQKtr8Zb3qmwXAZqy7WBFl90RqEdhwGRDDHj1jZF0TP+d0/O/VG3uajf7CvRNUFK43IDBeKnXq1DLfLkHkR29lwZOhLgoLL90ePvrLsB6azjIz3y4VV0IU82wcHZZL3dJUA4iET8ihdqI5kYcqViaZ2P8RGoAys3fKspapg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=dWqyRNDF; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54addb5a139so111833e87.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744837238; x=1745442038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sXjuke0/1XVuLNfiPlV5GEJxawgB3CfnH2aaqTJFQXc=;
        b=dWqyRNDFYNYZG2I79JBccuGjWRO3erl5pZhj+DwBAhF8STFVP569vI2iwgGytANhUb
         14aRWZoWTYnNU6vXOv7fWxukDs/ubORZZnxlDO7xptGNEC+JrvOPHzWM1Bn9/WJXUL1+
         daN+rU9E+bgpTgpn9XReIcqJ8n38gU6W6dPbcDKKK/idfnBpNh2UwovcD14OJlJqlFuC
         DVU52OX31aUkI0N7XuUdJa5Nc0nQzf6BYgMgvoe4kAY2NhjUsneEzBygPL6EcrtGR3ZN
         i1/jDy6NZTKIaBwzSXA290lYBTyPojymexx7us3U12MXqjM69xXInb4Hv78dLpysYKtp
         5srA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744837238; x=1745442038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sXjuke0/1XVuLNfiPlV5GEJxawgB3CfnH2aaqTJFQXc=;
        b=lEBVjjCD7eUgEjJnVjOQ8Foa4N/t1knMH4GqrmYEdWmUXTYxvyICXGedkE/Kkp/h4c
         OpI+xObRYqcFBchLlP3XF3HH0zg3XBjEeBKGTNe1u8lG1/zUpQuMAPNyr4IaOKORincM
         0o+PL0vBnlfiz+J3tiiXt2SSaLevVEMoWPkjdO6H7PE/RUjgv9FT4XttcERUSJnWSiu0
         zXUUg+aSaweNWrO1FILmx4Qo7mECV/m6jYKLPPeZV2s2caJc3LbkPPsClk4FwrAVWyYX
         vbG4eEBOBP4mNvbQ9/TUngxbhitCq7JXGaz57nwR6YdKKeyW7Z6Srm9HZyOMmCm9XNSO
         J0Gg==
X-Forwarded-Encrypted: i=1; AJvYcCXcg899A/Civ1YabODNhDIbfzADJ5rWRkY6jA5zXXnc/Zvu1nKevtUPGrbcY3kAvwsJJPMap0GnZSV9@vger.kernel.org
X-Gm-Message-State: AOJu0YzqACpenDsDCns3stNbP++HRB2t280y4KU1vrh75yrKDY3Nbe+Q
	sF/iG+6leaMSqK23lqh9ZSdLOdH9e90yrZQqszvrjSmVlutqWDuHer58ZQzwa5ReE9xotTUdnMj
	F6MzpoOQk7EI2Jg9++0nbSAGR9As2zkQ4nzE=
X-Gm-Gg: ASbGnctSkcGuYBDNQS09bvZWkdIoCBn6wxdGmisX7gKuNaystKUL3lJFVTn/faEWDTP
	P+F1s+yfvGNo1W4McUIiqUyfducqK3g0czspp4ITQYPbq+3NOnJJrbh6Avd+WtXSsDuJenqgm83
	pga7ecDhVTDNU7k/CusPqNeg==
X-Google-Smtp-Source: AGHT+IG9hAb/RqcUyMjum4adu8+LeKj3lYKNlalqPEWwBfkfUt2vnhzCuPcvV73P/EQrHGM4wuLbO44GnaPBGO/0zi8=
X-Received: by 2002:a05:6512:308c:b0:549:4e79:dd5f with SMTP id
 2adb3069b0e04-54d64aea488mr984588e87.37.1744837237634; Wed, 16 Apr 2025
 14:00:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
 <20250402233407.2452429-7-willmcvicker@google.com> <Z_6OZHYfC0bC5289@mai.linaro.org>
 <CANDhNCodHATboF2=U2tTwdEkEJ+PsfB2F=fbBrs=J1UzZTEX8g@mail.gmail.com>
 <Z_-0nX3Z-DLPjL_j@mai.linaro.org> <CANDhNCr5n+HtHQEqCq0ZxbvX-nC3u9ewJ1_fj0h1gFQZ3nB8iA@mail.gmail.com>
In-Reply-To: <CANDhNCr5n+HtHQEqCq0ZxbvX-nC3u9ewJ1_fj0h1gFQZ3nB8iA@mail.gmail.com>
From: John Stultz <jstultz@google.com>
Date: Wed, 16 Apr 2025 14:00:25 -0700
X-Gm-Features: ATxdqUFzpyQW831S9hdAwTuoas7KRwwuK39VUOIcXhttpaGT_PCdnsoFhEv7ehg
Message-ID: <CANDhNCo-UF7uVWWMPEYyCzT0R7BTHb+uLq4d8ZfxURuk5r2AwQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] clocksource/drivers/exynos_mct: Add module support
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Donghoon Yu <hoony.yu@samsung.com>, Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 16, 2025 at 12:48=E2=80=AFPM John Stultz <jstultz@google.com> w=
rote:
> On Wed, Apr 16, 2025 at 6:46=E2=80=AFAM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
> > So the whole clockevent / clocksource drivers policy would have to be m=
aking
> > impossible to unload a module once it is loaded.
> >
> > Do you have any ideas how to ensure that the converted drivers follow t=
his
> > rule without putting more burden on the maintainer?
>
> Permanent modules just don't have a module_exit() hook, so that is
> pretty easy to look for.
> Obviously, I don't want to add more burden to the maintainership.
>
> From a given clockevent driver (or maybe a function pointer), we could
> check on the registration by calling __module_address(addr) [thanks to
> Sami Tolvanen for pointing that function out to me] on one of the
> function pointers provided, and check that there isn't a module->exit
> pointer.

Saravana also pointed out to me another approach that the irqchip code
uses: macros to populate an owner field with THIS_MODULE so that one
can easily get to the module struct
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/inc=
lude/linux/irqchip.h#n41

thanks
-john

