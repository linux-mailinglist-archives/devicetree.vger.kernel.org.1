Return-Path: <devicetree+bounces-152338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B92AA48C3A
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:00:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C6043B5A17
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C717145A05;
	Thu, 27 Feb 2025 23:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LZCfVjBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908EF277810
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740697249; cv=none; b=XOLlDA+hdV5c63xFaK40KFw5eVdKQJAHFbMn2NZLFZe/icXs5CuMnAToD/11KhyhZ/q0Xeq8n54yJAXP7NQNl1PnE4Ki8n/IcAJUXIhnhvIdQbxZbRs5Ku74RUfpYevL6pHH/i4e2luWfSp8X+FXCyxp0LVPmFp6t6NgNx+o6Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740697249; c=relaxed/simple;
	bh=anKmamDt2JAR6SYLrGqIAXyBzFAE7px2UkFAQ1uHX48=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HKGaPPnv9pxFdZBqC55/+BBKgLG9S4lzy7j5ClIVOjXg8pfPGMO9nPkccPn7jCk8rdqOQVjB3XfNR6yUy3TRAVS4QnRI7rlDtd6Y17C8DMvJm1Wa3JnW/hvGGhXNvyumf+6/Ng/7WXidKvocCf2HlOLUZ/kLgesQDX3ZocpSFNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LZCfVjBe; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30a29f4bd43so15244511fa.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740697246; x=1741302046; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qwFZZezvW0dBKzxzrpQ/61HBuqlXjI5bXEQd5dYgZNo=;
        b=LZCfVjBe2x2iVCmnGisMc1nh1D7NSN20ltftQIz6DRDx6yZQYlNDc1kzCH2wsLdhJH
         LiktB80lNzx/laWcqoeXNPtkNP1hUFjDYS8zeMK7tNDb8OMFchCCXGvu3aPA+GNltEyh
         CpfA2R7GR1YWKtbWUzZQjj6Jnjf7p9iiHMQ6Uyvmg6MhifXN8ZgCOgSqWM9P0yOd+F/C
         26ZrofOAAA6Hlmc5onW87So3QRrNMd1V5Rt0UJhYWgjgw+nGa9JbLgS00SzSa1R+x9R9
         0DB0+gZ9PTY5lsAMOeebik2SNb5CVge9GVoGxkDY3IE9/cxN3zBDxc0KphUSRKofjnwd
         NIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740697246; x=1741302046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qwFZZezvW0dBKzxzrpQ/61HBuqlXjI5bXEQd5dYgZNo=;
        b=w79NRD8QHbYAd58Fm+TVNDynbKolVK0MDcIlOrUzK+PqwoIkXV9y+4001qqe7hMW48
         3X1rb7fUKwOn0RL89TGmeCpHbdeGmdhm1XgKAXcxs8jy4/Yib6ztfiu2K+FtHwLwrOs0
         bD44YY2NXYHBB+f7GRZGedwl3DqjepIFz9ODBUX6IQBiqYelvpedLyCVnpr87rAT/zdD
         X34fqZQG+b/AkFdHytqw/7tFTrDt2dj7+rTqWVGO3h5crg/tTneRv/FRZF0wHhBItXh+
         PfRL6w57bXbsOoQdzo5qfLEWLyJtXNwmyZDi/H6X2kHZ3A7FXN/iMWHH5U+HKLwJSeCG
         W/ng==
X-Forwarded-Encrypted: i=1; AJvYcCVTnoNSzqMR9lqIvI1lTyLOPfqcS/uH6zJZU84Q44EmMvsS+kKVS/mc6XoRoKabgTom39556NptK9sI@vger.kernel.org
X-Gm-Message-State: AOJu0YykHs0PpqTzS3sQupOR5obkxTWtNwb/gMU6rPV16guhsh4viudr
	r/TuEuA/PvWEl4y6GXAxOPO7Yw+vjBHewe+0CtplWeCxDTkyIoDdaLGYTVZqMl3gpU3TKWSd6lx
	2z39Us21b3klJoh0fCbEq+WzLqvRofyKDoxoINw==
X-Gm-Gg: ASbGncsnaG4bRhsNhWJmDmCdmx6ZMa/AjJrsZ4V03L0YRVr+3r+dtvc5nLmQux4+Rg5
	MszLQHrBbDETjZevXKio/1wLVYb5DYvMSoWP2+Ki2ktDPXXkXjsYHefP0X+iskH4RgYvTYvWqfz
	r6RKVufww=
X-Google-Smtp-Source: AGHT+IGDB6M3SfRRZWxdUGXX2+vM/pAqOBIuKSaF7zEvkP6CctCeQrrU0dd+T2vFb4hY7/S5th74SYa9xvKPHD/s7+E=
X-Received: by 2002:a05:651c:b07:b0:308:ed6f:6e71 with SMTP id
 38308e7fff4ca-30b9324f3c2mr2703231fa.21.1740697245622; Thu, 27 Feb 2025
 15:00:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250211051801.470800-1-inochiama@gmail.com>
In-Reply-To: <20250211051801.470800-1-inochiama@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2025 00:00:34 +0100
X-Gm-Features: AQ5f1JpBMomU6BGhqr4xdLlZeYdSp5D6LLHZS3EpCT3eseLqQ-fhMILIKxtTpQ4
Message-ID: <CACRpkdYfZ8izsBJaKUd__jXGHnDBU9Tha=2kozjzHssoppgY5w@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] riscv: sophgo: Add pinctrl support for SG2042
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
	Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2025 at 6:18=E2=80=AFAM Inochi Amaoto <inochiama@gmail.com>=
 wrote:

> SG2042 has a simple pinctrl device for all configurable pins.
> It supports setting pull up/down, drive strength and input schmitt
> trigger.
>
> Add support for SG2042 and SG2044 pinctrl device.
(...)
> Inochi Amaoto (8):
>   pinctrl: sophgo: avoid to modify untouched bit when setting cv1800
>     pinconf
>   pinctrl: sophgo: introduce generic data structure for cv18xx pinctrl
>     driver
>   pinctrl: sophgo: generalize shareable code of cv18xx pinctrl driver
>   pinctrl: sophgo: introduce generic probe function
>   dt-bindings: pinctrl: Add pinctrl for Sophgo SG2042 series SoC
>   pinctrl: sophgo: add support for SG2042 SoC
>   pinctrl: sophgo: add support for SG2044 SoC

I applied these patches 1-7 to the pinctrl tree and created an immutable
branch:
https://web.git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.gi=
t/log/?h=3Dib-sophgo

>   riscv: dts: sophgo: sg2042: add pinctrl support

Apply this patch to the riscv/SoC tree.

If it is required, that tree can pull in my immutable branch, which
is based on v6.14-rc1.

Yours,
Linus Walleij

