Return-Path: <devicetree+bounces-320135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xSRdGAu2R2qTdwAAu9opvQ
	(envelope-from <devicetree+bounces-320135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:15:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC761702BDF
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:15:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=C9WgF8qB;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320135-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320135-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0453230550A2
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7959C3D34AB;
	Fri,  3 Jul 2026 12:57:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47583D332B;
	Fri,  3 Jul 2026 12:57:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783083437; cv=none; b=eAaYrnN7gakeF8+kCt2wHvRaSm3iUYKsvBoGzyVFKauNWHWbbQKd+eRSdORfTEb9PL+/SjzvC45qpwehK4xL+bJiz+DxDzz+QRwom80iCQ4TSvv/W4yb0ELbraZ7le+s9D1ip4hvjQHv+qG6pDFuh/z0Qvp4xW2xQKgBmyIGsu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783083437; c=relaxed/simple;
	bh=QqusrYjfaWkybx2fPqLba4i2Sxky75V7VYsL+SP5Rao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bMarzJ8otAlwJWSu7K6mqWawb6XKIl/jKNlFyqgWtdi7KBiKewih+Et9X2ewu0XeO7OyQxW9LfavIW2/e/4oWaIAfr4fijubUFI5U9LygA5ht+xNU8bKqD219QpJV9ekaxC8ARzX2UEeuK5cHFDd/h9pXQvRLJpwzWDXMXRfOrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=C9WgF8qB; arc=none smtp.client-ip=198.175.65.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783083436; x=1814619436;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QqusrYjfaWkybx2fPqLba4i2Sxky75V7VYsL+SP5Rao=;
  b=C9WgF8qBwimsPgS7RFYacJ7qDIvjYcAumsvwUt2E3dL8C0IR5FrnwO6k
   h3hwEAa8mqtfZV4Yvv56/5VXyzM8DjuWIMN7cLoDUK4Ir4XkPIK986oY4
   0hqYWWdAwqe9hWalreKcx+NDbSXbeyDmjBaPGZI8GdoYRTKQ5SPOCcsZ5
   ziXaChl39+pewhJOE05++GWoK/C0sljwyz6M9AzfaqNvtkJEd+hCBG2tM
   IrajRyUYsr8YXvZLEtWB7mP35lnKblv8OR+trf15CpfRQ6GByeKINfDmD
   TDIw59BK3hZmxqo+iu25y/kWLqoZxLNiduPi3mLkE0U8wqt0iYA0yR73D
   w==;
X-CSE-ConnectionGUID: ciwhOnLJT/aqTZ6nVAgSmQ==
X-CSE-MsgGUID: +OuxMwGXSkG5MkkBgAHf8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83819180"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="83819180"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 05:57:16 -0700
X-CSE-ConnectionGUID: fWi3FGauSZCt5t0+ix7MsA==
X-CSE-MsgGUID: zg506o79Sd21UCgCUHNsyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="277436452"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.80])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 05:57:10 -0700
Date: Fri, 3 Jul 2026 15:57:08 +0300
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
Subject: Re: [PATCH v3 10/13] power: sequencing: pcie-m2: support matching on
 remote "port" node
Message-ID: <akexpAPFMD4zNlvx@ashevche-desk.local>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-11-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260703110317.1283411-11-wenst@chromium.org>
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
	TAGGED_FROM(0.00)[bounces-320135-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,linux.intel.com:from_mime,ashevche-desk.local:mid,intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC761702BDF

On Fri, Jul 03, 2026 at 07:03:11PM +0800, Chen-Yu Tsai wrote:
> A USB hub can have multiple ports, and this driver needs to
> differentiate which port is being matched to. The USB hub driver now
> associates the "port" node with the usb_port device, so here we can
> use the remote "port" node to check for a match. Then fall back to
> the remote device node for the other connection types.
> 
> Also rewrite the existing "remote == dev_of_node(dev)" with
> device_match_of_node() for consistency.

...

>  	for_each_endpoint_of_node(ctx->of_node, endpoint) {
> +		/* USB port devices are tied to the port nodes. */
> +		struct device_node *remote_port __free(device_node) =
> +				of_graph_get_remote_port(endpoint);
> +
> +		if (remote_port && device_match_of_node(dev, remote_port))

Dup NULL check. _match_of_node() already does that and it seems follows
the same logic here. So dropping it should not change how it functions.

> +			return PWRSEQ_MATCH_OK;
> +
> +		/* Try the remote port parent for other types. */
>  		struct device_node *remote __free(device_node) =
>  				of_graph_get_remote_port_parent(endpoint);
> -		if (remote && (remote == dev_of_node(dev)))
> +
> +		if (remote && device_match_of_node(dev, remote))

Ditto.

>  			return PWRSEQ_MATCH_OK;
>  	}

-- 
With Best Regards,
Andy Shevchenko



