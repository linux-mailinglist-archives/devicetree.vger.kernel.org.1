Return-Path: <devicetree+bounces-306289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jquOFt44IGoZywAAu9opvQ
	(envelope-from <devicetree+bounces-306289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:23:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E767B638850
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:23:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=S6V7uYuZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306289-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306289-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3476E30065E3
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC9C2DC344;
	Wed,  3 Jun 2026 14:17:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D8230C17E;
	Wed,  3 Jun 2026 14:17:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780496235; cv=none; b=GW3q5mCMWPmEJWx1Fw/yJ0xJrx71iFV5KK4v6vyY4vgE68Y2uQNFPitVGY4fkqCFG7fA67Yo+JKfmuHMUxJdEJsBkziIWX1tPac3MPTG0Q1mI4XxjEQ1HInHwJxWTwTleB3cMbg8AvimKeEPG/e824FJqDqo9w0f/5Lw011zR44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780496235; c=relaxed/simple;
	bh=Zwq+GV9zwcxNtn1SpGJjcRTCyi+iNcn3SKqnBW8/1KM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LYrqyMaO8XjdbUwxWWRqBxBdgIeOyvzpBJDvtJkLVMWw7wjTEqX1BTrwJOdoI5KDr3fJvsgKr1KmN7eDgLxo/eRSHiCcXa3hNiT0mudxsEQp0K5scabKF5xlLhbAHfBfYPpY3T1KuLPZWLIsxuUtnZBBbBUVqUVfT8n4xMK/sgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=S6V7uYuZ; arc=none smtp.client-ip=192.198.163.16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780496233; x=1812032233;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Zwq+GV9zwcxNtn1SpGJjcRTCyi+iNcn3SKqnBW8/1KM=;
  b=S6V7uYuZLMFJpOb8Qr8TE7CKUqKRDypoSWMqGK8pESvdbkIdGwq8TV8P
   //e4ig+dwBZiRgY+PPJhRTINhovqK4ottlK2ZK6m4NbM916RsFgG8KjZV
   u4T6T/GcJU7drTQECNL6h7w3zbQhUmG3QYCRMGfutZOHS0StC6G/v5zLC
   w4E1x6f4QQk5wpbcDvlcMT/VbYLezRqOLvm94Rf3l27TXMDwImEsb70Za
   s4vYpziTy0ZYsERwdX8YHBNnDXJ9CQkXtyFQF1TeCUq+AMDwLNlbEF7/h
   HA2nhvNg+X8u6ebTRw/NUg+6AgMMYdx4hZxh8BulQQVStCQMJJ1yMQBo1
   A==;
X-CSE-ConnectionGUID: yqWJVpJySqusjWQzY+6ySw==
X-CSE-MsgGUID: K3BAD6lgS5WWugSG/oYl0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="68847240"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; 
   d="scan'208";a="68847240"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2026 07:17:12 -0700
X-CSE-ConnectionGUID: IOZwMHEGSduCN5BRww1/Dg==
X-CSE-MsgGUID: 6YWnkAiaTm6QrRNwQvINkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; 
   d="scan'208";a="243415440"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.250])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2026 07:17:08 -0700
Date: Wed, 3 Jun 2026 17:17:05 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Wadim Mueller <wafgo01@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Maxwell Doose <m32285159@gmail.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/3] iio: types: add IIO_VOLUMEFLOW channel type
Message-ID: <aiA3YY6XKg-8o-GX@ashevche-desk.local>
References: <20260530205435.37326-1-wafgo01@gmail.com>
 <20260530205435.37326-2-wafgo01@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260530205435.37326-2-wafgo01@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306289-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wafgo01@gmail.com,m:jic23@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:m32285159@gmail.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:from_mime,intel.com:dkim,ashevche-desk.local:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E767B638850

On Sat, May 30, 2026 at 10:54:30PM +0200, Wadim Mueller wrote:
> Add a new IIO channel type for liquid volumetric flow sensors.  The
> unit exposed via the standard _scale attribute is litres per second
> (l/s), so drivers reporting smaller native units (e.g. ml/min) only
> need to set a fractional scale.
> 
> Update iio-core's name table, the iio_event_monitor whitelist and
> the sysfs-bus-iio ABI document to match.  The new _scale attribute is
> folded into the existing shared _scale block; only the per-type _raw
> needs a fresh entry.

...

> +What:		/sys/bus/iio/devices/iio:deviceX/in_volumeflow_raw
> +What:		/sys/bus/iio/devices/iio:deviceX/in_volumeflowY_raw

> +KernelVersion:	6.19

This is wrong. It has to be 7.2 and unlikely makes it, so next one is 7.3.

> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Raw (unscaled) volumetric flow rate reading from the channel.
> +		To convert to standard units (litres per second) apply the
> +		channel's _scale (and _offset, when present).

-- 
With Best Regards,
Andy Shevchenko



