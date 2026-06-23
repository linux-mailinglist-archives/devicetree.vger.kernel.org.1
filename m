Return-Path: <devicetree+bounces-314732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B7hQF4BUOmoP6QcAu9opvQ
	(envelope-from <devicetree+bounces-314732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:40:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A459F6B5DEF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:40:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=F2dfrJMl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314732-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314732-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F75D301AB9D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 09:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB7C3C73C9;
	Tue, 23 Jun 2026 09:40:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DB9364049;
	Tue, 23 Jun 2026 09:40:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782207603; cv=none; b=VP5cvOWE3zzSUG0PxUQ7cWp5w1UdTzph7gpc532xKUWvSrTK6qu9+poMA6N/PYr06N/ICCzL2sjzxEk4A100LsRZf/z8L0kxkD0Dj5KsDp6xNccEf7YitlGWaYqURoSHLqdKfdsUWLMRecr+NziwIIjo6CyO+PnKuYmvPUU1lFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782207603; c=relaxed/simple;
	bh=g/Thmy1vvnE00Hi3Mc4Hp+GM4jh2dSNPLnBK7tDhi98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WJ2AW80O1QhzgarIqUrgorV6BhPCYjkkMZJZ+OCkTsX6XGYhlPbhyt4xKOHLj4MjVB3sV603prLL9SrPzIXn8JkbzdHsg62OHbTlOYXtiKKtwXSKz9SmuRkBoCCpBFR7i1j1LPQeZVrdEoHbUq3UaX8H7kOuSqLEG+UijnFdUtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=F2dfrJMl; arc=none smtp.client-ip=192.198.163.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782207602; x=1813743602;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=g/Thmy1vvnE00Hi3Mc4Hp+GM4jh2dSNPLnBK7tDhi98=;
  b=F2dfrJMlC8X2KQprVpVNKGs+7R1sVPhDb5rxMvo6gPLFC2Q6RLYzPZb9
   M2gf7WbmdYiBXoDMsUERjLf5m0PzJbALH7bt/Hwujwy9dDcX8EFicrNHh
   3Ugyfj6IuKXDJDqft4VkCDjtkMwbaOFcI9W/SV5hjpGxHawH9UMOhxhWa
   Zzv2Mxx+VQRB3+STo4zTUGavwwHm3zAe8S0J5jjAzcQaFna21dtIAOB1k
   HPGD79FG4HOyHFGQ8GgCkA5htFAik6op1WMaJP4QEIcL0IZW2N8nKmaWu
   N6UWE1eHit5hDgz1H8H9omSPnN+itIp0WemWABU+8PHPwmpYn5qBiHp8H
   Q==;
X-CSE-ConnectionGUID: lWoOZF+wSxi5cYnhJxbbiQ==
X-CSE-MsgGUID: wCguU/EUSGGD/fItMOQYcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="108488968"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="108488968"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 02:40:01 -0700
X-CSE-ConnectionGUID: j+sGnqWyRUSKuHmwSOmfbQ==
X-CSE-MsgGUID: CPn7FJUsQAGZ/Dw59op9nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="254570642"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 02:39:57 -0700
Date: Tue, 23 Jun 2026 12:39:55 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Jakub Szczudlo <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, antoniu.miclaus@analog.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dlechner@baylibre.com,
	duje@dujemihanovic.xyz, jic23@kernel.org,
	jishnu.prakash@oss.qualcomm.com, jorge.marques@analog.com,
	krzk+dt@kernel.org, linusw@kernel.org, linux-kernel@vger.kernel.org,
	marcelo.schmitt@analog.com, mazziesaccount@gmail.com,
	mike.looijmans@topic.nl, nuno.sa@analog.com, robh@kernel.org,
	sakari.ailus@linux.intel.com, wens@kernel.org
Subject: Re: [PATCH v4 1/3] iio: adc: Fix incorrect reading when datarate
 changed in single mode
Message-ID: <ajpUa1adlePVuqE1@ashevche-desk.local>
References: <20260622221550.374235-1-jakubszczudlo40@gmail.com>
 <20260622221550.374235-2-jakubszczudlo40@gmail.com>
 <ajpO9zaZbIl3x1uC@ashevche-desk.local>
 <20260623112953.000066cc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260623112953.000066cc@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314732-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jic23@kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:joshuacrofts1@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,topic.nl,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,intel.com:dkim,intel.com:email,intel.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A459F6B5DEF

On Tue, Jun 23, 2026 at 11:29:53AM +0200, Joshua Crofts wrote:
> On Tue, 23 Jun 2026 12:16:39 +0300
> Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

...

> > > +	return read_poll_timeout(ads1100_new_data_not_ready, data_ready,
> > > +				 !data_ready, wait_time,
> 
> I'd actually be all for using `data_ready != 0`, to make the condition more
> readable.

I am okay with either. It might be slightly clearer if the comparison is done
for some dynamic counting or so, when 0 is not special.

...

> > > +		PM_RUNTIME_ACQUIRE_AUTOSUSPEND(&data->client->dev, pm);  
> > 
> > > +  
> > 
> > This blank line is not needed as they are coupled, but I don't know if we have
> > an agreed style in IIO for this.
> 
> I'd be surprised if there was an agreed style, as there aren't any IIO drivers
> that use this specific macro (not in mainline at least). Additionally, might I
> suggest using `PM_RUNTIME_ACQUIRE_IF_ENABLED_AUTOSUSPEND` as it is more generic?

We have other PM_ACQUIRE_*() macros in the drivers in IIO, so we have some style,
but I haven't checked what is that.

-- 
With Best Regards,
Andy Shevchenko



