Return-Path: <devicetree+bounces-264866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGgAK50EjWlVxAAAu9opvQ
	(envelope-from <devicetree+bounces-264866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:37:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2A4128277
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F7463019FC1
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55243356A27;
	Wed, 11 Feb 2026 22:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="RFSrxbRE"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B532D3563F5;
	Wed, 11 Feb 2026 22:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770849422; cv=none; b=BjavNBabu4hWSXK/OWURWoym+OK86c8wjgH/gHzjCHikZ2euW+M3RL+Jc3/4pvG1pZNzU1oHp/ByvBkyFBT8najd7nMG/Kt0+IYtO5kfbDxxR70E35Yl/AXmkzBdtz8aqyoy9eRGxP/9tcO3TXWkzoSMDxgEsOLAI4wm7B+h97Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770849422; c=relaxed/simple;
	bh=5lBrMrSUEvT4lx29b/VzGz7vn6FI2f6WHH0Xp1tO82E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cqv7a37dzZoYw0oJrOl9WSD8a0PIIE+qRsH1PtdKxr2uItkCRwP/JCTN1sucLGJq8vzXI9ZFrQgUhlvM7FpRwIrnY4IOkdDtQsLF/y3tFassN+F7+lY/bpADRocnhIwYoYorkMknZ9xFgUCrZZSyRWeIxlMYY6lSSWAMzTIX7WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=RFSrxbRE; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770849420; x=1802385420;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5lBrMrSUEvT4lx29b/VzGz7vn6FI2f6WHH0Xp1tO82E=;
  b=RFSrxbRENVdH4FzwrhpQU2GORGcYJPog36oN7v1n2ipOG+diF4i2+03n
   igiJVHYj5NJMo8mhtRKVGTghc4zvi4nM/mwagoS5haBusoOn6wRKtOiv5
   7WKQbYPEjuDoXSYMNqzMz608CeSdC8scUJAF4zhScET61U/aHZmnbbTQ1
   BeXq3JCkdRYmOxUrbGBUOOAGc5v4YlRIUpOfnidFWBfIUkyFp2xnfqbhE
   yJ24smx/kwxPaBS/W6nbjPABMro5V25aaZ8I17JnXWmYCxXBZgRXU7DxW
   Km/Hao6kvgGfYKUhd2xRh8wlmq9EK/Z4vTM8JoQOrogXsYplNiH7dQvHm
   g==;
X-CSE-ConnectionGUID: MM+OKgIdQzy3Z4hOL31z8Q==
X-CSE-MsgGUID: pLTqxtdkTk25yBcybTGqtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="71911087"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; 
   d="scan'208";a="71911087"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 14:36:59 -0800
X-CSE-ConnectionGUID: ZabLUBVpQsqUdFupslNNvQ==
X-CSE-MsgGUID: MSBEmk28TJaeA0OfdScegg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; 
   d="scan'208";a="212403937"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by orviesa008.jf.intel.com with ESMTP; 11 Feb 2026 14:36:53 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vqIpH-00000000qRi-0j3G;
	Wed, 11 Feb 2026 22:36:51 +0000
Date: Thu, 12 Feb 2026 06:35:52 +0800
From: kernel test robot <lkp@intel.com>
To: Coiby Xu <coxu@redhat.com>, kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev,
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>,
	Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>, Thomas Staudt <tstaudt@de.ibm.com>,
	Sourabh Jain <sourabhjain@linux.ibm.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64,ppc64le/kdump: pass dm-crypt keys to kdump
 kernel
Message-ID: <202602120648.RgQALnnI-lkp@intel.com>
References: <20260211082401.2407853-3-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211082401.2407853-3-coxu@redhat.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264866-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[lists.linux.dev,clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kvack.org,kernel.org,de.ibm.com,linux.ibm.com,arm.com,ellerman.id.au,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,01.org:url]
X-Rspamd-Queue-Id: 2C2A4128277
X-Rspamd-Action: no action

Hi Coiby,

kernel test robot noticed the following build errors:

[auto build test ERROR on 2619c62b7ef2f463bcbbb34af122689c09855c23]

url:    https://github.com/intel-lab-lkp/linux/commits/Coiby-Xu/crash_dump-dm-crypt-Don-t-print-in-arch-specific-code/20260211-162729
base:   2619c62b7ef2f463bcbbb34af122689c09855c23
patch link:    https://lore.kernel.org/r/20260211082401.2407853-3-coxu%40redhat.com
patch subject: [PATCH v4 2/2] arm64,ppc64le/kdump: pass dm-crypt keys to kdump kernel
config: powerpc64-randconfig-r111-20260212 (https://download.01.org/0day-ci/archive/20260212/202602120648.RgQALnnI-lkp@intel.com/config)
compiler: powerpc64-linux-gcc (GCC) 11.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260212/202602120648.RgQALnnI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602120648.RgQALnnI-lkp@intel.com/

All errors (new ones prefixed by >>):

   arch/powerpc/kexec/elf_64.c: In function 'elf64_load':
>> arch/powerpc/kexec/elf_64.c:82:23: error: implicit declaration of function 'crash_load_dm_crypt_keys' [-Werror=implicit-function-declaration]
      82 |                 ret = crash_load_dm_crypt_keys(image);
         |                       ^~~~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/crash_load_dm_crypt_keys +82 arch/powerpc/kexec/elf_64.c

    27	
    28	static void *elf64_load(struct kimage *image, char *kernel_buf,
    29				unsigned long kernel_len, char *initrd,
    30				unsigned long initrd_len, char *cmdline,
    31				unsigned long cmdline_len)
    32	{
    33		int ret;
    34		unsigned long kernel_load_addr;
    35		unsigned long initrd_load_addr = 0, fdt_load_addr;
    36		void *fdt;
    37		const void *slave_code;
    38		struct elfhdr ehdr;
    39		char *modified_cmdline = NULL;
    40		struct crash_mem *rmem = NULL;
    41		struct kexec_elf_info elf_info;
    42		struct kexec_buf kbuf = { .image = image, .buf_min = 0,
    43					  .buf_max = ppc64_rma_size };
    44		struct kexec_buf pbuf = { .image = image, .buf_min = 0,
    45					  .buf_max = ppc64_rma_size, .top_down = true,
    46					  .mem = KEXEC_BUF_MEM_UNKNOWN };
    47	
    48		ret = kexec_build_elf_info(kernel_buf, kernel_len, &ehdr, &elf_info);
    49		if (ret)
    50			return ERR_PTR(ret);
    51	
    52		if (IS_ENABLED(CONFIG_CRASH_DUMP) && image->type == KEXEC_TYPE_CRASH) {
    53			/* min & max buffer values for kdump case */
    54			kbuf.buf_min = pbuf.buf_min = crashk_res.start;
    55			kbuf.buf_max = pbuf.buf_max =
    56					((crashk_res.end < ppc64_rma_size) ?
    57					 crashk_res.end : (ppc64_rma_size - 1));
    58		}
    59	
    60		ret = kexec_elf_load(image, &ehdr, &elf_info, &kbuf, &kernel_load_addr);
    61		if (ret)
    62			goto out;
    63	
    64		kexec_dprintk("Loaded the kernel at 0x%lx\n", kernel_load_addr);
    65	
    66		ret = kexec_load_purgatory(image, &pbuf);
    67		if (ret) {
    68			pr_err("Loading purgatory failed.\n");
    69			goto out;
    70		}
    71	
    72		kexec_dprintk("Loaded purgatory at 0x%lx\n", pbuf.mem);
    73	
    74		/* Load additional segments needed for panic kernel */
    75		if (IS_ENABLED(CONFIG_CRASH_DUMP) && image->type == KEXEC_TYPE_CRASH) {
    76			ret = load_crashdump_segments_ppc64(image, &kbuf);
    77			if (ret) {
    78				pr_err("Failed to load kdump kernel segments\n");
    79				goto out;
    80			}
    81	
  > 82			ret = crash_load_dm_crypt_keys(image);
    83			if (ret)
    84				goto out;
    85	
    86			/* Setup cmdline for kdump kernel case */
    87			modified_cmdline = setup_kdump_cmdline(image, cmdline,
    88							       cmdline_len);
    89			if (!modified_cmdline) {
    90				pr_err("Setting up cmdline for kdump kernel failed\n");
    91				ret = -EINVAL;
    92				goto out;
    93			}
    94			cmdline = modified_cmdline;
    95		}
    96	
    97		if (initrd != NULL) {
    98			kbuf.buffer = initrd;
    99			kbuf.bufsz = kbuf.memsz = initrd_len;
   100			kbuf.buf_align = PAGE_SIZE;
   101			kbuf.top_down = false;
   102			kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
   103			ret = kexec_add_buffer(&kbuf);
   104			if (ret)
   105				goto out;
   106			initrd_load_addr = kbuf.mem;
   107	
   108			kexec_dprintk("Loaded initrd at 0x%lx\n", initrd_load_addr);
   109		}
   110	
   111		ret = get_reserved_memory_ranges(&rmem);
   112		if (ret)
   113			goto out;
   114	
   115		fdt = of_kexec_alloc_and_setup_fdt(image, initrd_load_addr,
   116						   initrd_len, cmdline,
   117						   kexec_extra_fdt_size_ppc64(image, rmem));
   118		if (!fdt) {
   119			pr_err("Error setting up the new device tree.\n");
   120			ret = -EINVAL;
   121			goto out;
   122		}
   123	
   124		ret = setup_new_fdt_ppc64(image, fdt, rmem);
   125		if (ret)
   126			goto out_free_fdt;
   127	
   128		if (!IS_ENABLED(CONFIG_CRASH_HOTPLUG) || image->type != KEXEC_TYPE_CRASH)
   129			fdt_pack(fdt);
   130	
   131		kbuf.buffer = fdt;
   132		kbuf.bufsz = kbuf.memsz = fdt_totalsize(fdt);
   133		kbuf.buf_align = PAGE_SIZE;
   134		kbuf.top_down = true;
   135		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
   136		ret = kexec_add_buffer(&kbuf);
   137		if (ret)
   138			goto out_free_fdt;
   139	
   140		/* FDT will be freed in arch_kimage_file_post_load_cleanup */
   141		image->arch.fdt = fdt;
   142	
   143		fdt_load_addr = kbuf.mem;
   144	
   145		kexec_dprintk("Loaded device tree at 0x%lx\n", fdt_load_addr);
   146	
   147		slave_code = elf_info.buffer + elf_info.proghdrs[0].p_offset;
   148		ret = setup_purgatory_ppc64(image, slave_code, fdt, kernel_load_addr,
   149					    fdt_load_addr);
   150		if (ret)
   151			pr_err("Error setting up the purgatory.\n");
   152	
   153		goto out;
   154	
   155	out_free_fdt:
   156		kvfree(fdt);
   157	out:
   158		kfree(rmem);
   159		kfree(modified_cmdline);
   160		kexec_free_elf_info(&elf_info);
   161	
   162		return ret ? ERR_PTR(ret) : NULL;
   163	}
   164	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

