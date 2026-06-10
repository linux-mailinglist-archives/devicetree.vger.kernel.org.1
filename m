Return-Path: <devicetree+bounces-309857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1xe4KQlyKWoNXAMAu9opvQ
	(envelope-from <devicetree+bounces-309857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:17:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1495366A2A1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:17:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Iwoij6XD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309857-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309857-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 39BA830C425E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B715D40BCD3;
	Wed, 10 Jun 2026 14:08:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CA6280018;
	Wed, 10 Jun 2026 14:08:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781100538; cv=none; b=sb3NxFeQqoB0J+C5slYl2/aImGE4+bgPPHxnrWSIbGpo1G1o07DJKfrwHDqXh6w9sOVycfOuQMyuS+KX6GEC+PBIG9sjHpZjIXTr44oiOhnFZfIIsKqN4m4xdgyJeFeG5W7s9M0jQkCLvdOlBLysvc7D+zVtqVOy2Sk63HR5xkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781100538; c=relaxed/simple;
	bh=QGKcjDdt8a0tH/Hc9o5DwcTP+oPWZPnZGQMex0Xb5Oo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RqA9mMfWDaMNAHShIVKcG7a2qYW/c76vNDb9z7rlk9ISJlliM6dPWBFg7blyYJvqKdcJsJPcb0SlSLbVklhNo1Eed0//JI6SxGaWjVFX4xTG0aFPB5PFXQUe8hbT4gvHfyRVVjp6kUAlsTp1U0WdE3RqOW+/rrinz0RIZ00xe80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Iwoij6XD; arc=none smtp.client-ip=192.198.163.16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781100537; x=1812636537;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QGKcjDdt8a0tH/Hc9o5DwcTP+oPWZPnZGQMex0Xb5Oo=;
  b=Iwoij6XDWstgxX2MuMNM7a7Xej+HWxJVCrwmrNn/9NtHAgiVZ+SLAFFz
   DLM27qbNqFnKcJfD/IrkQyoAmHaRrXqNS5OhzjYEXPcPLMZyJ56TtckSs
   t6y1TOoYVU6tRph6nRz4k7wMMqzVnbj/GCMwO5O3+eyJ9gZ8ynnGJIQf4
   ANUpltL75kTD4VmGRxAZawyeSZ3JUAT/0o9tRMXuY/kIPTAU5pSxUm00F
   VXV5QENZSSi9odnG+1Nnkt57NAs4V3o10q6C3Rs0TdeH2KaNocZOEiyYd
   TiSeiPlbU6z4RHHPdIdUWgm20Klauywg5WR1Nose/Vz3yCpxOYMe17RsI
   w==;
X-CSE-ConnectionGUID: caT0G3k2RlCLv4M0XQ4K4A==
X-CSE-MsgGUID: 4G9uQZv4QzaQEgkeNV8VWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="69433448"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="69433448"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 07:08:56 -0700
X-CSE-ConnectionGUID: 5PnXmGmkSf+nphIwuCI86Q==
X-CSE-MsgGUID: 8weCnpoUTs+XY1kL6aY/tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="246269709"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.244.38])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 07:08:51 -0700
Date: Wed, 10 Jun 2026 17:08:48 +0300
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
Message-ID: <ailv8HpnrCH3Zb8C@ashevche-desk.local>
References: <20260610084053.2059858-1-wenst@chromium.org>
 <20260610084053.2059858-3-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610084053.2059858-3-wenst@chromium.org>
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
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309857-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ashevche-desk.local:mid,intel.com:dkim,vger.kernel.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1495366A2A1

On Wed, Jun 10, 2026 at 04:40:36PM +0800, Chen-Yu Tsai wrote:
> Due to design constraints of the power sequencing API, the consumer
> must first be sure that the other side is actually a provider, or it
> will continually get -EPROBE_DEFER when requesting the power
> sequencing descriptor.
> 
> In the upcoming USB power sequencing integration, the USB hub driver
> first needs to check whether a graph connection exists, and whether
> the other side of the connection is a supported connector type. The
> USB port is tied to a "port" firmware node, and this new helper will
> be used to get the endpoint under the known "port" firmware node.

...

> +/**
> + * fwnode_graph_get_next_port_endpoint - Get next endpoint firmware node in port
> + * @port: Pointer to the target port firmware node
> + * @prev: Previous endpoint node or %NULL to get the first
> + *
> + * The caller is responsible for calling fwnode_handle_put() on the returned
> + * fwnode pointer. Note that this function also puts a reference to @prev
> + * unconditionally.
> + *
> + * Return: an endpoint firmware node pointer or %NULL if no more endpoints
> + * are available.

Yeah, you see, even here is inconsistency with previously added kernel-doc.

> + */
> +struct fwnode_handle *fwnode_graph_get_next_port_endpoint(const struct fwnode_handle *port,
> +							  struct fwnode_handle *prev)
> +{
> +	struct fwnode_handle *ep;

Unused?

> +	while (1) {

This is usually harder to read and follow. It's like "pay much attention on
the code", but here no rocket science, no code to really pay attention to.

> +		prev = fwnode_get_next_child_node(port, prev);
> +		if (!prev)
> +			break;
> +
> +		if (WARN(!fwnode_name_eq(prev, "endpoint"),
> +			 "non endpoint node is used (%pfw)", prev))
> +			continue;
> +
> +		break;
> +	}
> +
> +	return prev;
> +}

So, this can be rewritten as

	ep = prev;
	do {
		ep = fwnode_get_next_child_node(port, ep);
		if (fwnode_name_eq(ep, "endpoint"))
			break;

		WARN_ON(ep, ...);
	} while (ep);

	return ep;

But also big question why? to WARN*(). There is no use in the entire
property.c.

-- 
With Best Regards,
Andy Shevchenko



