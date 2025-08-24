Return-Path: <devicetree+bounces-208662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C6BB32F18
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 12:55:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 988557A9A96
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 10:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177352773E8;
	Sun, 24 Aug 2025 10:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Bjj+/j1D"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F5F264A83
	for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 10:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756032897; cv=none; b=PXinYMWIvNepnwhux9HRH3HW0gdYxh3jVYxNyIzC94dCG6QIyLvLgj1NIX8xyF+4BlF09jG8zDEAVonwj0IIzgqJ1Lcv7fKKdZ5iSaD9EDAY0V91o7zu5SnG7tk5PYthSWhN7VcQGgLXa0TUbk3HWfYl1nhMGKqLeHVDnFj5WRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756032897; c=relaxed/simple;
	bh=TtZ6+kGpLDq2IyPuH3eAyF6PZngXRmmDE/0Lfz1Ig2s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qba7jyGjxmUEYI9i0+jCFrtF3wkSjDgSYMOhAbOnTsMV+UmHlyNcyn92ybB3SZvAIowV44LYj/4xfxbg1WMh2aK2tWaBmrvZlCCbHJeiO9BSkx8elluentqKUxo/XxFYoKCDaJz/pkV7a20tRRj6PM5Y/x1LxmIqXNMJLuho0nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Bjj+/j1D; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=NIdAVBnnVCHzcsjaaAfuLI/aGx3BP4chTZykUMYnDx8=; b=Bjj+/j1DFjdhOTnzJM1UrfEtKq
	LaeN3qJjvdhelqdw4R/Fp40NgS7q4bMi36PlcFwuisfJ7AdRVwI0aoxdpgX8/cgB0NUVzVsT8BOkG
	ICBRRANwboMmCpBmD5LgshVSyQWWAzyXg15Gy5Cn8+DkOO9xtHN7Is6BM2y/YNO2D4mOjwCUpbk3n
	mblZxhP0uiCwOV1WJnN98eaFFapq4dC1gRiZsVv2qTLdTva/BAqhBSHi1UYCopPg3B5rUtCWLpDPy
	MZHNd301VWNcgSQpjhEjHH1G98DVxcVJQMOcUQfPb8tVcPkW5Ek2R+Afa3TPEi/nfTNqnFVR1ryqL
	Yh3W4WNA==;
Received: from [62.245.128.201] (helo=phil.wifi.munich-airport.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq8N6-0005H4-OW; Sun, 24 Aug 2025 12:54:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Johannes Erdfelt <johannes@erdfelt.com>,
	Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: enable NPU on OPI5 Plus/Max/Ultra
Date: Sun, 24 Aug 2025 12:54:42 +0200
Message-ID: <175603280233.3445205.3932375472449753007.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250812025755.2078-1-honyuenkwun@gmail.com>
References: <20250812025755.2078-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 11 Aug 2025 21:57:54 -0500, Jimmy Hon wrote:
> The NPU on the Orange Pi 5 uses the same regulator for both the
> sram-supply and the npu's supply. Add this regulator, and enable all
> the NPU bits. Also add the regulator as a domain-supply to the pd_npu
> power domain.
> 
> 

Applied, thanks!

[2/2] arm64: dts: rockchip: enable NPU on OPI5/5B
      commit: b3d7fb3fb2227259aa2fc54916cc808614f3ac24

I picked the other patch from Maud for the RK3588-without-s
Orange-Pis a bit earlier. While yours was earlier, they are
effectively the same, so I just picked up the 2nd one for the
rk3588s boards now.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

