Return-Path: <devicetree+bounces-277706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLYNK27Tu2k4owIAu9opvQ
	(envelope-from <devicetree+bounces-277706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:43:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 315BD2C9AC0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B5A93025E62
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB20F3C3C08;
	Thu, 19 Mar 2026 10:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="lTQUYx2a"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A703C2797;
	Thu, 19 Mar 2026 10:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773917009; cv=none; b=svxpnjuBvR+ZFaBxDOMwJqoGvgH3DLMjE3bInTZXvnOa90s1c53WBjpTM0VMwc2PY+TKzQv3z7ayGxTe7YrIuOxsFRcMMB44xyIHdXSVj/VyS9PP7jStz6UOtIyzY/EwyEz5Z2KYIi1HqOtFzZQuvDaF1fp7G5wgWXAwXPW9qR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773917009; c=relaxed/simple;
	bh=1mkrXC3RQ6SL23C6/feIRzIVGYkVFU3Pio4Lw1R1BOU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rOzKi9fcAWEue7yFj2EAygmCQ7rN02KS8iMTBPeMEwZ7b3FW3yBOvc9dKCfQN7cxChOfM35xikV1iHWJRjfL4ubLjcH3fpwCEiFnPP85+A/A2FtnaY4w7d7cFw4suaWp8/8Hb7sSXAbEsAQ6F4JuV0YDBl/n4fyzjfdhmETSzFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=lTQUYx2a; arc=none smtp.client-ip=198.175.65.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773917008; x=1805453008;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1mkrXC3RQ6SL23C6/feIRzIVGYkVFU3Pio4Lw1R1BOU=;
  b=lTQUYx2a/lcFZ7jfPXuk+KPC7opJDqJ8K9B5pNjFm0FaWa1VtsglAl+0
   RlHTPk/qYq8LN9XIag1sDNX3S18wdB8gcIzDBE1bhXBR4qInRNWHc4NU3
   ebNKc8PFBaYqS1JRQ3t6l37NrOBPtjdwiFUkteruJMk9qdoOMqKC+OCHg
   ONJreqDNXPiCC/gBFG18uKohLmd2SChz8yN4anZZMshqHk9LeWhHN5hoj
   BNSZGh8FEukZ0kGjJCoks5sqX6rC3L95BGYtd6QY5FrKrYeqwdO5RC0ZZ
   8xGTTlh94e9iHRXDsNHnAyvp6N4N0gaAgFxwcwTnXjvFTJidlosGQiAv+
   g==;
X-CSE-ConnectionGUID: MCzhcTUWQDatNpcC+NCPhA==
X-CSE-MsgGUID: GKms44x0Sa+q5wh1K+z6WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="86062383"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; 
   d="scan'208";a="86062383"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2026 03:43:27 -0700
X-CSE-ConnectionGUID: 6vuF5eRNRZWlpHYghl+ZMw==
X-CSE-MsgGUID: J0mrvFuhSGmhEDGiKLM8Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; 
   d="scan'208";a="253401527"
Received: from lkp-server02.sh.intel.com (HELO a51c2a36b9df) ([10.239.97.151])
  by orviesa002.jf.intel.com with ESMTP; 19 Mar 2026 03:43:24 -0700
Received: from kbuild by a51c2a36b9df with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w3AqX-000000000mx-2GTd;
	Thu, 19 Mar 2026 10:43:21 +0000
Date: Thu, 19 Mar 2026 18:41:03 +0800
From: kernel test robot <lkp@intel.com>
To: Florian Eckert <fe@dev.tdt.de>, Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Florian Eckert <fe@dev.tdt.de>,
	Eckert.Florian@googlemail.com, ms@dev.tdt.de
Subject: Re: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
Message-ID: <202603191849.1i02oaur-lkp@intel.com>
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
	TAGGED_FROM(0.00)[bounces-277706-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.937];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,01.org:url]
X-Rspamd-Queue-Id: 315BD2C9AC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Florian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on f338e77383789c0cae23ca3d48adcc5e9e137e3c]

url:    https://github.com/intel-lab-lkp/linux/commits/Florian-Eckert/dt-bindings-Add-Lightning-Mountain-MSI-interrupt-controller-bindings/20260319-033849
base:   f338e77383789c0cae23ca3d48adcc5e9e137e3c
patch link:    https://lore.kernel.org/r/20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8%40dev.tdt.de
patch subject: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
config: um-allyesconfig (https://download.01.org/0day-ci/archive/20260319/202603191849.1i02oaur-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260319/202603191849.1i02oaur-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603191849.1i02oaur-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/irqchip/irq-intel-soc-msi.c: In function 'nmi_msi_compose_msg':
   drivers/irqchip/irq-intel-soc-msi.c:138:18: error: 'apic' undeclared (first use in this function)
     138 |         destid = apic->calc_dest_apicid(cpuid);
         |                  ^~~~
   drivers/irqchip/irq-intel-soc-msi.c:138:18: note: each undeclared identifier is reported only once for each function it appears in
   drivers/irqchip/irq-intel-soc-msi.c:141:25: error: 'arch_msi_msg_addr_lo_t' {aka 'struct arch_msi_msg_addr_lo'} has no member named 'base_address'
     141 |         msg.arch_addr_lo.base_address = X86_MSI_BASE_ADDRESS_LOW;
         |                         ^
   drivers/irqchip/irq-intel-soc-msi.c:141:41: error: 'X86_MSI_BASE_ADDRESS_LOW' undeclared (first use in this function)
     141 |         msg.arch_addr_lo.base_address = X86_MSI_BASE_ADDRESS_LOW;
         |                                         ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/irqchip/irq-intel-soc-msi.c:142:25: error: 'arch_msi_msg_addr_lo_t' {aka 'struct arch_msi_msg_addr_lo'} has no member named 'dest_mode_logical'
     142 |         msg.arch_addr_lo.dest_mode_logical = apic->dest_mode_logical;
         |                         ^
   drivers/irqchip/irq-intel-soc-msi.c:143:25: error: 'arch_msi_msg_addr_lo_t' {aka 'struct arch_msi_msg_addr_lo'} has no member named 'redirect_hint'
     143 |         msg.arch_addr_lo.redirect_hint = 0;
         |                         ^
   drivers/irqchip/irq-intel-soc-msi.c:144:25: error: 'arch_msi_msg_addr_lo_t' {aka 'struct arch_msi_msg_addr_lo'} has no member named 'destid_0_7'
     144 |         msg.arch_addr_lo.destid_0_7 = destid & 0xFF;
         |                         ^
   drivers/irqchip/irq-intel-soc-msi.c:146:26: error: 'X86_MSI_BASE_ADDRESS_HIGH' undeclared (first use in this function)
     146 |         msg.address_hi = X86_MSI_BASE_ADDRESS_HIGH;
         |                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/irqchip/irq-intel-soc-msi.c:152:22: error: 'arch_msi_msg_data_t' {aka 'struct arch_msi_msg_data'} has no member named 'is_level'
     152 |         msg.arch_data.is_level = 0;
         |                      ^
   drivers/irqchip/irq-intel-soc-msi.c:153:22: error: 'arch_msi_msg_data_t' {aka 'struct arch_msi_msg_data'} has no member named 'delivery_mode'
     153 |         msg.arch_data.delivery_mode = APIC_DELIVERY_MODE_NMI;
         |                      ^
   drivers/irqchip/irq-intel-soc-msi.c:153:39: error: 'APIC_DELIVERY_MODE_NMI' undeclared (first use in this function)
     153 |         msg.arch_data.delivery_mode = APIC_DELIVERY_MODE_NMI;
         |                                       ^~~~~~~~~~~~~~~~~~~~~~
   drivers/irqchip/irq-intel-soc-msi.c: In function 'soc_msi_compose_msg':
   drivers/irqchip/irq-intel-soc-msi.c:164:9: error: implicit declaration of function '__irq_msi_compose_msg'; did you mean 'nmi_msi_compose_msg'? [-Wimplicit-function-declaration]
     164 |         __irq_msi_compose_msg(irqd_cfg(data), msg, false);
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         nmi_msi_compose_msg
   drivers/irqchip/irq-intel-soc-msi.c:164:31: error: implicit declaration of function 'irqd_cfg' [-Wimplicit-function-declaration]
     164 |         __irq_msi_compose_msg(irqd_cfg(data), msg, false);
         |                               ^~~~~~~~
   drivers/irqchip/irq-intel-soc-msi.c: In function 'soc_msi_domain_alloc':
   drivers/irqchip/irq-intel-soc-msi.c:198:31: error: storage size of 'info' isn't known
     198 |         struct irq_alloc_info info;
         |                               ^~~~
   drivers/irqchip/irq-intel-soc-msi.c:229:9: error: implicit declaration of function 'init_irq_alloc_info' [-Wimplicit-function-declaration]
     229 |         init_irq_alloc_info(&info, NULL);
         |         ^~~~~~~~~~~~~~~~~~~
>> drivers/irqchip/irq-intel-soc-msi.c:198:31: warning: unused variable 'info' [-Wunused-variable]
     198 |         struct irq_alloc_info info;
         |                               ^~~~
   drivers/irqchip/irq-intel-soc-msi.c: In function 'intel_soc_msi_probe':
   drivers/irqchip/irq-intel-soc-msi.c:304:46: error: 'x86_vector_domain' undeclared (first use in this function)
     304 |         domain = irq_domain_create_hierarchy(x86_vector_domain, 0,
         |                                              ^~~~~~~~~~~~~~~~~


vim +/info +198 drivers/irqchip/irq-intel-soc-msi.c

   192	
   193	static int soc_msi_domain_alloc(struct irq_domain *domain, unsigned int virq,
   194					unsigned int nr_irqs, void *arg)
   195	{
   196		struct msi_domain_info *msi_info = domain->host_data;
   197		struct irq_fwspec *fwspec = arg;
 > 198		struct irq_alloc_info info;
   199		irq_hw_number_t hwirq;
   200		unsigned int type;
   201		void *chip_data;
   202		int i, ret;
   203	
   204		if (!msi_info)
   205			return -EINVAL;
   206	
   207		chip_data = msi_info->chip_data;
   208	
   209		ret = soc_msi_domain_xlate(domain, fwspec, &hwirq, &type);
   210		if (ret)
   211			return ret;
   212	
   213		if (irq_find_mapping(domain, hwirq) > 0)
   214			return -EEXIST;
   215	
   216		/*
   217		 * All NMI interrupts go to vector 2, no irq mapping needed.
   218		 * What we want is to configure hardware once, don't do anything else.
   219		 * 0 means it will continue to initialize other stuff in the irqdomain.
   220		 * We can just return other value after hw initialized. In this case,
   221		 * irqdomain will release all resources.
   222		 */
   223		if (soc_nmi_msi(hwirq)) {
   224			nmi_msi_compose_msg((struct soc_msi_dev *)chip_data, hwirq);
   225			return -EINVAL;
   226		}
   227	
   228		/* Translate to X86 favorite arguments */
   229		init_irq_alloc_info(&info, NULL);
   230	
   231		/* Need to allocate from x86 vector domain */
   232		ret = irq_domain_alloc_irqs_parent(domain, virq, nr_irqs, &info);
   233		if (ret < 0)
   234			return ret;
   235	
   236		for (i = 0; i < nr_irqs; i++) {
   237			irq_domain_set_info(domain, virq + i, hwirq + i,
   238					    &soc_msi_irq_chip, chip_data,
   239					    handle_edge_irq, chip_data, "edge");
   240		}
   241	
   242		return 0;
   243	}
   244	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

