Return-Path: <devicetree+bounces-124496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 320549D90D9
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 04:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8ED0B2117C
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 03:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9880780BEC;
	Tue, 26 Nov 2024 03:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Jz2xoc22"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BB542A80
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 03:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732593211; cv=none; b=jACU+oHQCCnN6SsoBeB7pAPxLX4Ee78h4Mt4E9UHWd939d5+4eX5vPtkANg7CEdbiSZmB5KqkU1Tf3xfaxqAK+p7akU21AcozL/+D/rGPgIoFznExQkHAZfJcQnY7kcFOF6QkbnnR6yxIwefL9svpj4Z+ca90/GibJGABsvOKBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732593211; c=relaxed/simple;
	bh=FrUsNULivxcVoqmFzn2PjE2p47NGik4sHvTM4nqcV1E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rf974DcOVaJFZUctcNlkZwZIC4QOxwTkbck6UY3i02wisS54p/+WeiYdQS81Q7SGrU5Pv1cbL0n0v5B5d7UV7rOhP1z7oFrrIPkMCdcME643mly6Ntw4a2ptaSSMPWiCiH1kOUGgRFr8e22gHCZukF+USKI0HSz/XoZYOVwk9lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Jz2xoc22; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53dd57589c8so3909163e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 19:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732593208; x=1733198008; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=36c/HAD52p/Ko65f314flr6IbH5n/HZuzOyyN6pe2Uo=;
        b=Jz2xoc22YF4/zMwlfHn0EJHeTlxSFycqNcSb5KjH4JSmgIQippND05LZGbkhAXrkY6
         Nw9D994wMELA83XgL7ajMkLDsiceYpMvopPR6Th9A3R1r+mQ+MyATrFU67SPHr5US6Pp
         jeh2vQKzEVZ6T8Ycvbis3aiU6svtDuurDhjFc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732593208; x=1733198008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=36c/HAD52p/Ko65f314flr6IbH5n/HZuzOyyN6pe2Uo=;
        b=e/nDAS8utrPy80ZKGc0CbIBf/qTqAe3TO7VBwI1WjOoAbfObfPfv0dGP7FDa74bj3O
         VH0UCk51cw0Dzu68CAM9Gsn7NspVfU2p0N314qltUCiH2xIpSdGOxtYUmfmJZkaTLBEc
         CCCS2lsfFL1xo+GkUWORK6mjzsaWsqEMbcLi5FsUKV22up5VNXJ+QsMN2juaBpQS/Dy4
         Wbg/MkYNYZQLEAHN1mqMewjAyk98Q4A+e0N9IVS6K9A2FKjRsIXh9EUtTmTTSaBFEt5O
         0wcwEceBSQzC7rkeYYngxc0aNbww648CADNNtUDUgt/JvNk3Wf2SsNz/b1XfwZj0o6Nh
         v4nQ==
X-Forwarded-Encrypted: i=1; AJvYcCWohusRP5hWKv3wtwmuJWiPLtAaEsCt4vzEerl0QSxqEMjMzhO/Sw0ROQPBXslipYSFAxcCbXElmx4F@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyibe33OPFQJ6tVNJLLymOynGpcnR9vytlMD6w54mKzUVUsPj+
	p3mn87BlFTrEeng2GmT0W5Ukc3EscQwDqdgVRV68YasdSincyULHS84snLbsY79CykUULaFUMaX
	fXVkXIxJMVllP+1ZFgV5tnRwEkppTbs4cLD6i
X-Gm-Gg: ASbGncvUnGFTOHPSd5LkKVSn6A9hFtQbobBn7MOEWZ4GAAfm+1mgWAeB8LRJ4WIEeLP
	G3rtese7a3oVQQwhA16h7/Js5wik+4lCuUp2RTgL3uvBssIhrJtJy7oQvquY=
X-Google-Smtp-Source: AGHT+IHlTCF6xqqXC9D5Ru5D7akZvI7lG8VNYgnh/Aq2hlV7URcGaHr1iOvC5Yx6DB77+Nk2LpYBhWPz/8xUj8dgOgw=
X-Received: by 2002:a05:6512:32ca:b0:539:f922:bd3a with SMTP id
 2adb3069b0e04-53de88505bcmr528168e87.25.1732593207946; Mon, 25 Nov 2024
 19:53:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241125113151.107812-1-krzysztof.kozlowski@linaro.org> <CAL_JsqL6e28pZ9G55Ab6SJO_xNK1R7D-xReC8girvP9VMUk=2Q@mail.gmail.com>
In-Reply-To: <CAL_JsqL6e28pZ9G55Ab6SJO_xNK1R7D-xReC8girvP9VMUk=2Q@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 26 Nov 2024 11:53:16 +0800
Message-ID: <CAGXv+5HKCQUNuaeJLdR2O8-VBjpu8ydOcoP0AKP3-__RmrCxRw@mail.gmail.com>
Subject: Re: [PATCH] of: Add Google Juniper to excluded default cells list
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Sasha Levin <sashal@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 25, 2024 at 11:46=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Mon, Nov 25, 2024 at 5:32=E2=80=AFAM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > Google Juniper platforms have a very old bootloader which populates
> > /firmware node without proper address/size-cells leading to warnings:
> >
> >   Missing '#address-cells' in /firmware
> >   WARNING: CPU: 0 PID: 1 at drivers/of/base.c:106 of_bus_n_addr_cells+0=
x90/0xf0
> >   Modules linked in:
> >   CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.12.0 #1 933ab9971f=
f4d5dc58cb378a96f64c7f72e3454d
> >   Hardware name: Google juniper sku16 board (DT)
> >   ...
> >   Missing '#size-cells' in /firmware
> >   WARNING: CPU: 0 PID: 1 at drivers/of/base.c:133 of_bus_n_size_cells+0=
x90/0xf0
> >   Modules linked in:
> >   CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Tainted: G        W          6.1=
2.0 #1 933ab9971ff4d5dc58cb378a96f64c7f72e3454d
> >   Tainted: [W]=3DWARN
> >   Hardware name: Google juniper sku16 board (DT)
> >
> > The platform won't receive updated bootloader/firmware so add it to
> > excluded platform list to silence the warning.

Unfortunately this isn't the only platform affected. AFAIK basically any
ARM-based Chromebook out there has the same issue.

> I'm interested to know what needs these in /firmware. /firmware is
> supposed to be for things without an MMIO interface. An alternative
> solution is to add the properties. That doesn't require
> CONFIG_OF_DYNAMIC and is often the approach powerpc uses.

The regs point to a memory region that contains bits left by coreboot,
the coreboot table and the CBMEM region. The latter encompasses the
former, and also includes things such as the coreboot boot log.
These are covered by the binding firmware/coreboot.txt and supported
by drivers under drivers/firmware/google/.

> I'm also wondering if ranges is also missing?

It has an empty "ranges" property. I dug through our repository, and it
looks like the code was added [1] back in the ARMv7 days for the Nyan
(Tegra K1) series of Chromebooks. The code was never updated to use
64-bit addresses.


ChenYu

[1] https://crrev.com/c/203693

