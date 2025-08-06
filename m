Return-Path: <devicetree+bounces-202301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BCCB1CC90
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 21:36:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 511E0627079
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 19:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B27B219300;
	Wed,  6 Aug 2025 19:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="C+v1w9mq"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1AFB1FF1B5
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 19:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754508984; cv=none; b=FGJZhB1vZXDjcT/ZoOjMnNpHiJTKTv0zAH+JQzJ1awXcNkCnFTYoc9EbgwQh3KBVw5dgr94WorV3WrdEOrHqwLwSFjzJO+5S1MXjPGAg+c9KA5zi7dqcpt7W5IBLP8uafbfK2SIemvfaG4jA5fkocKalmhrPfnINW1EZvSbHir0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754508984; c=relaxed/simple;
	bh=ck1h7hbbMkS2pdw+SiV3vTff3cVsWitC6myctrcYClI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R6HJbxqzFfPtpsPCaPlmtP6tn9+aJOIstYDMQ2Ea3MGeMuy0udqNf3c1OsFlkWUH85WamTkpULdcnr57te8ILeFk8hQK8z4UFE+AsfoqWt1qDmrl7nRhI8NW2c2HIjhm4VlAzMsdpFHNswgdrqoPdKiVDhYsrn0bQP+rlI5SdFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=C+v1w9mq; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nXUIq0KBN45e4elJmxMkBPbWGLA75j5v+eWYJ6VU5Hg=; b=C+v1w9mq23BhAT46TsD4d0k8Bj
	SYUMJtNqh+gf51YtjcmQRljFVtHduyBsjvh7DFGU9CwzM3YrPQkMedjxjy5w4OEiTN3OPgO9rP1U5
	ZbUyYfhutAr2b1PT8HQNjdFhrsGSX16wSoDBW2pR/6/mLWbTuHtq+g8JKpsU47MmbRLRsc96bWF9S
	6VsTeYfaAqQQamk99wQz3cNvnWU6XRILV8Nve1lhtoJ7pKQJ+BxM8I7mj5SFbo2dcs/OE0D1bAtYL
	P2k+8g9nsBkB+WxxjBOI2qUj8MFlCNBNdg1CzeEbQ7lmpuSmVJOH80zJ0LN2ELkMAxAEB4K/P0/4q
	X5ygWAYA==;
Received: from i53875ab1.versanet.de ([83.135.90.177] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ujjvm-0001uY-RB; Wed, 06 Aug 2025 21:36:10 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Niklas Cassel <cassel@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588
 SoC
Date: Wed, 06 Aug 2025 21:36:10 +0200
Message-ID: <4400329.mogB4TqSGs@diego>
In-Reply-To: <20241107123732.1160063-2-cassel@kernel.org>
References: <20241107123732.1160063-2-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Niklas,

Am Donnerstag, 7. November 2024, 13:37:33 Mitteleurop=C3=A4ische Sommerzeit=
 schrieb Niklas Cassel:
> Commit cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php
> IOMMUs") added the rk3588 SoC's pcie IOMMU and php IOMMU as disabled.
>=20
> The mmu600_pcie is connected with the five PCIe controllers.
> See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).
>=20
> The five PCIe controllers are:
> pcie3x4, pcie3x2, pcie2x1l0, pcie2x1l1, pcie2x1l2.
>=20
> pcie3x4 can run in either Root Complex mode or Endpoint mode, the other
> four PCIe controllers can only run in Root Complex mode. To describe this
> we thus have six different device nodes in the device tree.
>=20
> A PCIe controller in Root Complex mode needs to specify an iommu-map, such
> that the device knows how to convert a Requester ID (PCI BDF) to an IOMMU
> master ID (stream ID). (A PCIe controller in Endpoint mode should use the
> iommus property, just like a regular device.)
>=20
> If you look at the device tree bindings for msi-map and iommu-map, you can
> see that the conversion from Requester ID to MSI-specifier data is the sa=
me
> as the conversion from Requester ID to IOMMU specifier data. Thus it is
> sensible to define the iommu-map property value similar to the msi-map,
> such that the conversion will be identical.
>=20
> Add the proper iommu device tree properties for these six device nodes
> connected to the mmu600_pcie, so that we can enable the mmu600_pcie IOMMU.
> (The mmu600_php IOMMU is not touched, so it is still disabled.)
>=20
> Signed-off-by: Niklas Cassel <cassel@kernel.org>

I've run into a bit of a problem with this patch and v6.16 today :-( .

It seems the SMMU currently does not play well, if has no users. With
this patch the pcie smmu is always probed, even if nothing is using it.
(or in fact the PCIe controller driver defers probing for whatever reason).

But in all cases the SMMU's shutdown callback will be called when needed.

So test-case:
=2D probe pcie-smmu, but do not probe PCIe ... hit reboot
  The smmu shutdown function will hang for a bit, and at least my two
  test boards  did reboot after hanging about 30 seconds
  (I did trace that down to the arm_smmu_shutdown function)
=2D probe pcie-smmu and probe PCIe - creating a user for the smmu
  Reboot happens without hang/delay

Likely the SMMU is missing either a clock or its power-domain.

Just adding the power-domain to the node, did keep the domain on, but
did not solve the hang for me.

Strangely enough, additionally forcing all clocks to stay permanently on,
also didn't help (or I messed up somewhere) .
I'm not sure if the PCIe controller does cause the SMMU to do some more
initialization, that would be missing otherwise.


Robin did point out that there is ongoing runtime-pm work for the
SMMU [0], but just adding the power-domain does keep it on, so this is
likely not related.


As you have spent so much time on PCIe topics, maybe you have a better
idea of what to poke :-)


Heiko


[0] https://lore.kernel.org/linux-iommu/20250616203149.2649118-1-praan@goog=
le.com/



