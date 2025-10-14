Return-Path: <devicetree+bounces-226380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCB9BD7F23
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 09:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 745904FC5D8
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 07:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A582D9EE2;
	Tue, 14 Oct 2025 07:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FzD8tvfx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC032E6CB3
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 07:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760427239; cv=none; b=YorREZDn2+Umi7nr/YXDhiTTJJ2dE2Bq89OiY2M59L+7b/d0Z9ZzlNXpeBbgM1fSW2Vo03RE4cxZPJx1X/N6dVkFTfoYD1H7oXUvdQ/6ptFeKOkdoMB9hJ2JU5v+gsQaTFbthZ4JExFHsrK81QwopKzTB1stbhN/mXknRoxtgmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760427239; c=relaxed/simple;
	bh=rJZBVvFcCZfoZL/WIRUcWWYvpISm45B4Rwe3rWq54PY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=VBaAcqL4ffM4zXsnBeBZGHkbddF4gEmdARR49OJvqIpT6Fpu4rztSqt+Sudk9Avd5Gg4vhNhXdIxnYs8dN3XFC1zAngtLCLZydA09Oa7BvIRi8DQ2bcG0dbvGxHCqlD8D62JCdCuIsdnPk8eQRHYMQ/KePrTLa06byn5d5bVdHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FzD8tvfx; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3f0308469a4so2664963f8f.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 00:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760427236; x=1761032036; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BwG/OchAZjwNRXsTLu0s9JIZNQmUXDtfcvX6l0dZWYY=;
        b=FzD8tvfxO3ubadq7Qbrbqh7pz6IRHgcAXl3M/8uFrRetk2JTJwmEBQuoV3D7cSI90W
         JOTMrgIGkJqY8+w3vPTGy2Eijr35eriEj4zkVbt9WPna0SvQ+ron/VpIKcP6r2KJLMdw
         IoFjfsEMRIb8pdmE3bwXbDT4m/e7Ko6di5gWbxPE9QbvgunHA3/nDc1Ww3P2HRZ5gvFI
         LMy0j5KSsJl83o144vw+sz4GOFyznRtjmEws/cjYI+TSlGE671IqvdO+VPZoMICcuzGb
         lg8a4A2lPm7oonjfck6F++EPp+5+Pgi8JPLzZu0AfGVc8d43id60w5hfQQRexz8guEsY
         tTLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760427236; x=1761032036;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BwG/OchAZjwNRXsTLu0s9JIZNQmUXDtfcvX6l0dZWYY=;
        b=nufxTzBYGo+e/WzeAPhUEkkjvjJ1dC+ThVGPZM3rgq/Un8POdy9OnYH8KgmozpZZyV
         iwLn+iMVWeffzGYt/tgfhDQMcr6Sbu6mql5TmSvS9Q1eNA/pIhbAik7dhN6ahFf2rk/E
         0K7mf7I7nRyBwRQnNcVrm9lsHq5cQYSPLNDiZrQDEEh9IYM/KPIAUw0+GDbGe7Mp4Sz5
         Saq4+0yuTFw/AtyW01/THGCverwEbUacb/FCNR6u0cfsKE8lJ0TzlGN4rOHoSWYui8vv
         tDDcmLqASEfK76PNYSXxYIErVJwuxHa5py1r0iyUMf1vX5kkIw6dPQt3EbfX9CzPA3O9
         4VnA==
X-Forwarded-Encrypted: i=1; AJvYcCU+cgxzU9mlAL2pNuPAVHVtF7RGIMES/F5AcQCwt220tUsETuV7pX1ql0gSRVYoujNNomvQfUZkGVwC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywlrkendk6jlg2GuSH21hTWff6cn8Y9idkHP5Fcdr67C3Z76MFJ
	CyVhu6YBDmi/Sq++gkn7h7i17YY+R+GafodcXxT5CQiunkiZuOOUwMAmISMDrLMAy3I=
X-Gm-Gg: ASbGncvZYwFc/0KDtm79DW36FCvBkbNeMTC50/PbHw55iXEtCrrXDcSfm6IIt5Dn4Yn
	A27SAr+MgHR0FDeei70vWn2Ak0VvbMLlzy7RvI/yyI57KniN5mgfODfynrJlPVZ02cVdcRm6Qx2
	CaTty2EXd5XBmRcgXo1RyABkqOVlYGRc0HCYpFEmygc58bbU5Yb/KeYN0fYCemawhr5tls49+KB
	aMi9O+hRwAYStBHWHO1btIlhsCqlNOvYB/8QT9/l7uMs4en6kXiL9goxyrnCOfYiDMObaxtKY0h
	xP+e5XMfvnQ0NIaovyYjKry2B6+Qe/ZJRbI05+dbdUdwCm0f0LrVZlJst6Astm71kpn8lq8CtfI
	S2xz3Q0y9nOVNLqTFfOPe7IQ9NOtvgYGOsanqv8gdKmzEoIcbMlk=
X-Google-Smtp-Source: AGHT+IE0SibgFOUsTOWb11Xe06KS5AooYnMfuV3qZwF21RGoTYuiMhvM5xxFKgxQQAvf0jDG3bRS2A==
X-Received: by 2002:a05:6000:1ac8:b0:3f7:b7ac:f3d4 with SMTP id ffacd0b85a97d-42666abbbc1mr17933769f8f.5.1760427235501;
        Tue, 14 Oct 2025 00:33:55 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-426ce5e8a06sm22182799f8f.55.2025.10.14.00.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 00:33:55 -0700 (PDT)
Date: Tue, 14 Oct 2025 10:33:51 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Randolph Lin <randolph@andestech.com>,
	linux-kernel@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-pci@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
	kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, alex@ghiti.fr,
	aou@eecs.berkeley.edu, palmer@dabbelt.com, paul.walmsley@sifive.com,
	ben717@andestech.com, inochiama@gmail.com,
	thippeswamy.havalige@amd.com, namcao@linutronix.de,
	shradha.t@samsung.com, pjw@kernel.org, randolph.sklin@gmail.com,
	tim609@andestech.com, Randolph Lin <randolph@andestech.com>
Subject: Re: [PATCH v6 4/5] PCI: andes: Add Andes QiLai SoC PCIe host driver
 support
Message-ID: <202510092111.fZmvx6jO-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251003023527.3284787-5-randolph@andestech.com>

Hi Randolph,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Randolph-Lin/PCI-dwc-Allow-adjusting-the-number-of-ob-ib-windows-in-glue-driver/20251003-104100
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20251003023527.3284787-5-randolph%40andestech.com
patch subject: [PATCH v6 4/5] PCI: andes: Add Andes QiLai SoC PCIe host driver support
config: powerpc-randconfig-r071-20251009 (https://download.01.org/0day-ci/archive/20251009/202510092111.fZmvx6jO-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 39f292ffa13d7ca0d1edff27ac8fd55024bb4d19)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202510092111.fZmvx6jO-lkp@intel.com/

smatch warnings:
drivers/pci/controller/dwc/pcie-andes-qilai.c:157 qilai_pcie_host_fix_ob_iatu_count() error: uninitialized symbol 'ranges_32bits'.

vim +/ranges_32bits +157 drivers/pci/controller/dwc/pcie-andes-qilai.c

816cad1ac60166 Randolph Lin 2025-10-03  133  static int qilai_pcie_host_fix_ob_iatu_count(struct dw_pcie_rp *pp)
816cad1ac60166 Randolph Lin 2025-10-03  134  {
816cad1ac60166 Randolph Lin 2025-10-03  135  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
816cad1ac60166 Randolph Lin 2025-10-03  136  	struct device *dev = pci->dev;
816cad1ac60166 Randolph Lin 2025-10-03  137  	struct resource_entry *entry;
816cad1ac60166 Randolph Lin 2025-10-03  138  	/* Reserved 1 ob iATU for config space */
816cad1ac60166 Randolph Lin 2025-10-03  139  	int count = 1;
816cad1ac60166 Randolph Lin 2025-10-03  140  	int ranges_32bits;

This should be bool and initialized to false.

816cad1ac60166 Randolph Lin 2025-10-03  141  	u64 pci_addr;
816cad1ac60166 Randolph Lin 2025-10-03  142  	u64 size;
816cad1ac60166 Randolph Lin 2025-10-03  143  
816cad1ac60166 Randolph Lin 2025-10-03  144  	resource_list_for_each_entry(entry, &pp->bridge->windows) {
816cad1ac60166 Randolph Lin 2025-10-03  145  		if (resource_type(entry->res) != IORESOURCE_MEM)
816cad1ac60166 Randolph Lin 2025-10-03  146  			continue;
816cad1ac60166 Randolph Lin 2025-10-03  147  
816cad1ac60166 Randolph Lin 2025-10-03  148  		size = resource_size(entry->res);
816cad1ac60166 Randolph Lin 2025-10-03  149  		if (size < SZ_4G)
816cad1ac60166 Randolph Lin 2025-10-03  150  			count++;
816cad1ac60166 Randolph Lin 2025-10-03  151  
816cad1ac60166 Randolph Lin 2025-10-03  152  		pci_addr = entry->res->start - entry->offset;
816cad1ac60166 Randolph Lin 2025-10-03  153  		if (pci_addr < SZ_4G)
816cad1ac60166 Randolph Lin 2025-10-03  154  			ranges_32bits = true;
816cad1ac60166 Randolph Lin 2025-10-03  155  	}
816cad1ac60166 Randolph Lin 2025-10-03  156  
816cad1ac60166 Randolph Lin 2025-10-03 @157  	if (!ranges_32bits) {
816cad1ac60166 Randolph Lin 2025-10-03  158  		dev_err(dev, "Bridge window must contain 32-bits address\n");
816cad1ac60166 Randolph Lin 2025-10-03  159  		return -EINVAL;
816cad1ac60166 Randolph Lin 2025-10-03  160  	}
816cad1ac60166 Randolph Lin 2025-10-03  161  
816cad1ac60166 Randolph Lin 2025-10-03  162  	pci->num_ob_windows = count;
816cad1ac60166 Randolph Lin 2025-10-03  163  
816cad1ac60166 Randolph Lin 2025-10-03  164  	return 0;
816cad1ac60166 Randolph Lin 2025-10-03  165  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


