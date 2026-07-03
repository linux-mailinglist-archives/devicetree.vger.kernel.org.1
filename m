Return-Path: <devicetree+bounces-320138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZpvRNBu3R2redwAAu9opvQ
	(envelope-from <devicetree+bounces-320138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:20:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2947E702C98
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:20:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="NuzrB/0g";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320138-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320138-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 02C9D30876D1
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 13:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEBD23D47AA;
	Fri,  3 Jul 2026 13:02:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F53A3D411A;
	Fri,  3 Jul 2026 13:02:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783083727; cv=none; b=ftnQusgL13IrwXVFj3IDaWbvVnIXyslu7Kt7yyNSoh9eEgkvcW2mNm9jeVNYndhMAHdKzQwCcK+6hSHtNXC2wLwsmrAJg32P6fV4aXOf25j3NnnjJglq//KxezDXJrsJ2AyVIjOO9B+uObt5AukrR82Lk8KjYwqHtUdjVL7Cht0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783083727; c=relaxed/simple;
	bh=go3A92f+qVfLN0BBANEqxhTi+7+zvO5fvzs2fUIzcw4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K2njvLVRIUObpF5kWKodLd+aP4qfEANloCKF63X1TRP5dychLRwi9hKPdqrpISOIj/o378sb4KGH2U3wRAkB5IXMyFenf+h4D+26/o0yp0wF5cqNwXMEX3lLdDRkVnu10GVSW0xjbM8Pq044vYtUMHI2x3ZoAy/VSAD73UJ41uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=NuzrB/0g; arc=none smtp.client-ip=192.198.163.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783083726; x=1814619726;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=go3A92f+qVfLN0BBANEqxhTi+7+zvO5fvzs2fUIzcw4=;
  b=NuzrB/0gQgSBjssMI1Y5o8NIJwrzbE9E4Ise0k3V+h37YH8vGbm+bvNu
   /ngCGHyXXH86Bbis97tt1Hfs3vdb+naI32hRp6CeSqPNK5UHwUo9XIIiO
   euEN2H5hbkQVZAr092yi+bTMiegC5fxgVMxWA+QkZHEZouBmej3Cz78z2
   cZ3Vx12L2XmkabMSJdTjLZvneSl1JLUTLEzKSK3nXjefZ+tHi0RyTDuTS
   r5voX6G2maILsMdjI69WgdRbc7hbhrOjF0YWuXss+LY5VkA8W3IFYwq1Y
   W4CpTqffgEwg1YmHud1gjciF+QEM99lBMNjtfTikaG7hlVhWwYn2GEPRJ
   A==;
X-CSE-ConnectionGUID: NArLQK8BRcif+tSWouniSw==
X-CSE-MsgGUID: et5YtQUfR2iZKLDz5j+nOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="86386249"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="86386249"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 06:02:05 -0700
X-CSE-ConnectionGUID: pugGM/gaQTaY9txxcMNEVA==
X-CSE-MsgGUID: mOxugsDkT6C+FxXoN/1dQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="250458340"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.80])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2026 06:02:00 -0700
Date: Fri, 3 Jul 2026 16:01:58 +0300
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
Message-ID: <akeyxn390mVmYo83@ashevche-desk.local>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-6-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260703110317.1283411-6-wenst@chromium.org>
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320138-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,intel.com:email,intel.com:dkim,linux.intel.com:from_mime,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2947E702C98

On Fri, Jul 03, 2026 at 07:03:06PM +0800, Chen-Yu Tsai wrote:
> When a USB hub port is connected to a connector in a firmware node
> graph, the port itself has a node in the graph.
> 
> Associate the port's firmware node with the USB port's device,
> usb_port::dev. This is used in later changes for the M.2 slot power
> sequencing provider to match against the requesting port.
> 
> To avoid potential conflicts with ACPI firmware nodes and then causing
> power management issues, only assign the firmware node if the hub's
> firmware node is not an ACPI firmware node.

Now I'm more confident that it does not mess up with ACPI case.
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko



