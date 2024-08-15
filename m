Return-Path: <devicetree+bounces-93973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3779537BC
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 17:59:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F2771C2552B
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 15:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42B81B32CC;
	Thu, 15 Aug 2024 15:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bzVzhOtg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4571AD9CE
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 15:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723737559; cv=none; b=n/drx8zBzRGbkQ0XmAaWCPppWjo56McivUKearHPgnziuHTuwTXvwIXoCpYVyBZG7bL90eWi4ntheHnyJxEs5Ut2NDPcrzfen3xzhyp6hpL+NbiykZudVDpIB7iTf0xbaG8SXfXAfUpTabZ1d8YwB8lXpmN5svalnlSoWcvwXKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723737559; c=relaxed/simple;
	bh=Z/fyRi93/FgvuhZIwHmKOmN49p2qBtOwlI7YvJ6Mm3g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bfUMzHI6V+Ls3wayJyJE88DMo2wqHgNK+NbfwnVM0/U8l4xTGiDi6KJCD3pFUEeuHaBM6PPCyjN/+/MyUI7bDCs/oH3eCbeP1Rthv/nDzZbTXt33JBDNsz0liKg3Oj7jKKoPnpB4LD/sWLkt2SglZNpt1sirEyqQnr6TtIWDMKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bzVzhOtg; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7a115c427f1so823995a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 08:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723737556; x=1724342356; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Go1TBNFKLXqY7P67ovoHUjFQplVz6G9uJaPMlcb/pTE=;
        b=bzVzhOtg9IAvBisJHwbZCN41rlvYmy9NtseOS5883Y+FJ3gd8yULsv5KpIZOgKiuyq
         GZiZox/W1XezNRchxrw+l7W8Hrt28Sd6oQaO6Fghb92KOGJp3uzYSdwIfIHvhB9+roqK
         QRH8T1M1n5gGtMt/uUEP/myVJc1uGfJACzQZ9Nuz3nw/BevV6/umhpeaHW57aqKu04RV
         0BeHlbO3aajVLk5Y9ih8LWyenX8WuolWYpiXTldwnE0QdvC/WSgoq7xevBsNYn408qkd
         4t2hrgDzUd0BRUvree7ZS1bAFBltKYZTTVB5yYGQBQUYktErI7eIr+pnqBPSQfD+FKxG
         pdxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723737556; x=1724342356;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Go1TBNFKLXqY7P67ovoHUjFQplVz6G9uJaPMlcb/pTE=;
        b=QX1je9FwDqyfpZ2XNuk0rFd1Ak3gfy8jooUmfGmOPAtZAF9QPqfc0YAeQGzA5XPQSY
         LRiwksM8X9q51R6ME0Nr9yFCz2dmbZHmb25O9XmO/TRNgnA19LEkAeUMwiZ0RRbro0sF
         LiK0abBZKz6rbG/pYGswlgiD7O13AAIccecxyggJNgTbP9cVW+pI5g6PeIFUa/nZTbrn
         A+sh9AfeNQ+1MTCiBDFRaJniDUJlAXn2DbpsoRs7IOW46DN71oteSow/nf10iLD92DY4
         6lWxzNSLaHM79Z7cFmTqEi6UlvQok3g+9UvgT+ydZotSTxfzmcXKPxny/RzpbW7U1kvH
         TFIA==
X-Forwarded-Encrypted: i=1; AJvYcCXpVM4rBO0gnfI7av6RBhoCXPNCXVmm8QxQ5aL5ZuvRIZXn1HBynwEt/PFM9Ng8WRDE0sLMqvG3WNwyrY6naGnKZeaJxUHHQTg4oA==
X-Gm-Message-State: AOJu0YwNx025AlAIHk0hHdc5vh4KEPs9eCDWK/mNRuXCu7DLPNXMvIM6
	WMvO53nmsndT1Apnhs96jszmBhhC71zI5K92MOQqdBw8wwhPX414O6nkLxA0Lw==
X-Google-Smtp-Source: AGHT+IGk4qceJ8StUFPW4JHw1XS1cn4wjioyj97u+D8ec4AIR96mMNUmXxt7TcNKR/bC4iSHsI2ajg==
X-Received: by 2002:a05:6a20:9f90:b0:1c0:f529:bad6 with SMTP id adf61e73a8af0-1c90505350emr174630637.45.1723737556019;
        Thu, 15 Aug 2024 08:59:16 -0700 (PDT)
Received: from thinkpad ([36.255.17.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f0393684sm11660685ad.239.2024.08.15.08.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 08:59:15 -0700 (PDT)
Date: Thu, 15 Aug 2024 21:29:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: kernel test robot <lkp@intel.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Cc: Manivannan Sadhasivam via B4 Relay <devnull+manivannan.sadhasivam.linaro.org@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	oe-kbuild-all@lists.linux.dev, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 05/13] PCI: endpoint: Assign PCI domain number for
 endpoint controllers
Message-ID: <20240815155909.GD2562@thinkpad>
References: <20240731-pci-qcom-hotplug-v3-5-a1426afdee3b@linaro.org>
 <202408111053.0PLHSTeH-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <202408111053.0PLHSTeH-lkp@intel.com>

On Sun, Aug 11, 2024 at 10:47:08AM +0800, kernel test robot wrote:
> Hi Manivannan,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on 8400291e289ee6b2bf9779ff1c83a291501f017b]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Manivannan-Sadhasivam-via-B4-Relay/PCI-qcom-ep-Drop-the-redundant-masking-of-global-IRQ-events/20240802-024847
> base:   8400291e289ee6b2bf9779ff1c83a291501f017b
> patch link:    https://lore.kernel.org/r/20240731-pci-qcom-hotplug-v3-5-a1426afdee3b%40linaro.org
> patch subject: [PATCH v3 05/13] PCI: endpoint: Assign PCI domain number for endpoint controllers
> config: microblaze-randconfig-r072-20240810 (https://download.01.org/0day-ci/archive/20240811/202408111053.0PLHSTeH-lkp@intel.com/config)
> compiler: microblaze-linux-gcc (GCC) 14.1.0
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202408111053.0PLHSTeH-lkp@intel.com/
> 
> New smatch warnings:
> drivers/pci/endpoint/pci-epc-core.c:843 pci_epc_destroy() warn: inconsistent indenting
> 
> Old smatch warnings:
> drivers/pci/endpoint/pci-epc-core.c:908 __pci_epc_create() warn: inconsistent indenting
> 

Krzysztof, will you be able to fix the indendation while applying? If not,
please let me know. I'll spin v4.

- Mani

> vim +843 drivers/pci/endpoint/pci-epc-core.c
> 
>    830	
>    831	/**
>    832	 * pci_epc_destroy() - destroy the EPC device
>    833	 * @epc: the EPC device that has to be destroyed
>    834	 *
>    835	 * Invoke to destroy the PCI EPC device
>    836	 */
>    837	void pci_epc_destroy(struct pci_epc *epc)
>    838	{
>    839		pci_ep_cfs_remove_epc_group(epc->group);
>    840		device_unregister(&epc->dev);
>    841	
>    842		#ifdef CONFIG_PCI_DOMAINS_GENERIC
>  > 843			pci_bus_release_domain_nr(NULL, &epc->dev);
>    844		#endif
>    845	}
>    846	EXPORT_SYMBOL_GPL(pci_epc_destroy);
>    847	
> 
> -- 
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki

-- 
மணிவண்ணன் சதாசிவம்

