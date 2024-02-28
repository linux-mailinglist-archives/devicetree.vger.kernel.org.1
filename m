Return-Path: <devicetree+bounces-46946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6197286B5AD
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 18:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5C3828B079
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 17:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415BE5B1FB;
	Wed, 28 Feb 2024 17:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RAc9vLMF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B173FBA2
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 17:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709140465; cv=none; b=QIhVjR9XcgTpGj5MWkpmbwwgPf+4iHJRVvq51+lEo/yVCWL+v1pDfxYln47R+rT3TH1KGYNZsUAVkwobPnNJsSVJhpG5rZuIkwhnt5YoCJxrfABTbc6NQk8+UGgigSX+3NJfjXQscJEqqyXkPNXwa2L3T/kC/eX8lpOPgkMaIM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709140465; c=relaxed/simple;
	bh=eZ0zOwV5ThDlaqv50w9t/26T9vcMPeeI+l7moS/XjHA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bJsB+n9gg5LJWPbYunGJu7YasnWRV/X6W912kZ1GTrSs+NAEQ8mk2pyjAr59NbGEYKfmGQcPf14pIuHzU0llQCUfPBJlwHAsSN3vOvi033bL7F4xblXuxxonjsV1nv+I+8uupw0FF/9faaxD8TtZTdYW2TN1Ku6NhJjbv7zCfSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RAc9vLMF; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1dc5d0162bcso277055ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 09:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709140462; x=1709745262; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=31xgTXcLuoSbKo78E7FQ6j1GlEkqFgbLCwh3PeT3OxA=;
        b=RAc9vLMFTYKT4nic8v8XI/n1RCSURJcupK/2R0AEJe7V+U7AR0Jy7PFKji5Nk+EQE/
         Buh4UUuFm0PTr+lEXQM6bbTZXuhJTP9B029O2tAmO4QAMG9hwG8OUziIXuo2q5buY9oM
         3ZB9HZXWjLyqmwxhDAdMPjzEBNYxhvZhzWnQIEKdqvMiTMDb9nAmqjmoK+P/MyLwGQuh
         nJPVwi9qZojgd8gNZN9CchkXhV0Av1P6CaGAfccZP1M0m7aaq1eokNmQQArThttxbbgG
         8QVXSJNY7oe2aBGxFe4TkQav/VKumuVjWceOFUu3E/n5mtEp+2W9DJiH7D4s6J/KpDEj
         vQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709140462; x=1709745262;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=31xgTXcLuoSbKo78E7FQ6j1GlEkqFgbLCwh3PeT3OxA=;
        b=IrNKcs6nL2sL0hI+cOTdYK597lNHw2z8cHnDtnqvRweLHYrvI2ShS3ZsBL3EFT1L+Q
         2fAS9P+KkcC5lBXuoTjmYJc18jwt6gh1DlUwJC9VY30LRnkSt6dZxXHwsO13cZZE0P6G
         A5jOsLPxMqoycdWTWm77kQU3d6w/UB+pM4v26tiiQasqotiD7T0h6Ci3PVEH2gSILdto
         mx+IOQiCUoXIXHo19TmO1SsDjraj65TCYANCG9ovoOt5+2WFkJcxMJmMdQ1wg5Xg6qqw
         E5I9CIZXFdLRsnBRXSbTEILMtqygpWT2mRUGCjhQeyXIKLuD5t5Uu3hjaOX8MqFPBexb
         VSQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWS6G0MyCWrlCso3x3salKoMZduKJBW2A1J5bTteUluD1WczMEy2pHRchvBdcSwus1cxnvLBIUlZhW593kIaX0uEQwNtIMond9jQ==
X-Gm-Message-State: AOJu0Yyucz2AyrCGLqYmCS1OiA8A6dJkWwgFhZwSqr43z3PpGhdS2Sn7
	KXan5oFQwhZ4Ug1zXHVClgQ8UbB4555gKnS6nbh6XsoRj7NA6EUEK+e5/vPpng==
X-Google-Smtp-Source: AGHT+IGqKPdyAGvJm45YQRpehf1LanX5DC/a5EDHng0iQkSVPLkCHsCY29NkfN2eP24n6P063DSpRA==
X-Received: by 2002:a17:903:1ca:b0:1dc:afe0:5190 with SMTP id e10-20020a17090301ca00b001dcafe05190mr58893plh.56.1709140461874;
        Wed, 28 Feb 2024 09:14:21 -0800 (PST)
Received: from thinkpad ([117.217.185.109])
        by smtp.gmail.com with ESMTPSA id kj15-20020a17090306cf00b001d90a67e10bsm3549707plb.109.2024.02.28.09.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 09:14:21 -0800 (PST)
Date: Wed, 28 Feb 2024 22:44:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, robh@kernel.org,
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
	dmitry.baryshkov@linaro.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_schintav@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v5 1/3] PCI: qcom: Enable cache coherency for SA8775P RC
Message-ID: <20240228171412.GA21858@thinkpad>
References: <02e44f17-39cd-46ec-b236-bc4f502d705e@quicinc.com>
 <20240228150211.GA271700@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240228150211.GA271700@bhelgaas>

On Wed, Feb 28, 2024 at 09:02:11AM -0600, Bjorn Helgaas wrote:
> On Wed, Feb 28, 2024 at 06:34:11PM +0530, Mrinmay Sarkar wrote:
> > On 2/24/2024 4:24 AM, Bjorn Helgaas wrote:
> > > On Fri, Feb 23, 2024 at 07:33:38PM +0530, Mrinmay Sarkar wrote:
> > > > Due to some hardware changes, SA8775P has set the NO_SNOOP attribute
> > > > in its TLP for all the PCIe controllers. NO_SNOOP attribute when set,
> > > > the requester is indicating that there no cache coherency issues exit
> > > > for the addressed memory on the host i.e., memory is not cached. But
> > > > in reality, requester cannot assume this unless there is a complete
> > > > control/visibility over the addressed memory on the host.
> > > 
> > > Forgive my ignorance here.  It sounds like the cache coherency issue
> > > would refer to system memory, so the relevant No Snoop attribute would
> > > be in DMA transactions, i.e., Memory Reads or Writes initiated by PCIe
> > > Endpoints.  But it looks like this patch would affect TLPs initiated
> > > by the Root Complex, not those from Endpoints, so I'm confused about
> > > how this works.
> > > 
> > > If this were in the qcom-ep driver, it would make sense that setting
> > > No Snoop in the TLPs initiated by the Endpoint could be a problem, but
> > > that doesn't seem to be what this patch is concerned with.
> >
> > I think in multiprocessor system cache coherency issue might occur.
> > and RC as well needs to snoop cache to avoid coherency as it is not
> > enable by default.
> 
> My mental picture isn't detailed enough, so I'm still confused.  We're
> talking about TLPs initiated by the RC.  Normally these would be
> because a driver did a CPU load or store to a PCIe device MMIO space,
> not to system memory.
> 

Endpoint can expose its system memory as a BAR to the host. In that case, the
cache coherency issue would apply for TLPs originating from RC as well.

- Mani

> But I guess you're suggesting the RC can initiate a TLP with a system
> memory address?  And this TLP would be routed not to a Root Port or to
> downstream devices, but it would instead be kind of a loopback and be
> routed back up through the RC and maybe IOMMU, to system memory?
> 
> I would have expected accesses like this to be routed directly to
> system memory without ever reaching the PCIe RC.
> 
> > and we are enabling this feature for qcom-ep driver as well.
> > it is in patch2.
> > 
> > Thanks
> > Mrinmay
> > 
> > > > And worst case, if the memory is cached on the host, it may lead to
> > > > memory corruption issues. It should be noted that the caching of memory
> > > > on the host is not solely dependent on the NO_SNOOP attribute in TLP.
> > > > 
> > > > So to avoid the corruption, this patch overrides the NO_SNOOP attribute
> > > > by setting the PCIE_PARF_NO_SNOOP_OVERIDE register. This patch is not
> > > > needed for other upstream supported platforms since they do not set
> > > > NO_SNOOP attribute by default.
> > > > 
> > > > 8775 has IP version 1.34.0 so intruduce a new cfg(cfg_1_34_0) for this
> > > > platform. Assign enable_cache_snoop flag into struct qcom_pcie_cfg and
> > > > set it true in cfg_1_34_0 and enable cache snooping if this particular
> > > > flag is true.
> > > s/intruduce/introduce/
> > > 
> > > Bjorn

-- 
மணிவண்ணன் சதாசிவம்

