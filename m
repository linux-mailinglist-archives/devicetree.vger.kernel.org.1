Return-Path: <devicetree+bounces-323611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JEFsKq96T2o+hwIAu9opvQ
	(envelope-from <devicetree+bounces-323611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:40:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815072FBED
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:40:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Q/SX9Yim";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323611-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323611-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CE3B53044C31
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E3A405C3F;
	Thu,  9 Jul 2026 10:38:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48CD3BB114;
	Thu,  9 Jul 2026 10:38:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783593503; cv=none; b=KsaHhatiH1eLGWhHeoxC9U0XnX3/rqcHlj+32eldsikJXclzCyN83/NB9iOkopaqsYLi0QjMcIsF/eaAMCy6TIGUplbb9I3ZR0w+Nw1lK/27y/xtuGWRYSerzOA+dhTdubdbmonEzoSwYtJgKMLthXH6nXlDNicJRg1WZrZ6woE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783593503; c=relaxed/simple;
	bh=iLiK3CTSDdvUowUyU7p7EgFeHFgaWNMld+MOAz5fmpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lJsWHQ4GjFaq10GHlY8Q/4cPc2+EzwHYKX2qBCs/t2uRpxyRNcc8kOtBY85LotzWssTfoMX65K+NqTcHKxo6uVrUdILLORv5mK/EkLpSiZ7EGkQ1qb7i45eQ32R4w0kCc/sQgZc5Cafv+45A2R5wkGU9oIcQfk7Sb6wF2mEoocU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Q/SX9Yim; arc=none smtp.client-ip=192.198.163.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783593502; x=1815129502;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=iLiK3CTSDdvUowUyU7p7EgFeHFgaWNMld+MOAz5fmpk=;
  b=Q/SX9YimQ3gwVUZj0HWmPsJEgt7shcr4QvbvJ9QJ+idgYFhvLQb1uwtb
   hIEXEj8A5BiVzuAggFVJTyC+rZA/L0R18u/KiemXFxaJKJ4gfSSFBe9He
   i9kcUlg1Tuwtr2IQOrbWqba86gdcOPSBWWmEQW3bCKhQko8fLseYVxt/u
   5GyqplUB3xU89EcVRFQqbFC19atxfBxKjAqAfihShCj4kt6TV8RhzpLvG
   +vuMgVkBq61g8VMY9jFZ3ElKJ5Wq5G1lNTxStEVsgKn+8MvyvlLhFy/L5
   3REJbzjk5eNv36tJaJUAbn6Ay22J6WRDWi/2M51Q5ucrBcjur/rMbrhEk
   A==;
X-CSE-ConnectionGUID: yVgRLzbeRZ+gDZJubqYEZg==
X-CSE-MsgGUID: lS84q1QgRxmk/A25R4xrbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84149226"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="84149226"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2026 03:38:21 -0700
X-CSE-ConnectionGUID: 9eSEoKOvQvKdFLKV0C3kuA==
X-CSE-MsgGUID: NW8U+aFdQuuqkVYYdWQYwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="251896574"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2026 03:38:16 -0700
Date: Thu, 9 Jul 2026 13:38:14 +0300
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
Subject: Re: [PATCH v4 07/14] usb: hub: Pass |struct usb_port*| to
 usb_port_is_power_on()
Message-ID: <ak96Fi4U3JJzbW3f@ashevche-desk.local>
References: <20260709095726.704448-1-wenst@chromium.org>
 <20260709095726.704448-8-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260709095726.704448-8-wenst@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323611-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linux.intel.com:from_mime,ashevche-desk.local:mid,vger.kernel.org:from_smtp,intel.com:email,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4815072FBED

On Thu, Jul 09, 2026 at 05:57:12PM +0800, Chen-Yu Tsai wrote:
> usb_port_is_power_on() currently takes |struct usb_hub*|, but only needs
> it to tell if the hub/port is SuperSpeed or not.
> 
> In a subsequent change, usb_port_is_power_on() needs access to a pwrseq
> state tracking field in |struct usb_port|. Either structure can be used
> to identify whether a port/hub is SuperSpeed or not, as the field in
> |struct usb_port| is inherited from the hub:
> 
>     port->is_superspeed = hub_is_superspeed(hub)
> 
> Replace usb_port_is_power_on()'s |struct usb_hub*| parameter with
> |struct usb_port*| so a subsequent change can use it.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko



