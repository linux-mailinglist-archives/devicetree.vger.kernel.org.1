Return-Path: <devicetree+bounces-238360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B32C5A746
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A5A6235370B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5293A32693F;
	Thu, 13 Nov 2025 23:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="1QDDyPT4"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29542E06EA;
	Thu, 13 Nov 2025 23:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075080; cv=none; b=C1TMb8xEySIsTx4HVoEZGl92T+jzjXuczK8LRyLW13fz3IFAZk5E8MoJ7MabpiUo0OUw5CUVP6INdxmMIpU8xIy5xwM6P2t050LO60YqF0lJ7G11AKlVQCxqapAT+ir1gxa016pz/uQWchUpzJHhuhFhrnsssbJwdX/CPa2NoVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075080; c=relaxed/simple;
	bh=iZZ7XxV83X6NGBiC6I+ZDdfJwzx0MU4hDhpHKhBaww8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=k/xQ3x6Oz+rsg2Pq9OEkK8hY4Ew7V0Bta0SwYtlUW4X95tpdGw0eQzNfEOKZx3uM2zNcKmF9nCJzJBWOFK0QmBwRHDxwubf51d7iNgaHnN0DtOlvI0XhJ9rnD4MJuimffz91IaF4lVUF2niH+eCqS1QKMwvyKkyEpDorwcuSm84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=1QDDyPT4; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WN5cF9FfUHPKvDb8aV6drtJueLYpFhksDGO4gMde+Uc=; b=1QDDyPT4hXRtyvX1ewgI9vGiQ0
	3fpccFN30IKPBDbxXF7d41Vko4ckEk3nsRCCwqUWxlztX3/GEmehr3JXeOZQ2Z6UOC5pp5fXGXp+Y
	Fm9YRF7k5UdVszkbm4bkMWv2x7mdRjBfFzWSZwF88RJELSMMRUt81FHMKbpvxWIpjQDLEo3uqDRh/
	B3nSOjsogUwR2geA+COF8uEjmLTwQ/qjQ0mnXDMeoPWZN3nQxjE6kxwPVSv1CAYS0R2AT4xjb0Bxk
	WQ0KOPMqE78N/YNnIM46KqnMAUMxd2nbZpSVio3LPNF5yrt+dQadV8iuvhy96gji+2FMtPLhq7yRy
	zC1rm73Q==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMj-0005bo-Kv; Fri, 14 Nov 2025 00:04:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: drop reset from rk3576 i2c9 node
Date: Fri, 14 Nov 2025 00:04:20 +0100
Message-ID: <176307502905.495066.14409715879346224898.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251101140101.302229-1-amadeus@jmu.edu.cn>
References: <20251101140101.302229-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 01 Nov 2025 22:01:01 +0800, Chukun Pan wrote:
> The reset property is not part of the binding, so drop it.
> It is also not used by the driver, so it was likely copied
> from some vendor-kernel node.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: drop reset from rk3576 i2c9 node
      commit: 264152a97edf9f1b7ed5372e4033e46108e41422

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

