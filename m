Return-Path: <devicetree+bounces-257800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHKLATGQcGkaYgAAu9opvQ
	(envelope-from <devicetree+bounces-257800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:37:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E58E53ABA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 162D07E7396
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FEA744D03C;
	Wed, 21 Jan 2026 08:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EHLWfJKa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A4D26ED3D
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 08:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768984196; cv=pass; b=BRf646uAYFxW+i1F+cU+QIiCvf/gUJcwxcjiARwFhFmQqsjOb1qhG6pKPcRcLP9q9bYTor2JaeD18zlNhit/ynueYHmQ0BIOAssS5q3v2dmmxmcOxcy7zzkJwE59okPkISxGZDrVaGcP/9k1W28d5XVfniMz6AOGvbHZJZ/79K0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768984196; c=relaxed/simple;
	bh=IYiLR/6ee2XqEtSUBEP2QD572evtL/NpvdANhUBe7g4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hllhY1hLx0DUzrWt00+EOpNo3NP4k0jZkIkGc7Z0J8Izr8uiKy1SRSE644O4jal8TnK/Y1r3/YMhuwLsuCxzGMlH2QLjjtBnkTyZY6FOQpnT7zW+ypDRoGaQ7cca79iN96pQOhTcsxgu66MqF6X2pAFmmOAnZhfk605NkBHeKVY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EHLWfJKa; arc=pass smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-12332910300so10558733c88.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 00:29:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768984194; cv=none;
        d=google.com; s=arc-20240605;
        b=SRQw3n9/1/wcMyAwoO4Qe3bBgr/DyjOtUf0IRUITWlY5+Gt+QbfSuGUgbqsaQgsbg5
         WGTnZlPUZhLD/fTGdS3ntDB+zgkcjppmAO+KkurskZ9BntoNbKibfYig1xfPm5Dhhf4V
         pGnSiQPvXEC9pU57IDucK1PQDi5dNpNqZYlw8vYVJad8nbIzjko4ZwH0M1MuKISu61lb
         fffuqWlyi+FNuIg/d4zRFaeHI1lUzwCn3skLQDQwj6q21a2fTPpo4UKex4lYcoSUAzVV
         KgUxSaP6Ztbjh4pqNiICu8P3BlJrDS4ooKvC0LUmPoCN9Bedft3BlJrLIm27Wn0iBSyk
         53jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7aI+GPwAH0BUEU90sHG77IoEanYx72AgVA1ohd1zcDk=;
        fh=3dBj/sGhHOZdIZJPeitrSOQddqGR7s/tD9D1WQD3Z1w=;
        b=i2zHjdOe9/9gnNM2V8Ys+cG5fX/tvR8KbHc1ySFvbxrtHE4R/nGn1kGrOU7fwyIu07
         Q9wkIVFH7tHVW3EAAeWmECCIbHZgfCFeyFRaPDZ/AHqllrdyoBHEGnECm95/1fKEpzDk
         ulBQfznV770m7auJ4w1AfbA7x9X/qVSWOhGICv4p2yJyRIPeakQ26125DfD6yJvLIJ3k
         qwWn1LxpdNC97ZWsCU9+Z01JqwgDRQc39r88gzNuW0tV7RsE7vhP9Jr5xLQFtOAbDJsr
         2Zy7UCnoMBWZMF2oSbFfhMP6tjgh3JTIM/PhCB6jYd2S0QEgowMD91w5znxhNHaKTQGT
         0RDg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768984194; x=1769588994; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7aI+GPwAH0BUEU90sHG77IoEanYx72AgVA1ohd1zcDk=;
        b=EHLWfJKaWXo/ndX0/+8Ql9ZdHr/Zg14eTSGWPcRuaVjpDUPVra37rUgw2QVZl5FFrd
         raGD5ShkwaakeN9MKuSJhJZ+7NG4Edn3jIjS0unMuwbYRtmZidU5NaCAH08cOndQZaNt
         McRTFGJ0y4HOuh4fNi4+0QY9LrcGYPP/3o/tyDLSgGYIj96VVbCrY0UL6BCqm8jUlyvE
         r2Lx4IgWesAHXSjLlI205BErkcXakfqbHegQN8GKK2x3bf/B313IJ5GI/v8brFMLXoYK
         fwenPeXrvDa6PYohy2qI4GKRRZVoVYxwmdyARPuHI7pqfPxlZ5Qi4DGbOkEbevlKWA3K
         BO4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768984194; x=1769588994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7aI+GPwAH0BUEU90sHG77IoEanYx72AgVA1ohd1zcDk=;
        b=ljERFOvJM29rUQBpzC9Bz0ySHDd+5/gu5vdQsKk4i1FzfsmF6lzL8AVwH2N2LoZofo
         bswrObgSfeAkfp/IMWzYqEnEdv2dn05mfn3V0ljYrjX1Fyd6JsM10SLh3GMdaXHO6Nny
         F1CP4p81kVGSekEmm9lRaRl2CYgEqvCvMS+aeVGLszoVwN3PBPdt82XisW6HL76VxJY3
         seOKo0vHitulQA2eP81f75mtr1kn7w0vpEyuWYzAje16efvD0/A9MLP8O58nDvQ47hie
         C4HRxNAD8H07y4p+rjMIxw00PNayFz9swPYh0aFlgGbJzyVAkrjMHkxDLT0oGv90qGyD
         q3vw==
X-Forwarded-Encrypted: i=1; AJvYcCXc4XVPceqRulThKX29UuwghNWQM+NjKjeGtBQc/pMnJ8dygocf0AXNKqOd3O4HYhg/F8pxVa6Pnbkp@vger.kernel.org
X-Gm-Message-State: AOJu0YxJrQ5ErycV7Vj+PM/lMHl8S+/JMfmKNPoTdbFLB7ReVWpdsrUD
	S1p99lPcxOs3jpfiNUkl6IEXQCr9xrqnTQexaXPSWX0iHQEzglaUSV35E4mBOWwijIyg4STIpWN
	0tGD2LWfHujnJFw0wzciECxi6bSebe7o=
X-Gm-Gg: AZuq6aICYpM+FJSbgGOnvtIP+Qk9AP9PPabjEjNccCmQ35DpGWN02HYyYe1wvQrqTVr
	4Bj334V/Vp2cH/SBDV1e6CPbRYfHR6OFZFlHSMwjclV1sS9W4hegN1LI8JSrqIFccYkMUET5woe
	iHci42oNPrzbRCgAY7HCc5wCvxBuUOAp4D1YPsTCtwA9lU0kp1hV8qsTBR+t2jjM+B+YKbsXpFy
	uoOeJ/wbFFTmmTTBlPZjxMU3dPDii5YSTVNkZUVydqV08wZrRu4faiqIPncAoiunAH5PsXfC01P
	Li17t5GajAiwQrti9VLgJOqLiy/QzFL4Zj6ONVBw3njNtvlOd+iS08tZ/UnU4Iuub10r4qkC3mu
	6y06vBeaS2Rqco/EWcHcB
X-Received: by 2002:a05:7022:4399:b0:123:348d:8576 with SMTP id
 a92af1059eb24-1244a6fb15amr13122314c88.6.1768984193944; Wed, 21 Jan 2026
 00:29:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120102604.1989725-1-sherry.sun@nxp.com> <20260120102604.1989725-2-sherry.sun@nxp.com>
 <aW+ullwMtDq0RpNt@lizhi-Precision-Tower-5810> <VI0PR04MB121146CD3EDDE9C4771B83A939296A@VI0PR04MB12114.eurprd04.prod.outlook.com>
In-Reply-To: <VI0PR04MB121146CD3EDDE9C4771B83A939296A@VI0PR04MB12114.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 21 Jan 2026 10:32:33 +0200
X-Gm-Features: AZwV_QiY0sD13-nX9UTIpSYPXU-DrhdabVw0h6HRC3hxGCNgeBaTfACxmKoz6Dw
Message-ID: <CAEnQRZAfRLL1c19WHbQjJfgZfQLQx6CaBYx7KW9wSmVzVa6Q+A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add i.MX93W EVK board
To: Sherry Sun <sherry.sun@nxp.com>
Cc: Frank Li <frank.li@nxp.com>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>, 
	"dario.binacchi@amarulasolutions.com" <dario.binacchi@amarulasolutions.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, 
	"Markus.Niebel@tq-group.com" <Markus.Niebel@tq-group.com>, 
	"matthias.schiffer@tq-group.com" <matthias.schiffer@tq-group.com>, "y.moog@phytec.de" <y.moog@phytec.de>, 
	"josua@solid-run.com" <josua@solid-run.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, 
	"primoz.fiser@norik.com" <primoz.fiser@norik.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257800-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,amarulasolutions.com,ew.tq-group.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,nxp.com:email]
X-Rspamd-Queue-Id: 7E58E53ABA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 5:25=E2=80=AFAM Sherry Sun <sherry.sun@nxp.com> wro=
te:
>
>
>
> > Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add i.MX93W EVK board
> >
> > On Tue, Jan 20, 2026 at 06:26:03PM +0800, Sherry Sun wrote:
> > > Add DT compatible string for NXP i.MX93W EVK board.
> > >
> > > Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> > b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > index 93ad6f0027d0..1769f243d70f 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -1432,6 +1432,7 @@ properties:
> > >                - fsl,imx93-11x11-evk       # i.MX93 11x11 EVK Board
> > >                - fsl,imx93-11x11-frdm      # i.MX93 11x11 FRDM Board
> > >                - fsl,imx93-14x14-evk       # i.MX93 14x14 EVK Board
> > > +              - fsl,imx93w-evk            # i.MX93W EVK Board
> >
> > Is 93w 11x11 or 14x14? can you add suffix to keep align existing one.
> >
>
> Hi Frank,
>
> IMX93W-EVK is the official board name, it basically reuse the  i.MX93 11x=
11
> EVK board, as described in the cover letter and dts patch. I prefer to st=
ill use
> this name (imx93w-evk) to keep align with the board official name.


No matter of what name we decide to use in the end please add this clarific=
ation
in the commit message.

Also please add small comment describing what are the major
differences between imx93w and
imx93 11x11 board.

thanks,
Daniel.

