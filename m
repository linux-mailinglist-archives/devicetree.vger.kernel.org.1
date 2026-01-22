Return-Path: <devicetree+bounces-258632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHsjOyOgcmnangAAu9opvQ
	(envelope-from <devicetree+bounces-258632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:09:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 771E86E0D6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 380273016916
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 22:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C06553A9D9E;
	Thu, 22 Jan 2026 22:09:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA2830EF9D;
	Thu, 22 Jan 2026 22:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769119775; cv=none; b=n0VRtpjWkaPQndc15t8ADJEaVzFXmOtaoEb7hGTPxeAoarxQrnHVeQxxj/wGMdI6KNTI9nOHY19ntVXj/Pa8JpkQQ4saSLs2YZGb6A9W2Fg0yU9zCWxPrl/OG6ZHr2R4pArND0XEX8Ymco6NfSKu+DA2FZvX2tNrcI6dz0F1iuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769119775; c=relaxed/simple;
	bh=HPY1tNdFe79iOk8YjZfoajJADGJa3IUibRiQibIAAwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i1HrjGYfDEiB1lCc7mAq1IKo5qaOLRbOEsKR5FwF4jIY4oIcWLZJ7o6dXPDS5m8vtvSbeP0gxjuPfHf72It2mF4EMALxjL2OCWu2BMou7VA0d9e4wE3YsvQkSlxPZdSxo5FIReutE5Iv0CMqpDyudtCnMsd43t1/DRhxR/kWaw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.27.242])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 33B77340F21;
	Thu, 22 Jan 2026 22:09:22 +0000 (UTC)
Date: Fri, 23 Jan 2026 06:09:18 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
Message-ID: <20260122220918-GYA69249@gentoo.org>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122101122-GYA63789@gentoo.org>
 <77bc5a5f-666d-4beb-ab78-99a242d72a39@sirena.org.uk>
 <20260122121223-GYC63789@gentoo.org>
 <CAH1PCMaRqXHBZQLY02DY=C1rorMc2DZzzE2ziADofWoAQW8Mzg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH1PCMaRqXHBZQLY02DY=C1rorMc2DZzzE2ziADofWoAQW8Mzg@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gentoo.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258632-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@gentoo.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 771E86E0D6
X-Rspamd-Action: no action

Hi Guodong,

On 22:55 Thu 22 Jan     , Guodong Xu wrote:
> On Thu, Jan 22, 2026 at 8:12 PM Yixun Lan <dlan@gentoo.org> wrote:
> >
> > Hi Mark,
> >
> > On 11:27 Thu 22 Jan     , Mark Brown wrote:
> > > On Thu, Jan 22, 2026 at 06:11:22PM +0800, Yixun Lan wrote:
> > > > On 17:43 Thu 22 Jan     , Guodong Xu wrote:
> > >
> > > > > Patch 1, n_voltages is corrected to match hardware register widths, as the
> > > > > previous values prevented regulators from reaching higher operational
> > > > > voltages (e.g., 3.3V on LDOs).
> > >
> > > > This patch bring system-wide change that not only affect Bananapi F3..
> > >
> > > > Please also provide fix for other boards, I think you may not be able
> > > > to test all boards, but make sure the patches are available, so people
> > > > who interested can test, P.S I can help on milkv jupiter board
> > >
> > > Patch 1 looks like it should be OK as is?
> > then with patch 3, and for other boards (milkv jupiter), should have similar
> > DT fix as patch 4..
> 
> There is no "spacemit,p1" node in other k1 boards (milkv jupiter).
> 
yes, there is one which accepted during this merge window, and will show up
in v6.20, please check spacemit tree [1] or [2]

Link: https://github.com/spacemit-com/linux/tree/k1/dt-for-next [1]
Link: https://lore.kernel.org/r/176618016976.76638.11221127377007758575.b4-ty@gentoo.org [2]

-- 
Yixun Lan (dlan)

