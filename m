Return-Path: <devicetree+bounces-145484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E041A316C7
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 21:36:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 863147A329C
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 20:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0F3264F96;
	Tue, 11 Feb 2025 20:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="H7MrS9De"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C0D26462B
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 20:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739306156; cv=none; b=INlKvdvSoW3emfHtwhX0G9kefP/m9Gl2uefFwF9NnOgO4p62Kkpi7ZfxKo1jua8wh5NuK3hnERqpS5vM2AvgRcAer44QHoVUtEavYo4UZYY0qg2cI2Vz++MiYHk2UFJ+4F+M2VCGWsswCMPxVH/EbLEzVPUyiqz1YklawulcXVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739306156; c=relaxed/simple;
	bh=WWdaJ8FXbR9Q/X1uNZExl1fDFbc/eFiUjADE7jW9z3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jtb7nD9Wqgp49xW4qi+Nj8J9JQ0EH1Pc6MKIYoQbGSRlpPIRBZwFBrWUXkTsVmHSWMdZvUojSaIhtnKoe1OsMv3+pG4ztbeRQ/X1eek95IsawPmz5ck/fuBumS7AUb4USyG3asl62pgipRe3/r1UZbVg7MwqBEw6vy5MP9OMWlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=H7MrS9De; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gglx4zAvfkLMpQ1XOKMrFKuCVcehZElgoQp6Brx/pAs=; b=H7MrS9De4hPowMUdCH9oefcgN6
	kCXtVpn13LcqwiIJn9sFpI4Vuzc5k7aviykPLir6QP3xYxebYCzuVSYXtBioMeHpF+jw53rpj5dCY
	/hBLBXl2L5oSqTgBJy03681mS07NlmSQfxNa1MH+wcPf349BzjjZNr7prx1Zes2JZ9ep9qaX/sj3E
	jdO7yFhnwdNiTLFAEdQhP1AuV610dcsio0uA+vmo4/4ZS2zFk0mlZGgggfgNe05BNRanaRVf8DX0M
	aFYiR00RE6FS4Wg5KXbh8ElPYQr2ECj0B+AL4EP996tB8Hm1s7XC081OiMCpus98It123U1Q+L/ew
	N4EfNxJw==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thwz0-0003OL-Ao; Tue, 11 Feb 2025 21:35:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Niklas Cassel <cassel@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: disable IOMMU when running rk3588 in PCIe endpoint mode
Date: Tue, 11 Feb 2025 21:35:36 +0100
Message-ID: <173930613280.1358259.14632106493042428046.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250207143900.2047949-2-cassel@kernel.org>
References: <20250207143900.2047949-2-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 07 Feb 2025 15:39:01 +0100, Niklas Cassel wrote:
> Commit da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU
> on the rk3588 SoC") enabled the mmu600_pcie IOMMU, both in the normal case
> (when all PCIe controllers are running in Root Complex mode) and in the
> case when running the pcie3x4 PCIe controller in Endpoint mode.
> 
> There have been no issues detected when running the PCIe controllers in
> Root Complex mode. During PCI probe time, we will add a SID to the IOMMU
> for each PCI device enumerated on the bus, including the root port itself.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: disable IOMMU when running rk3588 in PCIe endpoint mode
      commit: 7d1163fc08936fcb5cf5d9daf366c322c3b4e882

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

