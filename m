Return-Path: <devicetree+bounces-145452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAE8A31590
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 20:44:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22EA97A342E
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 19:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0083726E63B;
	Tue, 11 Feb 2025 19:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM6CREdI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D053726E637
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 19:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739303070; cv=none; b=KaBwmt2cqS3kQF4wNbfpZoNssoyUBOtOZ1Hnvsg7iPcrAm7GfFMIOVKfMNgEEGncPAxxKnjOW4pZ0SEUBsaGVf2fq24SXALNvSrNuHd73vTSYWf7lVe6MdvA19n8mb5EyfkiVuTb+gyhqU4gx+UaGsRr6fZwST8NL4c2NXoc9CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739303070; c=relaxed/simple;
	bh=Hp0BPTzPwZpSHR+vJEd78ilDWWyWdLyiF/01sHFuRLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mQiyw+EtfhKohaEozGwD2OZ7EdF/wlZI9F6vJVPUkJHUJvgQnaeZHGEcvJem7S/sZxiMUgjvuLVKy0pTcMzMsrAkz1HmxZSjNEj83pmCE230pAP6ZrTy3vHT8PukWq0l6DTLJxPNlyOhR/SKVa/tV8L+A91R422XfP25s0xX9m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM6CREdI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 506C6C4CEDD;
	Tue, 11 Feb 2025 19:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739303070;
	bh=Hp0BPTzPwZpSHR+vJEd78ilDWWyWdLyiF/01sHFuRLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mM6CREdIS+9n2HJ1vw6TatQgM+uxQtpr9Vz9BNoLvEhP4Zj0/hR8kl5xchyKha2Uk
	 y+RlxOAS25/A/99+ZQzI3s5m6D/u3Iag96aQatQnlXPlrtsBLbNZTdCUmrs2aBBlR9
	 e1tavxR0OQSz1rCmLCEemgxuXp8CqjgsB/uzbtxJ2FdazYm1JskgU6IvXAgbLYxidP
	 q9udWokBedjCHBWSI5BxQZqNOt8ZzOR7GljcOKvv1EWYWWgloBvmjYMWAXCJB7B7Cy
	 c7swNbK2KWTinMcD0GInZhoHfawzoZlNKcCPaLFkDTEyMWy5W17h3/vPdeN72jurEA
	 LLTtwgTOcNMvg==
Date: Tue, 11 Feb 2025 20:44:26 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: disable IOMMU when running rk3588
 in PCIe endpoint mode
Message-ID: <Z6uomtzSVTOmAB8X@ryzen>
References: <20250207143900.2047949-2-cassel@kernel.org>
 <7996d1ec-6ceb-4d8a-bf03-1911ac5f8f0c@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7996d1ec-6ceb-4d8a-bf03-1911ac5f8f0c@arm.com>

Hello Robin,

On Tue, Feb 11, 2025 at 05:49:29PM +0000, Robin Murphy wrote:
> On 2025-02-07 2:39 pm, Niklas Cassel wrote:
> > Commit da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU
> > on the rk3588 SoC") enabled the mmu600_pcie IOMMU, both in the normal case
> > (when all PCIe controllers are running in Root Complex mode) and in the
> > case when running the pcie3x4 PCIe controller in Endpoint mode.
> > 
> > There have been no issues detected when running the PCIe controllers in
> > Root Complex mode. During PCI probe time, we will add a SID to the IOMMU
> > for each PCI device enumerated on the bus, including the root port itself.
> > 
> > However, when running the pcie3x4 PCIe controller in Endpoint mode, we
> > will only add a single SID to the IOMMU (the SID specified in the iommus
> > DT property).
> > 
> > The enablement of IOMMU in endpoint mode was verified on setup with two
> > Rock 5b:s, where the BDF of the Root Complex has BDF (00:00.0).
> > 
> > A Root Complex sending a TLP to the Endpoint will have Requester ID set
> > to the BDF of the initiator. On the EP side, the Requester ID will then
> > be used as the SID. This works fine if the Root Complex has a BDF that
> > matches the iommus DT property, however, if the Root Complex has any other
> > BDF, we will see something like:
> > arm-smmu-v3 fc900000.iommu: event: C_BAD_STREAMID client: (unassigned sid) sid: 0x1600 ssid: 0x0
> > on the endpoint side.
> > 
> > For PCIe controllers running in endpoint mode that always uses the
> > incoming Requester ID as the SID, the iommus DT property simply isn't
> > a viable solution. (Neither is iommu-map a viable solution, as there is
> > no enumeration done on the endpoint side.)
> 
> Well, strictly the controller should own all the StreamIDs it's capable of
> emitting - if that's just one per possible bus number (as the iATU
> FUNC_NUM/FUNC_BYPASS stuff appears to suggest?) then 256 "iommus" entries
> isn't *entirely* unmanageable. If it were to support being arbitrary (or
> multiple) devices/functions, though, then we probably would want to look for
> a different solution, because nobody wants a 512KB DT property... :)

Well, FUNC_BYPASS and FUNC_NUM is in the IATU_REGION_CTRL_1_OFF_OUTBOUND_i
register, so it is for outbound PCI TLPs, not inbound PCI TLPs.
(Only inbound PCI TLPs will get sent to the IOMMU after passing the iATU).

There is FUNC_NUM in IATU_REGION_CTRL_1_OFF_INBOUND_i register, but it has
a different meaning. (An inbound PCI TLP will only get translated if the
FUNC_NUM matches the value in this register).
(This check is only performed if the "Function Number Match Enable" bit
of the "iATU Region Control 2 Register" is set.)


The SMMU on the rock5b, when running the PCIe controller in endpoint mode,
has printed the following:
arm-smmu-v3 fc900000.iommu: event: C_BAD_STREAMID client: (unassigned sid) sid: 0x1600 ssid: 0x0
but also:
arm-smmu-v3 fc900000.iommu: event: C_BAD_STREAMID client: (unassigned sid) sid: 0x20 ssid: 0x0

depending on which host system we had connected to it.

So I'm a bit worried that 256 "iommus" entries will not be enough.

I don't have any idea on how to solve this, but right now I don't see any
other option but to disable the IOMMU when running the PCIe controller in
endpoint mode.

(We have no issues when running with the iommu enabled when running the PCIe
controller(s) in Root Complex mode.)


Kind regards,
Niklas

