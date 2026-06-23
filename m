Return-Path: <devicetree+bounces-314949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qPc0BOPROmo0HwgAu9opvQ
	(envelope-from <devicetree+bounces-314949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:35:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 629826B9766
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:35:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=c4SLDjlK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314949-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 98A033042F26
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C170C36B076;
	Tue, 23 Jun 2026 18:35:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B1C359A91;
	Tue, 23 Jun 2026 18:35:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782239709; cv=none; b=mYDrZqZGeXsrPpuiFFlko5TaPZ+mkFr34S2liyfejiz7dtCNey286zPi7E6w2QZ3ZwX/HOXzDgmQf/GIgRtqYIvOo9Bxe3uKB4YWbFcvOvrsj7LUnlJsovUUK1h/LqHcHqx2KbD270TVZWxsohFemIE5kvxbb9xHpOsVTtS24B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782239709; c=relaxed/simple;
	bh=JqRmlDPodoTazGjRiNnR6sUOZVj10imueJYYI+ABdkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b/EyHbAHaAsaHAMraXrqeXdUBZHg3NUY+KR3DbIIDBQgZqDJQdaCMShERWA/nqAZbFfGEaRzVAj1kZcTnkNM9uWWhRF/qOFeBzhrWPFNafTkOv/i8QnOuyItvyuakJAfgaSbrqYE4dss4X/JN9bvdJPqfX92VZZMzX6fz87U4hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=c4SLDjlK; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782239708; x=1813775708;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=JqRmlDPodoTazGjRiNnR6sUOZVj10imueJYYI+ABdkk=;
  b=c4SLDjlK5D7l0T6JHBMIf9CUb7Bh2ASdrj3EZXElaVkdSJpN25klRNA3
   GzbvMQA+xsBq7VeApmHNwIuHf8GKtEyXNF/2pJEvVO80q9xXM2FiGtWtQ
   L1jL179br8qXYgunZBRDsNWsan/l6XPqAevDYFUm+qAJOBOG97VuWQFgm
   NJS6rVTNaQR1uCd/DmFLhAF50SUz/u5g/kTwV4KqYjJpvBz07VDHOba/D
   knBnSAWfpdiO8823T7jabQR7F7/J8ECugYzbR4EkXxUsGHapMcMvHl+8w
   VGLlG9QSYB+w6KDY0l68RZfI5r+FQwB+8nxEix0UDCiUekRCmQeseWmdI
   A==;
X-CSE-ConnectionGUID: Kl49P1sQQ+CnWYZHMVOz6A==
X-CSE-MsgGUID: VMERCrneSBGcwY27KB51Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93353855"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="93353855"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 11:35:07 -0700
X-CSE-ConnectionGUID: QaNZbiEeQ96czSQScIzG8w==
X-CSE-MsgGUID: /KSA2z2bQ0OJmMeVaOLbqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="273659975"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 11:35:04 -0700
Date: Tue, 23 Jun 2026 21:35:02 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Lukas Metz <lukas.metz@gmx.net>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] Add driver for DAC8163:
Message-ID: <ajrR1jlkggGq_rrj@ashevche-desk.local>
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmx.net];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:dkim,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 629826B9766

On Tue, Jun 23, 2026 at 06:07:26PM +0200, Lukas Metz wrote:
> This series adds an IIO driver for the Texas Instruments DAC7562, DAC7563,
> DAC8162, DAC8163, DAC8562, and DAC8563 dual-channel voltage-output DACs.
> 
> These devices are pin-compatible 12-, 14-, and 16-bit variants sharing the
> same 24-bit SPI command interface. Each device provides two independently
> addressable output channels and includes a 2.5 V, 4 ppm/°C internal
> reference that can be enabled via device tree, or an external reference
> supplied through a regulator. The register and command structure differs
> from already existing drivers which makes adding a new driver a
> reasonable choice in my opinion.
> 
> The driver supports:
>  - All six device variants via a shared chip info table
>  - DAC updates in synchronous mode
>  - Configurable internal or external voltage reference
>  - Optional LDAC GPIO which has to be asserted permanently when using
>    synchronous updates.
>  - IIO_CHAN_INFO_RAW and IIO_CHAN_INFO_SCALE attributes per channel
> 
> Datasheet (DAC8163):
>   https://www.ti.com/lit/gpn/dac8163

Why do we need a brand new driver? Do we have an existing one that may be
expanded to support this HW? (Note, not all existing drivers are under IIO
folder, some of them might be found in hwmon, input, or drivers/misc.)

> The driver was tested with a DAC8163 on a custom STM32MP157F board with
> external reference enabled.

-- 
With Best Regards,
Andy Shevchenko



