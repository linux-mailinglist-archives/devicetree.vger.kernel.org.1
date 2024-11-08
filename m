Return-Path: <devicetree+bounces-120095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E429C17D2
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:24:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D22B1F24194
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 08:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335411DD55B;
	Fri,  8 Nov 2024 08:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lDEQ/1OP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1951CBE89
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 08:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731054245; cv=none; b=rLM4zVGwFIlqlWYgJ+UWpstNzOhklLNjtcBiavr6dK1SKwPX2gJ9xkNoMxYZ+EYmJDj3SaRobJ2trwBQgq2qos6OQguEO7mHGpiTcqVM4I1G8KB25ELdZsgCi48/mBPqId4ydr1RcppuO+hALmbthZ1FuIjO9Fb1AvpqVWXnV74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731054245; c=relaxed/simple;
	bh=Jl0lx7Gsy6iH5afi7dJma9NiuABi3ClmekHLbyLNYbM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qjqwhNqi2OfaCEuuS+34aqGjJM4nJkqrnWCtCWoDwuewbrZikrpzSSkzxmnGzRzeNitpGTCO4aptSnfOF8iWcJL3cpuwofvilKo0aWFRS1WEjKa/IhaKRtoQSvzzu6k2qgqkNmRk7LAYwR5xH4UuBkU6F3Yl7dvJpMTiUu5/KLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lDEQ/1OP; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb599aac99so19093931fa.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 00:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731054242; x=1731659042; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jl0lx7Gsy6iH5afi7dJma9NiuABi3ClmekHLbyLNYbM=;
        b=lDEQ/1OPDXeZQgdRP9qaJxnG87KhKPu3e3jvJhAhGrG8A/rQdL/1hvXz0Uwt1ZVWYG
         GSGWgkKYsqWzu0W50Fyw/KGZ7t5kogR1BGiz4qPZUmZzLvV48CYwiGlQPpFTfbFNl0Hv
         lIlb5sILAcF2HQSdIxO4BmRDSTTK6h5VUbWedO2mlF6rhEbO9FFta2AYweH8rCORVaI3
         QfcGNA/dNk6DuQAYT9r2FyoD362qidhO8IUb4DF4VmyZlvInq5bRSKnlmlbN0Nn/ad9b
         TkBBVrXuM2F+EfNDTB7ZQyk5DlgyuzkL/E9oehXP1R5oNNAYFeBdJwkTA8md9g1ZSUZk
         JS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731054242; x=1731659042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jl0lx7Gsy6iH5afi7dJma9NiuABi3ClmekHLbyLNYbM=;
        b=PpQicuPlZB9fcIqWy3vCT2SpRpW2bHTlCB+4INFkKQ9y3RXsemS+8MujCUhquZHsPI
         GjGTYpew4zQ3YXV/tUmckYoNvjahvEm7ZFQu/upRZQoazWm8LzJPXDgQexf2MNZ0R6tp
         4F/G/2A4Lh/aZC1/e9PyUeL2exNKY9v+yZLnT/Rb6/WjZFlYmQwX4zZkaZXA9lQmPq+0
         8t2C3Lo6AdYYoNpmUpfQG1bz0s01PAtWCgwctq/1SzZM2/IsPCms/25UUs7j5cAP5jnB
         jFKvxUhHc9GAbgUC8oCopHwU6bgrFEYcVG4+z84kYAbtWCHTUHO31WqVW3mfYdZZ0y6n
         QQPw==
X-Forwarded-Encrypted: i=1; AJvYcCWacSy7sis1Y/4oJ3hJLJzoGexE2UXhVrIenl5FNd91H7qDi65lXdi//2alfoGn4+XiirsBcV+htN/4@vger.kernel.org
X-Gm-Message-State: AOJu0YwE89CCMO/Um+7a7cQDTeor6mJePyKyU++hbos68xLpOhzdm80l
	yuT9Dmr8ewWtI9zbJ01flkyuM+jjUi23VgfpLOR7P2TZ5HQbfAULk2eE9N1EDhnJLEvzFMAK+1F
	lbzp1swk2s39Ci284hVY33PFIOSxiY2pBuD3ny0UMhu55JRYN
X-Google-Smtp-Source: AGHT+IEoi4h9cOF0NrDnDfN2mcJ8OQ9IS7ZeEM0xCssVYgc2FE/qjtdzrUC7fSlflKMcaF1UCWmg7W2XU/WUPP4wOug=
X-Received: by 2002:a2e:9a16:0:b0:2fa:d67a:ada7 with SMTP id
 38308e7fff4ca-2ff201b1d51mr9123811fa.23.1731054241726; Fri, 08 Nov 2024
 00:24:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241029012312.3448287-1-unicornxw@gmail.com>
In-Reply-To: <20241029012312.3448287-1-unicornxw@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Nov 2024 09:23:50 +0100
Message-ID: <CACRpkdZB1RT=ATC1RKosjVyj2G1v4F8NYEPOTpfW16vmTG5y4w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: correct typo of description for cv1800
To: Chen Wang <unicornxw@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	inochiama@outlook.com, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Chen Wang <unicorn_wang@outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2024 at 2:23=E2=80=AFAM Chen Wang <unicornxw@gmail.com> wro=
te:

> From: Chen Wang <unicorn_wang@outlook.com>
>
> It should be PINMUX/PINMUX2, not GPIOMUX/GPIOMUX2, see
> <dt-bindings/pinctrl/pinctrl-cv1800b.h>.
>
> Fixes: 64aa494de6fa ("dt-bindings: pinctrl: Add pinctrl for Sophgo CV1800=
 series SoC.")
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>

Patch applied!

Yours,
Linus Walleij

