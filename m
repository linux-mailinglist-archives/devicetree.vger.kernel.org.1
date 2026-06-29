Return-Path: <devicetree+bounces-317246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IGSOMga3QmpiAAoAu9opvQ
	(envelope-from <devicetree+bounces-317246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 20:18:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6BF6DDF75
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 20:18:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QVkIQ0CV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317246-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317246-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38EB93034A1E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76DB9381AF1;
	Mon, 29 Jun 2026 18:18:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740A7379C2C;
	Mon, 29 Jun 2026 18:18:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782757122; cv=none; b=qj2ZO801LtnFZ+JApZ5G7yHOFiNEUWQgXM6vYTYbGgFR+qlSaCAurQH8Sn9RQ+XfJchjh+CTgLoS9v20pvR50t4iesWeBAWPmBF1vOeRcBYpSkPzr54vu7Kqw4Jv51b/qPZaHpf+Isnz5GbWq4I8ANu/EeHxA2aXvMLFdSKr2sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782757122; c=relaxed/simple;
	bh=YaYTwPK9VSSwzepj4GfEnSgg1MVFJLrruAtM52rkhlE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QNAw3Ois7/wJzByi4yQYQHejno2bwcZd2pScA1yGPceojOfkr7sHza8K+bRyFlWBaqrADJQNbQqaquilteOVY+FZkQvANJHUToXcRT/Xprsnm4ckN72922Jz0iJ7d7rScQ9UhoMJmfATMCJybbrEKCyrwizXs7d8MnysV9X63W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVkIQ0CV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8453D1F000E9;
	Mon, 29 Jun 2026 18:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782757121;
	bh=2s+0rhdljTbKBPvKs4FVrQ/4UObODJSaX9xBvfkyyPg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=QVkIQ0CVX29p89bevN664jajE9aqGeMWtLG16n5LsQm/xUYXv0QIP7zTxREWhK5aZ
	 WGCbtXbRlCxkgMFSrDQUAWDiMV6W/gVMr6r3X4bKMdLs3kvLrJ9XMrvRD+RaqoDVH0
	 BsbseXR15RpfHj+XJf6kBy4ag/iZ8tHi9Ejlov9Q//yV77kSaz/wH+LrPX5LwGXJMI
	 j+dj2UZqkVtcZn2NeOOrlwiV7D2k75m268P7adz0SfMCMYiPc+Bd4oCluccWz3KwGS
	 EI51A8vy6+1NoxNWFGCW/F1uLZSDIAahzHybcK2Q1gsMl4DX8KT7UHt9mUKtYwsAq7
	 FSCjWNxpJnDcg==
Date: Mon, 29 Jun 2026 19:18:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Kim Seer Paller <kimseer.paller@analog.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux@analog.com,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/4] iio: dac: ad3530r: Refactor setup to
 table-driven register bank approach
Message-ID: <20260629191834.38a2b8df@jic23-huawei>
In-Reply-To: <akJ5xoMvLWwNvpVN@ashevche-desk.local>
References: <20260629-iio-ad3532r-support-v3-0-f6e4f4abebbe@analog.com>
	<20260629-iio-ad3532r-support-v3-1-f6e4f4abebbe@analog.com>
	<akJ5xoMvLWwNvpVN@ashevche-desk.local>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:kimseer.paller@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317246-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F6BF6DDF75

On Mon, 29 Jun 2026 16:57:26 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Mon, Jun 29, 2026 at 04:31:04PM +0800, Kim Seer Paller wrote:
> > Replace direct register calls in ad3530r_setup() with per-chip register
> > address arrays and bank helpers (ad3530r_set_reg_bank_bits,
> > ad3530r_write_reg_banks). Convert sw_ldac_trig_reg from a static  
> ad3530r_set_reg_bank_bits(),
> ad3530r_write_reg_banks().
> 
> > Convert sw_ldac_trig_reg from a static
> > register address to a function pointer for per-bank LDAC trigger
> > register selection. Switch spi_device_id to named initializers.  
> 
> Split this patch to do one thing per a change.
> 
Perhaps more relevant here is remember to update the changelog.
It doesn't do that last thing as Uwe already dealt with it.

> ...
> 
> > +static int ad3530r_set_reg_bank_bits(const struct ad3530r_state *st,
> > +				     const unsigned int *regs,
> > +				     unsigned int num_regs,
> > +				     unsigned int mask)
> > +{
> > +	int ret;
> > +
> > +	for (unsigned int i = 0; i < num_regs; i++) {
> > +		ret = regmap_update_bits(st->regmap, regs[i], mask, mask);  
> 
> _set_bits()
> 
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return 0;
> > +}  
> 


