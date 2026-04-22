Return-Path: <devicetree+bounces-289482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGX8EgQl6WmMUwIAu9opvQ
	(envelope-from <devicetree+bounces-289482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 21:44:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AD044A45C
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 21:44:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 27B063007498
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 19:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB313F164F;
	Wed, 22 Apr 2026 19:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Onz4IvbH"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1DD3371860;
	Wed, 22 Apr 2026 19:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776887038; cv=none; b=MNtUZZ55HMIGse3MZNbTBWGNCsbFdDFDmmIm6FC5G3l++tpefYd6dxUHZ8wyj7jgWD6saTcrYF5LoA6u64EJgML8emeSjTyYvqe9fg5IsNTOh8B1Pxe9hg0E554fYDRVh2ocUAdEiAN2obORdxZ4m+41Q53M29uAadHzrvPyfow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776887038; c=relaxed/simple;
	bh=rqvwkL/RkzxnVelFdCXSL9oC8PSWNs3dkhPNmRmXNR0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i7v214YiMy+4wN8YZSeIx+DQOT+HHsuIleJfo+SQcoVB/pF8CxrWfVLFeH8ZIuVGBA/6WfwsYEGoTrhXaTOtpFiSpM1NnR2NOtCH6M6Ad1Jkw6fPhF7j9GgOcwo5GLZUarw9tw3LTHB004KBhq2vEfuixHBL+/Ou5Ao48onXRbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Onz4IvbH; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776887037; x=1808423037;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rqvwkL/RkzxnVelFdCXSL9oC8PSWNs3dkhPNmRmXNR0=;
  b=Onz4IvbH4UjmjkgfBu7KidhusIFIPMqBdzzvioOOGe3H9iqsT8+gQkjs
   kWLbKvl7/+W2+z0iZKfYPwsQe4QdklXS/mgBKZkjXO7XoXwO8jCtTzFYF
   Sc5GT0RsQ9Dqu3Tg+r+eTS6kaq0gaYIAY355WfzDuF5ul+jHtbmOfwR3c
   LHybOhTDKervmYtqnrzVnUHeyI04s3uuGI3okvHdlId8lzB9/Fx/1okEW
   UmwxDSXtvgmHqvCrsYHfhCvwuTWYqT2Ccq6lfS/hFFIIqmLzvn+6VJWAl
   pQj+uu/SestoWbv0PtARZOMQ6DB+DeEwTf/sgIA0jXmxM4eH152lNhKRm
   A==;
X-CSE-ConnectionGUID: 0E7h+vs+RrC/IbwHfMDwNQ==
X-CSE-MsgGUID: IFtFVTa6TC+TLtC3Ht9Drg==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="77912872"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; 
   d="scan'208";a="77912872"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2026 12:43:56 -0700
X-CSE-ConnectionGUID: DelarHGzSYia8EEAWwWrIg==
X-CSE-MsgGUID: XeCT+TvVQHaxOpq+vBeTfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; 
   d="scan'208";a="234230950"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.201])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Apr 2026 12:43:52 -0700
Date: Wed, 22 Apr 2026 22:43:50 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rodrigo.alencar@analog.com
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Michael Auchter <michael.auchter@ni.com>,
	linux-hardening@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 07/22] iio: dac: ad5686: refactor include headers
Message-ID: <aekk9ib1s4HYoAFP@ashevche-desk.local>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
 <20260422-ad5313r-iio-support-v1-7-ed7dca001d1b@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260422-ad5313r-iio-support-v1-7-ed7dca001d1b@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289482-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,intel.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D7AD044A45C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 22, 2026 at 03:45:41PM +0100, Rodrigo Alencar via B4 Relay wrote:

> Apply IWYU principle, replacing unused/generic headers for
> specific/missing headers. The resulting include directive list is sorted
> accordingly.

...

> -#include "ad5686.h"
> -
> +#include <asm/byteorder.h>

asm/* is another group and goes after linux/* generic ones.

> +#include <linux/array_size.h>
> +#include <linux/err.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
>  #include <linux/spi/spi.h>
>  
> +#include "ad5686.h"

> -#include <linux/interrupt.h>
> -#include <linux/fs.h>
> -#include <linux/device.h>
> +#include <linux/array_size.h>
> +#include <linux/err.h>
> +#include <linux/export.h>
>  #include <linux/module.h>
> -#include <linux/kernel.h>
> -#include <linux/slab.h>
> -#include <linux/sysfs.h>
>  #include <linux/regulator/consumer.h>

> -
> -#include <linux/iio/iio.h>
> -#include <linux/iio/sysfs.h>

Leave linux/iio/* group separated.

> +#include <linux/sysfs.h>
>  
>  #include "ad5686.h"

It should be something like this at the end:

linux/* generic headers
blank line
asm/* generic headers
blank line
linux/iio/*
blank line
"private headers"

...

Same applies to the rest of the patch.

-- 
With Best Regards,
Andy Shevchenko



