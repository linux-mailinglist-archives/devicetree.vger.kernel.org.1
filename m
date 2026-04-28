Return-Path: <devicetree+bounces-291183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P16Gkb18GnUbQEAu9opvQ
	(envelope-from <devicetree+bounces-291183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 19:58:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CBD48A45C
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 19:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2DE03026AAC
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 17:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6183D44DB6D;
	Tue, 28 Apr 2026 17:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csmj/EkV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E63432AABC;
	Tue, 28 Apr 2026 17:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777398857; cv=none; b=KmV86S7qzHN6RceD7C6gm/7SuBJJJ0zqgDwjsmtvsMdkHVrVyxqYO/cDY2Wgzfk+N9B3KbHHvYV9ti20zwMtGDm+NP32DesQC+NrDcQ/4ITMnS68efiYWg8psk2Hln3TnQ/dEHURX2P0pksqQfbvMBpnOyckRUpXpkOqChEJflA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777398857; c=relaxed/simple;
	bh=dVIXiIwoCKW0sJZFtHXL6Jc4YP+robNzYsnUBNL8Sww=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jzszPvAKnb+OoiQHqD4o7mEZI8BoKr7gg4IMYfhBFIzMPE15IB6z7yVG5Wy5r4Mgn2aZn4X9lBtjPLyLhiiTLJHVwYlqm2PRiHdZPAQe33+zS0/gpoDAGVTGXpcNkZIhhyv5Ug3BL5EXHEwXeHx2VZn+nW/jhhH2Y5VnyPpGQsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csmj/EkV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03A15C2BCB7;
	Tue, 28 Apr 2026 17:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777398856;
	bh=dVIXiIwoCKW0sJZFtHXL6Jc4YP+robNzYsnUBNL8Sww=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Csmj/EkVmwaMf55FqHyurSc+P385tG0HDerYCG5WBJZEF2FOYJCptT+gr7+3WAThR
	 cYPshAW4v2wNqc8uDQEDAKPV1RX4CQQEDkgI2UzXM3fgRXIr9KBA1F8l20YXcS3mxU
	 ePp4O9YLAC2cmb6lImAUyqgQ3uXiFu4PmSvJriJWRe9/kXgX3tqwKIhbrgLL+Z+Zfr
	 IzHCSscI7NueYtGz3b7v/W6k0ShLCJXfcBhaiyBgE1sokaXlBcj1g3F+BELtgUT7SJ
	 DEP80AZNYIPnZqdthxXtgYwsPUkUlkMJ4fDEwyeap4SpD7XU+Xk/0xZn49qCumPmWs
	 wN9/q/k3zPfMw==
Date: Tue, 28 Apr 2026 18:54:04 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Piyush Patle
 <piyushpatle228@gmail.com>, ak@it-klinger.de, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/7] iio: adc: hx711: update Kconfig, module
 description and file header
Message-ID: <20260428185404.26f3da04@jic23-huawei>
In-Reply-To: <CALoEA-w=giUoevbAh+i66ATKfXCr9WUE0R6G6DOMq2xE8cibEA@mail.gmail.com>
References: <20260427100950.33936-1-piyushpatle228@gmail.com>
	<20260427100950.33936-4-piyushpatle228@gmail.com>
	<CALoEA-wAUpZ7_2_3kB33mNB_Y_DAc_p7QwPR9a5pxL1iET_cdw@mail.gmail.com>
	<ae9otn7HuPKVtzsk@ashevche-desk.local>
	<CALoEA-w=giUoevbAh+i66ATKfXCr9WUE0R6G6DOMq2xE8cibEA@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B8CBD48A45C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-291183-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,it-klinger.de,baylibre.com,analog.com,kernel.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]

On Mon, 27 Apr 2026 15:49:06 +0200
Joshua Crofts <joshua.crofts1@gmail.com> wrote:

> On Mon, 27 Apr 2026 at 15:46, Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> >
> > On Mon, Apr 27, 2026 at 12:26:53PM +0200, Joshua Crofts wrote:  
> > > On Mon, 27 Apr 2026 at 12:23, Piyush Patle <piyushpatle228@gmail.com> wrote:  
> >
> > ...
> >  
> > > > +         which are used for bridge sensors such as weigh cells.  
> > >
> > > Typo here.  
> >
> > It's better if you point exactly what the typo is.
> > I think you meant "weigh" that should be "weight"?  
> 
> Yep, that's it, my mistake.

Nope. They are called weigh cells not weight cells.



> 


