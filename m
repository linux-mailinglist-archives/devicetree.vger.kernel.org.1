Return-Path: <devicetree+bounces-135353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2FCA00A81
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:26:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F040188059D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911611D131E;
	Fri,  3 Jan 2025 14:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="0h2nufZO"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038B71494A7
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 14:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735914392; cv=none; b=od6UAMuqyfK6wslb1A0sdx4Nhb1vFK994vfZCcpUlLOoQtDCcQANymd2wi8WLR4gmDaZ6WIZToDpt/wgWKuN6jZXKRnZ59m9XXm/MwBklpK0YM4yAbVrTRBfelbsNAEWsj3W2+JLxO2TsslokHblvDGEl/PFTo4xDlUiLblnAkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735914392; c=relaxed/simple;
	bh=FVwPDkAJVqItJqjpW/x6kxFlv3XPqg9BdyYKQz06wr4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=an1ZtGVGMoAnP23O+091lc+p3IinIh0gAYTLWh95DFbUsRg7FtofeiklB78CESeFQUgRxLrJSf4n6bMQ62YrewJywbZv9xOXlckZ61RCpYFpSEDazEJahsTLUJob30PwQ7vjcZxil87BjZ4QIu8/H0GxZqpeK0V+bBmZYFJ0NKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=0h2nufZO; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=30x72Lym8zuhQtPKTodnKBOIEUAKdFm4/6H/cCa+dEk=; b=0h2nufZOd+AZ7pLIqEufrR8TND
	Sl42gtR7yretBB8M42k/IFkk/brnNm86uvif8cEMCrejaS6ke+OmZqPSK8q3nC+h1keEws4y1EEOv
	FlkPXaknzsZOPv41IxtbXzBJ2clINNDtrd/Xr10L6Yl7wYUH3N7cSMbihWlcy337GbQnYBgLm4cA1
	FlPSPWzh/nSyzHV3QLpDjm6H4u2rKvBJYSdbU0C12MUFm/ZYd+fBTCNEaCZ/30LApvLA/yLtK7FQK
	eGNrtoizleojWsPzUBza9HPTKWjM19UgK5/eovsOqJ0XDd8P+zwIeIorjzwMoP+1enyHsxqG/1rk2
	ZCtAvwBg==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tTid1-00078E-Fx; Fri, 03 Jan 2025 15:26:19 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: rk3588: add msi-parent for pcie3x4_ep
Date: Fri, 03 Jan 2025 15:26:18 +0100
Message-ID: <13674524.dW097sEU6C@diego>
In-Reply-To: <Z2Uk2A7-YwkSfAOh@ryzen>
References:
 <20241120171048.2839621-2-cassel@kernel.org>
 <173318214613.1403925.10026428339576666444.b4-ty@sntech.de>
 <Z2Uk2A7-YwkSfAOh@ryzen>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hey Niklas,

Am Freitag, 20. Dezember 2024, 09:03:36 CET schrieb Niklas Cassel:
> On Tue, Dec 03, 2024 at 12:29:16AM +0100, Heiko Stuebner wrote:
> > 
> > On Wed, 20 Nov 2024 18:10:49 +0100, Niklas Cassel wrote:
> > > Add msi-parent for the pcie3x4_ep PCI endpoint node.
> > > 
> > > The pcie3x4_ep node should use the same msi-parent as the pcie3x4 node
> > > (which represents the PCIe controller running in Root Complex mode).
> > > 
> > > The GIC ITS can be used to trigger an IRQ on the endpoint when any of
> > > the endpoint's PCI BARs are written to by the host[1].
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [1/1] arm64: dts: rockchip: rk3588: add msi-parent for pcie3x4_ep
> >       commit: b6f09f497b07008aa65c31341138cecafa78222c
> > 

> Could you please drop this patch from your v6.14-armsoc/dts64 branch?

happy new year :-) .

I've now dropped the patch from my queue


Heiko



