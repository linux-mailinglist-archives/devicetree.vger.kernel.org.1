Return-Path: <devicetree+bounces-76743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8897B90BCBD
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 23:17:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31D3B1F251BA
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 21:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 849A014F128;
	Mon, 17 Jun 2024 21:17:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E781D953B
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718659055; cv=none; b=FyZL2A/WB7iWzsvgmys2HKkcGkO9SGlC4YhZD6y+qW75gkqR/MskliqiJXk7elv7CQW8K/QAIAxFOWjboEHiMrlUt9IvUowK1/63KBKU+zc4dCEGWtzWqUqoAzr3bVM8wtz31dYBfQypRJt/0eOGqNRxoMAIBXEDuuKMGIIM3AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718659055; c=relaxed/simple;
	bh=xczAT+/D5gnFZ9c3wMbbfv1fIYgcp7Bxy/9blOL2wiA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZuhRbOf1UOojbWFexDFbT7tJjl27oSn4eP58+rI97KPV5mSKboKro21XMWeNI8kMgjJ6kF2zz3CX002hFqMjSfK013yRliWenuKSFIW1EMlAJmFU6kBNbsiJcDKdgjbqO5n9B+Ts6GSFrZ0fVm2Zgi/BSosDb0z6CHyy0gOPemU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJJjI-0004PL-4y; Mon, 17 Jun 2024 23:17:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>
Subject:
 Re: [PATCH v3] arm64: dts: rockchip: make poweroff(8) work on Radxa ROCK 5A
Date: Mon, 17 Jun 2024 23:17:31 +0200
Message-ID: <1880842.R1toDxpfAE@diego>
In-Reply-To: <20240612033523.37166-1-naoki@radxa.com>
References:
 <20240612011221.822-1-naoki@radxa.com>
 <20240612033523.37166-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Mittwoch, 12. Juni 2024, 05:35:23 CEST schrieb FUKAUMI Naoki:
> Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
> controller, so the board shuts down properly on poweroff(8).
> 
> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

applied as fix for 6.10

Same comment about patch-versions in mail-threads like on the
cd-gpios revert.

Thanks
Heiko



