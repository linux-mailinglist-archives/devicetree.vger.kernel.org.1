Return-Path: <devicetree+bounces-265230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id f+qREJaXjmniDAEAu9opvQ
	(envelope-from <devicetree+bounces-265230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:16:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1761329B5
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 04:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D380300B9D4
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 03:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67ECE1E9B3A;
	Fri, 13 Feb 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZXkWTtNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F908405C
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 03:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770952594; cv=pass; b=AQIHaDOp+4xARXZ4jlSF3es2tOLIx/aZ2LUsTcwGG4gMnm1pQB6okqWXuVqAnnp0s7uvhmqFPucwh8w0Kj5aJ2AkLHqtAlFqojBJ5Q7llRQLIxlvIYX5D2CG8WZNmmDkDWl70Ih4FwYZLP5DC0+FInd8zNPAD40M7PHeQbHYO74=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770952594; c=relaxed/simple;
	bh=SNvAp5loPXmSCA/neGJKJzw3LHacsN8hVNlptAtg1Nw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZmcEDHXxj+ibk1sTuApXMUK3CQbCXfdRW3eRuOGu5A4q2+OAtS40xTf1r7eQpcglfrwi3mZZovf0wrN9azyeHIyglQoDeLEjB5buvagfN3kW8nq3D7ZphUDGPX/PGrGT4m3o0oTYl0JZpcdXUbYZfeDLTCtEY3zLuPQjCR6Kf20=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZXkWTtNO; arc=pass smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-12732165d1eso679117c88.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 19:16:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770952592; cv=none;
        d=google.com; s=arc-20240605;
        b=kQeviCT8HSLNXpgwWPzu0x1T7hTiNE2WU9qO9Xfkv7PP6NZYE7pyfvBAPlDDaEnEeT
         ZTuH4dBC8RT7jiB3Rta+9MFTA12fQ1bVUt7mF5algWwviVmLNkMK7+MsG7C0HzE/iSQz
         Oze9t46YeiIPC5kHTOPqyW3EnR9ohdqtBm8JdddILl4Ire+7xv939F9uptyX0bOq2sPl
         D3glE0vwGB+aDEGquj7kEf26Q8Iudp3H7Is5oZvJzrek3bQEt7F6HqvZ8pvlNmnsht4f
         74fdGrSdo1KR9ShbN0sS23uIPus2N2PAXsU39smRGGPmPzrcbtM0DR/LA0Tskxusq79y
         dLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=A9rVs9tfdzKqfLiEuYfz6qxedHCDF85xV49xx0uKo3k=;
        fh=OnEsGd7xRH4GbWHNL2ywM/qp7SGTQCcdBvCX2LWxLgE=;
        b=ZTdwsvXyYUeXUuOPlejBw+CSItf8xTadMgm96fdKDBXTCuR5nUqB8iUaWGpBsiknHL
         5YreKmQA1xxJZFUVIYWjyTQziHHOtVua1bCOQSh2mSWvlun9Zbf3Pz9mzRk5c2nt4J4p
         dc8WJv+HTBh9+MNWTFEn3jNwnFmKpjgeL0rYONuE3r2PBCCmao9vMIzH5+wu8jjlirQB
         vNcEvr43kHvrCTmCPd678kX/L8tUAxWxivRMQrDwtOre8P7qN949d8oEfww0HHLr2ap2
         We9EEzB/xemxUINHKhOIH+oXzPTmLJU+ir+ND1QwwWygEScQr+q+9TsC6XxI/TaTiobv
         pNAQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770952592; x=1771557392; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A9rVs9tfdzKqfLiEuYfz6qxedHCDF85xV49xx0uKo3k=;
        b=ZXkWTtNOzR1YJED7RLTxPXVsOpEuvaP3APLWpOglgZjEKvUAbmI4fYqxUQUFNXAOH0
         TGt/tIbopegzx/efSYu2jzCM+UVHd7aiH2ft7RwCHBq4XB/HVn6Ec8932EDbyolnaDID
         O5G8l6vleCAeCLP2Ic3cG4u/sGLbzZVNCQiEnNpEA6zyOsNWMaKTUQdN64cSQ4k+Te9Z
         WWz6ueLh5/4H4QgAf/sqZPZyWaCHaaaje0a44Er9uN/FZIyHDFjZm8c/VG0Pdh7yoeDQ
         Ye9sufBHvf+pj3Hzr6WNhf3z6r+d3GKs2eoK8okaQwunVQFTSa4d0+C8RcCLcNL+Ut1Q
         Hybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770952592; x=1771557392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A9rVs9tfdzKqfLiEuYfz6qxedHCDF85xV49xx0uKo3k=;
        b=r5Zp/61k4DVYPv7k+qKEuZ60M7Th+vpnXszL4bn/DutllLA3XUQsxIBcu8fYrHllCb
         tYwTulqyHt3GE+HD6Q5sU9WPZwpyaBY9GZgdLx96DKuzlwI8qDGgQMLUU05GKs22KMT0
         PK902NhFqiPvPEsqXXMzSQAFH8k1GpR1JUcvfQExkiuFAMmVpsGVgM26mfqKkypjhYj7
         +YIc+T67LpFSJ5UB8cgb3/Okh+M7huKOnW5NWHu9hEbI1KcIv2sNB+wj3aZNawkBxTD8
         8g8Jf7EzST1VwtwweK5IOA/bucw1Fqb9Ejxd0/O9WBbVHPbLNfvj6bQ1BOZbLMpIiM4w
         6tRw==
X-Forwarded-Encrypted: i=1; AJvYcCWTnNcjcdtvyiVGPDmP72rNl+P/Em5VmWs+Av1f4GfqmN/KZIhrICLxT5iYKYXVIGXzW2vBdwBIaB28@vger.kernel.org
X-Gm-Message-State: AOJu0YwXovQeKjLarPcz01NL3bHT/qTM9z8RM+3wTaAt+uEZTL/iZ1K5
	Odzde4JxS6HCziqPJMfkotozuTG0Vrdtash825in7EvRtcQ4xBIpfhNa5yEwx3IIIQodYgnvxce
	A64NMmhvY7T9kxlemNHLcQg4MF38WzDE=
X-Gm-Gg: AZuq6aKvL5VYzUnQJJ/IkVbZ/9eJFH962NWE+iatLThOe+dx2Ap92wroBr+dD3BbtJt
	JGKa/muejo3C/CcjuOZ6WfWl8Do0GrfDdriy/ScousU1coq02DGWmesrCP/nX7m64YOROIbYV6G
	V5cDFjEH9s5p/gKNafCbcadnfJMgIfXWrHYiJT64Lq2GXQXbZppAmYqb4KWVkqQXaPquONdCRsM
	I8v9fU76tC4LMNpdL4J5Pl1qiqyJ33p6buva/YVTLoWV9Jsg/OEt0PVlpyx/5xSjRWJa4nkXfYC
	ZCqli121YqQVR5qV9E8IPIZSNhpPqw4/fu5/jlTjYAQYzxIiHZB/2Bo6/Rm/yEv/6Io588B3h8b
	+oitm55lPeheYBiXVRD1a/5K0rX4=
X-Received: by 2002:a05:7022:a91:b0:119:e56b:98ba with SMTP id
 a92af1059eb24-1273ae7fc16mr135317c88.33.1770952592138; Thu, 12 Feb 2026
 19:16:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212-feature_bbge-v1-0-29014a212f35@bootlin.com>
 <20260212-feature_bbge-v1-1-29014a212f35@bootlin.com> <B3366A17-641F-4E02-A5D4-978F525E0A96@goldelico.com>
 <20260212174718.7daccb70@kemnade.info> <719BF710-26DF-49AB-A016-D2306F0389E2@goldelico.com>
 <20260212231907.6120a2e2@kemnade.info>
In-Reply-To: <20260212231907.6120a2e2@kemnade.info>
From: Robert Nelson <robertcnelson@gmail.com>
Date: Thu, 12 Feb 2026 21:16:05 -0600
X-Gm-Features: AZwV_Qh971-afroyUXRtMyj8ruGTY0KPplbW-K5wj0BVh1d4xjPlxLEG3ejv_GE
Message-ID: <CAOCHtYicmeSzH5Q2_qTwAZw3s+__JRwUrXvz01+KCsJJHAznUw@mail.gmail.com>
Subject: Re: [PATCH 1/5] ARM: dts: ti: Enable overlays for all DTB files
To: Andreas Kemnade <andreas@kemnade.info>
Cc: "H. Nikolaus Schaller" <hns@goldelico.com>, "Kory Maincent (TI)" <kory.maincent@bootlin.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Bajjuri Praneeth <praneeth@ti.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Louis Chauvet <louis.chauvet@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265230-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robertcnelson@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,goldelico.com:email,mail.gmail.com:mid,kemnade.info:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DA1761329B5
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 4:19=E2=80=AFPM Andreas Kemnade <andreas@kemnade.in=
fo> wrote:
>
> On Thu, 12 Feb 2026 17:55:43 +0100
> "H. Nikolaus Schaller" <hns@goldelico.com> wrote:
>
> > > Am 12.02.2026 um 17:47 schrieb Andreas Kemnade <andreas@kemnade.info>=
:
> > >
> > > On Thu, 12 Feb 2026 16:49:43 +0100
> > > "H. Nikolaus Schaller" <hns@goldelico.com> wrote:
> > >
> > >>> Am 12.02.2026 um 16:26 schrieb Kory Maincent (TI) <kory.maincent@bo=
otlin.com>:
> > >>>
> > >>> Allow overlays to be applied to any DTB. This adds around ~40% to t=
he
> > >>> total size of the DTB files on average.
> > >>
> > >> Is this unconditionally enabled or can it be turned off by some CONF=
IG? We have
> > >> our own defconfig so I would not worry if if is enabled in omap2plus=
_defconfig
> > >> and disabled in ours.
> > >>
> > >> We have several devices where the boot loader can't handle overlays =
(never touch
> > >> a working boot-loader :) So this seems to only contribute to build a=
nd load time
> > >> without benefit.
> > >>
> > > As long as you do not add overlays, the bootloader does not care. I w=
ould
> > > like to simply carry around the 1-bit mmc overlay for one broken boar=
d.
> > > That would help me. So I think there is a benefit but nobody forces
> > > you to use it.
> >
> > Well, it does not force to use the really good feature, but it forces t=
o add
> > ~40% more file size and some more compile time, if I understand it corr=
ectly.
> >
> Compile time, hardly measurable even if you just do make dtbs.
>
> Size on disk:
> a) if it lives around in a /boot partitions with kernels and initrams in =
it,
>    then we are around 1% more space needed.
>
> b) if it has separate partitions maybe on some mtd: Looking around: GTA04
>    has quite some headroom left. Usage is still <50% even with symbols
>    enabled.
>
> But on the other no one else seems to enable that besides for devices wit=
h
> open expansion boards carrying "hats". So overall, should we really be th=
e
> exception?

Do we want to maybe transition like TI did for k3?

Start with board specific DTC_FLAGS flags for specific boards:

and then just enabling overlays by default :
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/a=
rch/arm64/boot/dts/ti/Makefile?id=3Dbca4146b1f66dbca07591bfd6ad695c699b5a09=
3

If we do board-specific, all the "Beagle" related items can be auto
enabled `-@`..

Regards,

--=20
Robert Nelson
https://rcn-ee.com/

