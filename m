Return-Path: <devicetree+bounces-240218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 78982C6EB4C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 14:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BA75E35420C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B728733C50D;
	Wed, 19 Nov 2025 13:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJhuBq90"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0AD3009E7
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763557277; cv=none; b=EXnQL9MQO9JtTeU0d9GceEcmJaccLaTDQLdMhRhs7GjvQWkIcBEHPu9fFhtrMfENiuW3DWzOzwqHgPIved7ePNaHDd0IqHdVPEVEvmNG3kj+1w7g6Dqnwr/xj9B4n0XridAtdedo3vYYUSBUv8Q4Gt81Y7zAg4oRGBqGYO8HLbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763557277; c=relaxed/simple;
	bh=eH934FPkcFZsDsZ+8WMIiblkJpGaRFveAvHRwpG5vZE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DRZ6TRYe2EMRojJwzxvZ/RMYQ3lBGY0PuQIR4aew+Hr3OvCbp8riPweADfMw6HNoT93G4FbU16OM1mKP3cFhkj6NpQxdBlv1ZLIjUXOCJ1di5Ta4LJXwKLXnm7OPhjJcb+0B/LaiBVK+AsnGhOIhUjBHAA2qr4sy+uPLgIXi6M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJhuBq90; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27027C4CEF5
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 13:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763557277;
	bh=eH934FPkcFZsDsZ+8WMIiblkJpGaRFveAvHRwpG5vZE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=kJhuBq90hbnrfjiLIEnrjlGYvgfFVzKoxLuJc0sHUzU3vc2lkabxmi9+JI3QbNyxq
	 TlBoSy+epAskTx06hyCGZO3B7HI/xn1JL4Aeg6q9J0Th02CbQENDBYYJ5859w4UmS3
	 dQqIzF1Ne7DoIp/n8iYSZlcsYsQIKVBKbqjKXos2xI8kBGISw+F7/XrEpuiyw5OQQX
	 A6D1STew66Dl2Bm2EDabPrbwfcCx69NyLuOg2Flxjl1ImGl3IaHJEwLRFXCMXc+mFJ
	 z/kbv0wSthpCY9fkUXoiHU4ALQmstFiTfveoCoi30LU4TXU4JXzxsyGFk9vsSXEVZm
	 HxlcsW6MmWFzw==
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-640860f97b5so10582396a12.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:01:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWXmm6bLyv0Bll7nxiUz9QHDMDWqq1HgVO7cEB7Ks9zc/lj2Bbd0HWXn//YTJw0RcXxYN2s4V7rcbOo@vger.kernel.org
X-Gm-Message-State: AOJu0YyV3CMAX4vAFIftlju0pNSh307kMMQq+qWXjAaUOgBabqBxaoZR
	7Mx4hty2LwZftOQTrXVfGhHFQIJ8+mw3yTUTUPZ8WXCPmHj3KbfX+bKIvC51DDUEASguHYINgBB
	jovBl+5gE7Os6TLtm35Roqh8G/22zYw==
X-Google-Smtp-Source: AGHT+IEGTDYC90AsYi97BZnIB9BW3G+p/VlGw5hEVN7/6LImP73EZAq1WJ9UEaSQR4uzxHPiWCGEsrS4Y4GhSjMkTdk=
X-Received: by 2002:a05:6402:2355:b0:643:4e9c:d164 with SMTP id
 4fb4d7f45d1cf-64350e050eamr18399479a12.2.1763557274937; Wed, 19 Nov 2025
 05:01:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117211306.725678-1-robh@kernel.org> <679c1f30-7c62-484e-b4e5-7351a23f15e5@collabora.com>
 <CAL_JsqK4jvZQTQAXCjPgxBCUiENGKgkgaDgZ680QqL1XpS6bbw@mail.gmail.com>
 <trinity-dfca2931-a7e8-4b33-b722-c22105569d82-1763485361461@trinity-msg-rest-gmx-gmx-live-56d984c6fb-85gcg>
 <bd64ace0-b4c5-46e0-870b-e62f950f4199@collabora.com> <81BC8F8F-91A2-4414-9847-292D974042B6@public-files.de>
In-Reply-To: <81BC8F8F-91A2-4414-9847-292D974042B6@public-files.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 19 Nov 2025 07:01:03 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+2ZoYYUiZF=ZXdM86Mh=zofnr8-v6hMc6mVwW0G7aTqg@mail.gmail.com>
X-Gm-Features: AWmQ_bnPhPA-Qi7HZmObYeKlsTJrM8CGadg676OBl4gMqQ4WRjkk7EtLhmc-KQ4
Message-ID: <CAL_Jsq+2ZoYYUiZF=ZXdM86Mh=zofnr8-v6hMc6mVwW0G7aTqg@mail.gmail.com>
Subject: Re: Aw: Re: [PATCH] arm64: dts: mediatek: Apply all DT overlays at
 build time
To: frank-w@public-files.de
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, matthias.bgg@gmail.com, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 3:26=E2=80=AFAM Frank Wunderlich
<frank-w@public-files.de> wrote:
>
> Am 19. November 2025 09:39:07 MEZ schrieb AngeloGioacchino Del Regno <ang=
elogioacchino.delregno@collabora.com>:
> >Il 18/11/25 18:02, Frank Wunderlich ha scritto:
> >> Hi,
> >>
> >> this looks similar to my attempt i did here
> >>
> >> https://patchwork.kernel.org/project/linux-mediatek/patch/202406080805=
30.9436-2-linux@fw-web.de/
> >>
> >> But in my case i added full dtb with 2 overlays as there can be 2 devi=
ces (1 mmc + 1 spi) at one time.
> >> So usable as dtb for bootloader config without overlays, not only for =
validation...
> >>
> >
> >Please don't top post :-)
>
> Sorry for that :(
>
> >That said, for the target of what is done here, I think yours is nicer t=
o the eye
> >compared to Rob's (not his fault at all, most of the times overlays cann=
ot be
> >applied together, he can't possibly know if that is possible in this cas=
e).
> >
> >If there is really no other solution to that... well, at this point I pr=
efer to
> >have something nicer to the eye, with all of the necessary "evil" that c=
omes with
> >it.

Use 'dtb-' if you don't want to keep the targets (or can't agree if
you want to keep them or not).

> If my version is ok for rob (afair he did not replied on that yet),i woul=
d resend it again with similar for R4 and R4Pro.

Yes, please do.

Rob

