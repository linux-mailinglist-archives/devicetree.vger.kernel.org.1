Return-Path: <devicetree+bounces-106433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1E298A006
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 12:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F302228724F
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 10:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E339D18C939;
	Mon, 30 Sep 2024 10:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="r1EuT/FY"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7A018DF60
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 10:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727693977; cv=none; b=U8ruE7kzAsOkXTG4cMuvVi+5F3Wh+c7FeFxmu9xxym81SGprmARUPidD0SaJahqZP2ZpsbL78L/uv8ZpUILFR7KQ/BaGx9/l+IKcZoWoUzQJk2s1WiNz6JWtHbETYoFsbMmGiRZEs7m9IovhqJu1DcwRLm4T0cvqXB1AaDRZtpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727693977; c=relaxed/simple;
	bh=j+A/QWFG9UhpVBEnlSM07bP9l0CW0PbxivHpsleVT00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RmlmcWglkV6Enm8M7CBVB0rkbBCV2lO6mmI+p7t+8t/d1MIiqqXUhdjjI/tNUYvD/gBqaLrOEpb7ttdS594zSdDlricSchaoJnhq5hIWXKBl8siwMETxjHyEzytXwcyTs7znI+Njf42I0nrJGnQFB/W2xv94dFB+14a7qeO47gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=r1EuT/FY; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZqqpNjU5vNG1chwcPU+fhnVANfrJ3TZS/WsOkjpmOKI=; b=r1EuT/FYsGsglIK71Qvsv5gZdv
	yloNbkq/uH1XSyNtejcUxWJ4ANNgTfcKe8xDxFjMyVkXrGmpZhSS93/JsF+Is3dXh5+CsPj3wH/u8
	xHK4uf2+z8+mSnFk+PlVpZSeiGd59pJoRv62nf0AAEzuVYRIxyVRT4hzFVo/kSXcdMmnQV46FedGG
	BE6F5PuqG1sz2xx17HxU37dUO08q3beX3efHJeHdATmsfbUiBObMgo/vV1QfyuEy7cshjBd4qBIT8
	Zd6vadDa9WbwP9hnhChMTE3jH5XT327+eXaJEhjhoUgQlqdZkwdI/Qcxo7lGpin7LKi7oghBRQqA2
	NE0VzNCg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4H-0004Xd-Qq; Mon, 30 Sep 2024 12:55:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add LED_FUNCTION_STATUS for RGB LEDs on Radxa E25
Date: Mon, 30 Sep 2024 12:55:43 +0200
Message-ID: <172769365138.1880381.12856825951095817858.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240816215316.1429-1-naoki@radxa.com>
References: <20240816215316.1429-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 17 Aug 2024 06:53:16 +0900, FUKAUMI Naoki wrote:
> multicolor(RGB) PWM LEDs on Radxa E25 carrier board is clearly defined
> as status LED ("use it to see the status") in product overview[1].
> 
> add "function = LED_FUNCTION_STATUS" to "multi-led".
> 
> fortunately CONFIG_LEDS_PWM_MULTICOLOR is not enabled in defconfig,
> this change should not affect userland(sysfs).
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add LED_FUNCTION_STATUS for RGB LEDs on Radxa E25
      commit: 40c60d826f4541668d81d8ee561dced5d4950223

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

