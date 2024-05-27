Return-Path: <devicetree+bounces-69354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A503F8CFB3E
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:23:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D68AF1C20BB0
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746C85FB9A;
	Mon, 27 May 2024 08:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IpK3IUAV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B014776A
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716798167; cv=none; b=PGHIEn8VISCydzg0HhbqpOQRTeQe2PviGdczWYdIRGK+DWphgbXMuy+AkcyEk+irrND+Ky512ux0KByKIPySrQ50StRvcHE5sHDuRgq8qKsuOO8rWqxGn2kDDsrB03k6uILJO6o6fmRlosstum8CGi0YIHp7Aeh9PaANBZAZITk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716798167; c=relaxed/simple;
	bh=RhzbyoYzei8nki7Y26C+6sE1qATDlhF0eguNRuXHJPw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TVRAIDXVqYsHP/DjjLFD3aWiG8EOpKHBNMAyHH/xQIuGMhlmjrKjjz1kyV+y+93TEoAF/cgx/5RravVNiMjbPZ8wjIgTYPAx+LUWDOWlOFUUrnExPQWtQoao4CT3xpnk5cwPLphBhShHmqLsjBc+lQPZCc21D4og7mQK82Hrkow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IpK3IUAV; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-df4e40a3cb6so5361452276.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716798165; x=1717402965; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RhzbyoYzei8nki7Y26C+6sE1qATDlhF0eguNRuXHJPw=;
        b=IpK3IUAVHkuLq5cFBMWkOM9Wqr9LRKjQEzRonjO7sAl/0fTBdQOTmdKcWwPTvrVU7L
         qADdDgQomKOrpr7KjmMaciELdRUMRQmM5DVAe+g1z3RWFAhqEJFrhVeC/ZT4AUM4OqHp
         9zLmczQo+A/ZCcxPnF8paLOtMw7Jpg7kJZE7doZIoOwTyuWIlgLwpuOchV+8hwAdORmr
         Jl43pmXr5iA7UExMmWd8XOH0xcIDl2RS3mecKtI11SEKKaTYU/dddZn4/oAe4hb2KnXz
         zTuEUJfMiH0KZesUsYDL32CA3DPAN23z/fyQe8JjwVVyfrbzgRLxMd1mluG2I+Ov9k/D
         7x3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716798165; x=1717402965;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RhzbyoYzei8nki7Y26C+6sE1qATDlhF0eguNRuXHJPw=;
        b=ey+P4+f1I3sW3iG9BYB/geVK3mM1IBOCuZ12UaO92Px0CM2+osUoJPAHMaIXO7InhB
         rPV9VHBya+0NSKS0Y/vhpGX5K9ESdiTUQ0gmJ0FKtxDYAjUFjGYHIiBlmHqsxCS3V5/T
         y3XottdXdyeBHhfefwr/S3aFn+Gks0fV5GODE0vSACv6ffXXayX89JKaGH2KCkH/+7A5
         O0wlj2b7ruBWHZGRuj98FVX67EQMvxkkhB0piLXW/LqdQiaxHj/IVfTL/kJuRIya3nh1
         z7q5eiki7HKosuS61zrDS8IwRuzbpkQ1+i63KvOS/43JhlwdPL9e+t6kq2kwAPOULT3c
         I2zQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaJQsYDovvYd/NhhJ9h/VnXQCt7fxwhWjmedIhDEUcUumiNnZKCAxAix6MEpl3dv9MUYyZwPKbBpmEV+XQnmHELN2cmKibu4tTkw==
X-Gm-Message-State: AOJu0YxODbfS1TujHYHklrM1bdqubvx7KvPk4wC3Q+cds1P5DJDeNoq1
	UJK3DYKfiDLsJmrBzGtGYIs31s/Uw7jq9F4Y/TmikU5b0CESLDUyHIZ1WQuEyoHBXXltYb8h2jj
	aOOD+6Tmwre6J2sPLbCJBYj5XrYQI5kqDKcD9AQ==
X-Google-Smtp-Source: AGHT+IFmRtGsO9RnOjJLtqMhlOev9FBEcciYuxHiQcnDIeAfRLJmqIRkGsC2dgKZmDVlb84ZKNyPilf8+td5vWvPK3U=
X-Received: by 2002:a25:ad99:0:b0:de5:5084:715d with SMTP id
 3f1490d57ef6-df77223805amr7696603276.53.1716798165010; Mon, 27 May 2024
 01:22:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240204220851.4783-1-wahrenst@gmx.net>
In-Reply-To: <20240204220851.4783-1-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 10:22:34 +0200
Message-ID: <CACRpkdYmOECdug1g2gYxjHZ-+Y040SR70UtDAgKD8yCb58Ob6Q@mail.gmail.com>
Subject: Re: [PATCH V4 0/2] pwm: Add GPIO PWM driver
To: Stefan Wahren <wahrenst@gmx.net>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	andy.shevchenko@gmail.com, Angelo Compagnucci <angelo.compagnucci@gmail.com>, 
	Philip Howard <phil@gadgetoid.com>, Sean Young <sean@mess.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 4, 2024 at 11:09=E2=80=AFPM Stefan Wahren <wahrenst@gmx.net> wr=
ote:

> Add a software PWM which toggles a GPIO from a high-resolution timer.

Is work still ongoing on this patch series?

I would use the patches and I like them a lot so I'm happy to help if need =
be.

Yours,
Linus Walleij

