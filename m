Return-Path: <devicetree+bounces-273696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPxPE8BjsGloigIAu9opvQ
	(envelope-from <devicetree+bounces-273696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:32:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE2C2566E1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:32:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D1D843006467
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A12317147;
	Tue, 10 Mar 2026 18:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="dKGFc9Bi"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2602F9984;
	Tue, 10 Mar 2026 18:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773167547; cv=none; b=rRxcPuV3NTQv2onN/qjoxmN4aXmExcsSTEegJ0A2hmSnt0SONXxo1ubC3Gjf77+rHLyceCdput6rnzNWE3iegcfanNAvvqAIMXgkyMyfNttedwhI5x1ztGo/Baizwo2mUBv7Z4yHZMrj4ZHBbt3XgFjd1XKO91zraYRbOueU+D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773167547; c=relaxed/simple;
	bh=M19RsF/tE5FyoK5rqVFWF9YOaYWcyV4XKlfPKmRkF0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Toacvkg6601Vndy5DDEc7fwhOXHqYAITGdpwby5Cbh9yuQZXWsQRiqHOJY/8hAHr6YsKLVOb8J3Eu2M8tD3bI3TMAXPGSXHf558uRK51VAEjFWOXJ4f6vToheJP/JOf2+X6MY5cn1q97MnIW9ueZ3diTp8g1eMevaqRB4bAWPgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=dKGFc9Bi; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773167546; x=1804703546;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=M19RsF/tE5FyoK5rqVFWF9YOaYWcyV4XKlfPKmRkF0Y=;
  b=dKGFc9BixHVCb9eKSip891aO0fUPe6LXEjp3o09RCDNZCqLhq6MUDqJi
   4HhoT9+wamrB1/TPj7BDGkFOeW/6glMMi+V+cQHFJgzUhaFgUm8deJILa
   Q51t93RemK7LjclNMzgNvb2cTIUmjWqZNOcrryWxPKJZFYdZirHUltGJz
   dpmkjEKK2866BBHwAfZpgXpIoFkNAg+FASZlZvae3UGITsKc7cz23wNMe
   rafGjj4nYgeaVTzIFOXXYCwd0wpHZVK1uYCTrwmaFOUtartHC+EeVR91P
   R00IrROKYW5YGHa6Ti6LtMI4wc0qL6rp8nQo7VXGisSMeLkQucujH140m
   w==;
X-CSE-ConnectionGUID: fHPzGXIBQuyv5lBkV56M6w==
X-CSE-MsgGUID: 2LvAu+DwSNmF2Iwq4r+vww==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="91798442"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; 
   d="scan'208";a="91798442"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2026 11:32:12 -0700
X-CSE-ConnectionGUID: jE82ps34Qiyb6v6HETcYIw==
X-CSE-MsgGUID: AlkLb5LSR7eY+svgEaGfZw==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.54])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2026 11:32:09 -0700
Date: Tue, 10 Mar 2026 20:32:07 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
	skhan@linuxfoundation.org, me@brighamcampbell.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] iio: dac: ad5504: Align headers with IWYU
 principle
Message-ID: <abBjp9FeRM0z6ezr@ashevche-desk.local>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
 <20260310174835.24209-4-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310174835.24209-4-0rayn.dev@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 6AE2C2566E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273696-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,ashevche-desk.local:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 05:48:33PM +0000, Taha Ed-Dafili wrote:
> Update the header inclusions to follow the IWYU principle.
> 
> - Remove <linux/fs.h> and <linux/slab.h> as they are unused. The driver
> relies on devm_ managed allocations, so slab is not required.

...

> -#include <linux/bitops.h>
> +#include <linux/bits.h>

>  #include <linux/device.h>

Is this still being used directly.

> -#include <linux/fs.h>
> +#include <linux/errno.h>
>  #include <linux/interrupt.h>

>  #include <linux/kernel.h>

And what is this for?

> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/regulator/consumer.h>
> -#include <linux/slab.h>
>  #include <linux/spi/spi.h>
>  #include <linux/sysfs.h>
> +#include <linux/types.h>

The rest of the changes looks correct, but still missing headers:
linux/kstrtox.h

asm/byteorder.h

Might be more.

-- 
With Best Regards,
Andy Shevchenko



