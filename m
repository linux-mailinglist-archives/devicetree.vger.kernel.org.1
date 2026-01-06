Return-Path: <devicetree+bounces-252076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C344CFABF4
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27B6C3415303
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 19:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BD823563D1;
	Tue,  6 Jan 2026 18:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="VVQBll6/"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8333557E1;
	Tue,  6 Jan 2026 18:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724936; cv=none; b=cuuFXKSEZY3m6AGnBScNr4BZDOA3gMHlgFjV+pv1mqdxXC13koOvr/3W+r8QiefqMuZbkdyt0TukKzjVQsY0LnF69rlD6T8Lc/tobDn12LBdJnsx32yT7XcDfAXFRZumM/x+f+CMAIQTfxVZGZZB75Ly8wjOGhpcaCnOISWWBrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724936; c=relaxed/simple;
	bh=GEBkMrZHepVTYvxTwo5uwVzeBp/7k58oUqk9it2imNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XsZdPRmwwd4wZQ+DZ97kKrNVbTMVytrAX0V8a7GaspSRwBhjpGiGtlllhNHnJJLCJ5gAIUQhsk3B9fs0pWWQXSQ7b5gZ5V62bkU9aIyi2fKKyVI2RHSeTmCBux3CT2+SOWCgNta7Rdssoet/DT1p/3XX2v04kPidK1CF8x8sg4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=VVQBll6/; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=3Roch5L1+VH1+0dO78IGziVT5agDLByROysfuWI2AQw=; b=VVQBll6/qPS9kEYWtjU8WzaoZr
	Yc2k9SUnJFgYIHeiJWSK+hjpc+dnC270P3Qox2EWklLP0Y8sgv3QiDA8fLuf6WBiHALD4jt5DGZbv
	ekzxSyRb563y0DXN/A8qVBxk0V1BEKAUlYqy6JMe+BVvxeCTc1b38nqeAjBTEfovF/9HIIOVVGz3D
	I5U5EOURziotTALYFJZSsm0+ddDeVx/etvzewbg9lUSxtW3yqnpDC3l8PkghGJL1Up74vnWQGra4K
	csQ6FTcZ4d2Fane5gVvJTo4AyMrzycFhO97EzaMUBjv6lkC63w2N75fNBYTtLuHneqmzDVZMaHdJ/
	h4brQY6g==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0O-001Hfs-PE; Tue, 06 Jan 2026 19:42:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ricardo Pardini <ricardo@pardini.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588 boards
Date: Tue,  6 Jan 2026 19:42:02 +0100
Message-ID: <176772487184.3029798.10396828129680965302.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
References: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 01 Jan 2026 07:43:08 +0100, Ricardo Pardini wrote:
> This series enables the NPU on a few Rockchip rk3588 boards.
> In every case here, the required regulator was already in place.
> As suggested by Jimmy Hon [1], since the NPU power domain supply is
> being described, also remove the always-on property from the regulator.
> 
> In Jimmy's words: the commit message for the introduction of the
> pd_npu label mentions how the regulator no longer needs to be always on.
> [2]
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Enable the NPU on NanoPC T6/T6-LTS
      commit: 7127b6d899c74a2ba7af09f1755a22cf9c72dba9
[2/3] arm64: dts: rockchip: Enable the NPU on FriendlyElec CM3588
      commit: 628aea397d81cbec3f2ff9067c5223c927f220a2
[3/3] arm64: dts: rockchip: Enable the NPU on Turing RK1
      commit: 5360ad495b7bf1e3ea95f0e47961d5447a829f8e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

