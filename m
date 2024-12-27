Return-Path: <devicetree+bounces-134378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 846469FD526
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:13:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D62C3A1291
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF0A1F4734;
	Fri, 27 Dec 2024 14:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="0+fgf+nP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B261E485
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 14:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735308793; cv=none; b=RqKHoSsFQQzxyguaK7MxyqPFpFru8e6w9Y7+bKAKCqyJ9P+j4MvYK56+siPORvu8YioYHj+KK0zml2cdhNoZ3eJoBiNEGYjcybLVp02hXs2qpeuDsRxQH6ElhxDC9wyfksi9FL7CjZfjWQgfC5xJTuyjbu/Ab07kfxrtRX3Xkrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735308793; c=relaxed/simple;
	bh=RH2izFwJO1kHN9UqR3ZWpCmPENLRLo7KYBt0RKtV9qw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U0OnnI5V4bIgIoQ251pWfypAigOHzdc7bPf3/WmXNLh8qtqCQvpoTNFIW7acBVplbYY4SG0RNJ28TYswmd8VzkbrD106/584kD/eKj7JQId3otSmlb3T+voVxjG0doUla2ucCHidbSe6X+aTc6ODSnrGJqpskKujFlTTHloLmAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=0+fgf+nP; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2164b662090so78676955ad.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 06:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735308791; x=1735913591; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6HZwM074YdHmbBq0k6H05befZoQf1QFgqWA3jYb89v4=;
        b=0+fgf+nPzMGTXz4lIAmiT8cGXiD7uQF3ONqwDDc96KLF5+/kmWkSctevncrYwCxoPe
         pxTnaVLleeqWVr/H30Y9gCGnol8P0RW0cZqHy1A6XB99SCCl/Asm9/d6omIzLhfPAwll
         4oVudshV8N1AxFnIOyg9XlDEqqNrygXcn6sKbgiIrWDK+vIm0dQ+Kv+cA9zv7KXYmSJ6
         qkpsDyBpjdpb/CbTdQeQnX5Eb8gdHaC1PBzT35OBW8TgjDDNqZfoiZ7n5aayWFW2pinP
         J8LyMAbqt3bYtRMdj5lTdXfHMQU4AgQSfTZwlRed+/jTfDc8uhL2CyuoplMIYWtgsiOe
         tOqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735308791; x=1735913591;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6HZwM074YdHmbBq0k6H05befZoQf1QFgqWA3jYb89v4=;
        b=NXKXK6LVmMUhmWuEvqJaGNOU5I6Zpz9oBe00oriWkYigOWHcKzlSPUEiDllYn7flnu
         /Ssl5b7vXzDTmfQPk35wGGecGG5lWj0C68wKqhhfYlh3VZav9jv8/NaUMvdttjiFsFQw
         cSsogaQgS+wefptA4emMAUp++oLYrnFqMWz6IRLxmh949nbF2zZbxSUUt4eICCiaLjF8
         8qgWv1NMxZBWYrhEbtHypIsxoqGDX3dFK2ld+SCn80i8c3+KpimjpPJEM4UUnBv8a6F3
         Rtp/vUleGxEZBEOeoPXC89JpOJ5uT9NUOE2x6gXbjSHtoKC2SqnJntc0escuRFRNLejR
         fArw==
X-Forwarded-Encrypted: i=1; AJvYcCWYAZOVOuNfRaIdhPaqNHLQFrgh+OUJPPZRmfJs1UrR0l91J6GG/e1dhDXo8H5ZCEx1+F1I9fmx2UnZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzrG8po4t7wQhaH9UyMLLvy60MvPI9GAhSieXJvgQCil1bJLQ/T
	FgdVToKGuDOp0S5A6Z87EdZuXEmMIMaQvsiszEmlVyHY6N2OiumvDQsjVO0gY1ta2QoUTUFxEbD
	oCBN8QbhZ86ScUYhoEQ1PkK2QP1Mz8+7Ch4kcRA==
X-Gm-Gg: ASbGnctSffmNb3/JcecYmJt1NPZo/gml3/8WtyJ+kPFRBkV8NWlJKkzwxzlTRzQ1ytR
	LdGKAUx4iLRZwdbS97uOZ2bwtUCMy6Gnkpm+5
X-Google-Smtp-Source: AGHT+IGwRttyOVlXZ4AOH109cli3Ic52EUSjmxRCKHx0nJtVDCigH5HefL9ERaeM+pDyuFAlbW6LgVEVHuDlh8T9ZWs=
X-Received: by 2002:a17:90b:53c5:b0:2ee:74a1:fb92 with SMTP id
 98e67ed59e1d1-2f452dfd236mr37291584a91.6.1735308791255; Fri, 27 Dec 2024
 06:13:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241227133420.169714-1-jagan@edgeble.ai> <8f40821508fde291aab01674618c0a2c@manjaro.org>
 <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
In-Reply-To: <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 27 Dec 2024 19:43:00 +0530
Message-ID: <CA+VMnFwjbXbjb5nP6FBASOr0Tz+nSNTx0OoQu31xtLHkoWgE_g@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
To: Dragan Simic <dsimic@manjaro.org>, Kever Yang <kever.yang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 27 Dec 2024 at 19:37, Dragan Simic <dsimic@manjaro.org> wrote:
>
> On 2024-12-27 14:48, Dragan Simic wrote:
> > Hello Jagan,
> >
> > Please see a comment below.
> >
> > On 2024-12-27 14:34, Jagan Teki wrote:
> >> Rockchip RK3588M is the automotive-grade version of RK3588 SoC and
> >> is operated with -40 =C2=B0C to +85 =C2=B0C temparature.
> >>
> >> Add rk3588m specific dtsi for adding rk3588m specific operating points
> >> and other changes to be add in future.
> >>
> >> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3588m.dtsi | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> >> b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> >> new file mode 100644
> >> index 000000000000..0bbeee399a63
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> >> @@ -0,0 +1,7 @@
> >> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> +/*
> >> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> >> + *
> >> + */
> >> +
> >> +#include "rk3588-extra.dtsi"
> >
> > I don't think we need or want a separate rk3588m.dtsi file for this
> > purpose, unless the RK3588M variant actually differs from the regular
> > RK3588 variant from the software standpoint.  The latter is already
> > described in rk3588.dtsi, so it should just be included in the new
> > board dts(i) file.
>
> Actually, after having a look at the downstream code, it seems that
> the RK3588J and RK3588M variants share the same OPPs, so actually
> rk3588j.dtsi should be used for the RK3588M variant.  Could you,
> please, confirm this?
>
> Alas, it seems we've got some serious issues in the OPPs currently
> defined in rk3588j.dtsi, which I'll double check to make sure I'm not
> going crazy, :) and submit a patch that fixes those OPPs.
>
> If you could confirm the RK3588M =3D=3D RK3588J assumption above, I can
> add some additional clarification to the rk3588j.dtsi file in the
> above-mentioned fixes.

As-far-as-i-know both OPPs were different due to computation grades J
for Industrial and M for Automotive. What I saw from downstream
linux-6.1-stan-rkr1 was a simple dtsi for M variant and might have
changes to add OPPs which I cannot be sure at this point of time. I
keep that dtsi as separate even though it is nothing as i was
expecting some future changes on OPPs or so.

Kever or Heiko can help here.

Thanks,
Jagan.

