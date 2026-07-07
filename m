Return-Path: <devicetree+bounces-321855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FggjO1jETGqZpQEAu9opvQ
	(envelope-from <devicetree+bounces-321855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:18:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 044ED719A14
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:18:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="CkvJ4zQ/";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321855-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321855-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2B8F3027134
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A32D39C63E;
	Tue,  7 Jul 2026 09:05:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB4E390C94;
	Tue,  7 Jul 2026 09:05:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783415127; cv=none; b=cpsAvuI/uY+U4EvbjFd0VQqwqRhvELIvvK088AEuUj2kc/lgkjSY031NsIf3hmn1JqLkOzGe+QfHnAzW6kPtyd8ZJi4cO2LbAiSvtlSvE4OJo/RmLc4c6TLPxUn3r1aJ7GXo9XR3hlUrej+vCa2ZYGQtuDWfBgR2EsvEtr2Wlu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783415127; c=relaxed/simple;
	bh=gKXaUE1a/lj7ODJJG8Iu0vM/NcsyBp3SmPPenh/MKEY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UxFj7lDAyALU307oTe0LTKzFL/iB8xT5OXCDfqVE5ocDY4EjS4bN01JvVY9xmGWRAdsImK79pee98pYbALC015KY4zQJLnYjFUTVplzW8fc41xdjsxYh0e5lUdtqy404tuaI8x+rxU5rdQ/0Zw+yatJ7YmSn4tfw+mkCNtDJJKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=CkvJ4zQ/; arc=none smtp.client-ip=198.175.65.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783415126; x=1814951126;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=gKXaUE1a/lj7ODJJG8Iu0vM/NcsyBp3SmPPenh/MKEY=;
  b=CkvJ4zQ/LcA+tTb0HfvPc+BOfNVOqoYcsgECytX//YdH8D/g9Zk3okYh
   0doN4ne67erXR23J33wrge8OfHIzWueDYHcPWXuoikM6CwwKo5IDlhcNi
   kjCQj3/FEwFCX364v/sk5Rjq+wK9rCtAD1UfksTSPIWqUxidM9rG03FEC
   pp3iYucNrZzaqJ5+vhQjfNGnbfqSQjXojHQoaa9aOZNIBSM0zgAAv87CG
   mHTVjE293t5ddjq1euhsxPmNyCtVjn5GNEZaR+wYkN58gz44Ar/bD9E0u
   2FwlAYr+dRpKxYiiEmosdVclhuOPlQb5HQACionzKW4Ul/xMKcyEyelGl
   g==;
X-CSE-ConnectionGUID: mLmplZFXSXm0N/erZowTQA==
X-CSE-MsgGUID: 5PmLlCFHQE+LyO1VDOxc7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="95211606"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="95211606"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 02:05:26 -0700
X-CSE-ConnectionGUID: IE34WxJFSwa0yBGRxtVjhw==
X-CSE-MsgGUID: 5Hee06dDRh+ykBUiAm1gtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="251274968"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.178])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 02:05:20 -0700
Date: Tue, 7 Jul 2026 12:05:18 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-acpi@vger.kernel.org, driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v3 06/13] usb: hub: Pass |struct usb_port*| to
 usb_port_is_power_on()
Message-ID: <akzBTumMCGFU-zAJ@ashevche-desk.local>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-7-wenst@chromium.org>
 <ake09vk4fEv1D9QC@ashevche-desk.local>
 <CAGXv+5GNucSXrhL=YxarSJHD2ezzYDK3EovFu-zy012KgZ+ZBg@mail.gmail.com>
 <ake6FNy83LLtCs3b@ashevche-desk.local>
 <CAGXv+5EgpizA3Pc8ScNuChPhvFKWd5F6dxB-wT4-7EwabE-9dQ@mail.gmail.com>
 <akvRMcGnUPxE3sxR@ashevche-desk.local>
 <CAGXv+5EqsDbzTg9eDMGK3Ph6Pe3_uDoSrjVL4q23cy6jZCk2tw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGXv+5EqsDbzTg9eDMGK3Ph6Pe3_uDoSrjVL4q23cy6jZCk2tw@mail.gmail.com>
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
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321855-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:bartosz.golaszewski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,gmail.com,linux.intel.com,collabora.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,rowland.harvard.edu,oss.qualcomm.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,intel.com:email,intel.com:dkim,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 044ED719A14

On Tue, Jul 07, 2026 at 12:29:05PM +0800, Chen-Yu Tsai wrote:
> On Tue, Jul 7, 2026 at 12:01 AM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Mon, Jul 06, 2026 at 07:08:07PM +0800, Chen-Yu Tsai wrote:
> > > On Fri, Jul 3, 2026 at 9:33 PM Andy Shevchenko
> > > <andriy.shevchenko@linux.intel.com> wrote:
> > > > On Fri, Jul 03, 2026 at 09:17:16PM +0800, Chen-Yu Tsai wrote:
> > > > > On Fri, Jul 3, 2026 at 9:11 PM Andy Shevchenko
> > > > > <andriy.shevchenko@linux.intel.com> wrote:
> > > > > > On Fri, Jul 03, 2026 at 07:03:07PM +0800, Chen-Yu Tsai wrote:

...

> > > > > > At a brief look this will be the only function that takes usb_port
> > > > > > instead of usb_hub in the entire hub.h (I don't count container_of()
> > > > > > as a function). With that being said I would rather see it to be moved
> > > > > > to port.c altogether (yes, it's more invasive change, but looks more
> > > > > > consistent).  I would even dare to move struct usb_port (and container_of()
> > > > > > accompanied with that) and this function to port.h. This might require
> > > > > > a separate patch, though.
> > > > >
> > > > > I agree with the reasoning, especially given the function name. However
> > > > > I wonder if it would cause problems given the linking order. I'll give
> > > > > it a try nevertheless and report back.
> > > >
> > > > Thanks!
> > > >
> > > > In case it won't fly (but I still think it's better to split), can you at least
> > > > group usb_port APIs and struct? Means moving the proto closer to that struct
> > > > usb_port followed by container_of().
> > >
> > > Looks like it works out fine. port.o is linked in after hub.o, so moving
> > > the function from the latter to the former doesn't cause issues. One might
> > > even say that it is the correct thing to do.
> >
> > That's what I say! :-)
> >
> > > > > > Perhaps something like: 1) "move struct usb_port and associated APIs to port.h";
> > > > > > 2) "...this patch...".
> > >
> > > There are still some left in hub.c:
> > >
> > > static void usb_lock_port(struct usb_port *port_dev)
> > > static void usb_unlock_port(struct usb_port *port_dev)
> 
> These are only used internally in hub.c as a wrapper for the port mutex.
> 
> > > static void port_over_current_notify(struct usb_port *port_dev)
> 
> This is only used by the hub's overcurrent event handler.
> 
> > > static void hub_usb3_port_prepare_disable(struct usb_hub *hub,
> > >                                           struct usb_port *port_dev)
> >
> > This one takes hub as well.
> >
> > > These are used only in hub.c and moving them probably makes things
> > > messier?
> >
> > Perhaps better naming to each (kinda moving to usb hub namespace)?
> >
> > > OOTH, the following bits are in port.c but declared in hub.h:
> > >
> > > int usb_hub_create_port_device(struct usb_hub *hub,
> > >          int port1);
> > > void usb_hub_remove_port_device(struct usb_hub *hub,
> > >          int port1);
> > >
> > > Any preferences for these while we're reorganizing the code?
> >
> > These ones would be good to be in hub.c if there is no circular dependencies or
> > alike.
> 
> Those two, along with all the static functions they call, ends up being
> half of port.c. That doesn't help the size of hub.c, which is already
> over 6000 lines. I think I'll leave this one as is.

For now, perhaps at some point in the future we can reconsider and refactor
it more.

> Both this part and the remaining bits in hub.c I mentioned above are
> outside the scope of this series. We can discuss whether they really
> need to be moved or renamed.

Sure.

-- 
With Best Regards,
Andy Shevchenko



