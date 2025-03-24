Return-Path: <devicetree+bounces-160023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0390EA6D507
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2E187A5ACA
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 07:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57EC6250BFC;
	Mon, 24 Mar 2025 07:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qIjUrsF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BF01EEE0
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 07:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742801121; cv=none; b=Dhys8hCtrZT7/iebxRDNLyaJ4rbkt6/3/REJ/cIK9eXXAxeTu7GABTqqeKQ4sTMDQ6FB9vFhkG1SZKFLr2SXedvfR0dAwd1pyHOe+0g+MXAzvOl19Bd4X1VWgh5BBUx1lwP+0ulIWy+25FvjjmfrhHj4/dE9K6buuH3RPnx8ZrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742801121; c=relaxed/simple;
	bh=8MUuV6FO1ojBEDGqgDokijmkV6ruJlTuzs9K4PJfpJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Laa4rCDP1fdvgO49F0yUIwJj7NQCWa4QWRkEr0elvih0fenT9FFN91slQZ8PB1yPJCtYqoVA5bZmgn1eUT4rW4byqqQUodzO6LXze88rnfs0pghthayj6rqrUGTlrEvz5/4PDzQYyS3trYDEOQZVsX732VTlLOpjdMH05quqZGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qIjUrsF5; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-3011737dda0so4963068a91.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 00:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742801118; x=1743405918; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vj0JbxrXAVA6oD7VcAtXgMKT4fAYOqVFgdHGQAEeEsQ=;
        b=qIjUrsF5/h4qhsTO/VIrQGTf6hYaNo+ItFq2CDKkBgwVPRgOUZ1ne7g7FHIDfsE4T+
         /9pMRMUM9qB5aBDipdNlw/2YBKoT++CHNEkDQI02sNxGUz+TtOkhGPmlyxC+nE6H9ywR
         Js3InfnEHx+7eMGYLIEwP83/D/+aj73GTyLQbU4WW4fKSY/vMhBye5PkwPMRMpqOwOs4
         RRlGr1PntMJmm9ClsnrnP71CDDXofhP0dTCG1tyRj1FLjTqeeJ4U0ghOkX0u7ul0h80y
         BA17pkaWIEoU/289Pt7465da9wkhhxvza4BU6N7ZP1Cs9QSMT7+iCEWMJF20EllQfubZ
         8Kvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742801118; x=1743405918;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vj0JbxrXAVA6oD7VcAtXgMKT4fAYOqVFgdHGQAEeEsQ=;
        b=msP7j6KB9W7XNjMBrh6B44CG9na4unPXqQTsjsfe+dAoIzXsNXazfTZMoVgfOIEe18
         bOiCVTbN/qoBYrp8gTaS2ECCG+6KAtX2fKcEIV1XJ02uK9X8VaokXXSFR9VzvfaguZhI
         MZYJaNB1sugOpay9GUyz/cIEuoWYbPSeTJuAA6gusgDNEl59gtchYLYyAG7wTmCZGDgM
         VPZQrsllqzTuhJBITCPUD49L9WLzwkhfpFTXUsEmWDb9nIsf+H+cozbQwPTx+JS/VrpO
         ikzcgYvaJZhRuEtzTS+KsMcQLC6a7OhhxmeXxUq5Iyys1gf9ED1SHxW/O+w7FrXJ8xS4
         HIRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWb7CEx7LlWI+v+DMbL8ZqewY46eJgTeBDlcJPyWN6uBQ7NAFflNpXJn2Sa1z2LwWNe7fiCVDEgZNbA@vger.kernel.org
X-Gm-Message-State: AOJu0YxNW/vuEbn6FUt73MPjmJ1cclYlKJl9Y9vvHew8uvaDuTvB7iCZ
	PxunXKneEmGTQe4iLtn56nrAFFYnGqrXifvWLOuirf3XMUrdyrZdFdWE9tXW98LXt0tFSORnDH8
	=
X-Gm-Gg: ASbGncu+0YMIIeLaMyvrVZ5KkmR79kTk7YdBTNOUqS6KmybuqA1ll5nffsImBcyll2m
	r0j7V1J2jXVdyrx4AEcW8IyxRnV9K8Adon56fysx7zrVLggwaR/DCUPRbSWJ70yF6khRmC+Qlhi
	M+9idv/1XuNIz//h+DBXSamHeEdY4S538K5w1UJGVq7mFQzMbTUcmCcRSeIDBK+clMk9u/ZoPCc
	cmzg6+UfgZxi0TsBYOV0wYwddPlyDKgSxoqjhUZBzIzJMdtYQkPGC0VUBSKllnIJcJ7MnlVYVPN
	DNLTV55AvPPCYZD7wO0/w/tdPW5/cYDW0nPDWMjeZJ2ie1jCycYWyJq+
X-Google-Smtp-Source: AGHT+IFkcSPlya/dghCtIGB6baE4UY9siigdCJhCAQ1aprxfhPsqNa0EHD4upA3IZyCq4ENwSZDhpA==
X-Received: by 2002:a17:90b:4d05:b0:2f1:3355:4a8f with SMTP id 98e67ed59e1d1-3030fe8d50amr13269772a91.4.1742801117734;
        Mon, 24 Mar 2025 00:25:17 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3030f806fa3sm7307502a91.42.2025.03.24.00.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:25:17 -0700 (PDT)
Date: Mon, 24 Mar 2025 12:55:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, Tony Lindgren <tony@atomide.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-omap@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC NOT TESTED 0/2] PCI: dra7xx: Try to clean up
 dra7xx_pcie_cpu_addr_fixup()
Message-ID: <5lyvmuk7o3nj6xaozyghxnhivwcmx2yisnbhwugklx5u5sutmz@26ta4e5en2mq>
References: <20250317184427.7wkcr7jwu53r5jog@thinkpad>
 <20250317194539.GA969005@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250317194539.GA969005@bhelgaas>

On Mon, Mar 17, 2025 at 02:45:39PM -0500, Bjorn Helgaas wrote:
> On Tue, Mar 18, 2025 at 12:14:27AM +0530, Manivannan Sadhasivam wrote:
> > On Mon, Mar 17, 2025 at 12:30:08PM -0500, Bjorn Helgaas wrote:
> > > On Thu, Mar 13, 2025 at 11:35:21AM +0530, Manivannan Sadhasivam wrote:
> > > > On Wed, Mar 05, 2025 at 11:20:21AM -0500, Frank Li wrote:
> > > > > This patches basic on
> > > > > https://lore.kernel.org/imx/20250128-pci_fixup_addr-v9-0-3c4bb506f665@nxp.com/
> > > > > 
> > > > > I have not hardware to test.
> > > > > 
> > > > > Look for driver owner, who help test this and start move
> > > > > forward to remove cpu_addr_fixup() work.
> > > > 
> > > > If you remove cpu_addr_fixup() callback, it will break backwards
> > > > compatibility with old DTs.
> > > 
> > > Do you have any pointers to DTs that will be broken?  Or to
> > > commits where they were fixed?
> > 
> > Any patch that fixes issues in DT and then makes the required
> > changes in the driver without accounting for the old DTs will break
> > backwards compatibility.
> 
> Right, I guess the rule is that if we have patches that fix DT issues,
> we should apply them as soon as possible.
> 

Right, and those patches should not break old DTs.

> And later if we ever have confidence that unfixed DTs no longer exist
> (or if we can identify and work around them in the kernel), we can
> remove the .cpu_addr_fixup().
> 

Yeah. Unfortunately, we do not have a fixed deadline or process. Just like
supporting the legacy broken hw, we have to keep supporting the old DTs for some
time and then get rid of them.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

