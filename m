Return-Path: <devicetree+bounces-277265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJmmJMeyumlWawIAu9opvQ
	(envelope-from <devicetree+bounces-277265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:12:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFAC2BCCCB
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:12:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 730D631CEEFA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 292E53D9DAD;
	Wed, 18 Mar 2026 13:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzEev1sT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0664C3D9DCD
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773842094; cv=none; b=Su8kX59R6ak73OnLXqaqpMKr8AKBTqNs1FdmYqgBtqR2AbXDINRAOeHSzVm6OtkuvBNLJ/hBH3RG/jXZivsTZ7kIdKwBszJAyQI5TDhMAYpvihQBrlnBr3+Yt//SoHZv3wAyUaWorhydPJNl1o7p040m4exyjI+LNwh5OfTpk/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773842094; c=relaxed/simple;
	bh=UvzEZ/uLgrl9NDF/Qan/mdqTQ9JfJbGQ1y0WmfWlBig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k1NyvGGwCpvlj3RuUGXpLAS3Ep/lzBLTn/sRfwTM0JNoPxQ4563ahaG7lylQK/ZYXODn63MgNbqxpO+EsVYulXtXMMzDKeZNftezp5Qj3JcqNlj2/xnVgfMTdd7AwsptjY4B8svBMX4F+seeXhfvK68JNhlXOG1irKIKgNHwMSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzEev1sT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C66BBC2BCB9
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773842093;
	bh=UvzEZ/uLgrl9NDF/Qan/mdqTQ9JfJbGQ1y0WmfWlBig=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=VzEev1sThSUMRGSlL1RFOBEWGNrm7NnPLi5tGILenp2Fn3BxkYPJiINj76qWdEM8k
	 x1dF2tO3humnvFdJ4vT/eALxostC7uiji7IuMZAXQmIMR/UDxEM+yfTEv17c0gzZky
	 +2gi2HrLJ/HYn/rrbeHNyzS8giq4vBZtxE42N8+Z1RTRhYMeELMP+wnmuiF6rqRVtm
	 NGcpC2OHfJafDWJzCJ/sYahPKfS1NnUy29f9H0jIfd/pl++2n7aUgT+U6WbARuIaKT
	 m24QaDoUiDDztf17W/dCJlsLhdj5IuwW3MWd7XABOA/pIevgGT8AjvXafOhVAea8Zn
	 LCgk+Prmy+RXQ==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5a27bfadca9so561408e87.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:54:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUKz2SPgdH7lWK5NN826LDN2NjCw0dcZkbxjO1TIa3F7NnDRLnafh36JHGG/9GIPv3UCEbCYzwPg6CS@vger.kernel.org
X-Gm-Message-State: AOJu0YzDjoJAeaTRO0UBMHiL9Rg/XapNcmAywxgoMpKy+GTC0QEnXphI
	Z+ENFXxs6zTmT9d1Ztx64irXui6NNfZCa1L3NO3BC/wXENwVwqx2WTw+8hBxS4h9BeLdKbrta5+
	Mul4Qy8k4yk1gw9Yr9x7ahbEzvpcYcG0=
X-Received: by 2002:ac2:50b9:0:b0:5a1:3485:1c29 with SMTP id
 2adb3069b0e04-5a279597e2emr1044745e87.6.1773842091908; Wed, 18 Mar 2026
 06:54:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317184507.523060-1-l.scorcia@gmail.com> <20260317184507.523060-10-l.scorcia@gmail.com>
 <c1a425ba-a4ca-49ea-9660-5de74bede124@collabora.com>
In-Reply-To: <c1a425ba-a4ca-49ea-9660-5de74bede124@collabora.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 18 Mar 2026 21:54:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v64+oofwTiJTXDYCuzUEpk=zioi16i8a7iMimc_eZ1RPUQ@mail.gmail.com>
X-Gm-Features: AaiRm50qgpWw6pso0fmDKuVqzybTij2WNFJYFTn7FlTu4OnRbnNdG68B7V1oZ0w
Message-ID: <CAGb2v64+oofwTiJTXDYCuzUEpk=zioi16i8a7iMimc_eZ1RPUQ@mail.gmail.com>
Subject: Re: [PATCH v3 9/9] arm64: dts: mt6392: add mt6392 PMIC dtsi
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>, linux-mediatek@lists.infradead.org, 
	Val Packett <val@packett.cool>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Linus Walleij <linusw@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Gary Bisson <bisson.gary@gmail.com>, Julien Massot <julien.massot@collabora.com>, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, Fabien Parent <parent.f@gmail.com>, 
	Chen Zhong <chen.zhong@mediatek.com>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,packett.cool,kernel.org,mediatek.com,collabora.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-277265-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,packett.cool:email]
X-Rspamd-Queue-Id: EAFAC2BCCCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 8:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 17/03/26 19:43, Luca Leonardo Scorcia ha scritto:
> > From: Val Packett <val@packett.cool>
> >
> > Add the dts to be included by all boards using the MT6392 PMIC.
> >
> > Signed-off-by: Val Packett <val@packett.cool>
> > Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt6392.dtsi | 141 ++++++++++++++++++++++=
+
> >   1 file changed, 141 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt6392.dtsi b/arch/arm64/boot=
/dts/mediatek/mt6392.dtsi
> > new file mode 100644
> > index 000000000000..fbf6f671524c
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt6392.dtsi
> > @@ -0,0 +1,141 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2019 MediaTek Inc.
> > + * Copyright (c) 2024 Val Packett <val@packett.cool>
> > + */
> > +
> > +#include <dt-bindings/input/input.h>
> > +
> > +&pwrap {
> > +     pmic: pmic {
> > +             compatible =3D "mediatek,mt6392", "mediatek,mt6323";
> > +             interrupt-controller;
> > +             #interrupt-cells =3D <2>;
> > +
> > +             keys {
> > +                     compatible =3D "mediatek,mt6392-keys";
> > +
> > +                     key-power {
> > +                             linux,keycodes =3D <KEY_POWER>;
> > +                             wakeup-source;
> > +                     };
> > +
> > +                     key-home {
> > +                             linux,keycodes =3D <KEY_HOME>;
> > +                             wakeup-source;
> > +                     };
> > +             };
> > +
> > +             pio6392: pinctrl {
> > +                     compatible =3D "mediatek,mt6392-pinctrl";
> > +
> > +                     gpio-controller;
> > +                     #gpio-cells =3D <2>;
> > +             };
> > +
> > +             rtc {
> > +                     compatible =3D "mediatek,mt6392-rtc",
> > +                             "mediatek,mt6323-rtc";
> > +             };
> > +
> > +             regulators {
> > +                     compatible =3D "mediatek,mt6392-regulator";
> > +
> > +                     mt6392_vproc_reg: buck_vproc {
>
> s/buck//g
>
> Also, no min/max voltages?!

We really shouldn't set min/max voltages in the PMIC dtsi file.

The min/max voltages are supposed to be the intersection of the
consumers acceptable operating ranges. The min/max of the regulator
itself is already implied by the model / compatible.


ChenYu

