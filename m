Return-Path: <devicetree+bounces-324308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8C3ODLi6UGpn4AIAu9opvQ
	(envelope-from <devicetree+bounces-324308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:26:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3F5739021
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:26:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EWR3Fvx8;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324308-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324308-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC88B30226A9
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 612733D669E;
	Fri, 10 Jul 2026 09:14:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7647F3D5252;
	Fri, 10 Jul 2026 09:14:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783674897; cv=none; b=qEj5j54tLT8SWIFm/vH2+ZqJaEtRDpDrohCXWQ6eJwxuyr6Ue1DI/lVgF5n3kD4414xE9NIHsf687l95KXF/uZJIlGfa4ZC2PF2C3fk69m5MKratqnLz94w0obuP6F6/0HKlXXX3uM8FCmeT5etShn8tQJqSAs4g8eZ5R1B0Uj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783674897; c=relaxed/simple;
	bh=NHObOasBO1mbz1e0TQV45gH7F/d1aalutRP4xoBIPao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PymO5px5uZFMSQ4YMLkQrXEUWSHt6uhz8sUXLSSRmH0jbmH6srKrO0rqkr/LW5JeU28GmTxj6I987xQIQrpjIDmMlrLjMu76Nttnl67vbdkAu6LzqElxpDolCMwJLuM3+U+fYgShwBnRS1rzii6+sWg3HuejXN0jUiFFRS+mIXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=EWR3Fvx8; arc=none smtp.client-ip=192.198.163.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783674895; x=1815210895;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NHObOasBO1mbz1e0TQV45gH7F/d1aalutRP4xoBIPao=;
  b=EWR3Fvx8y3pPBqYAr5wyCi7RQqQEt9g5BgkCgVsayInuMz6TKrzkca2v
   rJ5N4oHLlwt0nGLd5N1i3Cq8LKK2WVtxqoQPiheZFiMn6NRDePJyRMiF6
   z7MJC4nOPW25O/vzbQabYKksHhY2bpe4I9Oagog4dEh8aX4uj53Cr1M15
   GFMBS4hEBrtsbUm1uOoktAjSlWDSvGLU94b06Shk3QVDNCtfygcsddXkO
   KVeSP4/0yeEYvcB6523+oFHccDzfZJxz75Ch60v5ooIxeCYC0VduyN3tk
   ATpOfVxI0ysx0DJQtk1TlExKcTS442K0NnODmULG9D4Ah9yFWPuJSeWS4
   Q==;
X-CSE-ConnectionGUID: SpdQki/VT8qH/fYAGnHtrw==
X-CSE-MsgGUID: 7BgJw6o9TO2IfnkOUBbUNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94977001"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="94977001"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2026 02:14:54 -0700
X-CSE-ConnectionGUID: 95jtEdiWSFeDoZWrYdUlDQ==
X-CSE-MsgGUID: o3lpTKMYQDC/a4ZhHSNw9w==
X-ExtLoop1: 1
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.100])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2026 02:14:50 -0700
Date: Fri, 10 Jul 2026 12:14:48 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Benjamin Larsson <benjamin.larsson@genexis.eu>,
	John Ogness <john.ogness@linutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Gerhard Engleder <eg@keba.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Binbin Zhou <zhoubinbin@loongson.cn>,
	Rong Zhang <rongrong@oss.cipunited.com>,
	Lukas Wunner <lukas@wunner.de>, Lubomir Rintel <lkundrak@v3.sk>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH 2/4] serial: 8250: export serial8250_get_baud_rate()
Message-ID: <alC4CLlTWsUHzJ-a@ashevche-desk.local>
References: <20260709205656.319531-1-ansuelsmth@gmail.com>
 <20260709205656.319531-3-ansuelsmth@gmail.com>
 <alAT4QMOi8U2ITho@ashevche-desk.local>
 <6a501516.a1b3dc3f.1e550b.96ea@mx.google.com>
 <alCrYPnk-0FmDnqw@ashevche-desk.local>
 <6a50b219.359f6b3d.bc30a.da0b@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a50b219.359f6b3d.bc30a.da0b@mx.google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-324308-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:benjamin.larsson@genexis.eu,m:john.ogness@linutronix.de,m:m.felsch@pengutronix.de,m:eg@keba.com,m:jiaxun.yang@flygoat.com,m:rdunlap@infradead.org,m:zhoubinbin@loongson.cn,m:rongrong@oss.cipunited.com,m:lukas@wunner.de,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-serial@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F3F5739021

On Fri, Jul 10, 2026 at 10:49:27AM +0200, Christian Marangi wrote:
> On Fri, Jul 10, 2026 at 11:20:48AM +0300, Andy Shevchenko wrote:
> > On Thu, Jul 09, 2026 at 11:39:32PM +0200, Christian Marangi wrote:
> > > On Fri, Jul 10, 2026 at 12:35:02AM +0300, Andy Shevchenko wrote:
> > > > On Thu, Jul 09, 2026 at 10:56:50PM +0200, Christian Marangi wrote:
> > > > > Some driver might need to access the current baud rate to correctly
> > > > > configure it.
> > > > > 
> > > > > Export the serial8250_get_baud_rate() function to limit code duplication.
> > > > 
> > > > Why?
> > > > 
> > > > We have _get_divisor() / _set_divisor() for exactly that purpose, no?
> > > 
> > > I can only see set and I'm not following how that helps with any driver
> > > that needs to get the baud_rate?
> > 
> > You operate on the divisor settings instead of baud rate. Otherwise, can
> > you elaborate why no other (out of dozens!) driver needs this? What do
> > you try to achieve with the baud rate settings exactly?
> 
> Ok it wasn't easy to find but you were referring to the .set_divisor and
> .get_divisor. Now it's clear. Yes I guess I can use them instead of
> exporting this function.
> 
> Sorry for the noise and thanks for the suggestion! 

Ah, it was me a bit unclear, By _*_divisor() I referred to the wrappers
on top of .set_divisor() and .get_divisor(), I should have spelled that
more clearly. In any case the driver is suppose to fill callbacks and 8250
set_termios() will use that.

-- 
With Best Regards,
Andy Shevchenko



