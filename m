Return-Path: <devicetree+bounces-320166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0qilEq2+R2pNegAAu9opvQ
	(envelope-from <devicetree+bounces-320166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:52:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 945B3703149
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:52:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Gj2ig/+L";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320166-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320166-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 022AB30D5648
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2743D9DD3;
	Fri,  3 Jul 2026 13:34:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FDE3D9DB6;
	Fri,  3 Jul 2026 13:34:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783085662; cv=none; b=u6tYJThEkZR56qwQrM+I5qLpO2BxIguIcsMw5OchixEqjjsj5QmU7avvU60KI5H49ki0DlPmXuaT39zr2YxkVkGmTb5H+M+s1YlChdUSCLxXUMZ6bh7H17whQEUqXAgRT4ELgWukD5L/WfBNhbBCxh4pY4ppxOJen3vBU+y3UEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783085662; c=relaxed/simple;
	bh=+YDsaVWOUv1RxK+8utVxCX1+Gsf9vT/ItASTLwgreuo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=STMKzPnO7OCrDDHfCZnNSncbhkEi9mzdSrl2enPgTa4jWFPcG7MQdf690JMKplgKt+z0rgjh7zfrAbzhsb6/2jtk5aVDAnp0o8whd/C7M/DLp8lTvzkaM9MGPOxfQJAoIBFOeDCqKKqHOuUYKcITcw2zvHk77fAbOU/stGMly4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Gj2ig/+L; arc=none smtp.client-ip=192.198.163.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783085661; x=1814621661;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=+YDsaVWOUv1RxK+8utVxCX1+Gsf9vT/ItASTLwgreuo=;
  b=Gj2ig/+LV1aR0y7ZZplV5ve6G48G4O5jhfP2EBF+Q0wF2AW5NDsA2zat
   7hrXtCZRhyidwEfwrHovSGsQUVLRXQFMYLrXZUGSH4iOhbZrT4g8Fhce/
   cHnwjGgE1f0Fg+8hJbKJdNcCOO8zwuxzGGnOPKhNahM0YDn3iQLgFtzKg
   aVu9ch58/O5j9bqMgnMSxeyRxg7yli2hXvCIHPFebxyHK0MU3MCPE9KQj
   Y/4GZZfLd5tD6FXPDMaWH9wyEtp0CUUZwKRuqZxATs+UMvPWGOzuicwxW
   knqVBEN5dCLvKZYxmBDkb0EGTmChy9/bvkCwbPXOnFSFw8BD1LtxkFuXH
   A==;
X-CSE-ConnectionGUID: rvmhoqdmQn+5M/o8ziLsXg==
X-CSE-MsgGUID: lwr1tYhpT+il09UBx/ufCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="101384505"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="101384505"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 06:34:20 -0700
X-CSE-ConnectionGUID: 3b2uYpljSmWfiHeJLiq6gA==
X-CSE-MsgGUID: RU0gKjNQTza5b8+Wtp7g7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="256690746"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.80])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 06:34:16 -0700
Date: Fri, 3 Jul 2026 16:34:13 +0300
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
	Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH v3 05/13] usb: hub: Associate port@ fwnode with USB port
 device
Message-ID: <ake6VXm9XTDr9d-W@ashevche-desk.local>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-6-wenst@chromium.org>
 <akeyxn390mVmYo83@ashevche-desk.local>
 <CAGXv+5G3ETTGbgjWJCbQjn9yvRamx4GHPxjWPgmy_aXWUxm0iQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGXv+5G3ETTGbgjWJCbQjn9yvRamx4GHPxjWPgmy_aXWUxm0iQ@mail.gmail.com>
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
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320166-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,gmail.com,linux.intel.com,collabora.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,rowland.harvard.edu];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.intel.com:from_mime,intel.com:email,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 945B3703149

On Fri, Jul 03, 2026 at 09:25:56PM +0800, Chen-Yu Tsai wrote:
> On Fri, Jul 3, 2026 at 9:02 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > On Fri, Jul 03, 2026 at 07:03:06PM +0800, Chen-Yu Tsai wrote:
> > > When a USB hub port is connected to a connector in a firmware node
> > > graph, the port itself has a node in the graph.
> > >
> > > Associate the port's firmware node with the USB port's device,
> > > usb_port::dev. This is used in later changes for the M.2 slot power
> > > sequencing provider to match against the requesting port.
> > >
> > > To avoid potential conflicts with ACPI firmware nodes and then causing
> > > power management issues, only assign the firmware node if the hub's
> > > firmware node is not an ACPI firmware node.
> >
> > Now I'm more confident that it does not mess up with ACPI case.
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> Thank you and Bartosz for the reviews.
> 
> FTR Sashiko pointed out that this is likely leaking a fwnode reference.
> I will add a fwnode_handle_put() call to usb_hub_remove_port_device()
> in the next version.

Ah, indeed. The _get call has to have its _put counterpart.

-- 
With Best Regards,
Andy Shevchenko



