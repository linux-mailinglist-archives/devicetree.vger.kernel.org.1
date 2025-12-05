Return-Path: <devicetree+bounces-244526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FF7CA5EBB
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 03:41:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B31043089158
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 02:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FDE62D7D2E;
	Fri,  5 Dec 2025 02:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGeU86Ok"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285492C21C7
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 02:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764902505; cv=none; b=Ir/qbkrecbGvvKOYMrgvZud9VEhz4KKE/OMwDQM4vY7NFTGIID/+mS5T54Bt4CdyeD41KB32Ul1kpZD3n8ln8G+7QEFswc9/2+JenpaNMVdxwKSXuUZIb1+jvAlfwam7l3RGbCxaOrwLDj1/1puy0Cq9+HCb1NKV2pt/hF2yydU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764902505; c=relaxed/simple;
	bh=lghTUWNuzuTVK+CG3XsT6+pj5QqjvE44x/Vl9l2GvD4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hXB5uo/SHsJ60QtW2zEjtfz7SwFOODFe3x4BD9oEQynTwlWJ1seMRx3VoYodGIIQzEzN68tnsWmZ2lwPKvqDDzFEAlFpdbuVeKm01P6zCed41j/SwnTL3hklNaoYiqle8KUriENlyxD/Tq05ZxK6eVSL8E9xZqJjYfaeDXBnyUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGeU86Ok; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5BD9C4AF09
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 02:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764902504;
	bh=lghTUWNuzuTVK+CG3XsT6+pj5QqjvE44x/Vl9l2GvD4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SGeU86OkheA856dShT7reiZFRJj47NvZg2YtEbOTx4x8+DSsEgkI+76evWkUxqi+b
	 9NQM8cksollKm8C05SVuAqmuH6+mydQNNPnMmhEDrc3DcDjU9ZOEi5TF91thFWWaSQ
	 mqZL0qGPfCoFEI+36b+KTjFxS2xgw6fsW1bNHGH2TGSfBJUqcesH50pz7Z6LIbdWv6
	 iCqa077Ig+uYr8/IW4FGyQ+y8yXeZL50CUpzwCPN9lstsmQI4I0F0midPy1LSGl9JO
	 g3kbnZtDIAkatFbeTi9vmdVrYaAu2VqD6M7/OsG57RcfQoiyq7cLkBJXxMjM2NKfki
	 HGhWTf6OWkXkg==
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-640ca678745so2771366a12.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 18:41:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWT71qgdKxoGUtqmlntFWO1IuDEjRYwTXAeCwbZHU85F/nLNPBGACFcpz2AkYVf1wrw72yRVB6FR4z6@vger.kernel.org
X-Gm-Message-State: AOJu0YwS/PNiUT7zkDrvvTrf16pLU4LEI+2ZdBmNUKIywl6kp6fvaVQq
	LPV9s+tMGNVOr/7o+Lxzk9ZlgEQVhcLwk9crWg63XtLZvwDvDr5qAhshqP7DyC88T4HtTOQcEDm
	8PuNSZ9V5pu0vtBFY5gqlWjATbv3D1g==
X-Google-Smtp-Source: AGHT+IEspL48S0vvOJJxB9IjYwe59WtIB/TV/gkTMRNwHAD1oyRaYPIZ4B2ztVyOWN4OqWCGCHAEJHw8cj1RsNl2HmU=
X-Received: by 2002:a05:6402:3590:b0:640:a26e:3d86 with SMTP id
 4fb4d7f45d1cf-6479c445728mr6904308a12.1.1764902503427; Thu, 04 Dec 2025
 18:41:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203164259.GA3838993-robh@kernel.org> <CAHk-=wi+ge-gtCg+iLd6dgjisGchjtsKY8AXG9tXGOxqVv8Fkw@mail.gmail.com>
In-Reply-To: <CAHk-=wi+ge-gtCg+iLd6dgjisGchjtsKY8AXG9tXGOxqVv8Fkw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 4 Dec 2025 20:41:31 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Aak6NVOwiaL7ZZKzrV=_Qvf7ow_bMctzh7Rppm+xQSA@mail.gmail.com>
X-Gm-Features: AQt7F2qI8fIRJuH3xYc3tFaYcl4SfcZx5wsVONYSIzTvDnrFaoU69izIXtkKXGc
Message-ID: <CAL_Jsq+Aak6NVOwiaL7ZZKzrV=_Qvf7ow_bMctzh7Rppm+xQSA@mail.gmail.com>
Subject: Re: [GIT PULL] Devicetree updates for v6.19
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 4, 2025 at 6:25=E2=80=AFPM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Wed, 3 Dec 2025 at 08:44, Rob Herring <robh@kernel.org> wrote:
> >
> > - Ensure all .dtbo targets are applied to a base .dtb
>
> Bah. I pulled this and pushed it out, because it all looked fine on my
> usual x86-64 targets.
>
> But when I build on arm64 (either allmodconfig or my local config),
> this results in
>
>   scripts/Makefile.dtbs:20: .dtbo is not applied to any base: rp1.dtbo
>   scripts/Makefile.dtbs:20: .dtbo is not applied to any base:
> mt7986a-bananapi-bpi-r3-emmc.dtbo mt7986a-bananapi-bpi-r3-nand.dtbo
> mt7986a-bananapi-bpi-r3-nor.dtbo mt7986a-bananapi-bpi-r3-sata.dtbo
> mt7986a-bananapi-bpi-r3-sd.dtbo mt7988a-bananapi-bpi-r4-emmc.dtbo
> mt7988a-bananapi-bpi-r4-sd.dtbo mt8395-radxa-nio-12l-8-hd-panel.dtbo
>   scripts/Makefile.dtbs:20: .dtbo is not applied to any base:
> k3-am62x-phyboard-lyra-gpio-fan.dtbo k3-am62-lp-sk-nand.dtbo
> k3-am642-phyboard-electra-gpio-fan.dtbo
> k3-am642-phyboard-electra-pcie-usb2.dtbo
> k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtbo
> k3-am642-phyboard-electra-peb-c-010.dtbo
> k3-am6xx-phycore-disable-eth-phy.dtbo
> k3-am6xx-phycore-disable-rtc.dtbo
> k3-am6xx-phycore-disable-spi-nor.dtbo k3-am6xx-phycore-qspi-nor.dtbo
> k3-j721e-evm-gesi-exp-board.dtbo
>
> for me, and I did *not* try to dig into why.  Please fix.

Sorry about that. It's being worked on. The k3 ones are fixed in the
arm-soc tree. Fixes for the other 2 are waiting on the platform
maintainers to pick up.

Rob

