Return-Path: <devicetree+bounces-257825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AeDO/+acGlyYgAAu9opvQ
	(envelope-from <devicetree+bounces-257825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:23:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FD3544B9
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:23:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0D824749947
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F9731D735;
	Wed, 21 Jan 2026 09:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ap/OREcp"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A7E2DCC04
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768986775; cv=none; b=BGYgwgxAwdWQqY8vIDy4DTle21jMFpLuVpV5PL9F8cWDD1A0oDCv7Kkn9buwPD4zWvHqMqGSd8jFOMZcxzLmvtXR9bKuDVrinnhBJaZZh2JbJRIaTeq8hkhV4PdO3yUDfsAXCATaKVH5Wrf8bABt2IjCGjFbbZ3/wX7r4MxpDG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768986775; c=relaxed/simple;
	bh=oSgEEEPwRaNv0kpzmgfWQvQDlOmNagoqJ410lK89w8w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Vrm6+vVS9Zy8+mAdNJ8nU17cNIWSGbHRot5WyYjGzeh03JEI2weZ54GNv2NEHIXHY79/MuhT9eMMeXU75SfIGrl+cynkloD2S1BhGWZYIBJRx160rSA3gAAL/mlzRStRRMmFe52997kCPYidPklBn5LCEs6TVO2I7OK3cRUAB1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ap/OREcp; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jsLSAvwVouFS1ZUYZEVJ53QymYVt0g0M3Kh3wgwwh/o=; b=ap/OREcpBA1KVY7huIkDAB0Tee
	qZPV0wgBw8KTyVv8BDXVVbIemBV06NbSS4DtC9lGP4DiAthwWuK0wvM69krQo713QPHHBvsRlb6KA
	9ImBmJgyaN6YvFSMmFsYgO0qd7yPqewnl3SaEPdFKc9gEKvEaYaLaeiC5BIempnslEUVp/xpVCoUS
	SbL4tI3SJq5C7IPWcb9OyjMb8JsdX/cP8sozubhm/O+sGP8EpFnEXFp4Pboo5H933aGABbSc3HRrU
	EZKH1hcb1hbYKGlsP6cfsWpev+J9QoTmCUY2Fwt9FIYxXHZqKs/W9baLStxHgQoQgh1BjBgVkeGCD
	SqYvDrmw==;
Received: from i53875baa.versanet.de ([83.135.91.170] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1viUGY-003c0W-Mj; Wed, 21 Jan 2026 10:12:43 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Luis Garcia <git@luigi311.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Olivier Benjamin <olivier.benjamin@bootlin.com>, megi@xff.cz
Subject: Re: [PATCH 0/1] Fix imx258 variant on pinephone pro
Date: Wed, 21 Jan 2026 10:12:42 +0100
Message-ID: <50650709.fMDQidcC6G@diego>
In-Reply-To: <46730110-5713-4e7a-a593-29ad69432e03@luigi311.com>
References:
 <20260118214620.3319040-1-git@luigi311.com>
 <176890189889.310054.17634541522861042266.b4-ty@sntech.de>
 <46730110-5713-4e7a-a593-29ad69432e03@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257825-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[sntech.de,none];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sntech.de:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 64FD3544B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Am Dienstag, 20. Januar 2026, 17:33:37 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Luis Garcia:
> Thank you very much for the speedy turn around. Ohh
> interesting, here i was thinking i did the right thing with
> the reply to with the V2. Ill keep that in mind for the
> future but considering how far and few my contributions
> upstream are i hope i dont forget by then lol.

no worries. For individual patches this is mostly easy to figure out
and also recent versions of b4 handled this thread fine.

I think it's more a problem, once the thread goes deeper or multiple
patches are involved.

Heiko


> On 1/20/26 02:39, Heiko Stuebner wrote:
> > On Sun, 18 Jan 2026 14:46:19 -0700, Luis Garcia wrote:
> >> imx258 had the driver updated a while back and it introduced
> >> two variants, the imx258 and imx258-pdaf. The pinephone pro
> >> is using the pdaf variant so this switches it to the correct
> >> variant and eliminates the pdaf pixels from the sensor output
> >> resulting in a much cleaner image.
> >>
> >> Luis Garcia (1):
> >>    arm64: dts: rockchip: Fix imx258 variant on pinephone pro
> >>
> >> [...]
> > Applied, thanks!
> >
> > [1/1] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
> >        commit: 6742b998166485558ccb0e89b5d5fd93c1aae3ca
> >
> > In the future, please don't send v2 patches as replies to the
> > previous version and instead start a new thread.
> >
> > Next versions as replies, does sometimes confusing tooling.
> >
> >
> > Best regards,
>=20





