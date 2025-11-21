Return-Path: <devicetree+bounces-241267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C933C7BC75
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:45:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB7FE4E15BD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED9A25BF13;
	Fri, 21 Nov 2025 21:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="kOyknaDK"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD27036D4F6;
	Fri, 21 Nov 2025 21:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763761551; cv=none; b=Y4Tvx5GFJCP7B595sk0ype4T0JWAulimiNsovFUkkNnbibvFyxQwwMGeRp07LDc+n5EXYnetxrWB9D2vnoObPH2MLHOaM29TnD61j52iwKh48AE1NVtu8dFawDLuZ3yCotdUlT9sEtP8s2t6tnW7fNWgfADFEqXVMAJloKMuNXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763761551; c=relaxed/simple;
	bh=k0PyQgqpPbsdOZDkHxL0kh86u0Yrb5J4//ntHDRpAQM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=srsT1Gbvs9QVxlsmTFHamSRZ8F2/9wcffWkagsZ24E3oNhKLRXrQZUSQQNytUXYk6F2fy4AUNYv/y3vfFB77abSna4nxigRcv1fWc8+oFoJWxLq0pYzdVPnlOIF1pERDzMURvdPGO4jmIfEbu7bD6EGl9+8Z2Bv8Cfg3M20JTfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=kOyknaDK; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=U7K5QipkCiICQ6wLA6hxymQHzzTkw8i1yUZ1XeIR6LY=; b=kOyknaDKzRsUna5Zg7Qh8lKTUx
	Mz9piXO2bvyfVL3UVqEBe8CeCUVpSJHmAnYT6alvkC2ddK3EzjUavhX9s+AJLflVIHBmI8EBFweCF
	VcSeyJ9v/uTOh2+uGQCkxOgSL3M/qS9r3S4kc9SGoZiUVtynS2laB1+bXT5CxZenCvBS5RQ1HDR0/
	LskLUkK7j0PfYv2e0JXBHPhJLmjlrXLvb2WV/i7lOS8e696Pp+EZgKOD26Bff6e1VtgCPIgKDpspb
	uc38oVZVgodqPW0OVcvsRMHcTsc1sqqtttt9QunIvogPtrvc+D0t+Ml46zbETmjtR1BH9ICuElwm+
	Q+eWREDA==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMYwd-0001Qh-CK; Fri, 21 Nov 2025 22:45:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable i2c2 on Orange Pi 3B
Date: Fri, 21 Nov 2025 22:45:28 +0100
Message-ID: <176376151909.52478.6656930123388084668.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
References: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 20 Nov 2025 19:00:34 +0000, Michael Opdenacker wrote:
> Enable the "i2c2" bus on header pins 3 (I2C_SDA_M1)
> and 5 (I2C2_SCL_M1) of the Orange Pi 3B board.
> 
> As documented on http://www.orangepi.org/img/pi3b/0719-pi3b-19.png,
> such pins are the only ones offering I2C functionality
> without conflicting with other SoC blocks.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable i2c2 on Orange Pi 3B
      commit: b92c4eae75468d5b7ad49fc0d1de76a7f0fa0bdb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

