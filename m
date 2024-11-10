Return-Path: <devicetree+bounces-120578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 312BB9C3488
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 21:14:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63A811C20C31
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 20:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0404B13DDD3;
	Sun, 10 Nov 2024 20:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Y8RfFiE+"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B67C26AD3
	for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 20:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731269646; cv=none; b=ihSn33bzfBoMRjGiWaw1p4N1s1upWwCVRpkK/UNiXeznzB1ShuQFtJTQOjlXq+6VJwhCEB/CftnKO5FeMY5l/HUMPe9LmglCsPDia2hrhya8OwLAeoUz3FU5Ypm14Hvp5qiwK9EUWBQljN7PQlNy0mG/B10lzaHgSesmc8RrOSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731269646; c=relaxed/simple;
	bh=0OKTD7COkS60SZpLafwBNUn/Xk5uwu6s82tYR4Anw2c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EjE6b8L1punv7FF8hRQwhLglSnnemPz+ssOQ4ZV9nwuhV3ZeQmvRz0sbIVjEIgEsCBAcXUuMfmKKkvbgqbsv8/WRB2pKl+544trVMikVilSmf4SBUzZIHdm0Dc6J8+NFKtbywVWmzA1XRAWYn4LlwalRP5K0CKEacT81i980rXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Y8RfFiE+; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DKLfZL7Lw//8nae5fm6x5bXe/N6woQGIMim2E2GSipA=; b=Y8RfFiE+0jxpI5NUTojx4Ss1m9
	D7ZnPy+dIRiawnLd1U3juJqU5ux3hrTS8NBnSCYPIWaXC04evu/wRpglkbfe6cAzUd9sVAsQnZZuw
	upBOn7xZmfd2PWtthgQYRxOE6Ohl6ldxyQ4/eLprSjd7knsHLtQ4dP0dj+ndTiPxGxBv2dqA8m0Cy
	knr1xVJpYRRcExxfmEIpxHMMjEjHWLC1Vag7nClTN0BweRfXesh/YF0uh2T1SZnemGCnaV85QuE4w
	C9VVdG/0o0mMtYdZF6F6cZ+sOwEBWaPG3uynsXiCOgFJypSWIlv1FRHbYAhap/CCJGOIJLVg2FXRb
	8IPMDz5w==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tAEJh-0006eU-5w; Sun, 10 Nov 2024 21:13:49 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	jing@jing.rocks,
	macromorgan@hotmail.com,
	michael.riesch@wolfvision.net,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	jonas@kwiboo.se,
	andyshrk@163.com,
	cfsworks@gmail.com,
	tim@feathertop.org,
	kever.yang@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	dsimic@manjaro.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
Date: Sun, 10 Nov 2024 21:13:42 +0100
Message-ID: <173126942620.136493.15655197689835452655.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021090548.1052-1-naoki@radxa.com>
References: <20241021090548.1052-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 21 Oct 2024 09:05:46 +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK 5C.
> 
> Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
> RK3588S2 chip.
> 
> [1] https://radxa.com/products/rock5/5c
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
      commit: 3920c37ea8ddc43e8f54083ed227f123acfa6ed2
[2/3] arm64: dts: rockchip: add Radxa ROCK 5C
      commit: 0173113ea6d7646fa0d7fd4d09b272d38a9ab9af
[3/3] arm64: dts: rockchip: Enable HDMI0 on rock-5c
      --> I've folded this patch into patch2, as the hdmi
          controller on rk3588 was added earlier.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

