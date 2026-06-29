Return-Path: <devicetree+bounces-317242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EZhZNIitQmpO/gkAu9opvQ
	(envelope-from <devicetree+bounces-317242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 19:38:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B166DDCB1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 19:38:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=oFDERMdc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317242-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317242-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46DFC301EB56
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604B837F73C;
	Mon, 29 Jun 2026 17:38:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A863358CA;
	Mon, 29 Jun 2026 17:38:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782754694; cv=none; b=S61jSTO7hBh65fV4jbdXxp57ogOFtZJi8d1Zjr39qtKY2P2ZQO9WrLE1+45CnhzS94Qcyi/Pexs1ryM23YZMfmaFWgyMtDE5jud3PG7X4Ls6J8Cm3g/eug0xRTfk0VJ89x4UI8l0O1ShinHcAfi/Ji26d8n/A0a2GJf6u7FCUrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782754694; c=relaxed/simple;
	bh=Uvqp2waCHDrzlXU0QVPf22/NxsudQ01dIehVK+QNUqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=udktknD+v9UVX+HrtqBWEOnAU0BIF3qCHQWEyX0a/GfKyRKig7XWTPcwaISbI/4mm9Vu8X20kBy7DdQCgw781sBu9lWCF5xpRDUFXQSGD7KXEoTo8lkeIJALJnodyfuJVeK6sHdgYVgFD3U9b4OnS2/SzfthGjC0uZ002agSjjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=oFDERMdc; arc=none smtp.client-ip=198.175.65.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782754693; x=1814290693;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Uvqp2waCHDrzlXU0QVPf22/NxsudQ01dIehVK+QNUqM=;
  b=oFDERMdchxqIIAuWcYNALx4W7U6HWbtmwXgcmRHqmH93zPbwsc1N6ivB
   v0sJIHNFFnAPXLlkFLC3Fn04jptQs4IFfb9I/FUgp3ikXNrxutooSeBGR
   5rL/Zn1jMKPwQh2M4T8nTGCyQaARCZTwl8+Lqs8yJ25JIYF7XHNp+/JuY
   jQsIxI2bRKU1LxG3LTe+MZiHm3reotH0Y6zdLUKFmXjzyQqEbFZWEdHLs
   N7JH6MvhjkM3C6CfHU6NupbitFzfFSGjx1B0gzziZk6mElpPTW5z7FxZ4
   LP4o7cNLUJ+KiYKoKiSWuYIwZt0VoHesnES1pPpWDKXDqOIP3Vud59TTe
   w==;
X-CSE-ConnectionGUID: My9m6v43Tg2w2xs/ITAiZg==
X-CSE-MsgGUID: jaPVedoFSfKWIq85aOGpQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94949444"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; 
   d="scan'208";a="94949444"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 10:38:13 -0700
X-CSE-ConnectionGUID: J8KpsXNRRz+bGnB+1CPy8w==
X-CSE-MsgGUID: JQwSwp9ZSguu1bcxfsWy0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; 
   d="scan'208";a="250318417"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.207])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 10:38:10 -0700
Date: Mon, 29 Jun 2026 20:38:07 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	jic23@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
	dlechner@baylibre.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, julianbraha@gmail.com
Subject: Re: [PATCH v4 3/4] iio: adc: ltc2378: Enable high-speed data capture
Message-ID: <akKtfzF2DtDJlKh8@ashevche-desk.local>
References: <cover.1782397418.git.marcelo.schmitt@analog.com>
 <7d91f48bb03a16e6876e7aeb05fe259e33ae625f.1782397418.git.marcelo.schmitt@analog.com>
 <akIHUgTtyZv44TWv@ashevche-desk.local>
 <akKqhwv4cbR-fL-g@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <akKqhwv4cbR-fL-g@debian-BULLSEYE-live-builder-AMD64>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317242-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt1@gmail.com,m:marcelo.schmitt@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:julianbraha@gmail.com,m:marceloschmitt1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[analog.com,vger.kernel.org,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 41B166DDCB1

On Mon, Jun 29, 2026 at 02:25:27PM -0300, Marcelo Schmitt wrote:
> > > +	/* Double check the minimum CNV high time is met */
> > > +	if (cnv_wf.duty_length_ns < LTC2378_TCNV_HIGH_NS)
> > > +		return -EIO;
> > 
> > Hmm... How is this IO issue?
> 
> Okay, what about EDOM for PWM setup failures? Any error code suggestion otherwise?
> Will follow the other suggestions.

Seems -EDOM is in use in some cases of PWM. I haven't checked those cases, and
if fits I have no objection.

"-EDOM if setting failed due to the exact waveform not being possible"
(from PWM code comments).

-- 
With Best Regards,
Andy Shevchenko



