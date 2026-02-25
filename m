Return-Path: <devicetree+bounces-268142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNBxKpuXnmnXWQQAu9opvQ
	(envelope-from <devicetree+bounces-268142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:32:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6519263B
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31246304300B
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D821D2F3614;
	Wed, 25 Feb 2026 06:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hsiRXoZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB56A2D5926
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772000802; cv=pass; b=Do0bjOWuOBSsMlklNBrZPu7NqzXJQr2TKJsvoH7hgvHh5jHfBOxQBidVg9DmhhIEMQ7D2kFTX/cLcefVmZEbEfA61yoWVGmjNkVAEkpXExs29hH1nDJP+/nspspWO39Q1oXSIGHPVpr5pO1pYERoHg0pFPSOCaIbVcE3Lq7vauA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772000802; c=relaxed/simple;
	bh=ttXxcT2T1ac4ybDNKi/zCbOjFd8n1xxTG9AWyRDJaYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sQh1BbiUShj3BLYKTXBpfyDtt0UHvq4tXQrN93wrazZ4P4rcYuVw03RnG3uszaDuoNLVZ03cO1leTe+h4KFiJNpuYxOIMIZYDBrzZ4wBE4WeD+1bu6oT4XApBOFX8gS4AIHSB6eF6Ed8S1S7ENbaNUwAMAtckMQCVN9/MQnLUeQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hsiRXoZT; arc=pass smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2adcede372cso1722435ad.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:26:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772000801; cv=none;
        d=google.com; s=arc-20240605;
        b=fWx7Sk7qh27tt8E+b1PBAHID+FbnjdjzvRwcxyxMo9G2Ae70hngLXlTV11Qnoonwqw
         vRt8vJBknjLYa09EXIIfy1V61bmRWQmwk7/2iHvHuJ/qgG4vxPKYDIDD3kxvYN81eKWP
         D4V2LvHacjGZXaamcdQAH6eVSqRVyHL4/M0NUHOkARTbs8+QvAodYGtdv86RP3pUBvqx
         DWel25UXMvXI8FRrZfC2j8vGTlQ0vbjLa/wYNqZPkJ7v3KNXU2cPfo/BcXfVAUVfaWb0
         4qIsKs60raEDaj9C+lp0CbFlJ/9wbVrtXV3puvVVbAHNuDTN158RBy1nTWWHRcqwL1Iq
         AD/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=74IdwuXc21OGgUiiss6XTtfN5U3py4VIK4AnmFhKGeQ=;
        fh=qD8z1S34qUNr//2j7URKZ6ZEx8+QrIjf//eNECI3vWM=;
        b=kdeypatE00aetBl9PqJmZmSyP2jG5PZS5d7sMKHZeDC6PtTKWiwJCkYXGYGr6uhORT
         TIJJjHyaTLyMUeS8EZ/2YPiztygjmZnHQsKrA2cTegKSEwjiyZx8JBv58gbcyWDw+4cU
         4hFNQx4/LFZvHZeL1i2MDxs9XK43O2uWvi2VC7AY+qUjG4iuRiLUrBoTALQr/mn+FOJ2
         TblBs5veU6TPNQog+yecL37S/QRUYj7E2xyWhhkDwYzZl/9G1+tLcubAnvTtPGUznP1w
         EfR+FRX/K1bG4wudiTHE5GGDcP+A19s/KEivg2coPcJgI+Uuc+PEYSQq3Tc/GnN3GBjL
         Twig==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772000801; x=1772605601; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=74IdwuXc21OGgUiiss6XTtfN5U3py4VIK4AnmFhKGeQ=;
        b=hsiRXoZTaW3n2dQA058LuKyqx6UhQ5Bm4OWm5X9ecms+29Gmnk0dV53ZVVREnANx/A
         4IPYH/oATTAwuQG94dN4oVJABoy9vsUDvOyyxw0j9nuStMxvX54hZPM3f73iZnHD8N2b
         ENpv9FkKu9ZByqa3pvsDR0dJz4LuQKLtKPiQRUcFZDMVmANKTenDUzKD/v91+aQ8w/B5
         TYaI7ikcYcvVY0w8jlk3wHzQKKlnHZp1mxeSRwIbkpu/S8m7FlzRTSglh/wdYvHs3DcY
         ah94P0ZJxdCtQT/qsFWYDeXCv1Q0vuAi/ElMaP64KalJcKC/huTdXR6FjjGzUf0ufcaW
         QUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772000801; x=1772605601;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=74IdwuXc21OGgUiiss6XTtfN5U3py4VIK4AnmFhKGeQ=;
        b=jAb4SafXHJlkbyBuIxTQ92o3uqIE8LJV4w4EsP++QWHnDpE5EKRxjsX8Lns8ClndDW
         PsqHfXt29CJ2q3XYhDVgnuvuy54oNvsD16CLOJBxc4WlSJ+IuQj/jY1R8L8bVUJvYenj
         JtWBCZlJRpfxAEoszpn3lzIuta1E2WOOKd3vbspPNFOx8kmKcGpt0yKrlJHnqbv7J9Jr
         dKgbhjFvj2lNdB7C23E6hYIUgIx6C24NMpMfdC4A1BiwfFhSaL+wW+yPOGt6DcL0qTWB
         L6RAOkAfvGV/5VMd9NOWew4tpo220hayQrkZoTShAnNMWF+jHxYZs0zW8GDKfyMCtVlI
         7F6A==
X-Forwarded-Encrypted: i=1; AJvYcCWPv4JDg48vwIszMONC4FiA4PDtNSRkudBRiad66cjuLf5okvTVUqKPEafT1jbhvEIe6lVeicErbBo3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1D+PpFh3G9WZB8iE4Xirv7XWeVfV3wW9+bMfrZ3b/JG7BOmaM
	fnPkAD9RkF9mmaryhIpYcB3rsMwv8AEvuC29heuKSFs6KcLFc4yY26xKp8jvnIL7XSA1OGFU/fN
	dzeU6fdcVUlIhY2gZTmvni5JA6C0Dm5I=
X-Gm-Gg: ATEYQzxiL8Fbwm7AIsiWlXC+84Ph8nyRcj2HxqXrOpRdYQzfy1p3Y/fZ08QMlJEIdYj
	dqcuSRj1/1o0r1UPHifZtvaMo5XbrTyWmXENc4u8cU4RzG/OtBtufggNikPmYaJVZ4YYXpIN0Gw
	mJXfdHujAvbdG3rrVV2sIoLDppZE+SfjTxRO3S/oLKm9VMkz3vpE43Unk6a/Evi4wSOBVwiSoS+
	GHVW7XmFSIiML3gdRc7vzSu6V33ZKCKNM34NcaTaDXZBxtkwaAKW9FbzEuVzwl2Bsfec33zZnHZ
	f8ZQBfY=
X-Received: by 2002:a17:902:e746:b0:2ad:ae4e:bb6a with SMTP id
 d9443c01a7336-2adae4ebd03mr38828325ad.24.1772000801097; Tue, 24 Feb 2026
 22:26:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260224094527.169215-1-shengjiu.wang@nxp.com>
 <20260224094527.169215-3-shengjiu.wang@nxp.com> <CAOMZO5DW5Yo3A3kPOe+NdQNwTATzzWguCGBDyK2UFjCrHtwFeg@mail.gmail.com>
In-Reply-To: <CAOMZO5DW5Yo3A3kPOe+NdQNwTATzzWguCGBDyK2UFjCrHtwFeg@mail.gmail.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 25 Feb 2026 14:26:29 +0800
X-Gm-Features: AaiRm53sttei49Mx1DQyMYFyac4_nAUg2Jcjs65LfbJ3vj7sOi1Zd0RL6CnHQbk
Message-ID: <CAA+D8AMRdCu0h=ctdwYdavGquSe5+XGXyHY3JPSmznhAsX1S=w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: add support for NXP i.MX8MP audio board
 (version 2)
To: Fabio Estevam <festevam@gmail.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, daniel.baluta@nxp.com, 
	dario.binacchi@amarulasolutions.com, alexander.stein@ew.tq-group.com, 
	Markus.Niebel@tq-group.com, matthias.schiffer@tq-group.com, y.moog@phytec.de, 
	josua@solid-run.com, francesco.dolcini@toradex.com, primoz.fiser@norik.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Frank.Li@nxp.com, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268142-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 8AC6519263B
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 6:27=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> On Tue, Feb 24, 2026 at 6:44=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.=
com> wrote:
>
> > +&ecspi2 {
> > +       #address-cells =3D <1>;
> > +       #size-cells =3D <0>;
> > +       cs-gpios =3D <&gpio5 13 GPIO_ACTIVE_LOW>;
> > +       pinctrl-0 =3D <&pinctrl_ecspi2 &pinctrl_ecspi2_cs>;
> > +       pinctrl-names =3D "default";
> > +       status =3D "okay";
> > +
> > +       spidev1: spi@0 {
> > +               compatible =3D "rohm,dh2228fv";
>
> I bet you don't have such a device populated on this board.

Yes, you are right,  it is used internally for test purposes.
I will remove it.

Best regards
Shengjiu Wang

>

