Return-Path: <devicetree+bounces-126302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 981BD9E0F4B
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 00:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59A78164EAF
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 23:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682541DF248;
	Mon,  2 Dec 2024 23:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="eE0xRWhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13011D79B4
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 23:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733182174; cv=none; b=hbOhhgeGWZnO1wkUpi0IXvD46MXTj6SoErpiMQoGrjDq/d8Jg9Kp7hVArAfXDWmLJqrHr1C77vogGFC4Fs2YugNvIUI++lN1DO4W/aOb+0cMCG8Z941IAnW9l6sAEIV47YYOsZT5M8cfrPTTAvGPiWpITEAZ9EqaPqpObmdWRVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733182174; c=relaxed/simple;
	bh=/pLj/az1S4tFUlP3jAN+IbWfwYdpYAlJZ11KaKtXLuM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=S9s74usP9Ut1Q4gXoBH6Im26DPYJHO+BNxL5kPmfTFY2OXPIqzB1trYczsJpxPTPmUNL+j19XdO6kZoXu0S7BfYbtLvIWSaTzamnSEPEUnwepP8G6VTeKw3T2/xy5TvgIs7BvvQiAlTrS6PSkupe5nX108mb63xjPw3Bab9urjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=eE0xRWhZ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=29fB5kRe7CnPK8fdvqH3jrlWfZQ7tWQhR8QI7YnEq5o=; b=eE0xRWhZiFOHfjubLdvTdKXZKR
	Mz1Ml87vJo0aETOg4TanzKDvVuVgTmKDOtZ+sjyN//FraH/wi2Edjfi7Rienm6PTYpTTAoGCEBJqL
	RdJL4DvD5po1cIdTDUB6ilBLGi0D1WRNMd5khvCx39LhwtWBkbjnwT0KuVHMXB3mUDRbzp3o8CekK
	40fDHvhlcHQ+kkXXr7u6R8ZMoItVCJ3vSzmUQHnJqDxSoaH6/JTTfv/vIhkmFKWlSK79KWvICxA45
	COQVRZLNnw8dOwxqGcZZjsbubfBjSbpp94vE5t55Da7koQxEXQZqUv8hxqOmjUr9ylSHGgopGW95y
	XbKAIG5g==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIFr7-0000OB-1l; Tue, 03 Dec 2024 00:29:29 +0100
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
Subject: Re: [PATCH] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC
Date: Tue,  3 Dec 2024 00:29:15 +0100
Message-ID: <173318214614.1403925.12812225885440711307.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107123732.1160063-2-cassel@kernel.org>
References: <20241107123732.1160063-2-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 07 Nov 2024 13:37:33 +0100, Niklas Cassel wrote:
> Commit cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php
> IOMMUs") added the rk3588 SoC's pcie IOMMU and php IOMMU as disabled.
> 
> The mmu600_pcie is connected with the five PCIe controllers.
> See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).
> 
> The five PCIe controllers are:
> pcie3x4, pcie3x2, pcie2x1l0, pcie2x1l1, pcie2x1l2.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC
      commit: da92d3dfc871e821a1bface3ba5afcf8cda19805

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

