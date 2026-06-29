Return-Path: <devicetree+bounces-316968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ot+BEtNUQmqq4wkAu9opvQ
	(envelope-from <devicetree+bounces-316968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:19:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 936D46D94FA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:19:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="WVe7oLg/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316968-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316968-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D424A3048C11
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCCAE371868;
	Mon, 29 Jun 2026 11:14:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FFB36C9ED;
	Mon, 29 Jun 2026 11:14:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782731660; cv=none; b=IT5s3gPJsCL/dGndLKjz3CLLsZjnXmVX5SrGiGyGyM59cM/R4oI/1PuKnkf9xxEWY8LmPnpXdk8GI1XIJlSB5gSKKB6uwCrS0YCzyvw7Eh0hDonMuumQD6hiZfaJxzWuN28yYAWZaw/DVtH0WKhFMPxRvEUg/vEFu6B1nYJwGNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782731660; c=relaxed/simple;
	bh=gLqMN8vpA2AzELZ43hBji5CPMGlrPDZKkBk5U11/0oM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t1nKzsn8WWCSQ+gL2aISzFXs7Z868lgp9iiBxtg91K6IBlAOrAWi+TPbkyFvjei6m8eYkH7RMWFW2LfV4sOUGIjJJpsdYzRbFIKI6EKVHYN7622JaPW5oLmazDxrnCRV3+QEvpRgbDg2FnXWzXH2qFwcQSZ8Q1bmcyMQU9aVTsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=WVe7oLg/; arc=none smtp.client-ip=192.198.163.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782731659; x=1814267659;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=gLqMN8vpA2AzELZ43hBji5CPMGlrPDZKkBk5U11/0oM=;
  b=WVe7oLg/3L0D38VeplokGcMGoEZOHGTnSHd4AINqNF9Lkl5XoITG7fcx
   4RwUUQZ8+rB7zsLkyNax46tQ7Ufdtp/01sDGZYbPm+VsGaPyJWK2J08D0
   pZ/tIVPUvjK8ZqKdQIkt1R3Fi03ZCAA1AKG5q52oOcGiJSjxxZyyGZh+G
   dXGJS8uIpn+Qe6yFaH47JtWgyCCI7K/prkwH13vRzGlsOPbd4GBqiEUwr
   Vsx+mJC4rxaYdBbVR7FqF077fmgy4Jha5KgaHaUGqJ1JA1sBSfxgopjFa
   uRITmic7nRuqIk900fFmoNJPH7LxZAZldh5skovZo9+QG/y/95nk3mcOq
   A==;
X-CSE-ConnectionGUID: yQ4Q0U71T4eL19V1aG5T8g==
X-CSE-MsgGUID: ErjZkmfiSmG53wLfn3Qi6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83290138"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="83290138"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 04:14:18 -0700
X-CSE-ConnectionGUID: NVYSf8rjSpKNO2Qk94jDzw==
X-CSE-MsgGUID: wKmi9k3IRtWOyVUpONdWzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="248569133"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.207])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 04:14:12 -0700
Date: Mon, 29 Jun 2026 14:14:10 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2 07/16] usb: hub: Power on connected M.2 E-key
 connectors
Message-ID: <akJTgn0aZDtH04ij@ashevche-desk.local>
References: <20260610084053.2059858-1-wenst@chromium.org>
 <20260610084053.2059858-8-wenst@chromium.org>
 <CAMRc=Mc3DqGb2MsvM4tjcqFuRraAO+EftO1UrtNFvR5dMRXmVA@mail.gmail.com>
 <CAGXv+5HQa9BH5wyVwKNxjXLEZDnE0sbeQjgNxwmAG+OF8bbz=w@mail.gmail.com>
 <CAGXv+5Gbf8+=hMZcK0pYraC1t4qmDx_WVPkr2RhWdm3bq_LZEQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGXv+5Gbf8+=hMZcK0pYraC1t4qmDx_WVPkr2RhWdm3bq_LZEQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316968-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:brgl@kernel.org,m:stern@rowland.harvard.edu,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:gregkh@linuxfoundation.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,rowland.harvard.edu,vger.kernel.org,lists.linux.dev,lists.infradead.org,linuxfoundation.org,gmail.com,linux.intel.com,collabora.com];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,intel.com:dkim,ashevche-desk.local:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 936D46D94FA

On Mon, Jun 29, 2026 at 02:46:42PM +0800, Chen-Yu Tsai wrote:
> On Fri, Jun 12, 2026 at 4:55 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
> > On Thu, Jun 11, 2026 at 6:11 PM Bartosz Golaszewski <brgl@kernel.org> wrote:
> > > On Wed, 10 Jun 2026 10:40:41 +0200, Chen-Yu Tsai <wenst@chromium.org> said:

...

> > Yeah, instead we need
> >
> >     config USB
> >         depends on POWER_SEQUENCING && !POWER_SEQUENCING
> 
> FTR:
> 
> Somehow I remembered this incorrectly. It should be the following instead:
> 
>     depends on POWER_SEQUENCING || !POWER_SEQUENCING

We have depends on ... if ... expression nowadays for that kind of case.

> and the dependency issue mentioned below then goes away.
> 
> > But I ran into a dozen or so drivers that have "select USB", mostly
> > input devices:
> >
> >     config TOUCHSCREEN_USB_COMPOSITE
> >         tristate "USB Touchscreen Driver"
> >         depends on USB_ARCH_HAS_HCD
> >         select USB
> >
> > Kconfig complains about unmet dependencies.
> >
> > > I see Andy has some suggestions but in general I like this approach much better
> > > than adding the pwrseq_get_index() function. Thanks!

-- 
With Best Regards,
Andy Shevchenko



