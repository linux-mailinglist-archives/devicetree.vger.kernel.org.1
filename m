Return-Path: <devicetree+bounces-326819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QFAHDPhSV2o5JQEAu9opvQ
	(envelope-from <devicetree+bounces-326819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:29:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 270F175C802
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:29:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lr3UcYcz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326819-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326819-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 91E4E3004D8F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B8735AC03;
	Wed, 15 Jul 2026 09:29:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5948429006;
	Wed, 15 Jul 2026 09:29:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784107755; cv=none; b=YMYDFrLc1P6X21Hjw6nbZFqKhvdNOu36IxlEAvSSVEj2HQtec1GOA8jIrLUXcUcmXdwaBk9OxFz4ZULTD7MZwzE+cEiJwohMwrlZ7eo96hXQLpiKZk+a9vH/owjjquh8002hty1y8lWo/MVbBlztbMUASD2U/oL1MXLG9wR68AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784107755; c=relaxed/simple;
	bh=/5aaAsVdQN0eiTG/66eGgXteBugptKLohzhJXhN02NU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DpjGgpLsInM/7zmRvvQQjpV/zGU4oqLZ8F/NJZKDP4sExz/zmATB6n4xJRKaIjhBTKNbUrK/7B9+QOPsNFy9DRfI68po+wndnFMVvcNbzi+qQYIV7tY99FA2PSnWF+OwNnSr0v743OY+O9XhCIk6XTvacxlj97cz8aBjPnMAq88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=lr3UcYcz; arc=none smtp.client-ip=198.175.65.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784107752; x=1815643752;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/5aaAsVdQN0eiTG/66eGgXteBugptKLohzhJXhN02NU=;
  b=lr3UcYcz4piKTkgWcfRSw+N505oDKBfRlpuzCVH9m7xgiEamJUN3LgOu
   l/OZNxsF83iOYk9IbalKowM42IaWtKoukijhkOjA4+C1ZOmhzVRMXUdP8
   Q0UktH8jpcTDLeGNVMpIsoeJhuEhZ92D9sSDbdohjnJWnJPZXT/1n1jlV
   pbViCuKrslDF87Bxq8EGa9W97Jt0F4113o9rwEaa695x2S4TXmrBjNwgd
   Qqy6cwBNdtDwzvAO+untd9kXF7ChitATDLA8yLx4re2/wyvwKsz+X7qSL
   H9AhGY3NBwv126m++zVdv4BtNuKeexevKl7dMFZDpYLDlbYNx6Cijnmi1
   g==;
X-CSE-ConnectionGUID: nLJ98HiFSg6CU1WTQ/7Zbg==
X-CSE-MsgGUID: FuFLhJdoS9GIgqRj1o4ieA==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84830136"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="84830136"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 02:29:10 -0700
X-CSE-ConnectionGUID: t3nl7JS5TxCiXiLKm/nhqQ==
X-CSE-MsgGUID: BfWSW46GSw+l5U7M4cVNLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="286203001"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.129])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 02:29:05 -0700
Date: Wed, 15 Jul 2026 12:29:02 +0300
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
	Wei Deng <wei.deng@oss.qualcomm.com>, linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v5 03/16] power: sequencing: Add pwrseq_power_is_on()
Message-ID: <aldS3qTympJuVXYj@ashevche-desk.local>
References: <20260715085348.3457359-1-wenst@chromium.org>
 <20260715085348.3457359-4-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260715085348.3457359-4-wenst@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326819-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:wei.deng@oss.qualcomm.com,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:bartosz.golaszewski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,gmail.com,linux.intel.com,collabora.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,rowland.harvard.edu];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,vger.kernel.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 270F175C802

On Wed, Jul 15, 2026 at 04:53:33PM +0800, Chen-Yu Tsai wrote:
> The power sequencing consumer API already does power on state tracking
> internally. Expose the state to consumers through pwrseq_power_is_on()
> so that they don't have to reimplement it locally.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

...

> +/**
> + * pwrseq_power_is_on() - Queries the last requested state of the power sequencer.
> + * @desc: Descriptor referencing the power sequencer.
> + *
> + * This returns the last requested state of the power sequencer.
> + *
> + * Returns:
> + * On success, 1 for on or desc is NULL (optional) and 0 for off;
> + * negative error number on failure.

I would rephrase it a bit.

 * On success, 1 for on and 0 for off; negative error number on failure.
 * If desc is NULL (means optional) return 1.

And this rises a question: why 1? Shouldn't it be some "unknown" state?
(But since Bart Acked this, this doesn't prevent the patch to go, you
 got my tag above.)

> + */

-- 
With Best Regards,
Andy Shevchenko



