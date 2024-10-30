Return-Path: <devicetree+bounces-117550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A3D9B6E35
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 21:57:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D99152821E3
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 20:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5771EF94E;
	Wed, 30 Oct 2024 20:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ780LP0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1C31BD9DF;
	Wed, 30 Oct 2024 20:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730321867; cv=none; b=jcIX1tKqyRauD/BpqS0Y+nrYroacOaqcWyCPqioIxZqPo9uf5UP5Hs9ckXIRHx5mtCbRCiQDF1yQ0HMEWSqUAamQwA3ABKQ2Vs3aPsKT3AvpUCFetzrdbBiiWmNr77zL3zEgwPq7TRdf/u/fP0xXFKAdKjC7k67RRmojKJ56ng4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730321867; c=relaxed/simple;
	bh=wNwwtHjerl5MOUKCcq++pQSCtUGk2n3cZjFysjvFczM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=tsvuaEIMclsWEv33wqkvPl/574LSvNd58cfhS3fr96xoBruVKrxq0kDnXaWPsn4v+Ls6/GpldKULWpariqo+0IwdzGoQhfxwvdCLOTyYWJI0e929pS4Vls7nngEXtzihEXNbHVUo4RoSdjSUBhtqcQajZ2oVTK5U/UMYxt4xjMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ780LP0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE684C4CECE;
	Wed, 30 Oct 2024 20:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730321866;
	bh=wNwwtHjerl5MOUKCcq++pQSCtUGk2n3cZjFysjvFczM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=fJ780LP0j6ktkSTkhByNv1VDAzp2PlzhQOHSWIRx6tKeha8uWCMblwtbEavcI/rkz
	 BN1DUMTqQIiqCq3LIcsomz0BG03CYNacGft761QHGlrGRfKPYr4gIAnrgIDpO08bqr
	 PyA4GMWST3HAtWSjMbJtuZdikZOlrHrOk3c706TLIjjOeyBm5s+zygWoxyx4PbuApG
	 xveVP3jm73wiIK5iVH/1GaraBg2oZhN+eoiK0zuTUfZNOjGW1ULZ3zDzaNi2QZ7DG2
	 kjB+DoVuU1UpQNnWkFrJZhUamu1cU/AxJu3Bve9EN2b+a/5MS0Esanwae10eV+a2gW
	 JZi91cfvYa1bQ==
Date: Wed, 30 Oct 2024 15:57:45 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jan Kiszka <jan.kiszka@siemens.com>
Cc: Nishanth Menon <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org, Siddharth Vadapalli <s-vadapalli@ti.com>,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v6 4/7] PCI: keystone: Add support for PVU-based DMA
 isolation on AM654
Message-ID: <20241030205745.GA1219408@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6ea60ec075e981a9b587b42baec33649e3f3918.1725901439.git.jan.kiszka@siemens.com>

On Mon, Sep 09, 2024 at 07:03:57PM +0200, Jan Kiszka wrote:
> From: Jan Kiszka <jan.kiszka@siemens.com>
> 
> The AM654 lacks an IOMMU, thus does not support isolating DMA requests
> from untrusted PCI devices to selected memory regions this way. Use
> static PVU-based protection instead. The PVU, when enabled, will only
> accept DMA requests that address previously configured regions.
> 
> Use the availability of a restricted-dma-pool memory region as trigger
> and register it as valid DMA target with the PVU. In addition, enable
> the mapping of requester IDs to VirtIDs in the PCI RC. Use only a single
> VirtID so far, catching all devices. This may be extended later on.
> 
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> +	/* Only process the first restricted dma pool, more are not allowed */

s/dma/DMA/ to match other usage.

