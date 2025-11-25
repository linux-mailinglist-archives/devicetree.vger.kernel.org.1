Return-Path: <devicetree+bounces-242069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EEAC85E0F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:10:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 507444E1043
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066F322B584;
	Tue, 25 Nov 2025 16:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwzdjhuo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57F8226D00
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 16:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764086994; cv=none; b=QK2dyxxj+pPOtc5aT3QrMcN8SEPkPHw+z1nC7Wqcs2IXOqCzWAMuMkrJXK9n74lAe85RMM4Iw7XPaMBk8LtbOcxuamX0xFHIyl/4tqgcxO8qsLm32/YXTYmEgwvntodCqVPk53NiCTWpc7mQ8KsDk5xHJ9uxwGIVS5azvP7to6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764086994; c=relaxed/simple;
	bh=ZZNDBK2BVhAD768SQkUjkJTdpP4BJ3kiwKCp9pUj3l4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YQtpepUCcYWvjahzAOD9QFey7UP/2mZOM0Bs8RT1Tp/vR6S8BcZJvFbitzn/UG2Z8XTlOie7fAN3jv65RP2o/ns+nrurPrazS+eAAUTRIgEWyUOqC2cuCtKL8HV28olNfNvsUKRg2Kwmnf6PI9GyEh2AdlVPQEnnmaomb6L1Fdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwzdjhuo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A63BEC116C6
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 16:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764086994;
	bh=ZZNDBK2BVhAD768SQkUjkJTdpP4BJ3kiwKCp9pUj3l4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=dwzdjhuozsktqh1uEqLtWXLE3Y4ijDUN5lGZVSA5tiOJUsx9KYs7h2GZsuM5Gx/Xi
	 ogdXt1magG4xJGhW0KEfoMhJEgIcc6sMHXcbuBwjaYnHohJ5ofdbiTJ59oDuDPlBsY
	 k1eAGvo6/O4Vy2M0tV8O2e8HQZf6LIlbsrPobiIZGMKQ/k7xnClYE0OfwWVA0d12uo
	 KHGWscuG+2wT6bRAzWyDeK2vNJMTgsg+yR8CCQ1IU3p6oDBLH1LHQFNUaF478Jwt5m
	 AuTnwvUfJEKVQBQqICRAcReGi1K/T+JtrBjY9uUhSg7mT9g8fWntonWoW9RhiAEQ+r
	 N2+X4WQEyjJqg==
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-63fc72db706so4736013d50.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 08:09:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVtc1e7cB6iwIuxw8Y9mPsViXmCp7aN1WEpXGYzfAB8O+OMg/Y40V9NFUbesr6jTk0AZavOTu3PoW8g@vger.kernel.org
X-Gm-Message-State: AOJu0YxFzL+aY1AVfETeBAb9iJzxuIcavFEKeUdcRZfBTML4Nz+2aaza
	qTZO4P/gNz9nnnCRVAbtrEmYl3dM9XqnreeZ61Bzm58wkruu4BEz70pSvUQ7r5+5yE4VnazBx2K
	PzqYaVX2WJT2q+oHkB+5TGYoQ/PR65P0=
X-Google-Smtp-Source: AGHT+IH0wLbZcZEqWX92Za1hESIG7WAjFRxjfJteZSIoUtcOqh9fEEaG8QJTTVQDJ9zOPgiaGpL5ewrpQlhHsrpqKZ8=
X-Received: by 2002:a05:690e:4287:20b0:640:dfa4:2a6c with SMTP id
 956f58d0204a3-6432936847emr2204010d50.63.1764086994039; Tue, 25 Nov 2025
 08:09:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-improving-tassel-06c6301b3e23@spud> <CACRpkdYQ2PO0iysd4L7Qzu6UR1ysHhsUWK6HWeL8rJ_SRqkHYA@mail.gmail.com>
 <20251119-bacterium-banana-abcdf5c9fbc5@spud> <CACRpkda3Oz+K1t38QKgWipEseJxxneBSC11sFvzpB7ycnqsjBA@mail.gmail.com>
 <20251120-silicon-oyster-5d973ff822d9@spud> <CACRpkdaM3Hkbxx99uXx6OVdSbdhNNc3voS1FoUsz2oAUEc1-qA@mail.gmail.com>
 <20251121-epidermis-overdue-1ebb1bb85e36@spud> <20251121-skimpily-flagstone-8b96711443df@spud>
 <20251124-operative-elephant-16c2c18aebde@spud> <CAD++jLn4z9KFTRoROZ8aKnK-1v=_magjgSq7JJJYt0=CO=gH4A@mail.gmail.com>
 <20251125-depravity-proofs-17b8d5dba748@spud>
In-Reply-To: <20251125-depravity-proofs-17b8d5dba748@spud>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 25 Nov 2025 17:09:42 +0100
X-Gmail-Original-Message-ID: <CAD++jLmsBFt0rhQRsfynXM9ENjO=NXjenOmox=7_Vdy-t0t0UQ@mail.gmail.com>
X-Gm-Features: AWmQ_bks6-u6m8wg2c5pyzIP62EmTFwv7qtwcD3UXlwd7p_OO31yyAPjGHSiQTM
Message-ID: <CAD++jLmsBFt0rhQRsfynXM9ENjO=NXjenOmox=7_Vdy-t0t0UQ@mail.gmail.com>
Subject: Re: [RFC v1 2/4] pinctrl: add polarfire soc mssio pinctrl driver
To: Conor Dooley <conor@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Conor Dooley <conor.dooley@microchip.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 25, 2025 at 2:03=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:

> I'm not sure how keen I would be on this of_property_present() idea
> though, feels like wasteful to search the dt for conflicting properties
> when we are already going through all possible properties and can do the
> check at the end, when we've got all the information? Could probably
> keep a temporay bitmap, using pin_config_param as the index, and use
> test_bit() using the known-incompatibles to check it somewhat neatly?

I think it could work, as all conflicts (I think?) are boolean (this OR tha=
t).

It's probably a bit ambitious, but I'm game :D

Yours,
Linus Walleij

