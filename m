Return-Path: <devicetree+bounces-253416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB572D0C21B
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 21:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F42B302EAF3
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 20:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CEFA365A1D;
	Fri,  9 Jan 2026 20:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="hA97cqZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27B83644D1;
	Fri,  9 Jan 2026 20:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988989; cv=none; b=riFRmXrBItT+GE17fja+4YJ4ET3b4y2VgS6AUwypyJAs0ZlwxR3dp7vVA2h2KWGDOIn73EFadgr2bZbzSa9Y6RdIaLPd2YgkkeTXsxhm8cbXU6tllJcQdy3wTb1ir+EhDFdGrjZK/FFaN9gNHbcvvMyRQhTT7JQ0/6e5HCsfGfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988989; c=relaxed/simple;
	bh=UlTcdysFcaOk5sLiw1f0dZHW0/ztLJqcV3MtPdIP4/E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=k+IQzhrovtcnnxKJvGNL6bccT/bTv5l0OZ4S38oLnjXXJa31sLx/SZFU66yBeJylWz9DQNrBh2b2cJpGwyCw/j3L9T9MXPzBXYvT1I6eBQYSLnEkKZBWDrmaympF8Qpl605PwLrNo607NM7COSzNrYqdUp3rdky7KBBJtCcGsIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=hA97cqZ5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QIt8py9lcxC79AmMPcNOsD+iHnc6c89XW5lXglpgyC4=; b=hA97cqZ5zaXi80g11ILgwcHQc1
	Qrb9lT40y4ssfXMj9mKhU8n3PMHYUiHcQ51oMJiXOj4aGFqFvs7C8Mp0xK8tB2SgZvgE5sgeWCRGk
	OSsGWU1YF+YVBPko6w3IOGjM5dNRrr+Cp6cVw7071+PFizcZacNKZdurdHggyZMyckswdNcJG3+af
	zu4iUGlugiRfG4Ks6r1Eas9M+Gz0O0hNEvLHiID8kSWB7rA0+xkVzDAuY3f9T2npiK1sKpCKP32cH
	DTzlMhja1A/+fq2I+8WpOtc7PiW5zEoloPm6/89vRPxZE7ufgDOt9drMh40P0ysfz75aaPVyW2BrD
	ZG8GqbLA==;
Received: from [192.76.154.230] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIh1-001fy0-13; Fri, 09 Jan 2026 21:02:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Dragan Simic <dsimic@manjaro.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Patrick Wildt <patrick@blueri.se>,
	Diederik de Haas <didi.debian@cknow.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add vdpu 381 and 383 nodes
Date: Fri,  9 Jan 2026 21:02:40 +0100
Message-ID: <176798895637.3449720.6051032825613833368.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020212009.8852-1-detlev.casanova@collabora.com>
References: <20251020212009.8852-1-detlev.casanova@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 20 Oct 2025 17:20:07 -0400, Detlev Casanova wrote:
> Add the nodes for vdpu 381 and 383, respectively RK3588 and RK3576.
> To keep compatibility with older variants, the reg ranges order is not
> in register order so that the function reg range is kept first.
> 
> Also adds the corresponding iommu nodes.
> 
> Note that on RK3588, both cores are added as it represents the hardware,
> but the driver, later will only register the first one.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add the vdpu381 Video Decoders on RK3588
      commit: f61731bd60627b129b688c2d7b2071a5fe7f01d7
[2/2] arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576
      commit: da0de806d8b46238ac3891a894806da4d1c26cdf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

