Return-Path: <devicetree+bounces-226560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 555F1BD9B0F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6505E19A4739
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 13:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6840931A81B;
	Tue, 14 Oct 2025 13:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXa2jQeq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433F61C84AB
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 13:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760447555; cv=none; b=px8Pa5w71EMYox6Wx60VIW/MP8V6ajPtAMhcSUleJLlJAnj7ttfiqgCAJRwHeBmAgf8TfYF2CnXwQE1MhjdXX3da06125RnKu5cJxmXZKhx1+6KICOJGy0iKV9VzH4jkcXDcrNTg2kzZuCNC6zg8BPW531ZScHP18cOtrSQx5Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760447555; c=relaxed/simple;
	bh=QFnSQNVnmbppzXkC2XRA91NiJLnNXVI8rLsVd5m1GNg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pAT6ovRSZbkQdXBwhvzfv5u2CtiRvDfyJxVZ15xExRsn9YxFnEm0oXxvVYO9kSIB/hphPxpqQD/bdfQ389F5ziVNCVuL3u5HAofGBjhS9BShy5kcasBeCEr54Ye7Y6yqoc4CJoP3b36G9ws5OlROf54yfNgGGdWklFzwddGAA98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXa2jQeq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4355C4CEE7
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 13:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760447554;
	bh=QFnSQNVnmbppzXkC2XRA91NiJLnNXVI8rLsVd5m1GNg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hXa2jQeqElzUsrt2eTJCLcktwtJCG1zeWTRX/aaYZs2jZbvJCUAsKlmQlQpqEp/nl
	 s11/j/bFgGjTGdJzIgGnKfqqiFdjzkkNQx4Iw1tM0SXMPdkupY8grHwSr6kD4ohalI
	 bqDHlwsnTJGOrJZxEF06UpdeGlCrnG5oInlihx1PRPj6bRYIy8iOTPRw7BjelLHo5E
	 eke77XK7DeqO0dKaPrXmp6ffgDYC4zB49t4kNGgoq4U+VRE1c8T943wHfu7RVDeEMK
	 gaeKSsxhXpH89IRrnKS+b1mpa9aY2YYmgw+yS1GH1errhD0lDaozWTgbXa7VwG0j3F
	 +UVwY1shTctiQ==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b4f323cf89bso944977066b.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 06:12:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVRf8Goy0RJJEAYQLXAgUVs4JVzdHf96RUvhTQve7Kej+5U1x3q1pVgIw5qx8ChH2eKIBxYK6FSzGSS@vger.kernel.org
X-Gm-Message-State: AOJu0YyyFXqvO7Zj4xB3Rj2q8WeGdO5sEgfc46MSlCapVrACdNk0vjHB
	1sArnKUbKRR3NFDBsA8MYzTGVdkYvmxxmLDnPxixmoyxxXtcef4uVknkBGBjXegbLCGHjre0r6E
	ga/eTCKoEWktR5ST/33KFSgiMyDGCuA==
X-Google-Smtp-Source: AGHT+IGsJ5mlS/YVwM+vM4vUNcis/Lpeibt66VkyU1cojP+XjSHkLgdQNSY7YIrDO2Y257jUQZ5G/ZZfC/6hKlv/M2A=
X-Received: by 2002:a17:907:86a6:b0:b41:b5df:89bd with SMTP id
 a640c23a62f3a-b50a9d59b0amr2304467666b.6.1760447553398; Tue, 14 Oct 2025
 06:12:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014073403.32134-1-andrea.porta@suse.com>
In-Reply-To: <20251014073403.32134-1-andrea.porta@suse.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 Oct 2025 08:12:19 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+CugQrswhOWntK5RiRBSKkWRNUoB0pB8HoKPmym2e65w@mail.gmail.com>
X-Gm-Features: AS18NWBxSlE1MIFfxKZocAw0TW5odVLSrIWfdH6uZsYqXyXxkwsnQLdsG7pb7xo
Message-ID: <CAL_Jsq+CugQrswhOWntK5RiRBSKkWRNUoB0pB8HoKPmym2e65w@mail.gmail.com>
Subject: Re: [PATCH] of: reserved_mem: Add heuristic to validate reserved
 memory regions
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, iivanov@suse.de, svarbanov@suse.de, 
	mbrugger@suse.com, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 2:32=E2=80=AFAM Andrea della Porta
<andrea.porta@suse.com> wrote:
>
> When parsing static reserved-memory DT nodes, any node with a reg propert=
y
> length that is not perfectly conformant is discarded.
> Specifically, any reg property whose length is not a multiple of the pare=
nt's
> (#address-cells + #size-cells) is dropped.
>
> Relax this condition (while still treating perfect multiples as having hi=
gher
> precedence) by allowing regions that are subsets of the parent's addressa=
ble
> space to be considered for inclusion.
> For example, in the following scenario:
>
> / {
>         #address-cells =3D <0x02>;
>         #size-cells =3D <0x02>;
>         ...
>
>         reserved-memory {
>                 #address-cells =3D <0x02>;
>                 #size-cells =3D <0x02>;
>                 ...
>
>                 nvram {
>                         reg =3D <0x00 0x3fd16d00 0x37>;
>                         ...
>                 };
>         };
> };
>
> Even though the reg property of the nvram node is not well-formed from a =
DT
> syntax perspective, it still references a perfectly valid memory region o=
f
> 0x37 bytes that should be reserved.

No it isn't. I could just as easily argue that the reserved size
should be 0x37_00000000 because it's BE data. I have little interest
in supporting incorrect DTs especially generically where we have no
clue what platform needs it and whether we still have to carry the
code. There's enough of that crap with ancient PPC and Sparc systems.

Furthermore, this looks like an abuse of /reserved-memory which should
*only* be holes in what /memory node(s) define. I don't think we
enforce that and I imagine there is lots of abuse.

> This has at least one real-world equivalent on the Raspberry Pi 5, for ex=
ample,
> on which the firmware incorrectly overwrites the nvram node's reg propert=
y
> without taking into account the actual value of the parent's #size-cells.

If we have to support this broken firmware, the kernel should fixup
the entry to be correct.

Rob

