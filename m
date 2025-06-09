Return-Path: <devicetree+bounces-183778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 290AEAD1BB3
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:40:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17EA13A11AB
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AFED251791;
	Mon,  9 Jun 2025 10:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="1xA2jXiD"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10141FC11F
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749465612; cv=none; b=BcU3yee5ti7ztWUo7G8lhXH4fh4/yqyJSVBiWsjCD0yvgNrtwa0T9lezmo6CJPntJ2021HO7t/nsCS99ByFD1C/zJTkj0vsY8ZUc05jbIJohdHU2oAT8VhEzh1G5hgRPEFiSOU5GAt/GHugFyfyW+FnRNBYKIrOWakB8ibdYXeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749465612; c=relaxed/simple;
	bh=NAIIc33NUTQBqd6ImT6Xqq17zB22KQgvTwmGCh+zYFM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M5cLbDbGdIlgVDmJxrZT+eHVqGVOstdDAE/c0dEUiJcVQ/Y/+2xsd82Lt+5poQ4Mi1I1s2V/212TXRdyUEMt3cYwhoKQnFQa2XBOiJBjzdlLw12+Fa+7KiAj31qZNP9bey5CUUGIvl4hlmUhi5OXU2Lk+FmsSdosmQ3vn48YTtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=1xA2jXiD; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=FMnfj+y9foNf3BdzVUknS9MADmvnm+mSEs0FZJCADyE=; b=1xA2jXiDJYZfqT8i8Ji0z54RGL
	UTZJ4r9YidUhskx8m29eepXqVEFd3J/R3d6vF69TF0EaKsp2c73i66I/RXOJpmURhodxeOwHoHGad
	W49+lcpL5vOobe2uI/gIem5jlWNdumEqhxLHItE5EPI6M0baE9iAcy018GJyggrbiii1IMewppJYR
	8rNMvWwjjR5YiEjwVwBuZrkta3Bb7shMl42IME2k4FhdaoGuNDdmA9957Ddu8T1AWOEcrIlGfUJDa
	JTGV+7CqAxXJ43IKBod3jQyWbZI5wuC7Yne6vZI/oBc6Ygqg6RbMROP0pVINaHTrgpbY46OeRWApo
	pbAr6D4A==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfG-0006Av-Ez; Mon, 09 Jun 2025 12:23:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3576 pcie1 linux,pci-domain
Date: Mon,  9 Jun 2025 12:23:07 +0200
Message-ID: <174946455534.762051.11240348467873991115.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1748918140-212263-1-git-send-email-shawn.lin@rock-chips.com>
References: <1748918140-212263-1-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 03 Jun 2025 10:35:40 +0800, Shawn Lin wrote:
> pcie0 already used 0 as its pci-domain, so pcie1 will fail to
> allocate the same pci-domain if both of them are used.
> 
> rk-pcie 2a210000.pcie: PCIe Link up, LTSSM is 0x130011
> rk-pcie 2a210000.pcie: PCIe Gen.2 x1 link up
> rk-pcie 2a210000.pcie: Scanning root bridge failed
> rk-pcie 2a210000.pcie: failed to initialize host
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix rk3576 pcie1 linux,pci-domain
      commit: af0f43d5d0d6e486b6a83190000dfa7ad447f825

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

