Return-Path: <devicetree+bounces-122559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B399D11C7
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 14:25:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EF63283F5D
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 13:25:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1CE19AD7E;
	Mon, 18 Nov 2024 13:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="KMcdEfm7"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42CB19413C
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 13:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731936268; cv=none; b=dIRqCPJsqB4zRamiMJoL5p1CYZFVqQ5BT49ZZsbRo191jJIOiu8/k3jcu1OysFHK8TYlcDNLYDn/oUw0Bd4j6s2Y+TdyuaRsGKtZRnfaUYKUiH670eoSvQau9Lmu9WSNUFt+Vs/UEw4nP7XnSw6EPTRItv9KwK4ZJXbeikgzO0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731936268; c=relaxed/simple;
	bh=cP0g2C+51KVkoOJoEg/616AjXie1cYNoo+bLbEOiVgE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=siB5/aiJ2qELqr/4bXLx0ZlJQEpL4vr6gO4GAzVvPu+C+5E8ael2D0Wl8JDRKyaRL2UcE3AQEzyRenxGGVY0eqi7QWRlWQYt/WPSasx9RmclHWkyhO/Lg9vTv740ILoDvX/Ff94g4sNPo586e/meqttU2+YNU8kwb/fJyCruue0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=KMcdEfm7; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=s8lkok+c8KjBG6mzXAMaB5qxafa7OdEMZ1RhybIITR0=; b=KMcdEfm7q1WJhQMgq8EmafygPP
	f1r7xrgEvyZSEg70NtxGPt2AatL8d5AZ7/iKKxkgJ+TxzwR0j+HeTv7LQ/9vxo2BIwfAFyvndye1v
	dTRW2vzRx/W5NRiTkoFHYE3tfZXxsPibfh9DO7ZLC66U4cYKRjvu3z66CHcnJY7NFkQXo3lUVYpEg
	CP+Ue4nwn2jBfsaOF4ubKIhMHbrziTka6DUGX9fIJSU1ELWosDKHpuAKWG5z4dEHzVkscG7oWRV83
	66YUVzxC1GjzBNwBLLO8YeJe4Lt5S8jKbK81Vj89cjsp1kWzj3IX8d0ZNrCReVnr0WWmgRfQcwkMH
	Czf7MeHw==;
Received: from i53875a30.versanet.de ([83.135.90.48] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tD1jl-00060I-SG; Mon, 18 Nov 2024 14:24:17 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>, Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject:
 Re: [PATCH] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588
 SoC
Date: Mon, 18 Nov 2024 14:24:16 +0100
Message-ID: <39365498.J2Yia2DhmK@diego>
In-Reply-To: <ZzsqdYUBNP7L9iRB@ryzen>
References:
 <20241107123732.1160063-2-cassel@kernel.org> <ZzsqdYUBNP7L9iRB@ryzen>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Niklas,

Am Montag, 18. November 2024, 12:52:23 CET schrieb Niklas Cassel:
> On Thu, Nov 07, 2024 at 01:37:33PM +0100, Niklas Cassel wrote:
> > Commit cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php
> > IOMMUs") added the rk3588 SoC's pcie IOMMU and php IOMMU as disabled.
> > 
> > The mmu600_pcie is connected with the five PCIe controllers.
> > See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).
> > 
> > The five PCIe controllers are:
> > pcie3x4, pcie3x2, pcie2x1l0, pcie2x1l1, pcie2x1l2.
> > 
> > pcie3x4 can run in either Root Complex mode or Endpoint mode, the other
> > four PCIe controllers can only run in Root Complex mode. To describe this
> > we thus have six different device nodes in the device tree.
> > 
> > A PCIe controller in Root Complex mode needs to specify an iommu-map, such
> > that the device knows how to convert a Requester ID (PCI BDF) to an IOMMU
> > master ID (stream ID). (A PCIe controller in Endpoint mode should use the
> > iommus property, just like a regular device.)
> > 
> > If you look at the device tree bindings for msi-map and iommu-map, you can
> > see that the conversion from Requester ID to MSI-specifier data is the same
> > as the conversion from Requester ID to IOMMU specifier data. Thus it is
> > sensible to define the iommu-map property value similar to the msi-map,
> > such that the conversion will be identical.
> > 
> > Add the proper iommu device tree properties for these six device nodes
> > connected to the mmu600_pcie, so that we can enable the mmu600_pcie IOMMU.
> > (The mmu600_php IOMMU is not touched, so it is still disabled.)
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> 
> Hello Heiko,
> 
> Any chance of getting this picked up?
> 
> (If not now, then at least for 6.14.)

Oh, definitly :-) ... it's marked as to look at.

For 6.14 ... the patch arrived shortly before -rc7, with PCIe stuff in it.
IOMMUs + PCIe is sort of a topic I'm cautious about shortly before
the merge window ;-)


Heiko





