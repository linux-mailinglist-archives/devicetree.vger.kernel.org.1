Return-Path: <devicetree+bounces-290422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WO4zA/MS72kP5wAAu9opvQ
	(envelope-from <devicetree+bounces-290422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 09:40:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D9146E7BA
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 09:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F7CB30073D4
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 07:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82B6B37F758;
	Mon, 27 Apr 2026 07:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="EPSzthnf"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0535437F8A9;
	Mon, 27 Apr 2026 07:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777275602; cv=none; b=WdR3PFoXE96sF7lRBGhyHlD+DLPaGzmShqsInUdsnamB7pmoBU5XsrVKOtBiJtnIid8ll7BcM3vnL+yM162NulntkEBWCMb5lJZQWGTBPsU0szhg5I+pYZX/l5N6hKSNZEZUWPIxkIzy6A9tNjjJRPVmWA9a1jU6toSF4hUPddU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777275602; c=relaxed/simple;
	bh=zlgsYWirOHtm9Lc229H9LMqzfSLfI0W0RGMOA3FZlik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O3dH37EV/btodbPUgotb4STEnlNn9fLX/lYAxMYYUClMzfEKTO+505pD31t8nCOX040ik5Vija5DgA3kZGbBe17qqfD2piAkuFmM67g3OhvTvPWI0Q3qy1WnKBcyrTYmGz0VMAsQe4YpsltUP377hZPYCk7egPV4qWVQJjUkTEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=EPSzthnf; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777275601; x=1808811601;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zlgsYWirOHtm9Lc229H9LMqzfSLfI0W0RGMOA3FZlik=;
  b=EPSzthnfU3/khQUiOxXFnbXX9ec64hBA6/0ocgbhPv4iQkwJPkCCiezR
   FDQdTBBzwKLiIpHoiopvBYKWjcu/1NbU+ZgVGdQDai6qKCYEVS/GV4inX
   /d9iSVW5cr3OcsyycxugyCbHkjfDFk9GuXy7AoVCmA87et+uV4vLUMI2t
   3ki4ZQJdRN1Dwxj5NfZQzSm50Xp6RnOJeYmlTN19rQXT8z/LJBedN8Kjr
   xyAl1LTtieGSzTAA9YtA4K6IxuGTYNRhhRFBASE7Yr54z+IjztJ8bcJ2W
   BQwx7cd5MBYQul8TOr+UvqH8eOuWJggleSBlG0zpvVLsMcvWgNbDINNnP
   w==;
X-CSE-ConnectionGUID: zfdetIgiRmyHkyng6f8qbQ==
X-CSE-MsgGUID: 2000NOJKSbeWFLcWn5QyTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="78213437"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; 
   d="scan'208";a="78213437"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 00:40:00 -0700
X-CSE-ConnectionGUID: z5Vk5+rQTnGXBRvjcEH8+w==
X-CSE-MsgGUID: ZdD0/QxIT1WPhcrl3VtIZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; 
   d="scan'208";a="235338178"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 00:39:57 -0700
Date: Mon, 27 Apr 2026 10:39:54 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 0/4] serial: 8250_dw: Add support for UltraRISC DP1000
 UART
Message-ID: <ae8Syo630Qefw9Le@ashevche-desk.local>
References: <20260424-ultrarisc-serial-v4-0-1765a0b4c4a0@ultrarisc.com>
 <aes-qdaT_9wMbTsm@ashevche-desk.local>
 <177727526561.1796253.1521989195994870860.b4-reply@b4>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177727526561.1796253.1521989195994870860.b4-reply@b4>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 28D9146E7BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290422-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim,intel.com:email,ashevche-desk.local:mid]

On Mon, Apr 27, 2026 at 03:34:25PM +0800, Jia Wang wrote:
> On 2026-04-24 12:58 +0300, Andy Shevchenko wrote:
> > On Fri, Apr 24, 2026 at 01:39:27PM +0800, Jia Wang wrote:
> > > This patch series adds support for the UltraRISC DP1000 UART controller.
> > > 
> > > The series includes four patches. The first two are preparatory cleanups;
> > > the last two add the DP1000 compatible and fixed CPR handling.
> > > 
> > > The patches have been tested on an UltraRISC DP1000 development board with
> > > Linux v7.0-rc7, verifying basic UART functionality.
> > 
> > Now it looks good to me, thanks!
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > (except DT bindings, not an expert, no tag)
> >
> 
> Thanks for the review, Andy. I need to rework patches 1, 2 and 4, so
> I won't add your Reviewed-by tag yet. Could you please have another
> look at the updated patches in v5?

Sure, whenever it will be available in the mailing lists/my mailbox.

-- 
With Best Regards,
Andy Shevchenko



