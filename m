Return-Path: <devicetree+bounces-142408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF49A2549A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D2F41881EA8
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AFCA1FBC86;
	Mon,  3 Feb 2025 08:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="lgenNZl3"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B6701D7E50
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572007; cv=none; b=i21ztq6weROp69mUaKzYz4zHOhvER7LpoDTUSfHnJ6aO/ngxm1cSD9VwLijgn9FwF4EIXOdTUDDWPZdKiGUiz9FVaddXQ9GtQEuIqE5cBPpfHmYAFH2ouvn1by+ljidOnG/ekohRsy0I/YiuGUNMTtH/uswttKe9yBAKWtnHqAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572007; c=relaxed/simple;
	bh=2gC/5O38TjrgaXYc2UParLmtt6IMLZ5EuP2IBcULbrs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QwWJ4kiVyIImWSl82cpFf64rcXeaxfI3ql4+EZndC54uIWk+oC9KxKDd+djqxQ+x4bN9fbfpQiBpP02SGiKoYm987Blj5w0C+HqPTyt5J2cQRFH6HSf4toYmb5YMrCz9A62GCB0tc9ujVw6oL3m/ICFuFWqSlfFFLuIW02WLpLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=lgenNZl3; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yI7nEKwf8euL226QHbemgP0cT38UVnbpkgOgS9dADV0=; b=lgenNZl332Ve5vm4eX/+9cM0jH
	SLriyULUX5HIGrxCaUfHB2YNOuITMZDaTbkpzyRhCf3pG71xuq/zhaZ6KvWLNXFcnOKcw7r1u9Ssx
	cORVh6gWztCRJosTiyg176YVn3jI4BK/a9SoETqSrx0HNL4Q8h5PYPbn+T4bkiXXbuTUYWho2ay6D
	cLM6j7Ci7nONYKpLMDhCwmYKAYpi8O86SePlSjmL1CLMbp1PIjCgYW0ZP2Y9d2iq79pmpn+1kiw3X
	4vGTP1xKxdvGOjzahegp6BG417Q1TSr4arqrsXum0Um+e/zMifX7crQYoFOJU/aumN+6ADwSEQKU8
	VmQkYKVg==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tercn-0005Vr-Ga; Mon, 03 Feb 2025 09:16:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	twoerner@gmail.com,
	didi.debian@cknow.org,
	jbx6244@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable USB OTG for Radxa ROCK Pi E
Date: Mon,  3 Feb 2025 09:16:02 +0100
Message-ID: <173857053619.78657.16527102347598350426.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250129064004.162136-1-naoki@radxa.com>
References: <20250129064004.162136-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 29 Jan 2025 06:40:04 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK Pi E has USB D+/D- signals on the 40-pin header[1].
> Enable it for use as an OTG port.
> 
> [1] https://docs.radxa.com/en/rockpi/rockpie/hardware/gpio
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable USB OTG for Radxa ROCK Pi E
      commit: 0cd57b5e5dde94129a13f6d2897cdb82f8943f9f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

