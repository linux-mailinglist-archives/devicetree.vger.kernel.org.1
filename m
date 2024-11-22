Return-Path: <devicetree+bounces-123673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B399D5A7C
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 08:56:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E56CB23528
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 07:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 995F817C992;
	Fri, 22 Nov 2024 07:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="oavklLj9"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FCE17BEA4
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732262198; cv=none; b=CrqRx8QeobwdPlvi8KXDHO61vRnNARLyyyHPzjUbz3l1Ujxnov4aX/wp9wtTxr61B0hMMwPZ78MMeuc/dwoiLG1XWYKbImoy4imwvm6ZnyBvTtdKIQoE87cjvtlxxju4TPUaigOq7BFZNePOHs4EH33puWSTrTjLmrN2SVCA6R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732262198; c=relaxed/simple;
	bh=WJFmRS4dKYq7x3/y5h4RzVUg320QBRaNnJfNkmbXXAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LOP/GCPwQT9X60j03tvhX7FdKo/RLbPXrVnnK8qO73PB5/z1oNWXiHLKz1WdCwMuwu9BR74wQggIFeO/LWNpgw5V132U5SNErW6ooEf7wlbKh8cnU9FXU+wYevjblQpczwpQ4q4Oh3x9Oq+Xtf477BTRYcQtr9/GPm9T1l3pfP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=oavklLj9; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u2CzZQRt2A+r6WQzjhC3dMMoIgGWbh2r8sqexAlw87A=; b=oavklLj9lgVc1U6ewRXNKjUnYA
	UuvJDHawdQgCSe1dPmUZK+NkujcFi8KfnIgUrc+e5NwiWvvTCnLo1aeE2HEtbHMW9CDnzrLotYG49
	AKWw5gT0gqhhMpRwmG+Nyt3ky/0dblyNO6NC+RPFTyKBh3aOyQvIMn5WHsZfiB15C3e9g8Gh+NcR3
	cxV7GTx5SU7WLkCBBlw0TVctHCCJX6yQRs4U5xsn0C+mW24Gj6lz6rw1+KLblO+Ra6NOEn43d1cT4
	DcT77o7MehymcsUkkTayLuELMBUPpd0QWSI6gzcIgYAhKsM7PgvpT64O/NiKUnMgrIWdGkytK0d8A
	3B/2gZJw==;
Received: from [185.156.123.69] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tEOWY-0004Gz-25; Fri, 22 Nov 2024 08:56:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>
Subject:
 Re: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Fri, 22 Nov 2024 08:56:17 +0100
Message-ID: <12563257.O9o76ZdvQC@phil>
In-Reply-To: <20241122073006.99309-1-amadeus@jmu.edu.cn>
References: <20241122073006.99309-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 22. November 2024, 08:30:05 CET schrieb Chukun Pan:
> The reset-names of combphy are missing, add it.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Fixes: fd3ac6e80497 ("dt-bindings: phy: rockchip: rk3588 has two reset lines")

It does looks like, before that patch above, the phy did not use
nor require reset-names?

No need to resend for this, as I think b4 will just pick up this
addition when I grab the series from the list.



