Return-Path: <devicetree+bounces-248857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42536CD62E6
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E19F83013999
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2088031A7F1;
	Mon, 22 Dec 2025 13:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="nCGqpI39"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0806830B50D;
	Mon, 22 Dec 2025 13:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410723; cv=none; b=ceCAaCxY4fLDIDK54ECejvFgNAgIGGuDCFyzNAV+vi1fbzAocrcxz+ltONhWDcNKbTozKalNTxufIjwNrkgt3Yz87L2zkFDnrqAYt0O3QuAVViCWlbQxZ3d2uE8qQy/nakA3Qv4Hja+m+tvsdOK+KG+cnTBWEN9HVAzUv5SZd8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410723; c=relaxed/simple;
	bh=LfTXymN9MVQucUbYQWFwNoxB9BC6hkch8YvFzvUGlRk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sBq3YrXVt4l7l7b6U9gSLfo6RKg2go6imWHRwnksW+JE7a2roBZryDINFMRx1ZrGLsMbp1o9kb5VIOSKrrZ4T3FqKDH51TiB+glf3Ll2YgUqF11+S96SOqEVaejQrA+TKof7lfez3HKYKiYM2ZUJFa8CPb5MFJEFanjNmg/vCJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=nCGqpI39; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lvSBiA96XprMw9g2h8tGQlpLQ009YJWbOJNmgOafPrw=; b=nCGqpI39LKtqphhROFziDhtyVc
	GWPuCUiaVQ2Q3jc8H8D3lgxnaILu7MI8V73RLHsGV7T1sTE4h0dmh8texUN4xwocGGzADjqL1dxhZ
	imEOWqgtSueNf670vuXLftf5G57PrMDrhCUyO9/ZvbgFn5qvDWrrNFNGQhTtPQVYx/WKW2u/jybYm
	LqrEbwnFGElRCRFtHAfEVUj/dCKaPiTSBC/GKbHmuQ8ye2EpVWlMhbkI2q/qC0Q6/pvDWV7ArdSfd
	3A9ce625BYeMa5u0BC1EFR6GaMtNBcpoM1LNQTLiQ/FrNfRw9VOHB8uHX7WyYgwD9D012gMEyMk5z
	vGm7wVgA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg7K-0005s2-Fa; Mon, 22 Dec 2025 14:38:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: remove rtc regulator for ArmSoM Sige5
Date: Mon, 22 Dec 2025 14:38:22 +0100
Message-ID: <176641067333.1648325.14071250323791790543.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251220100010.26643-1-amadeus@jmu.edu.cn>
References: <20251220100010.26643-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 20 Dec 2025 18:00:08 +0800, Chukun Pan wrote:
> According to the schematic, RTC is powered by vcc_3v3_s3.
> The vcc_3v3_rtc_s5 regulator does not exist, remove it.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: remove rtc regulator for ArmSoM Sige5
      commit: 3fc7029d3009682b27be2fa2cd2269bc6f104c2e
[2/3] arm64: dts: rockchip: fix hp-det pin for ArmSoM Sige5
      commit: 341735d92ff868eb4c46beafb313d66f015809be
[3/3] arm64: dts: rockchip: enable saradc for ArmSoM Sige5
      commit: 3025d360f03515d3f6396a5cec339e776d62b2da

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

