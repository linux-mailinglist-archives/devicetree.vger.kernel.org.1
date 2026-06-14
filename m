Return-Path: <devicetree+bounces-311481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LYOFG+fgLmqz5gQAu9opvQ
	(envelope-from <devicetree+bounces-311481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 19:12:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF25681BFD
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 19:12:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WJENZEyZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311481-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311481-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8B8430068F7
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 17:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67AE735E95F;
	Sun, 14 Jun 2026 17:11:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F69D20DD51;
	Sun, 14 Jun 2026 17:11:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781457100; cv=none; b=rtNjHWOfFszEmF3Jx18aAf7iEMWOJKj3ygZngM9ohlrgbF5PvFtFtCNw3Zm1h3kV6DgJ3tP5xXN7EEp5nghW6HoyIMUpAqt55CGUDh4wz7+eJIUNj/5NADMYup1+Dm7n/PWHjKbqrJpH/Asc1daQUlQOv0yNqEWYQOAZv0dfDH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781457100; c=relaxed/simple;
	bh=/EocOuA0/trkp1XprG5IxQTBMRoCl+rKz2ahWR2n0wQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MlzoqxL8pfYT0I0fMo+BPwqvPXg6WIfQtxPpwmnoM7ICT42gCqE5dXvcx5KxnbbJd4JilndUlBPi+j22cGFmjk8s/ID6QuWu870+np2//wvLQNLr5f0/YfuhJ4xObSvMH0mu0yZPw1p+D118yA2HvyXmzf5PRmi05cEWzWPje4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJENZEyZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67D801F000E9;
	Sun, 14 Jun 2026 17:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781457099;
	bh=DCdzVaLtfObb9ZWcY0NE9dFqLduRZkfGF/mOGT7kBic=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=WJENZEyZBWe3+949+6oiVJgtitZd3LYuAyoJFHmYSKCxnRwM/AMDYzq1nYrKbNSIT
	 LunA/Hb6tG5KJz1R4yC2F8D7z8/kBN0R5UlCPbDnS28MUXoWrwCyMAJX7KHOgRlILA
	 ePSPKMM4r1FP+kZiCA2L/17m1RX7huz+ImquUWSJRPNmbqVaBnn/bWk5SZV+wgcGOU
	 jr8LI5sF6WWXV/8FsEPx+u+f+H8hqc6xmTB5PrjISjG/YwZcLh/KMVZNOiVl51kLKI
	 aA/lN4/X21MWjDIuCjIana8E+k8ktTpCxbEPiiEdtDCc2HA0WX96IsfM2IkpbtuWyg
	 0BZSzL2SUMt1A==
Date: Sun, 14 Jun 2026 18:11:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Roman Vivchar <rva333@protonmail.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee
 Jones <lee@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v2 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC
 driver
Message-ID: <20260614181128.4c1b762a@jic23-huawei>
In-Reply-To: <aihqeLKHC3PP436t@black.igk.intel.com>
References: <20260609-mt6323-adc-v2-0-aa93a22309f9@protonmail.com>
	<20260609-mt6323-adc-v2-2-aa93a22309f9@protonmail.com>
	<aihbxowyAIlSeDjH@ashevche-desk.local>
	<hacDZbv1Whk_g8AMSfJqKHrgXfyVKt2o3_UGK-1k9jNRJyMxEFPztGhytHvHbc1x9j-F84I_ZuprmXWf2Azbtdqj2vnVal4PO1gG_DijYyA=@protonmail.com>
	<aihqeLKHC3PP436t@black.igk.intel.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311481-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:rva333@protonmail.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[protonmail.com,baylibre.com,analog.com,kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,jic23-huawei:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDF25681BFD

On Tue, 9 Jun 2026 21:33:12 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Tue, Jun 09, 2026 at 07:15:42PM +0000, Roman Vivchar wrote:
> > On Tuesday, June 9th, 2026 at 9:30 PM, Andy Shevchenko <andriy.shevchenko@intel.com> wrote:  
> > > On Tue, Jun 09, 2026 at 04:31:59PM +0300, Roman Vivchar via B4 Relay wrote:  
> 
> ...
> 
> > > > +	case IIO_CHAN_INFO_RAW:
> > > > +		scoped_guard(mutex, &auxadc->lock) {  
> > >
> > > I'm wondering why we haven't moved to guard()() here  
> > 
> > The compiler would complain about 'cannot jump from switch statement'
> > due to default case.  

See the brackets Andy suggested.  That error is what you get without specifically
defining the scope.


> 
> I am not sure I follow. See the examples in the existing drivers. They are
> warning clean in that sense.
> 


