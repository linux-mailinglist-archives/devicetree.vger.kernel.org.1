Return-Path: <devicetree+bounces-138063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB260A0B9EF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60511160311
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939E022CA03;
	Mon, 13 Jan 2025 14:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aNaS91gf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59A322C9FB
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779128; cv=none; b=VegoseqQdp+gmIQ3dNrTJH310cyNQmtVh0spIOJpIIK4BIKO0AUFqHJjJqCwzsDBINto5wj+D4OCmwSFQ6Ny9qA+dlUD9Nhf3FGDmRyYupvqMMtuj2BEf46AkJV4nYzRe1AiaOerFLGI8Ff0FccCrqwk9JB2rhPzb1Ml42I0278=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779128; c=relaxed/simple;
	bh=etW4QO+bN3eNzf3uXi9QAs/Mz/k9BPf+/ef3MGUELS8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gbgqr33szEAf8BXnYT0W1Yl/RDbQQaHBwqYy9IK4QRrjFT0xV/U0ehG0vhjRospMlyatzuldldGeyertPxJVPQ9/r1a8rFu2LRVwIkGGi0edxZ1OFmyReRETlAvsjNfl9v7Wt5ovQUKsZgkqXvnBd7X4Hz63xYU+0Zyi6HUOgCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aNaS91gf; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30034ad2ca3so31393211fa.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736779125; x=1737383925; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=etW4QO+bN3eNzf3uXi9QAs/Mz/k9BPf+/ef3MGUELS8=;
        b=aNaS91gfgS5i7t7LiI8CjMe47MP7G8YRBm0iMt80ns4SsvXaQ1Oam2hFsvPZHQ0Ilx
         pz6MY/W/OtL3XkxPd0UcwOpwEzpF11Z4bpYFdYfUxaMhXsX8TdLNOMXz4xSW9bPS/R8L
         K0uziaUM/1fYrhprjUGKU8LeakGfnAOQHbYRERuZavuK5UXht/HFBehjr0J32y+gIu1+
         3w3W48FdmvzTCs5zMiasE0vXU7EJHnHBR9cSKPue/aIA3qlMvdZAb7PAf8aAxMD22Pbz
         49Ba37rZatDyfdmNrWkC4Uvj8ilh6+QQjLToENugAb2DDWZ9J6HwMT+eZuk+UB6ixGGJ
         iuvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736779125; x=1737383925;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=etW4QO+bN3eNzf3uXi9QAs/Mz/k9BPf+/ef3MGUELS8=;
        b=PjN44sxxkIEpeAHJb8bWNxqOzVUDtQWhVGuUjF2rENwIh0K3iFskH/f/TM+xuFu7Bl
         pAXb+3uVqf65H9jU/7uldJpLJxWsi08kjM+MuOliYvSQmeO3urVomhy3q7DCgq8oxYr5
         CQu3HYItoHfunG98ZNw3lrJ0ORjEL1dmtkm3GMMq0zp8sg7lJ18j+LrJWJDipENkHo/J
         yui12uTR3MKxRzVIrJZFxC8pZIe2J4PVs5BECGsahKftgSJFgDAhMjUM3krw6+pt9Vi5
         4ZLtkg6E4epSBR8p92t+owVrY/nh6kytFn02I6U3z9gXcLa2o73U9sRGqyrS9Mt7MPA7
         OrPg==
X-Forwarded-Encrypted: i=1; AJvYcCXKrOYXCNc6klVnVd5DLxyyTs7ShujjWdMhEtGzrgVjlto7tbgm+sc8HFkVyGZ73M6zf1zBs+ZjcOuP@vger.kernel.org
X-Gm-Message-State: AOJu0YyvtBL0bHDKw0kA9Ap1Ko+r4BUVtfWsb4dWsLclXGoE34qq3y7G
	C0I807jao+CGQYMTZmDeBtW6jqoHaWlL3tCo8uoo0EFfi3gy7w1NhVWselhBNC71nHJG2ZTig0d
	s3NZlVjzPcVN+19U+bS10QIAm9kWTDeTPym4LOw==
X-Gm-Gg: ASbGnctt28y6ieVPh28p9LfPhBKB/gCU/vb9LeGy3P8TaIfqVChwYu4D6birTq9GDDg
	dMnWIUEMbDRl73bf1HAYcjqGutslRNZaGsPm7
X-Google-Smtp-Source: AGHT+IGzCUYOpPPOhBhAZHC8EUM0F04TI3O4DJz57YgK5vUdYy/lw+v266gYlSZwVjWwmk6cJNHYDHwrZ57XcjPmMDg=
X-Received: by 2002:a05:651c:e10:b0:300:25f6:9b3d with SMTP id
 38308e7fff4ca-305f45513camr34405761fa.10.1736779124866; Mon, 13 Jan 2025
 06:38:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241225035851.420952-1-gch981213@gmail.com> <20241225035851.420952-2-gch981213@gmail.com>
 <CACRpkdZ8Yve3EPB6E1nrPi0se=rgush60Q=Vce4Ux2w1QW3w_w@mail.gmail.com> <CAJsYDVJXLjd6ih4C5k+e-jAJ4DvKOPcJ3OwBQX+S=AmohzENmg@mail.gmail.com>
In-Reply-To: <CAJsYDVJXLjd6ih4C5k+e-jAJ4DvKOPcJ3OwBQX+S=AmohzENmg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Jan 2025 15:38:33 +0100
X-Gm-Features: AbW1kvZU2Xi3XuAy-EodJ7InSqEEs-QfCPtUrrUh6asbwUu-RocMagbXqSmZ6ZQ
Message-ID: <CACRpkdYi_+aQ5L-c4=w9MK-6Uh0e9dX0nnU6LcZcHd90j97q7w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: add binding doc for siflower,sf19a2890-gpio
To: Chuanhong Guo <gch981213@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Qingfang Deng <qingfang.deng@siflower.com.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 29, 2024 at 4:06=E2=80=AFAM Chuanhong Guo <gch981213@gmail.com>=
 wrote:

> I don't know how one reset could be shared across multiple platform
> devices so I don't think this kind of split is possible.

In general I don't think shared reset lines in silicon is
any problem whatsoever, they are reference counted,
just like clocks or regulators, and there is a flag
RESET_CONTROL_FLAGS_BIT_SHARED
especially for this purpose.

You might have to fix the reset driver, or fix up the way
they are defined in the device tree, I don't know how,
but certainly it is possible. If in doubt consult the reset
controller maintainer. (Philipp.)

Yours,
Linus Walleij

