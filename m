Return-Path: <devicetree+bounces-327090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tmu4LjSXV2pNXgAAu9opvQ
	(envelope-from <devicetree+bounces-327090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:20:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AE99675F4BC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:20:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fdZNrWZ6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327090-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-327090-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E9853058250
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C14732A3C9;
	Wed, 15 Jul 2026 13:58:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A912F8E84;
	Wed, 15 Jul 2026 13:58:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123921; cv=none; b=KabllB+l1A4pI52JnnngROqpbC1bxIwTM0cTgNRErXd/RMIJmRzQlcHyyGhkgBW74+tDDbU1i4eopEYuz5kPuBZ8Axm2cFQL+mGKMPuf3mxx5jkDjPs/8jL2HAMwqJxZsKPcURqu8N/NCd7v68INmIYzdrv2L2btzOElMyzv53E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123921; c=relaxed/simple;
	bh=TtjaMHowmPLyOarWnAzWczSPO0iHg57GBSCKyQFi2+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EwSMp/M5aeW7qfnUOJY5GVGrBqbZPXikuIC9U5oKyb81KpJl0ZKtQFq+Kf4l4X/7mM0DJpX5BUcTArL5GS4cxQAMBreo5qNcAdqSdQRbb3FocEckpjkNIwXwuEFQBGjUXtrqNdvos2ESL16w3n20d4LgB2coNVDMQW2Y/k+1qlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=fdZNrWZ6; arc=none smtp.client-ip=198.175.65.15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784123920; x=1815659920;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=TtjaMHowmPLyOarWnAzWczSPO0iHg57GBSCKyQFi2+M=;
  b=fdZNrWZ6n0pTEjFRKBs8qxlU2rL1ub2CmA9Pd9O5i19ClWNvYB2EofPu
   YaGiRVA4gGuxk/TW1Naf2HYxW+/Kq4nMoDQwXUn8P4aYFpo2N9j7M0pRH
   CByxolbLMKrkoyZ1gtQ7CbZeYd1m2huqf4HW7hRdUti9PdRw4/ZXnDINq
   iryy1G98iylu2gx754TUBXjZiKdk5kul2J7q2d7gRsZEKh3VSirC2RJ+c
   QumNMf05w78Dv4RsHHLFHdCojodk8nvo1kV6VWV+7yYpz3RauBKfUmY57
   RUO5EZBznmveI/XNCZfhO+4F/+yfx88LRLSoQ6GtcBd7AHzxspq81rRiz
   A==;
X-CSE-ConnectionGUID: 3HedL9J+SMe1h6Xmfa7nOQ==
X-CSE-MsgGUID: 8pNwl2jtSdOoldZL87fe9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="88438409"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="88438409"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 06:58:39 -0700
X-CSE-ConnectionGUID: EmvoA7ksQvO+UFWeiyq1xQ==
X-CSE-MsgGUID: l5xnwVhYQtys7nESH+6k6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="279462800"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.129])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 06:58:35 -0700
Date: Wed, 15 Jul 2026 16:58:33 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
Cc: Stefan Popa <stefan.popa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Siratul Islam <siratul.islam@linux.dev>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	Ciprian Hegbeli <ciprian.hegbeli@analog.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: add MAX40080 current-sense amplifier
 driver
Message-ID: <aleSCUZhZmhceTqV@ashevche-desk.local>
References: <20260715063652.368501-1-stefan.popa@analog.com>
 <20260715063652.368501-3-stefan.popa@analog.com>
 <aldGAbF4AN8X5CRY@ashevche-desk.local>
 <4r6grtnbddwtaflsak37y4hlofgiudksd3orxamry6eyhnueky@mg75uai5aeu2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4r6grtnbddwtaflsak37y4hlofgiudksd3orxamry6eyhnueky@mg75uai5aeu2>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:noname.nuno@gmail.com,m:stefan.popa@analog.com,m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:siratul.islam@linux.dev,m:u.kleine-koenig@baylibre.com,m:ciprian.hegbeli@analog.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:nonamenuno@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-327090-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,ashevche-desk.local:mid,linux.intel.com:from_mime,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,analog.com:url,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE99675F4BC
X-Rspamd-Action: no action

On Wed, Jul 15, 2026 at 03:41:45PM +0200, Nuno Sá wrote:
> On Wed, Jul 15, 2026 at 11:34:09AM +0300, Andy Shevchenko wrote:
> > On Wed, Jul 15, 2026 at 09:36:17AM +0300, Stefan Popa wrote:

...

> > > +MAXIM MAX40080 CURRENT SENSE AMPLIFIER DRIVER
> > > +M:	Ciprian Hegbeli <ciprian.hegbeli@analog.com>
> > > +M:	Stefan Popa <stefan.popa@analog.com>
> > > +L:	linux-iio@vger.kernel.org
> > > +S:	Supported
> > > +W:	https://ez.analog.com/linux-software-drivers
> > > +F:	Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml
> > > +F:	drivers/iio/adc/max40080.c
> > 
> > David usually asks this to be split between patches to avoid "orphaned" files
> > from the MAINTAINERS perspective.
> 
> I think checkpatch also complains if you do it like the above.

Yep, but DT people say that this is checkpatch's particular problem. They have
their own "maintainer" database via the special field in each of the binding
schemas. Since that discussion with DT people, I'm not going to fight for this
kind of changes, it may be just an IIO level one (if we want this).

-- 
With Best Regards,
Andy Shevchenko



