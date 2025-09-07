Return-Path: <devicetree+bounces-214020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B81D1B47C91
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 19:30:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B84E81888B88
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 17:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9978C1A23B1;
	Sun,  7 Sep 2025 17:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="G0idjGkb"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49EA1DE3DB
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 17:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757266228; cv=none; b=FrLGwG7Z3RLihHV2R89g1TWqaFGyAPA4zm038qySOryzVBp2Zo6uGVcyXmHdnlAuWd1J9RCeOGM0MYlVQE9uAmiGf1X003y363IyrQaHQ02NC4sG/I26qyMZva+WLE0V5+fYbuJvNz6q8Tv03ZzN03KLnCFkEz3QBgVuyh3moDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757266228; c=relaxed/simple;
	bh=Kn07NaaFqaWAS5RVqwfZNL30c0L1m2i8tX1oVllroyg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pFcnIn5XKuD6CBPDF+FsSXV67BFJXvhwZeyrGAQI/br4dcaNec6qSRTUUF8fPFolP71tSc2q2v1FPdtHqE8SqZcVIP0tZ7CT5p7DUmJ+OReJikha7MFQ7LhQjNjy8FT96r9K9k6gl91dk8IPq78dYA4t/GOHVyxVOSdi8F55XjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=G0idjGkb; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nmQllN2pDw8NXAbKMZpYQ4Kj+bbL5tYdmA6gAXvP1Kw=; b=G0idjGkbwbq6im9iS0jIsINwRj
	y30L1G7MTUyr5KSI5JzrP1ieKW3hs979GPPFohd4fGA9ROaNa7ZV9scjmBHoJd634Mo9oqrtTKuiH
	J2tHF2A5lbRhaCgEi0essNw4XpHR8Ea4xWNxOQztjhKlgRHqtu4ybFDqk/NK5ooXVp5bk6poL7PvF
	4gQNA1SSlKR1ou2Lhw2odab4GjazaSo/X9fMxBfxiwg+fw2vcqGw09C7nJfML1R60sViTViHBCsR1
	e107BnMuJ03h5j+MGdfeO/RYGG+6DCqr+aiEqsVtNBwpjpnc4jg3ERSRfie8muGPP8G5QTnWsj76+
	k46Z/1Xg==;
Received: from [61.8.147.163] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uvJDb-0004Ii-OF; Sun, 07 Sep 2025 19:30:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the headphone detection on the orangepi 5
Date: Sun,  7 Sep 2025 19:30:10 +0200
Message-ID: <175726620394.195224.4863527121598491124.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250904030150.986042-1-honyuenkwun@gmail.com>
References: <20250904030150.986042-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 04 Sep 2025 03:01:50 +0000, Jimmy Hon wrote:
> The logic of the headphone detect pin seems to be inverted, with this
> change headphones actually output sound when plugged in.
> 
> Does not need workaround of using pin-switches to enable output.
> 
> Verified by checking /sys/kernel/debug/gpio.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix the headphone detection on the orangepi 5
      commit: 0f860eef417df93eb0ae70bbfa8d26cb7e29244d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

