Return-Path: <devicetree+bounces-139658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 670C3A16825
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5160C3A363B
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3141922FD;
	Mon, 20 Jan 2025 08:21:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C173318FDAA
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737361278; cv=none; b=hMKq4aqy4GmS3HPl6nb9H+xTPviHBHfYldORyGFdl5F/vW4ZJO/AElM0yHT95kTdwzr7mPRmAGznHgUCvKv9hINxha4SBAymcAalF3hiHfVm85bxi1kkiw/u+D2kVPIMSSYkzgMShMiSY5sREg8ohqTfk1+Zc/xASR1fMsh+8k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737361278; c=relaxed/simple;
	bh=ce4lXN6/gn80uujlGaJZG/psx7MhujyRIcvizzNnlr0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B2EAqptekcxdaZ275h5JAJtha/PChpfELSggY+/NmFOs7OMjL+TI3BQv4P6lZ1xmXv0V8bHGy1YUYwmzZdi4TMGqVQaPRuhcxcld/yoYsSfCrWOTnlj3nqi9QoJVAXkMWoh5ly7h26UUAYFUVapw1lw15dJxZjBkAw5e2FMazHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-85b88a685e6so2026278241.2
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 00:21:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737361274; x=1737966074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wi7GVIKAmX5N79TKymkXsEKjdH2sMcAjyDCD5NQnmms=;
        b=F0dRfZnhRttl4+4SYu89TSL7QD1qKky4YqT4hjyeNsozRY5lNxIS7vXYvxlV/ljXZk
         6CSy61slDWX+A/eHS87CjdfQ7WyKoOKcX0iVi0Uh3T9dng1J+uMI29YHiFqTFrbsKyel
         sv0vnnblnaEYhh3wuJlwQ3yAYxZygQRBV/Cs9sF61NzApe5c6+/jQFIDZae7TB7IMVOv
         iQfX7IOQFIpBvUw8mCguwinafPElOFUJYDA0CxX438PMTlr/90p0F4T0Ym9TneZIhAfA
         PWvL0jWGBPcopPdVcAJCp4wsLSIsnbXCqRFotRtadc4hboz3g5nowGq8Ooi1GRM19qjT
         8jgw==
X-Forwarded-Encrypted: i=1; AJvYcCUFwHu4WQMPA2/rkgFZpGMiaBFVbiC41ichiyFdOzBvgXhAZZzsAiOVAuqfziv1yTIlZMkz1aPS+hrj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7a52OdU8VXmHBHcA1y1b5RwQzx9CUjULUYL2f6Dd5QHGgqJqK
	hEZ6gc995ZWGJC54/v5a03LjMZBX1Ii0MiCHcIycXv01HxtTaLaNhaf7mlg8
X-Gm-Gg: ASbGnct1PVd62ZUUR2oiSxAC35RAxwESKeDvSB8aWzZw7Mpgv9i71Wol89lUCFv8xfn
	uLzwYAmv/8slQDUFlPfWxTngbKVbH5twfCcL5PtThU1dYc8UBKA/YkHAfaKcsopqKzuvCQWle6B
	TW9D8mnuSzt3qnm3rozwsGlpcSWJgHjiRn1JiQe1+YoQ1+JWCeF/5Jt0JU5f0XDtLEzp6KVQGyy
	FdZSj+EFYTNyFlv/cKDLfHV+UKl+mkh8T57Wk4hURUXemKjYxCgy4GvEdr9zhLKf2/lDJgiN0JG
	dXwagr4Fj7IF82nhtxz6tRAKwzYqUEN8
X-Google-Smtp-Source: AGHT+IFyzH5oEvxtB4Mm0Ss5QcPTtwkqm6fYQN+RJXCt6Oxj/HGtWMuIDQ5+rGv3TyEEc14yNG4afw==
X-Received: by 2002:a05:6102:801b:b0:4b1:f3e:882f with SMTP id ada2fe7eead31-4b690b7c5c6mr9467374137.1.1737361274248;
        Mon, 20 Jan 2025 00:21:14 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8642cb08c59sm1773196241.20.2025.01.20.00.21.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2025 00:21:14 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-4affbb7ef2dso2994742137.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 00:21:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVG/tbcWylWls0sOq3pEJHYJFIpoKAAQS05/Uc7Jrx4Ucr0i8v6n/lq50+anFmOzmOnVHkLV1j48BUG@vger.kernel.org
X-Received: by 2002:a05:6102:dce:b0:4b2:5c4b:55e9 with SMTP id
 ada2fe7eead31-4b690b7bfa1mr10157443137.3.1737361273885; Mon, 20 Jan 2025
 00:21:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1737118595.git.geert+renesas@glider.be> <0c7116ca03997fff04faf59fdcd4c97820685b64.1737118595.git.geert+renesas@glider.be>
 <20250120090715.17473c2d@bootlin.com>
In-Reply-To: <20250120090715.17473c2d@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Jan 2025 09:21:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV+60U_FCB52xzjh4BCUsQ+qEqHre=2h6FDKnUtT15b9A@mail.gmail.com>
X-Gm-Features: AbW1kvbf9TF12i9HMV867gkLf1lyeRnV2tnUVEJQtRvIs1uznH7i6Xt4dZ5j338
Message-ID: <CAMuHMdV+60U_FCB52xzjh4BCUsQ+qEqHre=2h6FDKnUtT15b9A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] phy: PHY_LAN966X_SERDES should depend on
 SOC_LAN966 || MCHP_LAN966X_PCI
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Mon, Jan 20, 2025 at 9:07=E2=80=AFAM Herve Codina <herve.codina@bootlin.=
com> wrote:
> On Fri, 17 Jan 2025 14:04:38 +0100
> Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> > The Microchip LAN966X SerDes PHY is only present on Microchip LAN966x
> > SoCs.  However, when used as a PCI endpoint, all peripherals of the
> > LAN966x SoC can be accessed by the PCI host.  Hence add dependencies on
>                                               ^^ Two spaces

That's intentional: more space after a period terminating a sentence...

> > SOC_LAN966 and MFD_LAN966X_PCI, to prevent asking the user about this
>
> s/MFD_LAN966X_PCI/MCHP_LAN966X_PCI/

Bummer, how did I miss that?

> > driver when configuring a kernel without Microchip LAN966x SoC and PCIe
> > support.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> With those minor things fixed,
>
> Acked-by: Herve Codina <herve.codina@bootlin.com>

Thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

