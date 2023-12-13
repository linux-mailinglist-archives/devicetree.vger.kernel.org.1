Return-Path: <devicetree+bounces-25015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A42AB811F2A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F596B21118
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D4A68280;
	Wed, 13 Dec 2023 19:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="I8Kt4IT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 919CFCF;
	Wed, 13 Dec 2023 11:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1702496665; x=1734032665;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sZ2QHsotcq+naDN2JImNNc3Oi1OQAQBgp6GO1Q4bhcU=;
  b=I8Kt4IT7epu2TWuc972AUo76+MD3TTiVtDTZyHvnwQd5nM9zClEIXx1Z
   m2IpYj1y54jv1yrxQlZjpMUhRh4YedKUZajeFpI716rNcQDKeE7dR47f6
   HrikYRJBhx0Ge4GTvuEyUoNQ4qdMOGlJX0ALhoeNsQYIKqsRWJWWRPiIR
   oyA5bCYoVhKx3CiCUCkYNlUiB/rot8p9xQP9vJOE5kOw8olKZl/JRdqN5
   mmWt5sKLVDr98hU7Sz/ECWleUZ6FF2fq3787bk4aKMCSw8odePH0nR/39
   KEMdLQxYAtHAWHFrTnSJMu/zrAL2uwTulroGeTO43WUO90tH3CAuSQUNN
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="461488260"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="461488260"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2023 11:44:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="840010290"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="840010290"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2023 11:44:22 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1rDV9X-00000005d07-14u7;
	Wed, 13 Dec 2023 21:44:19 +0200
Date: Wed, 13 Dec 2023 21:44:19 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Mark Hasemeyer <markhas@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Raul Rangel <rrangel@chromium.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 3/6] of: irq: add wake capable bit to of_irq_resource()
Message-ID: <ZXoJkwtk_tVrj1IO@smile.fi.intel.com>
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.3.I29b26a7f3b80fac0a618707446a10b6cc974fdaf@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231213110009.v1.3.I29b26a7f3b80fac0a618707446a10b6cc974fdaf@changeid>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Wed, Dec 13, 2023 at 11:00:21AM -0700, Mark Hasemeyer wrote:
> Add wake capability information to the irq resource. Wake capability is


IRQ

> assumed based on conventions provided in the devicetree wakeup-source
> binding documentation. An interrupt is considered wake capable if the
> following are true:
> 1. a wakeup-source property exits in the same device node as the
>    interrupt.
> 2. No dedicated irq is defined, or the irq is marked as dedicated by

IRQ

>    setting its interrupt-name to "wakeup".
> 
> The wakeup-source documentation states that dedicated interrupts can use
> device specific interrupt names and device drivers are still welcome to
> use their own naming schemes. This api is provided as a helper if one is

API

> willing to conform to the above conventions.
> 
> The ACPI subsystems already provides similar apis that allow one to

APIs

> query the wake capability of an irq. This brings feature parity to the
> devicetree.

...

> +/**
> + * __of_irq_wake_capable - Determine whether a given irq index is wake capable

IRQ

> + * The irq is considered wake capable if the following are true:

IRQ

> + * 1. wakeup-source property exists
> + * 2. no dedicated wakeirq exists OR provided irq index is a dedicated wakeirq

IRQ

> + * This logic assumes the provided irq index is valid.

IRQ

> + * @dev: pointer to device tree node
> + * @index: zero-based index of the irq

IRQ

> + * Return: True if provided irq index for #dev is wake capable. False otherwise.

IRQ
@dev

> + */

...

>  /**
>   * of_irq_to_resource - Decode a node's IRQ and return it as a resource
>   * @dev: pointer to device tree node
>   * @index: zero-based index of the irq
>   * @r: pointer to resource structure to return result into.
> + *
> + * Return: Linux IRQ number on success, or 0 on the IRQ mapping failure, or
> + * -EPROBE_DEFER if the IRQ domain is not yet created, or error code in case
> + * of any other failure.
>   */

You see, your new text is even inconsistent with the existing one...

-- 
With Best Regards,
Andy Shevchenko



