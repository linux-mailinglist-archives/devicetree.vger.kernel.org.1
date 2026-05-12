Return-Path: <devicetree+bounces-296537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEisLDm6A2o69gEAu9opvQ
	(envelope-from <devicetree+bounces-296537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 01:39:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D60252B570
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 01:39:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F7A83044EF9
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8359F385D83;
	Tue, 12 May 2026 23:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuMw2f4l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F71C376BCA;
	Tue, 12 May 2026 23:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778629172; cv=none; b=Bof+z+5W4kcOL7n8/DAfVjmj61k+mLruCu4hTPTK437BlKhu3MFIUCn7LahuCNltewq0i6r8Mrb7xKwHyLXAvSgsRINtAeSMWYkVjGe8CDAmWJAEAMA/TlFiPPHQC4o8CSoKrYtPgx/GBkg2kJir0v3VCzDIP16hRBQ2G5ALwjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778629172; c=relaxed/simple;
	bh=DHIDCJpr1wW/RmLStRRfJ4SeG0XYE0464fuHjjtQG1w=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=na0sjxBxZcuy8tY3OOUSv0rIWZMGwmD5wXUFySa7XaHlhP4ghNvd2YH8Vo8HJUE+k0sMq+cWGt6NVvInLGsLJJYtjW0rE9MaiY3s0Tf3JPdPSC3iSYtO2x2rBTcZmoPsJYzbHk1jZX1QEP7VoFYzeYsAVOCZhbfSYw7GcDNd7Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuMw2f4l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4298EC2BCB0;
	Tue, 12 May 2026 23:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778629172;
	bh=DHIDCJpr1wW/RmLStRRfJ4SeG0XYE0464fuHjjtQG1w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UuMw2f4lDjcKZmbU3ncN7J+AOqATITffa2BJLOAg02WBe3C0ugS4soOdVfWbQu/Nh
	 L4CtbGiNGhgEgdcvcXwCJMSSe7ySl9oQO2YWI5a+EF1zS/fvePCVfdspr5GbLrVSqT
	 WR5pYdHBhlPLRIleaWvEn1PF2/2PLY3YB9RK1F5GO1Qt0r+R61lAAakb7UPv7/ZiVO
	 PuOTlzsnTZNEUFUN7i7JlbjX/Wbb2NC3Fp2fasvE0OngRVwcAPyZs4hHj9Gm4l+NPm
	 MdF8lhHidPTwiX+lt9cRYVgekY7APErVrHHcAWJfyEPDrIU9B2+krFZP40eolYpT3n
	 OoERUtllQ8F9Q==
Date: Tue, 12 May 2026 16:39:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jens Emil Schulz Ostergaard <jensemil.schulzostergaard@microchip.com>
Cc: <UNGLinuxDriver@microchip.com>, <andrew@lunn.ch>, <olteanv@gmail.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
 <horms@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <woojung.huh@microchip.com>,
 <linux@armlinux.org.uk>, <Steen.Hegelund@microchip.com>,
 <daniel.machon@microchip.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH net-next v4 9/9] net: dsa: lan9645x: add port statistics
Message-ID: <20260512163930.326bc238@kernel.org>
In-Reply-To: <c48f64d22429c1d4e10015033da4fff16c2a6d7d.camel@microchip.com>
References: <20260430-dsa_lan9645x_switch_driver_base-v4-9-f1b6005fa8b7@microchip.com>
	<20260506014618.1616861-1-kuba@kernel.org>
	<c48f64d22429c1d4e10015033da4fff16c2a6d7d.camel@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 4D60252B570
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296537-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[microchip.com,lunn.ch,gmail.com,davemloft.net,google.com,redhat.com,kernel.org,armlinux.org.uk,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Tue, 12 May 2026 10:47:22 +0200 Jens Emil Schulz Ostergaard wrote:
> > The commit message says this worker "update[s] it frequently to handle
> > overflows in hardware."
> >=20
> > Looking at lan9645x_stats_add_cnt():
> >=20
> >     static inline void lan9645x_stats_add_cnt(u64 *cnt, u32 val)
> >     {
> >         if (val < (*cnt & U32_MAX))
> >             *cnt +=3D (u64)1 << 32; /* value has wrapped */
> >=20
> >         *cnt =3D (*cnt & ~(u64)U32_MAX) + val;
> >     }
> >=20
> > this compensates for at most one 32-bit wrap per polling interval. If t=
wo
> > or more wraps happen between reads, the low-half comparison no longer
> > detects the missed wrap and the 64-bit counter silently loses 2^32 per
> > missed wrap.
> >=20
> > At the chip's 2.5 Gbps line rate (LAN9645X_SPEED_2500 in lan9645x_main.=
h),
> > a 32-bit byte counter wraps roughly every 13.7 s, so two wraps happen in
> > about 27.5 s. The polling interval is LAN9645X_STATS_CHECK_DELAY =3D 3 =
* HZ,
> > but there is no upper bound on the actual elapsed time between reads:
> > delayed work can be stretched by system suspend/resume, heavy CPU load,=
 or
> > regmap/SPI contention.
> >=20
> > Would it be worthwhile to either bound the worst-case polling gap
> > (e.g. a suspend/resume hook that forces a read, or a timestamp-based
> > sanity check that detects a stretched interval and logs a warning) so
> > that rx_bytes/tx_bytes reported to ndo_get_stats64 and ethtool cannot
> > silently undercount by multiples of 2^32?
> >  =20
>=20
> It is true, and the timing is chosen so at most 1 wrap is supposed to occ=
ur.
> I believe this is the exact pattern already used by ocelot, lan966x, spar=
x5
> and lan969x.
>=20
> Maybe I misunderstand the suspend/resume comment. We do not implement
> support to suspend/resume, but if we did, then I assume you can suspend
> for an arbitrary amount of time, so doing an additional read on=C2=A0
> suspend/resume will not solve this problem?
>=20
> The hw counters are 32bit. To stay synced they must never wrap more than
> once. I think the only way avoid this problem is if we can make absolute
> guarantees about how often the polling code runs?

I think AI is probably asking for too much here. You could stash jiffies
on each work run, and detect potential overflow, but all you can do is
print a warning. During suspend there should be no traffic, so that's
bogus.

