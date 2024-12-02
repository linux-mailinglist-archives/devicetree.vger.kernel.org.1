Return-Path: <devicetree+bounces-126305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC3E9E0F4F
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 00:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2620F164EA0
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 23:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC4E1DFDA5;
	Mon,  2 Dec 2024 23:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="t/Z4nu4J"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB7F1DF278
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 23:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733182180; cv=none; b=ZSfb0RqmMzSCqkb+oAQ4SBxpilMxI5hQpT/YQBMW6DoGLRmROBKb4TD/L8iOopiF9l2EkWOPlGw2WcN3da/oU843Tuz+OQwIbu0lyNN+RPUQve5IaqEuM1SgY2ad/aZCEkaWK7CogD07m8TSEjHlW957p0FNAuHzpVq5E7u6FNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733182180; c=relaxed/simple;
	bh=XVlWF0wcSF2eErBp0tZHkhjeGhyymKl2bIShGuJnUsY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EC3FwopbGeF+Itvd3PUin0MG+1QJjesrFgvH7ZGplCAylmjzzPMrU0AfTIsO7OgYrP4P123EXrildd611FZgtSiY8jOUZ7MUx8Jq6tUXT27jRtWuhNBsAwN3+UZHL4bF6PO/tmyAHr9Cg/r6ExqPIFUZNqiA/hIM1M2CRYnPyHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=t/Z4nu4J; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=C4mIfQW42npJ8aWx4tJtzda0cqysxN15B4FtD1+0SxQ=; b=t/Z4nu4JknF02QsalUqZFT5Utt
	dEdpD0NmbYwPikC7nNdnkoh4muIjgw0pUhEpHmAZI712LZDYzscpio5UI0XfHnj9VzRb0LC/c83dv
	ihhnQo+eTyaMSvLgrfuxvx5xMMMEKhzSVdHkvloJk499G0nZghr/s8tL+ltUBJ72KV7I2tAvfI4DU
	VPR/cu/Ku64ELxQ6dvXLbjg0Q4vi4XT+NVgz5Ko/lpqyS/xmuDPvUw05CYvBvbzknxYPvKKLv6kDS
	3QZ3JhvcxdT8EmV1gsFUzPNU2qsFwqa7wvC0Oy0V1yrx9TkpsgP5U/93d0h8w5PFOFZ/ysaad6Zne
	u7oPnGwQ==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIFr8-0000OB-Fu; Tue, 03 Dec 2024 00:29:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	sebastian.reichel@collabora.com,
	alchark@gmail.com,
	dsimic@manjaro.org,
	inindev@gmail.com,
	cristian.ciocaltea@collabora.com,
	jbx6244@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
Date: Tue,  3 Dec 2024 00:29:18 +0100
Message-ID: <173318214610.1403925.5053769058290822125.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241128120631.37458-1-naoki@radxa.com>
References: <20241128120631.37458-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 28 Nov 2024 12:06:30 +0000, FUKAUMI Naoki wrote:
> on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
> rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
> devices.
> 
> rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
> matches with rfkill-bt.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
      commit: 2ddd93481bce86c6a46223f45accdb3b149a43e4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

