Return-Path: <devicetree+bounces-126303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C20569E0F4C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 00:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A8AF282911
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 23:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37BD1DFD86;
	Mon,  2 Dec 2024 23:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="CjMHvcoa"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EC11DE3B2
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 23:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733182174; cv=none; b=kgXLnTkQoJjINtsgur4fbGv4nE3X2Hr3nOd+Lq5/zqsr8O4x+nANaPqCO1Ir3M6uiYxSLh6RP1fnIXrOJyQSZx0lGP1WDKh1QG8XS7tBrmcTocnCyM74H2sXxgy8HyAEArbJx+PEJKJpUF5rBwiDgi46Y0cn9UWOk/BJ8tjoW4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733182174; c=relaxed/simple;
	bh=IJK9LAJUiDEWTODydsfjkpyY2Mp+aohTpHf+IorwEik=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DRWgfVxxSUOKDv9dMxkUUsWpyJ0h2xMeEWhSP4+5JOfHrxpCVmP//q8+dkY0KwDj01qXB1tAj0SwnqZ1/fa3Lf+ang10IjCsLq/O/SN71vTogTXA5ee/YihMFRQ7/tOoJyS9LyIHyGr0/9dQWlBp9rKVJt/pymXeJcyXcbOrWeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=CjMHvcoa; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rPhXI1CDFbuv3Y+gNMnXPl5Q69OCW4koj3Gtatp1VeQ=; b=CjMHvcoaeS5IvbfSXTb5KDbNVa
	nAJEoQkzlBepwrDgSdXlP5LLllDSpfUcWM90WYG7V2TjIi/5B/YodGpXIZL3CnyGoaOKPgdHT68OP
	wGYrUyqPDjUAGtLia8EGe1GC25Yoc47pk5/dYfodU/za7buHH0L3dLzazJ/2b6yDEbqWCn6OJPZ+k
	Bl2uLS97i89qGPXocx6BLTdwvvs/F4nnWCEk6B8dF417jQsBn6hMyintXCBGJL5wok1vl3b6FEyTR
	O/MroZYGp229LvayRscP7e4c3MnbZlfvAwCUS15vQxFUs26NMJg7qiRZmTpyM15kN7jPxVEY5T6gj
	Fjq1ArDg==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIFr7-0000OB-Gj; Tue, 03 Dec 2024 00:29:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Niklas Cassel <cassel@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: add msi-parent for pcie3x4_ep
Date: Tue,  3 Dec 2024 00:29:16 +0100
Message-ID: <173318214613.1403925.10026428339576666444.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120171048.2839621-2-cassel@kernel.org>
References: <20241120171048.2839621-2-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 20 Nov 2024 18:10:49 +0100, Niklas Cassel wrote:
> Add msi-parent for the pcie3x4_ep PCI endpoint node.
> 
> The pcie3x4_ep node should use the same msi-parent as the pcie3x4 node
> (which represents the PCIe controller running in Root Complex mode).
> 
> The GIC ITS can be used to trigger an IRQ on the endpoint when any of
> the endpoint's PCI BARs are written to by the host[1].
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588: add msi-parent for pcie3x4_ep
      commit: b6f09f497b07008aa65c31341138cecafa78222c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

