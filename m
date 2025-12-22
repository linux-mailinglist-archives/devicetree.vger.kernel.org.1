Return-Path: <devicetree+bounces-248884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 993B4CD6437
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A583630121B8
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C8229BD80;
	Mon, 22 Dec 2025 13:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="rd4Qd2N0"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D974C27EFE9
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766411821; cv=none; b=i5xJLalNGsUyC2vo1IGKct8AUS/ZngZKiM87CgjW31X0W2DcSKEFvR741pPDGIb7ZSFNYFx6nGAzfbar958fUFgto1eNaSmDDAu2IzXyUVoQszs4bruCbGxq/qQT8bEnGqjP8qxpwMpcDMz87Qqawl7JUvuGkUp600AUGI5tN7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766411821; c=relaxed/simple;
	bh=g9bwpCV+SmlLa3ZQLi95LOvVFM7HdKuVtudSayADBoY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U+ULcwDPvLj5lTtYhpeYN/vGEOGbqkTtJFduP8PWnxmqB9TkhuN7qE3so7pgC0etddP6yu/JibaO/IgPWlV7jY8/L1AHQ6ud+Sl5r2wOWjjtHf2YMwTHUgRsP66/1bTW57Ehyh0P+ii9QHtB5m5AkgOstVyMU/h2RoGNbvBMB24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=rd4Qd2N0; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=KwANKK/fDIpWxZV9HLEANprowf4vF8Ghjk4Svi7KrWM=; b=rd4Qd2N0W0WmH+iVMVKh/Fps0G
	RNbSQHnWPodfzBs/Z1Ma9SP4DoDEg/p3GMrknai2E3S7BZpeK7mK09FOmmHyLpUWv9okBpPii7Ywc
	LcgsrCzirzVOPrmWDEgw/sys5ToUwieB6bbkB/l+wSfTLAzth3wikv/KFA8WsZE9VU6pzGLEaDi9k
	XfVa1t7cbAlw6x7xA8dhnZc3w1hHkgCAIz94wdtumhRAEnHgP2U4T/Nek3pPYFw+PmfH/Ji7MUWEh
	zi2G8Nue1G8sb/xBDwZ4YEkEnrQty36KC/liEb6QJcr1ujD3oOA8uv0BV/ahI1mCqk+KPgqFYtE0k
	G6sf2ZkA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXgOn-00063E-Mx; Mon, 22 Dec 2025 14:56:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	jonas@kwiboo.se,
	kever.yang@rock-chips.com,
	inindev@gmail.com,
	michael.opdenacker@rootcommit.com,
	honyuenkwun@gmail.com,
	dsimic@manjaro.org,
	andrew@lunn.ch,
	pbrobinson@gmail.com,
	joseph.kogut@gmail.com,
	dmitriy@filchenko.org,
	shawn.lin@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 module and IO board dts
Date: Mon, 22 Dec 2025 14:56:29 +0100
Message-ID: <176641178743.1651325.16057448500999864390.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251205120703.14721-1-naoki@radxa.com>
References: <20251205120703.14721-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 05 Dec 2025 12:07:00 +0000, FUKAUMI Naoki wrote:
> This patch series adds initial device tree support for the Radxa CM5 SoM
> and accompanying IO board.
> 
> V5 -> V6:
>   Patch (2/3)
>   - Move gmac1 (except status) from cm5-io.dts (Jimmy)
>   - Move pmic from cm5-io.dts (Dmitriy)
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
      commit: 7beae528ddadd1c3f7d5670f937d993b0f39e0ea
[2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
      commit: 36ee19ba42dcebe6a15ec6b442a7d32eb327eee4
[3/3] arm64: dts: rockchip: Add support for CM5 IO carrier
      commit: 51babf83f424a695179183204226d453c8af7dc7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

