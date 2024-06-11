Return-Path: <devicetree+bounces-74748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 248F990455F
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 21:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B44DEB24F19
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 19:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7DE14EC6B;
	Tue, 11 Jun 2024 19:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PnXcY8us"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0223D1CF90
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 19:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718135689; cv=none; b=NIHfTGOUqkg4a95D35KPkeYfOlwh98QykLpRodh9YpDKmabtxqUBqfj2DezWrNFj3WX4yMkHsjiiNyflLPxURLOubwQVIlqRi19NRURqLY3o01KtxYCqGrmH3TAsYx4MAspKICrMgfjFDlnfBYgkRm2114n+IjSCy8xVJ+xjKck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718135689; c=relaxed/simple;
	bh=O3S4SqxKJuq65ixR6NFs+aq0BeZOfIVXLriWHF/QL8E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iHTQ3TcNooBb8pU6+GC49Uc1DCtSOYMpp0MJVShL3y1pOZsZoh+efFb5ECn124ytTYrXdEYzmttrAz82gQwSkif6DWDzp98+ZHQ2L7QpbFYYSsDjMmK534cxNdNr/OvrYl4E2NRfPbDhYlmZJy2A/7meUDxLAXJ6zY/gRWhkZU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PnXcY8us; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6adc63c2ee0so7078286d6.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 12:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718135687; x=1718740487; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNrWLh5pDrgjmfiNgHyxdrCGyjR6btn9eS9/sI9Y3EA=;
        b=PnXcY8us7rbvdHKo3AZYi20OjRrkhe/lIoXZpgCZCJcQ31DYXm30yT9sBbKpTB2glf
         1m6sstLQ4HinncYkm9JZ+ZYSMKQqM8x+YvxLzeSuSmgoDTaa4Nhvu2zRFNdT84ELVa3N
         rjDikk8NPGQi2GpL+Eodj9rtYTJuDA38fqk3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718135687; x=1718740487;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RNrWLh5pDrgjmfiNgHyxdrCGyjR6btn9eS9/sI9Y3EA=;
        b=WQpMQWxEYG8LLjT7qcB1XlDVaz6bpEN6sPTTpnzUbE+eVxcC8szAYZPQMWuDKUnXhr
         pEkUiba3jAWKIxP6PHYNHSGIigiss4y2N/yS05o3Z43Oj2PVO3mpTgWPAYVdINrtRw9X
         V8B3peGJc4TAlu75bEw2oGuC6YxsVUGIKjW5m/SOB9PCGm/i9dO2LPBnlTGA5hq1UWFB
         qwnBEXDYN1/940RjR0hncTTAtFgDCCgjwvBGbCLja1ObdE3Tan9oOTLXvrZyztydRh3S
         ZOjrXkXQR+I6reoVrZ6zpqVjz47RyO3hoBuuz3WCVm7kedDMWDUvG1kavr40La+l4826
         t3sw==
X-Forwarded-Encrypted: i=1; AJvYcCURVMw0Y4WtLMjOtSzyzjzU1BTQNioQd1dfJuy6ukJkN1Cu9vVOBXnOuyrbTTANVXlCbhUMjawYPZBFkIdIQcgsMNwbdJ3oXoC98Q==
X-Gm-Message-State: AOJu0YxEEIYsNqiytHnf/2wbTK8PaLFi1gKNlOOtCt4TGQqwRqLPS+GD
	uO/QVUHgt1sy4Esc7fJyxwjFDschPOxz9m7psVdEmQLGaS0pr6XFTPSDIUn3ISSPdBkGhbNFipD
	eHWYM44npG7qCP2bdnUHDcnOfAfY8M7ns5rqE
X-Google-Smtp-Source: AGHT+IFvFFS+p0ENsd/HPIpBlUzp5GE7bmBWQg7D/rboticCoYDIMBRckbCHxZOMBSm/Vyk4tjoFWEurXjo+EuHWZBU=
X-Received: by 2002:ad4:42cc:0:b0:6b0:8b48:f7e5 with SMTP id
 6a1803df08f44-6b08b48f99bmr33081746d6.3.1718135686798; Tue, 11 Jun 2024
 12:54:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605094843.4141730-1-wenst@chromium.org> <CAFLszTjX=ixC3pRRGJeaP=ie_yc+KcCRyQ06MBFeSZnBepaXaw@mail.gmail.com>
 <CAGXv+5EcEYGqXq2C1OCK4J4t1NusV7nWp16zb74P6_tCeLnSGw@mail.gmail.com>
In-Reply-To: <CAGXv+5EcEYGqXq2C1OCK4J4t1NusV7nWp16zb74P6_tCeLnSGw@mail.gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Tue, 11 Jun 2024 13:54:35 -0600
Message-ID: <CAFLszTgseCkdueMv=rCh6VaSD23K0dEm-oF9dVU3kQ7ZcEbnXw@mail.gmail.com>
Subject: Re: [PATCH] scripts/make_fit: Support decomposing DTBs
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nicolas Schier <nicolas@fjasle.eu>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Elliot Berman <quic_eberman@quicinc.com>, Devicetree List <devicetree@vger.kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 11 Jun 2024 at 02:52, Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Mon, Jun 10, 2024 at 11:16=E2=80=AFPM Simon Glass <sjg@chromium.org> w=
rote:
> >
> > Hi Chen-Yu,
> >
> > On Wed, 5 Jun 2024 at 03:48, Chen-Yu Tsai <wenst@chromium.org> wrote:
> > >
> > > The kernel tree builds some "composite" DTBs, where the final DTB is =
the
> > > result of applying one or more DTB overlays on top of a base DTB with
> > > fdtoverlay.
> > >
> > > The FIT image specification already supports configurations having on=
e
> > > base DTB and overlays applied on top. It is then up to the bootloader=
 to
> > > apply said overlays and either use or pass on the final result. This
> > > allows the FIT image builder to reuse the same FDT images for multipl=
e
> > > configurations, if such cases exist.
> > >
> > > The decomposition function depends on the kernel build system, readin=
g
> > > back the .cmd files for the to-be-packaged DTB files to check for the
> > > fdtoverlay command being called. This will not work outside the kerne=
l
> > > tree. The function is off by default to keep compatibility with possi=
ble
> > > existing users.
> > >
> > > To facilitate the decomposition and keep the code clean, the model an=
d
> > > compatitble string extraction have been moved out of the output_dtb
> > > function. The FDT image description is replaced with the base file na=
me
> > > of the included image.
> > >
> > > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > > ---
> > > This is a feature I alluded to in my replies to Simon's original
> > > submission of the make_fit.py script [1].
> > >
> > > This is again made a runtime argument as not all firmware out there
> > > that boot FIT images support applying overlays. Like my previous
> > > submission for disabling compression for included FDT images, the
> > > bootloader found in RK3399 and MT8173 Chromebooks do not support
> > > applying overlays. Another case of this is U-boot shipped by developm=
ent
> > > board vendors in binary form (without upstream) in an image or in
> > > SPI flash on the board that were built with OF_LIBFDT_OVERLAY=3Dn.
> > > These would fail to boot FIT images with DT overlays. One such
> > > example is my Hummingboard Pulse. In these cases the firmware is
> > > either not upgradable or very hard to upgrade.
> > >
> > > I believe there is value in supporting these cases. A common script
> > > shipped with the kernel source that can be shared by distros means
> > > the distro people don't have to reimplement this in their downstream
> > > repos or meta-packages. For ChromeOS this means reducing the amount
> > > of package code we have in shell script.
> > >
> > > [1] https://lore.kernel.org/linux-kbuild/20231207142723.GA3187877@goo=
gle.com/
> > > [2]
> > >
> > >  scripts/Makefile.lib |  1 +
> > >  scripts/make_fit.py  | 70 ++++++++++++++++++++++++++++++------------=
--
> > >  2 files changed, 49 insertions(+), 22 deletions(-)
> >
> > This is a clever way to discover the included files. Does it need to
> > rely on the Linux build information, or could this information somehow
> > be in the .dtb files? I had expected some sort of overlay scheme in
>
> (+CC DT folks and mailing list)
>
> I suppose we could make the `fdtoverlay` program embed this data during
> the kernel build. That would keep the information together, while also
> having one source of truth (the kernel Makefiles). Whether it belongs
> in the DTB or not is a separate matter.

OK, well we can always look at that later.

>
> > the source, but perhaps people have given up on that?
>
> I wouldn't say given up, since we haven't agreed on anything either.
> Elliot had some concerns when I brought this up earlier [1] though.

OK.

Regards,
Simon

>
> ChenYu
>
> [1] https://lore.kernel.org/linux-mediatek/20240314113908471-0700.eberman=
@hu-eberman-lv.qualcomm.com/

