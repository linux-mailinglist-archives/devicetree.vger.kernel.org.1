Return-Path: <devicetree+bounces-297126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GHyJmzlBGohQQIAu9opvQ
	(envelope-from <devicetree+bounces-297126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:56:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BD453AB90
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:56:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 099E3300B461
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22679386C17;
	Wed, 13 May 2026 20:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="P/ja/fKq"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA50E363084;
	Wed, 13 May 2026 20:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778705769; cv=none; b=QIoh4fG6bAbMvv/MRC0gsqNY3iIUL11jC9kD2Vlzq9FimTkirAf1pC8+Vy/NEafVy7IIFC/kwOwq03baR4mpBMgwCf0qtlBp/eRN2kcYhSEP3V1grLkaJQtBQsKXBnH7GSDg6dOsoQqaE5ehKiKubymVigUiv7voPkAWDOHcuxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778705769; c=relaxed/simple;
	bh=V4y+OjS8E1WJzQXloo/NVjG5JG5WZAq1w3Lv2299+GU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kqs2wQ5xtQHKpOTNrMTzjQFOERVaQeYe7aqAVFG/2hlTkL4LbjRzcBhtSE9nlZNQ0MAJMyjP4JvipHVgVpGSK1hkmB6Yj5/cOPG14gr4Fo+lQYAD5Vic215XE/F94JK02AndosW1iQ1aB3ISqRJ/AE0KOkdPryDg6i0tAS+mmug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=P/ja/fKq; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778705767; x=1810241767;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=V4y+OjS8E1WJzQXloo/NVjG5JG5WZAq1w3Lv2299+GU=;
  b=P/ja/fKqrHznDcfrPxb0X+mwXvV0DroDlaOCNT8/Re9LAN73r7ysX371
   n915pp7xslUH7LK4l3TWul9xBcx+s/hlorbEczsLYPw2U5mx1MgutCAE6
   AFhcbm3l3XkygwHrSFDIsGqI+Z/E3plt2d9xenixScQOrGtiKJoHV17RS
   cWs0nnrBtoagpX/r6Vf+c3ctWdaH7m+1KfY3AI9lxX+aF/DvJW6lwgMYS
   uQD+f8JkVvVEhPGpjSMAZ/Utue7OvwaZ0ajmtexHKgu6k2LflZO24ZMug
   AF7CyOe5PE57AQKgSOfvn9k4LCayRCcfjEqRVY99Hk7gF6VInE/05y2xp
   g==;
X-CSE-ConnectionGUID: UQjkc83VSrmKQvBGtGy+oA==
X-CSE-MsgGUID: Z/d9Vp7eSGeRPCZcHek8BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79596719"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="79596719"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 13:56:07 -0700
X-CSE-ConnectionGUID: bRw1Kc4SRKurZCtH1z+efg==
X-CSE-MsgGUID: r1K5P1YwRau7iK7LpcFRFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="261944455"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.106])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 13:56:04 -0700
Date: Wed, 13 May 2026 23:56:01 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rishi Gupta <gupt21@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] iio: light: veml6030: fix channel type when
 pushing events
Message-ID: <agTlYWBzzcbidNOO@ashevche-desk.local>
References: <20260513-veml6031x00-v2-0-4703ca661a1d@gmail.com>
 <20260513-veml6031x00-v2-2-4703ca661a1d@gmail.com>
 <agS5Xu8ORtEwuwOB@ashevche-desk.local>
 <DIHR47ZGCUOK.2CNX05W0I8F6F@gmail.com>
 <agTY71MPPJ1b7qLC@ashevche-desk.local>
 <DIHUBAWF7RQ4.205UNZAU31THF@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DIHUBAWF7RQ4.205UNZAU31THF@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 43BD453AB90
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-297126-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,gmail.com,baylibre.com,analog.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:dkim,ashevche-desk.local:mid]
X-Rspamd-Action: no action

On Thu, May 14, 2026 at 09:44:00AM +1300, Javier Carrasco wrote:
> On Thu May 14, 2026 at 9:02 AM +13, Andy Shevchenko wrote:
> > On Thu, May 14, 2026 at 07:13:41AM +1300, Javier Carrasco wrote:
> >> On Thu May 14, 2026 at 6:48 AM +13, Andy Shevchenko wrote:
> >> > On Wed, May 13, 2026 at 05:49:42PM +1300, Javier Carrasco wrote:
> >> >> The events are registered for IIO_LIGHT and not for IIO_INTENSITY.
> >> >> Use the correct channel type.
> >> >
> >> >> This bug was introduced in the first version of the driver.
> >> >
> >> > Unneeded detail, if it's a bug, use Fixes tag.
> >>
> >> >> When at it, fix minor checkpatch code style warning (alignment).

...

> >> >> -	iio_push_event(indio_dev, IIO_UNMOD_EVENT_CODE(IIO_INTENSITY,
> >> >> -					0, IIO_EV_TYPE_THRESH, evtdir),
> >> >> -					iio_get_time_ns(indio_dev));
> >> >> +	iio_push_event(indio_dev, IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
> >> >> +						       0,
> >> >> +						       IIO_EV_TYPE_THRESH,
> >> >> +						       evtdir),
> >> >> +			iio_get_time_ns(indio_dev));
> >> >
> >> > AFAICS the indentation is still broken. Why not doing like this:
> >> >
> >> > 	iio_push_event(indio_dev,
> >> > 		       IIO_UNMOD_EVENT_CODE(IIO_LIGHT, 0, IIO_EV_TYPE_THRESH, evtdir),
> >> > 		       iio_get_time_ns(indio_dev));
> >>
> >> Thank you for your feedback. According to checkpatch.pl, both variants
> >> are fine. Mine takes into account the indentation within
> >> IIO_UNMOD_EVENT_CODE(),
> >
> > And still have broken indentation with the last parameter. So it's not fine.
> 
> I am sorry to insist on this, but I beg to differ. The last paramter
> (iio_get_time_ns()) is properly

Nope. It's aligned with TAB TAB TAB, the correct one is TAB TAB 7 spaces.
I dunno what the editor or fonts you are using, but that's what I see with my
Vim and monospace fonts.

> aligned as an argument of
> iio_push_event() and not IIO_UNMOD_EVENT_CODE(). That is exactly my
> point: with my indentation it is clear that iio_get_time_ns() is an
> argument of iio_push_event() and not IIO_UNMOD_EVENT_CODE() because of
> the alignment. Moreove, my proposed alignment (which again, is fine with
> checkpatch --strict and the original one for example wasn't) is
> consistent with many usages of iio_push_event() in existing drivers. I
> just checked that there are dozens like mine, being the majority when it
> comes to this kind of indentation.
> 
> >> and yours only accounts for the indentation for
> >> the arguments of iio_push_event(). Moreover, your suggestion goes beyond
> >> 80 characters and mine does not,
> >
> > When it's about readability the 80 characters is not a strict limit.
> >
> >> so I would prefer sticking to mine if
> >> possible.
> >
> > I recommend to reconsider. Mine has no indentation issues, the only subtle
> > "problem" is 86 character line. And looking at the result I find mine better
> > to read (hence the exception may apply and we are fine with the length of
> > the line).
> >
> >> As I said, it passes checkpatch --strict without warnings
> >> in both cases.
> >
> >> I will send a new version adding the Fixes tag and removing the comment.
> >
> > Make it the first patch as the currently first one does not sound like a fix
> > to me.
> 
> Ok, I will make this one the first patch of a smaller series with the
> right Fixes tag added to it and removed from the other patch that
> affects veml6030. I will split the new driver in smaller chunks and send
> it as a dedicated series but continuing with the current versioning.

Thanks!

-- 
With Best Regards,
Andy Shevchenko



