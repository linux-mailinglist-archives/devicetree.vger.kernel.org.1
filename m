Return-Path: <devicetree+bounces-277640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBqcDEe8u2mtmwIAu9opvQ
	(envelope-from <devicetree+bounces-277640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:05:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE632C851E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:05:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29A2A3016D14
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 976CB36F402;
	Thu, 19 Mar 2026 09:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="E3gzIbBv"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F1C36CE16;
	Thu, 19 Mar 2026 09:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773911095; cv=none; b=P6Mq05MX71fgejztlgNKJG0gDE+GYYSHGltocbrfWZ/ysh6BYAo6aKmOzm/AeVXuEw2pxHgSDs9ocuUKES3YCm5oHqpw8rxJIHKbf/F1yEFpea1whegcLcnmNkTsopW0nyl7aO3/GIo78SpEG09rTVQhfWV9i6zTSJXGoFCWqb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773911095; c=relaxed/simple;
	bh=TRM4DddZ6ecLK6JJj0Yca2RAbUWeLTWFYFeYFezGLTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LFJ/gqT0pCD0haqgr75GSVP+luc9TXH48H97jv2QqFBoNlvXv+/w6qQ5+P9QuDTo6I4iFKbln0njp9XJGxZIkkpaMQVJLcdpY0EMcy5kDfSC7p6IqnkGcVvUuwjKXNEB3w5WjacZshjosJCmeEaK3KBluIWjREQ8asGkhJrckZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=E3gzIbBv; arc=none smtp.client-ip=198.175.65.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773911093; x=1805447093;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=TRM4DddZ6ecLK6JJj0Yca2RAbUWeLTWFYFeYFezGLTU=;
  b=E3gzIbBvJahMo42WVUQqIPD1xJ2KAq3QkduVO52xWo0n/bMPlbionOyE
   hJt2nIG5LwBv2GzJ2tkzmG4Ogz9FjoedL9tb2Fxc/Y3PrrUtsmMfhicSY
   0kjvu00GzqmnO6JFCSqZlwJoVwVvvcaWC3VIkasp6xlLf6sP+waSqkAXy
   OMlecw00ktCoh4NAUeIGI7M/5rw/hnHgBp33WZFLoQiISLROUSPmOXbLR
   1pZeE75x8wiswRc6xZWg5AYJxtDLSMSN8GTUhltxEgdL46685ljT23k+R
   jgGhyCj4quue4nkhd2oGIZPVe9JiwIQ3dk9p6MQtyYwWHrNGCiJz/LPJp
   Q==;
X-CSE-ConnectionGUID: FU2m0OMUSTusrbD5eFM//A==
X-CSE-MsgGUID: V99aHSydSKqvfjpGVnAogw==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75010461"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; 
   d="scan'208";a="75010461"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2026 02:04:53 -0700
X-CSE-ConnectionGUID: ncQrF148RruU1rp975Qhlw==
X-CSE-MsgGUID: Upr/bQP+S5KOOZU5PaoZXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; 
   d="scan'208";a="227387273"
Received: from lkp-server02.sh.intel.com (HELO a51c2a36b9df) ([10.239.97.151])
  by orviesa004.jf.intel.com with ESMTP; 19 Mar 2026 02:04:50 -0700
Received: from kbuild by a51c2a36b9df with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w39J7-000000000dV-0O9M;
	Thu, 19 Mar 2026 09:04:45 +0000
Date: Thu, 19 Mar 2026 17:03:31 +0800
From: kernel test robot <lkp@intel.com>
To: Florian Eckert <fe@dev.tdt.de>, Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Florian Eckert <fe@dev.tdt.de>,
	Eckert.Florian@googlemail.com, ms@dev.tdt.de
Subject: Re: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
Message-ID: <202603191633.AoajEi81-lkp@intel.com>
References: <20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8@dev.tdt.de>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,dev.tdt.de,googlemail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277640-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.951];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,01.org:url]
X-Rspamd-Queue-Id: BAE632C851E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Florian,

kernel test robot noticed the following build errors:

[auto build test ERROR on f338e77383789c0cae23ca3d48adcc5e9e137e3c]

url:    https://github.com/intel-lab-lkp/linux/commits/Florian-Eckert/dt-bindings-Add-Lightning-Mountain-MSI-interrupt-controller-bindings/20260319-033849
base:   f338e77383789c0cae23ca3d48adcc5e9e137e3c
patch link:    https://lore.kernel.org/r/20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8%40dev.tdt.de
patch subject: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20260319/202603191633.AoajEi81-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260319/202603191633.AoajEi81-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603191633.AoajEi81-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/irqchip/irq-intel-soc-msi.c:17:10: fatal error: asm/irqdomain.h: No such file or directory
      17 | #include <asm/irqdomain.h>
         |          ^~~~~~~~~~~~~~~~~
   compilation terminated.


vim +17 drivers/irqchip/irq-intel-soc-msi.c

    16	
  > 17	#include <asm/irqdomain.h>
    18	#include <asm/apic.h>
    19	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

