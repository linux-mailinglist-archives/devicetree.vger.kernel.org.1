Return-Path: <devicetree+bounces-61351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 719FB8AC5CE
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:44:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 267901F22582
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 07:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6068D5102E;
	Mon, 22 Apr 2024 07:43:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw22-7.mail.saunalahti.fi (fgw22-7.mail.saunalahti.fi [62.142.5.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3B7502A3
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 07:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713771794; cv=none; b=UMg4yPmt+kLti3cekgHIzSc5Mjsihz6L8PQ9hgXtr7XNCtX0w8yLJ9XcMs0zDhrJH/VKSScESNk8aa9wwnYo4gAMBnfPyZQbvV3vWGq9ts9B4Y/FgwgVKG1kFbr1xjuURN/0ddcusnnE+MsxvVgO9ooE/iJ/yA+Pma2JCHcZKMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713771794; c=relaxed/simple;
	bh=ew5dSgQMfS9IwbBwrIa9E4pKL0iPTREwTY8/gbHfluY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q4VmorWdMiEQcoPUzmaLWHIE2DeGx1Qp8FDGFG888gMWmUuk0WXOVCLP96vreyNMeR4TnNZ6HlkOAXv55M0+MNEYXBUsNDJZ0lGUnQb/9dRNpduk7Nx7rSHt5gsUsQiq9qLwjkVKXfTzkC+GaPhCow/Zc7MgZTT9rk7BS/QmUr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-25-208.elisa-laajakaista.fi [88.113.25.208])
	by fgw22.mail.saunalahti.fi (Halon) with ESMTP
	id f64f7c0a-007b-11ef-a9de-005056bdf889;
	Mon, 22 Apr 2024 10:43:09 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 22 Apr 2024 10:43:08 +0300
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vidya Sagar <vidyas@nvidia.com>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>, Will Deacon <will@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Krishna Thota <kthota@nvidia.com>,
	Manikanta Maddireddy <mmaddireddy@nvidia.com>,
	Vidya Sagar <sagar.tv@gmail.com>, linux-pci@vger.kernel.org,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v7-incomplete 3/3] PCI: Unify ACPI and DT 'preserve
 config' support
Message-ID: <ZiYVDEt-c57rAIl7@surfacebook.localdomain>
References: <20240418174043.3750240-1-vidyas@nvidia.com>
 <20240421190914.374399-1-helgaas@kernel.org>
 <20240421190914.374399-4-helgaas@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240421190914.374399-4-helgaas@kernel.org>

Sun, Apr 21, 2024 at 02:09:14PM -0500, Bjorn Helgaas kirjoitti:

...

> +	if (host_bridge->dev.parent && host_bridge->dev.parent->of_node)
> +		return of_pci_preserve_config(host_bridge->dev.parent->of_node);

If you need fwnode or of_node from struct device, please avoid direct
dereference, we have

dev_fwnode()
of_fwnode_handle()
dev_of_node()

-- 
With Best Regards,
Andy Shevchenko



