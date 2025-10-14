Return-Path: <devicetree+bounces-226529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 212E7BD97CC
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:59:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2B91547862
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97D72313E1D;
	Tue, 14 Oct 2025 12:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HD+nY9Ki"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AB3313E05
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760446726; cv=none; b=ArUQMR61MW3q6g667CBXK4AQJDJCVF3Rq+u6bQcQ74RQKKBfNzVfC/lOodURCOtu7Cl2j3GdW4ClLJWsIma42zU6JyKyfbztzEwc7CE5i9aNannw97BpYXym1EQ5pgUHKXgKw+B8hmg0EvqBhoUfTrAHWNZKDOnWaC4XVvq+FiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760446726; c=relaxed/simple;
	bh=ERKaxZi856JIVKreXO7sribpAgoWkWL8cPcVypMRmHo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MenBvHJ5egod0jwoWBrNmUdHN/pLKarATQ5eNo5ImT5C8WdzrTT0+pmYukdgiacD0kDj6OgGNZTvWcD8M745lxHYW80ktQpJteLPCY78OJj5qTkZnCUFoOpP8lG5JHiTx9RmYj+A4bEVseUmypRdUNWCWEs6+3pS7PqUdX8moW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HD+nY9Ki; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-635c9db8a16so5042147d50.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760446723; x=1761051523; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ERKaxZi856JIVKreXO7sribpAgoWkWL8cPcVypMRmHo=;
        b=HD+nY9Ki9ZCU+ZBbai3sK4TlP+Gj4PeD5IBvNbVgmRwrXEMP1rH1Kq7Wd2U4DC9ql2
         mmbSs/sedO+Z+pqNh178iwTUljJhUPXdoP+VQFu2ruyAZTpafom4Dgb3i9C7kLT30HMb
         nugdcECozBZLP8w6AumLU59dnaaYGy11Vk23pFabxvZWzNmDF8nOoZlM5WedT3ES7DKS
         D/cB7mXIddWy/q7Wje43ITkR6khfIHEjDiCwmec977cTp60w5mWUdbX6XXjhJUkrWeWO
         j4ESkWjq0mWBEgaoWoQnKZzyhE+qXTM8zA+qwVIdhoT3qqyvhnb1qjF3AFb5czRRY0iT
         BJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760446723; x=1761051523;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ERKaxZi856JIVKreXO7sribpAgoWkWL8cPcVypMRmHo=;
        b=OdsF/N//TmYf0Kc2skOUg1yyprFDRDRKgq9fgjXWm8zewGQ/3DL7JD+6cFllkr9zq1
         Yla1fBG8hkkccwTBIJqCCvMMETIwa1nNB1c+T6xJv91Vb6EIfDoiReNrbvlFxJtPUGOj
         Exhip7HasII/IbZ+o2pD9+S68Cmjy1G+2x4azdMtYwZbsboKE2cIAivH5fL0ms0iCEzL
         FQpchG4K/e1v5y19sSjfpnkjUXVSlfa7GM8/qQpUR2faa8yCN9slBRC5BBuZpmk+w6E7
         yK3Im4z310rjGpXmjVW9Xx1uSARpPodGktFKMjfonXiJ3DBk/5mzhLP6HpC5mTOj96WP
         7vJg==
X-Forwarded-Encrypted: i=1; AJvYcCUev9oXnjcET3Vz9MB8weNMnQeX29kbVrDjS8nIHtsr7n6J0LjqQfVBFvc8Icj+5Ia3Hjf8V75d+Rsq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Vy7qqeEENOOsIldOGTUFofqXaG6vPdSSffeuJk4JDzrAfjOn
	ZXkmlf0tY1AtkwzDlWEf7odJPiop5fOW7Chqj1RuXNl03fpLHFtT1yoCFybezyx+lbPhK4SeivG
	oIbGdqL6Fa3dlhdTPkI4Q4ZYAG1beV+KJknlWo0uHNQ==
X-Gm-Gg: ASbGncsa7CS8RWMRhpLTMOH0aRqFvLG43Y6/M6GHMjJ89uoRbQ11QYpa8nKiLw0kNT8
	VH/99AHdcOIUPrRmliroGVZFxV+tQ0wm/pXcWpViEKL1z/ObzFFBQy55yjNQE8A9AobxoD8bOWx
	ldd2I7Vgjb2f2t0HCBdsj2Dmp9+fNv6chX82IyPdMl2Wb4/hj/GQ5pChBzTJLE0uyDCnEysNV7w
	9qWwB3ngj5+jfgBmZOOg6SapeRKxw==
X-Google-Smtp-Source: AGHT+IG7Kofwx6n9tYMDxUa5Z04wJalhfP6YJEHLa4yTiQQEa2UVqFp3ownpK3FKUhmGBn3Yg5tzw6HGtBhEHg9/vxk=
X-Received: by 2002:a53:ba8d:0:b0:63d:24f9:5332 with SMTP id
 956f58d0204a3-63d24f953d8mr775113d50.55.1760446723523; Tue, 14 Oct 2025
 05:58:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1759824376.git.mazziesaccount@gmail.com>
 <fe1f4a0947c864496f4eeec8eef806afcf6094a4.1759824376.git.mazziesaccount@gmail.com>
 <CACRpkdZnoMvYBXN7b6dw+uPs=f1WXr9wX-0VF1c1qd-rq+17LQ@mail.gmail.com> <cac4222e-1f66-40e1-abf8-7d4661d43bbf@gmail.com>
In-Reply-To: <cac4222e-1f66-40e1-abf8-7d4661d43bbf@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 14:58:28 +0200
X-Gm-Features: AS18NWAzYGkVtZF2eWYQ8i62TI7iWUixyj6KHyQnG8bjFDuI6exLbunxibrSSZs
Message-ID: <CACRpkdbOKNPFxNJM-r+HdnfKYisWJrQXvG21EL9w4UQVP74D5A@mail.gmail.com>
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

On Tue, Oct 14, 2025 at 2:11=E2=80=AFPM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:

> > These are a bit idiomatic, not using the actual framework for such
> > things (pin control) BUT: they are on the other hand crystal
> > clear for an integrator working with this device tree, and only
> > four pins so why over-engineer it. I am fine
> > with them if the DT people are.
>
> I kind of like to emphasize the fact that this is not really a pin-mux
> in a traditional sense. We can't change the routing after OTP is
> written. As such, it more resembles "wiring" of the signal inside the
> PMIC, and this property is not a control but tells us how the signal is
> wired. But yeah, let's see what others think of it.

Just that the muxing is controlled by OTP and not by runtime
software doesn't make it not pinmux. It is, because it is
(one time) PROGRAMMED to a certain purpose. In a factory,
nevertheless.

But the pin control muxing subsystem is designed for muxing
that is controlled by software at runtime, and as such, indeed
not a good fit.

Let's go with this!

Yours,
Linus Walleij

