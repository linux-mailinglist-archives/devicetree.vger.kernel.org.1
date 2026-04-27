Return-Path: <devicetree+bounces-290526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CP+QOt9V72nJAQEAu9opvQ
	(envelope-from <devicetree+bounces-290526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 14:26:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85193472739
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 14:26:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9433B3039838
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 12:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261743B8BBB;
	Mon, 27 Apr 2026 12:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="bB+zpJOd"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2E3330BB8D;
	Mon, 27 Apr 2026 12:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777292615; cv=none; b=cdqFtR5/SjdkrA6bPJsD/DRU/I6wWw/6JX2fPryHUBz6orOlsGJdAXl5Ueh37tkSBveFCtjv8ajPdzvF2f0cHC4pGKoDfcg6xcW3H05wZnahywkhH3Q8L6RG3pqUYOB7fgy9Q8Jg+3mba4/u5YoK/kbTzOn9l30dzj9RPTRSLPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777292615; c=relaxed/simple;
	bh=wOMRb+S84xYGj3ALNi/rLiHx5Y569BD0oCZsej4FYLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=f4iUi4UzpNcyxfKnNwDOEZd00FlR3V/fireyVXJXcSDBNz9I/Kqs9B/iTgUEpyAQeS+kecb82zqBy13ux4eih3qXQduQCVhYnZfLg5gJPmPU2RsCf/S7sxH+6+n9rIOd86Zi+qoh3voAA7NYVrklRT2zm+6pfhBW1gxYiZ7nDug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=bB+zpJOd; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uE986gg6nM72Izjx5bFVwuKM9D3x70M7dapwBTjDcY4=; b=bB+zpJOdC0HNgQrSiDejgSn50j
	iWqMaJluZTxDFGPRSsmoFr/m07oe1sTBf9PpDNwiUw6hDpqgHGlHNcUrwr+T+d4qk0DEG2W/JjUuY
	4Mj+bP2ZixSzPB4MC9DiEXfqIfnkrPp84Ts4oyhja1J5GIwfsjyEpLHIPa8OV36sCtR2pKoahYZak
	In3s0WMe1lKhfVfbPhQRLPGOuFxOq7Pv68r0wIpSreg8taKf8EQt/r+6zkyXJVd5UUz0/otWZumLD
	mZ1j7+gCPVgdnwmYkSOYWeJRg+5mhmdXQEI1+RWMTr37EGyi6gdFIRwR6byQKvzcjcFiy5OGpu0uf
	wyaDGvqQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Gray Huang <gray.huang@wesion.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	nick@khadas.com
Subject: Re: (subset) [PATCH 0/6] arm64: dts: rockchip: Add peripheral support for Khadas Edge 2L
Date: Mon, 27 Apr 2026 14:23:20 +0200
Message-ID: <177729258237.1866089.1613069864896514625.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260325054614.1497147-1-gray.huang@wesion.com>
References: <20260325054614.1497147-1-gray.huang@wesion.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 85193472739
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290526-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:email,sntech.de:dkim,sntech.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


On Wed, 25 Mar 2026 13:46:08 +0800, Gray Huang wrote:
> This patch series adds support for several key peripherals to the
> Khadas Edge 2L board, which is based on the Rockchip RK3576 SoC.
> 
> These patches build upon the basic board support that was previously
> applied to the rockchip tree. This series enables essential
> functionalities including power management, wireless connectivity,
> graphics, display output, and USB support.
> 
> [...]

Applied, thanks!

[1/6] arm64: dts: rockchip: Add PMIC support for Khadas Edge 2L
      commit: 7cd8b37304be367106a02d4d902294e9bea3f45d
[3/6] arm64: dts: rockchip: Enable GPU for Khadas Edge 2L
      commit: 6d72e0d07145449a33678624436c73da09873c43
[4/6] arm64: dts: rockchip: Add HDMI and VOP support for Khadas Edge 2L
      commit: e9ec83fbc3d46b39fe92a0cbda4795ece30717f5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

