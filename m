Return-Path: <devicetree+bounces-275347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DxGNyIptGkQiQAAu9opvQ
	(envelope-from <devicetree+bounces-275347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:11:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 813F8285A6D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80064322D353
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873653A5E61;
	Fri, 13 Mar 2026 15:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aB26FPsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E2C3AC0D2
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773414425; cv=pass; b=gYeY5uSH3uuIYwolY22wVMjgS0I1yblO8O+w354A59b7g6ZlVh19rUymaKHLOONymYiOzALlAvSZoFtUI7pHxIDRksmq9s0UbesLbXE/oFZwCxBqPUnGD9CpI5CnEExUB5RiYglxwcpcZovq6QT192j7ADYWcuO7Cpkxho/DpqQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773414425; c=relaxed/simple;
	bh=oGY2ctpj9ghSA/kNXN45JoI3buaXV929HHTybkJA4UA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t+2o6qU5LppAZvphFTKHSalXAH6lpDraenq1oFfxWyHvfXUZ0h6Dwp2oP1upu5EZ9RQWdc2rRcvKgtfPjoVrjlrVS4sh/td0/OM11sTJYC2LkVPDQ7TwjipREbT628naeI2WZYwzfjUiEdGlRhWejXowsgS2EcLSMunQSQfUv0Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aB26FPsk; arc=pass smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso2853036d50.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773414421; cv=none;
        d=google.com; s=arc-20240605;
        b=iQ+qny5CTELvtW3qEP9mbAzYAJHUDarGqeeTGt7MQW9nbIBSLAXr+BBTjwb3zr1prV
         APrjRyK9p5pISJ1DClJcVXSbgx0g3VFfdm5ADW0xVkl3pjK/i8lEbRxopFprqk22KD45
         l3KRkE+oY5AdXfB56iNJjRaKLHNVptDmehGmplgV/X9y9HU2KLAz3RdEcSe9n57beKlC
         16v+mV0AcYBvsSBukKw/ikD5tceubT3GwqMXek38Se+VMo5UlhQXBCk7SZxxNcvQJ9qL
         /FzPta680R4SxzMXsCPNfPceQ08o/xyoFHIlo1GUwevuR0yhXe4bkIgsHhpLM1koJ6SJ
         oXTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Bwl3bu6QXSYK5p9OS9Lki1nNQiVBfsiIDBhWlq7lhck=;
        fh=mmvYprsDOr9DGS+r39GQyDp8JIj/Kfln/eM3aOA8Agc=;
        b=N/S8xPzJKmcNrRs6o51kXNdgt8RFd844wXvzDr/YtwQpsBJwFGMiB1wb3CthMwGghx
         aK7RKiYQc9dnLSsMOGLWRdUFZhjTOJC9oEOeY7f5CssGute/mnaham1y+ef0elnqiGsa
         jiMYa6Ythp2+je81rkx7ViVEsaTqt510X4+fGl3Mr+xnBy69IBaLIcJ0e+bODPTwoOYA
         rrBqdELkYwxv45/B3ldtAfFE1n2WeNNgAgWZVvtb2ooXuK+rZeUX3VBrldjjPOAaiYaq
         MOYKX/R7DZXSFIdD8ShnYDIgZVQypqP5UJfGS5Z3RS/ZJx/4qDmh4B5QWm1wDRQ3yo99
         qcZQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773414421; x=1774019221; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bwl3bu6QXSYK5p9OS9Lki1nNQiVBfsiIDBhWlq7lhck=;
        b=aB26FPskOwIQv1FT7RlgtqMMkfJGmqJ82J02Z3oi0K4iynQCWGcrmZ+7KrdJZCx2LF
         KOu98LRw0bCghMlu58EM0O2h+6p0nrahvzIJHDI2Mf1D+hVVlSisEBFhh1NaY4szpqi4
         YmAFrVNUMOalRXT5d3D3D8TvPlftk5wjQrCclqRkqJWiwf4mUt+Qa/xcLhEWC7xWGLuw
         InWZAyz4BgKS1LCnY0v8pkEZ85M47VhjyQNpxZZJF+X4A3rYJfxF8/RtJYGt2JcVB0AL
         TGXnmNblyMZk5N0UaRDbBkC4Te6hfQ/rR88R4LPlunpG1P0yHCAs/CCDi/+N3El8j+pu
         Rf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773414421; x=1774019221;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Bwl3bu6QXSYK5p9OS9Lki1nNQiVBfsiIDBhWlq7lhck=;
        b=cOU5zvDRrtcqw2dtwd9NBn9l6dr1j3TCgdYpiA89c6cvUXXU2GZInApLxFhRndIaRp
         C+nngUeEzL/8ukH6Hyg1OMbvLJwjiKMmCQsdSHrbCL1I1s+fONSrOwab5mgyaQysEn+k
         9peQvxpS2JwULpQk4dp0q/2DpoWXxwXC2w6K/V57aDexWvEvRWwW5+WrPKLnEfn9KMhx
         OkupyUpEL3/74RTbKQ6WbjhGHQsECH2SxHI8aZcvhfaxmgkMIoQwMQl3HWomFKn16vg1
         CQHlEPOOMpyNtjRePRmcM/UB+SDTD7cehN2Yjq4xb+zca4qmCjyfDP+qnKv9s1Z1eXvW
         JCOA==
X-Forwarded-Encrypted: i=1; AJvYcCUGnVN9n9mn5ikEXqHApkLml8TniGajrViYOeNZzgwCTLtb4a4H5xdAOVhZ9n6ybdAzuLCyX/s2VK6+@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ4yPRsMqrpMtmqyl4yfu7DewmeYgmphUbOJsyiY/ZdrZhe0bM
	I5y1cK1BvxdjK3Hg7MWvXsbRBci7Xkq1EvL0cMEV5v12gPXlKua04B4O9RFYh2mlz5QxzYg12yV
	1XkqVAnNzJzimUEex0Xeiz4aOJMslN6Y=
X-Gm-Gg: ATEYQzw3M+kW9zd3CqPxI+M+xfCpFnClD4I4YxJl5yHT5c8CCnmBU2F8lYa9ETB1+/U
	Z/0uvFa5Iui0CyO4MevW4H1iDFI983M8Z9zQHgttZVsglJA+LcvXrVpI7GL9Xgjv1CA6dkQfwXo
	PLb4clBIYl3/G07ivXogE081RqxRR6WPW1LupiRq093b/d+1AKQcRcn/AbiG2jqJgyrZqlDs/9y
	Hk5ZZ5t7vE+gFlvcGGHweiR93k1/e8iS9FBF8FCH9ZajnKim8vocEeKgc/TKFPcxCeGapoUE8ey
	hIS7mEGWnxbw8+OLDQ==
X-Received: by 2002:a05:690c:4a08:b0:798:7322:b676 with SMTP id
 00721157ae682-79a1c0cf4d8mr40164837b3.20.1773414421451; Fri, 13 Mar 2026
 08:07:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
 <20260309-orangepi-sd-card-uhs-v2-6-5bb2b574df5d@gmail.com>
 <8e91c86d-ea41-4535-a7cd-5b602c546cb7@baylibre.com> <20260313001940-GKA407679@kernel.org>
 <CABdCQ=Mv-3X8KE1WOWKVTmq+POgJczsL-qFdAyp5qzM6=0s28A@mail.gmail.com> <20260313111108-GKM302167@kernel.org>
In-Reply-To: <20260313111108-GKM302167@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Fri, 13 Mar 2026 16:06:49 +0100
X-Gm-Features: AaiRm52ZDS_Bl9kTuuFRUA2s_aJbBWslNAWTIUfq3zQrzhaCgdDVn7wblDGcbW8
Message-ID: <CABdCQ=O9PEXWrPnofK56tGc_KT64PF3QtFGNr-r2Kx_-3Zzi0A@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC
 and power infrastructure
To: Yixun Lan <dlan@kernel.org>
Cc: Trevor Gamblin <tgamblin@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275347-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 813F8285A6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

El vie, 13 mar 2026 a las 12:11, Yixun Lan (<dlan@kernel.org>) escribi=C3=
=B3:
>
> Hi Iker,
>
> On 10:42 Fri 13 Mar     , Iker Pedrosa wrote:
> > El vie, 13 mar 2026 a las 1:19, Yixun Lan (<dlan@kernel.org>) escribi=
=C3=B3:
> > >
> > > Hi Trevor, Iker,
> > >
> > > On 14:27 Wed 11 Mar     , Trevor Gamblin wrote:
> > > > Hi,
> > > >
> > > > On 2026-03-09 07:40, Iker Pedrosa wrote:
> > > > > Add Spacemit P1 PMIC configuration and board power infrastructure=
 for
> > > > > voltage regulation support.
> > > > >
> > > > > - Add board power regulators (12V input, 4V rail)
> > > > > - Enable I2C8 for PMIC communication
> > > > > - Configure PMIC with buck4 (vmmc) and aldo1 (vqmmc) regulators
> > > > > - Set up regulator constraints for SD card operation
> > > > >
> > > > > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > > > > ---
> > > > >   arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 48 +++++++++=
+++++++++++++++
> > > > >   1 file changed, 48 insertions(+)
> > > > >
> > > > > diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/a=
rch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > > > > index 7b7331cb3c726f11d597f81917f3a3f5fc21e1b9..414b03f5e6480f05f=
5d7eeaaa0afb4e86425ae36 100644
> > > > > --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > > > > +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> > > > > @@ -19,6 +19,25 @@ aliases {
> > > > >             ethernet1 =3D &eth1;
> > > > >     };
> > > > >
> > > > > +   reg_dc_in: dc-in-12v {
> > > > > +           compatible =3D "regulator-fixed";
> > > > > +           regulator-name =3D "dc_in_12v";
> > > > > +           regulator-min-microvolt =3D <12000000>;
> > > > > +           regulator-max-microvolt =3D <12000000>;
> > > > > +           regulator-boot-on;
> > > > > +           regulator-always-on;
> > > > > +   };
> > > > > +
> > > > Is this the correct voltage? I don't see a 12V rail in the RV2's
> > > > datasheet, and the board's specifications only indicate a 5V USB-C =
input.
> > >
> > > Right, this should be fixed. Please note Han submitted one version of=
 basic DT for rv2
> > > which I think that series will go in first
> > >
> > > https://lore.kernel.org/r/20260310161853.3900605-1-gaohan@iscas.ac.cn
> > >
> >
> > I'm fine with that. Do we have an estimate of when these changes will
> > land? I'm fine with rebasing once those are merged, but I'd like to
> > continue with the review for the remaining changes in this patch
> > series and I'm unsure on how to proceed.
> >
> For that changes, likely will target v7.1 merge window
>
> You can continue with current version, once that happen, you can rebase .=
.

Ok, that sounds good to me

>
> --
> Yixun Lan (dlan)

