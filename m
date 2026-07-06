Return-Path: <devicetree+bounces-321424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iVyXCP3kS2oScQEAu9opvQ
	(envelope-from <devicetree+bounces-321424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:25:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF82713D3D
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:25:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BwY1eDXK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321424-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321424-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EBA4C30185A6
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 17:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C47F438F252;
	Mon,  6 Jul 2026 17:18:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53A2385D96
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 17:18:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783358283; cv=none; b=fX5FckW0d2AkHdmKJSfsK6lFzVYpt+57DMHF/A88GUF3wfW14B+jerCK63SxRwhH4bRCWL9p56LIbITIRTtCyEGN/FeT7JjN6237QV4QVYRQXJ5BcdlO/zlYvECVSLXTPeEfW9pPRQmqXf2kLyIrCVJ4Th6zvdTbDjNRjYrgyZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783358283; c=relaxed/simple;
	bh=xJHh4kII0FuIdbBEV27sTUUFaEn9y3aDIzBlueKyMYc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TNYoRrySbWGwcdC5aBY6Pgdj/Nb1s+S96Zlf6SI/ugdM8V7bzxZL79rGmKzwNkF/hwxd/qPDwWgGzkkFbV8b5+oevmW/2PESMyf2cEgKB2OXcseAnExvOMjn+G8cB62DG91raE89pwQvPscjmmId2r2pxE7Icmj2APEdCNYngkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwY1eDXK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67EFD1F00A3D
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 17:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783358282;
	bh=6SzTceFp/6u/0U2ZsHukaDCb4DvB8gNfQxW2S2HmJSM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=BwY1eDXK2casDflWj7FpxvSTaOUpF6I6RaUtfHX7uDXoOmvURB5vkHOFZ3pHN4mYY
	 YSGGZqwOvbbnTMbL4JbqmeosKm3zElo1oh74xaK2cuIPRsJrRkelv0KgiuijDYQDgk
	 jgkYTEOpsGsJKokmMJTN1q62s5tlSsBGpk+W8KAwQb+UN/LjcAfyhblYIeGfZWFvTR
	 sbwG67ET6OUBfimy9x3NQAU/oXqkl5hFQGoxEbLS3JhRqqidEAQlkCbmy/TtOZqqjw
	 mkqCCDLRDVkIqJHK62uiDjZ+hSojZjY67Rp5rHGYmscPI7iUW7H3YtnulR/weGeQvB
	 rh6bbe2+N/ipg==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-39b26e2ad5eso27852871fa.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 10:18:02 -0700 (PDT)
X-Gm-Message-State: AOJu0Yy3VtNL0i4u/gX59ZpFVuXms1dibn5NAjF+7wJk/St4vm9oCcUJ
	NnQWKTy5RzBFydt8DvQD3TRvs0blu3t2GOP2KEZikgeZP3hWV41M00VqvRYuwOhmlFNm/OVNd6l
	b4Xw9U5LG5JXmbEhYAYTutpEpdG9yXm8=
X-Received: by 2002:a2e:a99d:0:b0:39a:fec6:efd0 with SMTP id
 38308e7fff4ca-39c5ffae1cfmr4021431fa.23.1783358280803; Mon, 06 Jul 2026
 10:18:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260606205452.2386930-1-lukas.schmid@netcube.li> <178335762241.4010120.15331558144606875972.b4-ty@kernel.org>
In-Reply-To: <178335762241.4010120.15331558144606875972.b4-ty@kernel.org>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 7 Jul 2026 01:17:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v66nsmz63tMUpkb_p6nXGCtvVSX4z8tJ0Ojg_6md0sY=KA@mail.gmail.com>
X-Gm-Features: AVVi8Cfs5u3u3Le8rfmIs2akFxo6f5Cg5zKm8U8X3Ch8xkPrjuDD5gQk7w4gesM
Message-ID: <CAGb2v66nsmz63tMUpkb_p6nXGCtvVSX4z8tJ0Ojg_6md0sY=KA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Add support for NetCube Systems OpenNMC (dobermann)
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Maxime Ripard <mripard@kernel.org>, 
	Lukas Schmid <lukas.schmid@netcube.li>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TAGGED_FROM(0.00)[bounces-321424-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:lukas.schmid@netcube.li,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,netcube.li];
	FORGED_SENDER(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7AF82713D3D

On Tue, Jul 7, 2026 at 1:07=E2=80=AFAM Chen-Yu Tsai <wens@kernel.org> wrote=
:
>
> On Sat, 06 Jun 2026 22:54:40 +0200, Lukas Schmid wrote:
> > This series adds support for the NetCube Systems OpenNMC.
> >
> > Sorry for the quick resend. This v4 includes the corrected Makefile
> > target name.
> >
> > Changes in v4:
> >  - fix the ARM Makefile target name for the new board
> >
> > [...]
>
> Applied to sunxi/dt-for-7.3 in sunxi, thanks!
>
> [1/3] dt-bindings: arm: sunxi: Add NetCube Systems OpenNMC (dobermann)
>       https://git.kernel.org/sunxi/linux/c/9995c8146bb9
> [2/3] riscv: dts: allwinner: d1s-t113: Add uart4 pinctrl required by NetC=
ube Systems OpenNMC
>       https://git.kernel.org/sunxi/linux/c/5b0fd777eb34
> [3/3] ARM: dts: sunxi: add support for NetCube Systems OpenNMC (dobermann=
)
>       https://git.kernel.org/sunxi/linux/c/9dc45b17fb85

Force pushed this one to change "sunxi" to "allwinner".

>
> Best regards,
> --
> Chen-Yu Tsai <wens@kernel.org>
>
>

