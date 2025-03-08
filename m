Return-Path: <devicetree+bounces-155677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27558A57C59
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 18:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5673916BBB0
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 17:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ABE41E51F9;
	Sat,  8 Mar 2025 17:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="IjuXVS8E"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699E8D528
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 17:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741455139; cv=none; b=WkCJ+TI1nqGhEDYho9KkGagITQ+FbQv7bghMKjmVFk9weKLS/XKAim43h9N2cmYsuYDqZDXJg6P4BpNvVnEXHeoZHPDbIoeDlNBnAiQBfV31x3S1s5vGAk4uvSu3HaRxSkzgh+KxkX06aT5L9hmqsX/JYVzOxRIbUmK+HBHjwFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741455139; c=relaxed/simple;
	bh=vhXf/j5M9nuoAtdJc/tRCKKpzD2xEfvT3DJxoMuaVog=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=g01ZzMvaPR7uEJERY/U0Bxd1mr8gCTuG1+4mFVmdqSTE2y2tgNaojnFCAPPmes3bSOlxCKlXQ2YURlc74l9up24C0dmxWpPnKYPNMxNeBs/75FweT+InICZLzAl4i1dF1j6MgWcuHW66UOM13zH2fe2crROc5ihUymOIR6nkLxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=IjuXVS8E; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VpF1YMkskI8UsGrh5lJSpejW6nd0lyITwuPdRCfGE+s=; b=IjuXVS8E8ZY5kwZFjSi1+gXEB9
	qvNwHIyyLuFamW5UUhMU3JZKa07+sfm/wJFte7QytmrPpPdJSEsdEUveKd5QLDsu8XW/uVDPZ2sVL
	Q093Ie8JoJRfFMQvBZwgP2nvWZPNAchgRLSnliIbnzavc8kbCAA5LcUWVzlYsBGFxkL8alR9cfgd0
	xHJH1BmIVGsRQvUoHwsQjYP8p2gqAR5OQd5drebU3/8YlVXo5EbL+kInDisebpPGX5lpdyQKKpIVR
	WbAd30aLs+MlFHKlFTjayzReQcqEjVbUgvVZqx7PZq7wq0g6Twy/pmnjnsuW6Ny7yqkEdOhcGXZUG
	QAPnM4cg==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqy20-0004Tx-N1; Sat, 08 Mar 2025 18:32:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable ufshc on rk3576 evb1 board
Date: Sat,  8 Mar 2025 18:32:07 +0100
Message-ID: <174145503576.101861.18242365156337250993.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1741180586-140422-1-git-send-email-shawn.lin@rock-chips.com>
References: <1741180586-140422-1-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 05 Mar 2025 21:16:26 +0800, Shawn Lin wrote:
> RK3576 evb1 board supports UFS, so enable it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable ufshc on rk3576 evb1 board
      (no commit info)

The base ufs controller node seems to have gone together with the
driver patch into the tree containing the ufs stuff, so this
does not build right now.

I've added it to a temporary branch and will try to get this in
after 6.15-rc1.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

