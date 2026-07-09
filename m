Return-Path: <devicetree+bounces-323355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FR0pJdtKT2qrdgIAu9opvQ
	(envelope-from <devicetree+bounces-323355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:16:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 023E772D831
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:16:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IDiDsm7l;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323355-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323355-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 09255300D708
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E56034D4CE;
	Thu,  9 Jul 2026 07:16:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C72365A17;
	Thu,  9 Jul 2026 07:16:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783581399; cv=none; b=Q/1rehyCuqR8GBoDae90c3MSgubm4CTjJjwwAaw1vMzekA0p43tgtz2f/t3D3tDagEVnx03DT0sNYl9IfnuliMvsc6R48evvTgPxCS6xa4uzneOawooJFytdU2wDgf5HUhEPOqkw45LZWQjkid4qBn/7/Ng25zaVKUAKEaLKCoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783581399; c=relaxed/simple;
	bh=dvT1QZNOdjtOMYfMH1zYDVT1RPz7VJjAh7dTKE2ZvSM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uvMdkXm75b8X83imrZ0J4Uz6+Q6wxJvrus2vEw9MCHazR3rHYYmb8IueDmsA1QeJOxWADk2SFvxU20Ul1lsQIeHIIVgni5SJ6MwFE+RwAt/5EVaz3z61Huyvj+hGYw6O4ONP608KVpgeMxLwdTkA72n8Q3tVsLpiQdqkS5/4O50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=IDiDsm7l; arc=none smtp.client-ip=192.198.163.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783581398; x=1815117398;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dvT1QZNOdjtOMYfMH1zYDVT1RPz7VJjAh7dTKE2ZvSM=;
  b=IDiDsm7lOK922AKAkRXrMfCNeWhqnHA7PBzpGBgB/5nB8YpzQlZ9xrHU
   V9uhoH4UIcJBBn8Azs2bogZRGWNg28oR1xhPvuh2O6/ff8Zoi76j8MVih
   iLL56KhGzWgcL42VgEMSrWnEQ/VdI+HmtehciG/kdLxu7amL5LjTnYXow
   iULW69lt5vAQdyZFFVchVNC+wHRCkZjTC7YZPaFxqDqZ+0NUMiVcNHv9+
   vceqQLM34OgSCCW/nMV1W3wDSSPn7eyPVh8Dix7CsnPcXfnVZSI0d4py2
   13qGZYcF0senIokauwFrFjRTTJka9CzRr/8XP9XF0lJgcKH2MX6+LK8CE
   w==;
X-CSE-ConnectionGUID: U6gYMbCdRQi7hITmmDnZmw==
X-CSE-MsgGUID: OWbhHF1eRtqPDGlH+tR4AQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86797425"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="86797425"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2026 00:16:37 -0700
X-CSE-ConnectionGUID: rigr31JtQJ6eedVSCMiIKw==
X-CSE-MsgGUID: KgjB/8nlRJSPDPGa3kZGXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="278894335"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2026 00:16:31 -0700
Date: Thu, 9 Jul 2026 10:16:28 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Christian Bruel <christian.bruel@foss.st.com>,
	Frank Li <Frank.Li@nxp.com>, Nam Cao <namcao@linutronix.de>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Xincheng Zhang <zhangxincheng@ultrarisc.com>,
	Alex Elder <elder@riscstar.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 2/6] PCI: spacemit-k1: Add multiple PHY handles support
Message-ID: <ak9KzNFF26B0Kttz@ashevche-desk.local>
References: <20260709040027.958400-1-inochiama@gmail.com>
 <20260709040027.958400-3-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260709040027.958400-3-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323355-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:jingoohan1@gmail.com,m:mani@kernel.org,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:christian.bruel@foss.st.com,m:Frank.Li@nxp.com,m:namcao@linutronix.de,m:qiang.yu@oss.qualcomm.com,m:krishna.chundru@oss.qualcomm.com,m:zhangxincheng@ultrarisc.com,m:elder@riscstar.com,m:s-vadapalli@ti.com,m:vidyas@nvidia.com,m:neil.armstrong@linaro.org,m:gustavo.pimentel@synopsys.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,google.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,foss.st.com,nxp.com,linutronix.de,oss.qualcomm.com,ultrarisc.com,riscstar.com,ti.com,nvidia.com,linaro.org,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 023E772D831

On Thu, Jul 09, 2026 at 12:00:22PM +0800, Inochi Amaoto wrote:
> The PCIe controller on Spacemit K3 may use multiple PHYs at the
> same time. The feature is not support by the current driver.
> So extend the PHY definition to support multiple PHY handles.

...

>  struct k1_pcie {
>  	struct dw_pcie pci;
>  	const struct k1_pcie_device_data *data;
> -	struct phy *phy;
> +	struct phy **phy;

Should it be annotated by __counted_by_ptr() ?

> +	unsigned int phy_count;

Ah, you allocate much more memory than possible PHYs... Can you redesign and
use the above annotation?

>  	void __iomem *link;
>  	struct regmap *pmu;	/* Errors ignored; MMIO-backed regmap */
>  	u32 pmu_off;

>  }

...

> +static int k1_pcie_get_phy_handle(struct k1_pcie *k1, struct device_node *node)
> +{
> +	const struct k1_pcie_device_data *data = k1->data;
> +	struct device *dev = k1->pci.dev;
> +	unsigned int i;
> +
> +	k1->phy = devm_kmalloc_array(dev, data->max_phy_count,
> +				     sizeof(*k1->phy), GFP_KERNEL);
> +	if (!k1->phy)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < data->max_phy_count; i++) {
> +		k1->phy[i] = devm_of_phy_get_by_index(dev, node, i);

> +		if (IS_ERR(k1->phy[i])) {
> +			if (PTR_ERR(k1->phy[i]) == -ENODEV)
> +				break;
> +
> +			return PTR_ERR(k1->phy[i]);
> +		}

		if (PTR_ERR(k1->phy[i]) == -ENODEV)
			break;
		if (IS_ERR(k1->phy[i]))
			return PTR_ERR(k1->phy[i]);


> +	}

> +	k1->phy_count = i;
> +	if (k1->phy_count == 0)
> +		return -EINVAL;
> +
> +	return 0;

This doesn't seem correct to me, I would expect phy_count to be assigned only
when it's valid. (Yes, perhaps 0 is the same as it was, but semantically it's
different 0 in this case.)

See also above. Do we have some PHY API that just counts provided PHYs?
If not, that what you should probably add first, before this patch.

> +}
> +
> +static int k1_pcie_enable_phy(struct k1_pcie *k1)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i = 0; i < k1->phy_count; i++) {
> +		ret = phy_init(k1->phy[i]);
> +		if (ret)
> +			goto err_phy;
> +	}
> +
> +	return 0;
> +
> +err_phy:
> +	while (i--)
> +		phy_exit(k1->phy[i]);
> +
> +	return ret;
> +}

...

> static void k1_pcie_deinit(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>  	struct k1_pcie *k1 = to_k1_pcie(pci);

> +	int i;
>  
>  	/* Assert fundamental reset (drive PERST# low) */
>  	regmap_set_bits(k1->pmu, k1->pmu_off + PCIE_CLK_RESET_CONTROL,
>  			PCIE_RC_PERST);
>  
> -	phy_exit(k1->phy);

> +	for (i = 0; i < k1->phy_count; i++)

	for (unsigned int i = 0; i < k1->phy_count; i++)

> +		phy_exit(k1->phy[i]);
>  
>  	k1_pcie_disable_resources(k1);
>  }

-- 
With Best Regards,
Andy Shevchenko



