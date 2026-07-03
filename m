Return-Path: <devicetree+bounces-320165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TZrzHOW7R2qZeQAAu9opvQ
	(envelope-from <devicetree+bounces-320165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:40:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A71702F9A
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:40:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IRHs5NNR;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320165-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320165-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F3219302F4CA
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C0F3D75C7;
	Fri,  3 Jul 2026 13:33:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688FD371056;
	Fri,  3 Jul 2026 13:33:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783085597; cv=none; b=EGUIF4vSlqSOzI42bk38olpp4bWJXFFumBsDkGLVZx0lCr+CqVePfLRNKaL808JwoyUpuRgfyYqENcO92GdqP7XhhASHsqIqCbXsmOTSrc0rdzxzuVkBGbjyxtCARLxaKbOdeDO0bap+ULQm/3uFNfJfYZJb14YTJ1pwaQ9hepc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783085597; c=relaxed/simple;
	bh=5lQMIgp/+YLQE+iCJ6k4UQOQ5oRotS7kaMpyjTjYKPI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jz8a02g9o8lJ7PddFB2fJkMF2gDoS5Bvawb8Cs5KWrmsi2XpFicAv/usdIdR/GjdAfRR4FV16DOHAa8RwcA2Gp4dSCn+HvJshjahYiSgbLKmqk9ZdlapJsq3mzUTZdcE7yz8eDjYaNSRshft6Obl59YrIWk1yUDkR5dap3BHrjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=IRHs5NNR; arc=none smtp.client-ip=192.198.163.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783085597; x=1814621597;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=5lQMIgp/+YLQE+iCJ6k4UQOQ5oRotS7kaMpyjTjYKPI=;
  b=IRHs5NNRS/SsSgY5AVVYA71TXSsgCYmizw13HhOyXbJIzbsZ4dDS63jS
   EHtgmvrt14SlQjgC0YCnRl4S32n7RaseROPfVCROQ1YkqQU4a0gUQbrfw
   tvd1O1FB3dIqU5KeBVD4GutuIYMfDdBVypJGqEgnwfxMUxprkVPq5TWbC
   1FJExmzFGl2heUdTDh/vpXinAYmNOd1nQU0c9ft4rCpvZug8NipBhQW3Y
   V9R1/qJs0igeKSJlLZPmwxGBGbbei67KhZIAfj1SzJM5ujyOedJ9dXjq5
   itUAdmggJeS5t8aPvqdYvCfPtiJavoeYwesjPIxHSapG9jlMPN8oSDUu0
   w==;
X-CSE-ConnectionGUID: 1Ne5GxcfSdSFg0PF+UFR1w==
X-CSE-MsgGUID: 3NBGSkStS/qlu8mL/aMrHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="86388923"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="86388923"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 06:33:16 -0700
X-CSE-ConnectionGUID: U3qX0QxHQa6ijso6F6Apgg==
X-CSE-MsgGUID: 1Fo2kkbCS/OM0FqlPZExfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="248667297"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.80])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 06:33:10 -0700
Date: Fri, 3 Jul 2026 16:33:08 +0300
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
Message-ID: <ake6FNy83LLtCs3b@ashevche-desk.local>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-7-wenst@chromium.org>
 <ake09vk4fEv1D9QC@ashevche-desk.local>
 <CAGXv+5GNucSXrhL=YxarSJHD2ezzYDK3EovFu-zy012KgZ+ZBg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGXv+5GNucSXrhL=YxarSJHD2ezzYDK3EovFu-zy012KgZ+ZBg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320165-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ashevche-desk.local:mid,linux.intel.com:from_mime,intel.com:email,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5A71702F9A

On Fri, Jul 03, 2026 at 09:17:16PM +0800, Chen-Yu Tsai wrote:
> On Fri, Jul 3, 2026 at 9:11 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > On Fri, Jul 03, 2026 at 07:03:07PM +0800, Chen-Yu Tsai wrote:
> > > usb_port_is_power_on() currently takes |struct usb_hub*|, but only needs
> > > it to tell if the hub/port is SuperSpeed or not.
> > >
> > > In a subsequent change, usb_port_is_power_on() needs access to a pwrseq
> > > state tracking field in |struct usb_port|. Either structure can be used
> > > to identify whether a port/hub is SuperSpeed or not, as the field in
> > > |struct usb_port| is inherited from the hub:
> > >
> > >     port->is_superspeed = hub_is_superspeed(hub)
> > >
> > > Replace usb_port_is_power_on()'s |struct usb_hub*| parameter with
> > > |struct usb_port*| so a subsequent change can use it.
> >
> > At a brief look this will be the only function that takes usb_port
> > instead of usb_hub in the entire hub.h (I don't count container_of()
> > as a function). With that being said I would rather see it to be moved
> > to port.c altogether (yes, it's more invasive change, but looks more
> > consistent).  I would even dare to move struct usb_port (and container_of()
> > accompanied with that) and this function to port.h. This might require
> > a separate patch, though.
> 
> I agree with the reasoning, especially given the function name. However
> I wonder if it would cause problems given the linking order. I'll give
> it a try nevertheless and report back.

Thanks!

In case it won't fly (but I still think it's better to split), can you at least
group usb_port APIs and struct? Means moving the proto closer to that struct
usb_port followed by container_of().

> > Perhaps something like: 1) "move struct usb_port and associated APIs to port.h";
> > 2) "...this patch...".

-- 
With Best Regards,
Andy Shevchenko



