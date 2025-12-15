Return-Path: <devicetree+bounces-246536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 861D5CBD967
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:48:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CF46D3017885
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1807B3358B9;
	Mon, 15 Dec 2025 11:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="hud35EVi"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4883358B5;
	Mon, 15 Dec 2025 11:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765799278; cv=none; b=cELQOzcQFfET0eJpszD6vakmx1EKL+8XrnrVkuUA7YX4AjlkSriVxNE2L9bhZR8uNAxZK89ER4mNTjQsiviQRyCt3b7B5MhEZ3NcNEed18Hs4KvOKhbvb7GBfuWtBlm1Hv2t2p2ZzSDFkUHZ+Dvc4R14IKF87ta13uzwWOTtgEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765799278; c=relaxed/simple;
	bh=Bg12JH6ED5Ml7gcajE6ytN/UBoDZOb6LMFHhuGTEkHc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q8G4vmK3/omFPgw9OVY6orAZ09iYqQobf8zU35hpHinlSqxQ6Jqs5Zbksq76TF5vybGMPPxlujgEaJrgco4X6n0N2seQ19Q7H1ZAz4N83AYtPkEpBR6YGb8oKwFkBYkacbqaLnahqwFuvjPvzqfi8ICfdq/8qigzSoAM334LbL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=hud35EVi; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Zn/uhcRYE9P5t+xoL0MI1jmstVKavxgMn3GHiQkhybw=; b=hud35EViFGxZ44fZq/v+HIIQPc
	dTRWejKOXGyjBVZYEnUaTWVXrXqNNvaXb0ZOjA9g56ZKi0xzkx3dU0esoYNKQQMZfZdcX4c8xIYQE
	qiaoTd+1Ed94OHM37OruzmwCxKQPmc5FDDKsC65nkd4K72GpiHX/8mkrMFWQdLm4KEFjaazyDYCLR
	fwHjpWRGKy9Az61I/7fQ12RroiyyZDrNYwwu5O9UnAzxLDR6nmVPbuQNo6NHS4UxKLYo2cfawOxme
	M1X7l8myTK0zzAYxzRKaJjrUwcHm35eqrsvmJ+zWnfkVzFnumdBzKA+t8t3i+3YhlXxnUW7fbzps/
	faLM5GlQ==;
Received: from [192.76.154.237] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV73A-0000On-2C; Mon, 15 Dec 2025 12:47:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Torsten Duwe <duwe@lst.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable SPDIF audio on Rock 5 ITX
Date: Mon, 15 Dec 2025 12:47:31 +0100
Message-ID: <176579924017.1404176.3512598682044953071.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251124183056.B853068C4E@verein.lst.de>
References: <20251124183056.B853068C4E@verein.lst.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 24 Nov 2025 19:30:56 +0100, Torsten Duwe wrote:
> The Rock5 ITX has an S/PDIF (TOSLINK) socket in its I/O-shield, whose
> TX signal is wired to GPIO4 C1. Activate SPDIF TX unit 1 and select
> the proper pinmux (M2).
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable SPDIF audio on Rock 5 ITX
      commit: 2cc30da80a28a8a5d1337230c3586eb2f9580120

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

