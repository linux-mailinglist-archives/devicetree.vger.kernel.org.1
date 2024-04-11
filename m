Return-Path: <devicetree+bounces-58424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A763B8A1EC3
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 20:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61B7028D80B
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 18:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B91B14A83;
	Thu, 11 Apr 2024 18:30:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4DC15E88
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 18:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712860257; cv=none; b=pF9x91qfhDsZGncnPUpUQAPiQqgBsHOro8BBOamPA35Fz5HEVVj7ETjk1EPB9lm6TxG8zu9yDomoZGDD/fVh2B9bfC0/CbrWbqRB6nLfqrnVZ+FnvoQqgiifL+8xTsmnHbO919+cxdP+MpWA5qNswS2kyegOMg6RXR2BnasOekE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712860257; c=relaxed/simple;
	bh=YWliX57wzVMR6v2TK/pl0WeTMbtOqhVBzjG3FBcH50Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EoY5VRCB4esVf6uAYAdLigoAi+MefcNpYHeiluOJY9RHchV505E5PPjQi+ykvyy1DewSS6h97jQt8IKOYBCah+luXTxS2jCPDh5c16jufYFT8Wm81IbzeN6U8Oe6HmNWr14aCDgZeQYLoyuuR9ePriuDytaFhcmvKNa/L2+8Lko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzCC-0001so-3Y; Thu, 11 Apr 2024 20:30:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	agx@sigxcpu.org,
	neil.armstrong@linaro.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	sam@ravnborg.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	quic_jesszhan@quicinc.com,
	kernel@puri.sm,
	dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3326 GameForce Chi
Date: Thu, 11 Apr 2024 20:29:54 +0200
Message-Id: <171286007459.1886699.12166776113258136187.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 25 Mar 2024 08:49:54 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Chi [1].
> 
> The GameForce Chi has the following hardware:
> Tested:
>  - 3.5" dual lane 640x480 DSI display.
>  - 15 GPIO based face buttons.
>  - 2 ADC based face buttons.
>  - 1 ADC joystick (left) connected to internal SARADC.
>  - RGB LED arrays for key backlighting
>  - Dual internal speakers.
>  - Realtek RTL8723BS SDIO WiFi.
>  - Single SDMMC slot.
> 
> [...]

Applied, thanks!

[4/5] dt-bindings: arm: rockchip: Add GameForce Chi
      commit: c1bc09960d05cfbfb94cfdfb66b4733e3ddf1638
[5/5] arm64: dts: rockchip: Add GameForce Chi
      commit: ad59da1ab997e81061ec980300fb7ce2d5e4bc5d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

