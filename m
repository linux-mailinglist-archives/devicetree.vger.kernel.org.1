Return-Path: <devicetree+bounces-311324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wrxLFoVULWowfAQAu9opvQ
	(envelope-from <devicetree+bounces-311324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 15:00:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B2767E9E0
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 15:00:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FfbbVgJl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311324-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311324-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2D2B93005A91
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 13:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306043E16B7;
	Sat, 13 Jun 2026 13:00:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77ED136AB54;
	Sat, 13 Jun 2026 13:00:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781355650; cv=none; b=H6v5O0uH502WLU0Qr3ecCO3aApnjMUoR8UhWuT3lrPs8wZQAFAp38y39SwpZRm59OSWB8OW9ZkK6Lo1Weqm+Bvv58RYPzmhADncTVVlgfXFOZ+IgsTDT+1gFPA4Ql2qPkwFKSDpSZQSQ/5tKtG2ZJSIxT/sEp1tkmouUQJQtCdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781355650; c=relaxed/simple;
	bh=uxJGwCAsMcpFZ/9RNw7yRRDOB6tqapy/6259X4loI4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P1RsAMWfrfDQwC5VQd2UE9Ni7K1oDCq77Q1fewfHUHWhQfY+0Ui6oQp3sRh1Ow7o11f/9oQDqtrGeHQnk0CU/gEuYglCmqqrR0pwnBhwmMsYJJZa6Nao747rCSEpsU9UrLJlP5vP8MBJEZ/Tt19FGeTwwoDuC32V9reaE3PKpmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=FfbbVgJl; arc=none smtp.client-ip=192.198.163.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781355649; x=1812891649;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=uxJGwCAsMcpFZ/9RNw7yRRDOB6tqapy/6259X4loI4s=;
  b=FfbbVgJlaLbU7wDkIYebsv8aBoR+2+pqYmj+TnJT6WZXNw7CsISppw6D
   oAVTQFHS5TsWqiRZODMb5ED6eGI1oznW9mpUAFOPwhWXnFECPW8ZymwX9
   nnB/5EAcjQiQvhcEgtNJ2sUMJi0Vkk+qjaDfDP6TmOAmJZKoj1Fh0qqv0
   ndPPfYzJXrk2no3gxsRrPtwfufxbQxitRY1q1Kj6GK91yxdj81Jmv2ktM
   e18BZH+U+oVX6yWCRf2LCnRm6kpL0yOCdfcZHHQh1Vm5S8nIqBjklwkzf
   /S4uCJpcQF5+JmNozhaW1ftweeyUg8U4hAe7Zhm/3ul3/vcarq75+oX9v
   A==;
X-CSE-ConnectionGUID: M5kFuq2KQaKWxOiDFgqjVg==
X-CSE-MsgGUID: L76gAwg3TXSKaMOcJDIaug==
X-IronPort-AV: E=McAfee;i="6800,10657,11815"; a="82014780"
X-IronPort-AV: E=Sophos;i="6.24,202,1774335600"; 
   d="scan'208";a="82014780"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2026 06:00:48 -0700
X-CSE-ConnectionGUID: 9YFHfovRT2GI8xWhDYQGUA==
X-CSE-MsgGUID: xEQJQI/xSEusBaz11tHecg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,202,1774335600"; 
   d="scan'208";a="246931274"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.184])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2026 06:00:43 -0700
Date: Sat, 13 Jun 2026 16:00:40 +0300
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
	Alan Stern <stern@rowland.harvard.edu>, linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v2 02/16] device property: Add
 fwnode_graph_get_next_port_endpoint()
Message-ID: <ai1UeO-BZQEEheml@ashevche-desk.local>
References: <20260610084053.2059858-1-wenst@chromium.org>
 <20260610084053.2059858-3-wenst@chromium.org>
 <ailv8HpnrCH3Zb8C@ashevche-desk.local>
 <CAGXv+5EHHWfiWgqPpf-RMKoSQLc2cd9OA4Z36SNoL5C53kVh2g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGXv+5EHHWfiWgqPpf-RMKoSQLc2cd9OA4Z36SNoL5C53kVh2g@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311324-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:stern@rowland.harvard.edu,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,gmail.com,linux.intel.com,collabora.com,rowland.harvard.edu,vger.kernel.org,lists.linux.dev,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,intel.com:dkim,intel.com:email,ashevche-desk.local:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22B2767E9E0

On Fri, Jun 12, 2026 at 04:20:18PM +0900, Chen-Yu Tsai wrote:
> On Wed, Jun 10, 2026 at 11:08 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Wed, Jun 10, 2026 at 04:40:36PM +0800, Chen-Yu Tsai wrote:

...

> > > +struct fwnode_handle *fwnode_graph_get_next_port_endpoint(const struct fwnode_handle *port,
> > > +                                                       struct fwnode_handle *prev)
> > > +{
> > > +     struct fwnode_handle *ep;
> >
> > Unused?
> >
> > > +     while (1) {
> >
> > This is usually harder to read and follow. It's like "pay much attention on
> > the code", but here no rocket science, no code to really pay attention to.
> >
> > > +             prev = fwnode_get_next_child_node(port, prev);
> > > +             if (!prev)
> > > +                     break;
> > > +
> > > +             if (WARN(!fwnode_name_eq(prev, "endpoint"),
> > > +                      "non endpoint node is used (%pfw)", prev))
> > > +                     continue;
> > > +
> > > +             break;
> > > +     }
> > > +
> > > +     return prev;
> > > +}
> >
> > So, this can be rewritten as
> >
> >         ep = prev;
> >         do {
> >                 ep = fwnode_get_next_child_node(port, ep);
> >                 if (fwnode_name_eq(ep, "endpoint"))
> >                         break;
> >
> >                 WARN_ON(ep, ...);
> >         } while (ep);
> >
> >         return ep;
> >
> > But also big question why? to WARN*(). There is no use in the entire
> > property.c.
> 
> Will drop. This function was lifted from drivers/of/property.c then
> adapted to the fwnode APIs, so it still has the structure of its
> origin. With the WARN() gone, rewriting it as do {} while() becomes:
> 
> do {
>         prev = fwnode_get_next_child_node(port, prev);
>         if (prev && fwnode_name_eq(prev, "endpoint"))

'prev &&' is not needed.

>                 break;
> } while (prev);
> 
> return prev;

-- 
With Best Regards,
Andy Shevchenko



