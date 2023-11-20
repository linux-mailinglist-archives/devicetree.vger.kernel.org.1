Return-Path: <devicetree+bounces-17156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E043B7F163B
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:51:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DB5F1C21587
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 14:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8489014A89;
	Mon, 20 Nov 2023 14:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EA7F199E;
	Mon, 20 Nov 2023 06:51:33 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r55cZ-0008C4-8l; Mon, 20 Nov 2023 15:51:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v3 2/5] phy: phy-rockchip-inno-usb2: Add RK3128 support
Date: Mon, 20 Nov 2023 15:51:30 +0100
Message-ID: <1776143.VLH7GnMWUR@phil>
In-Reply-To: <20231119121340.109025-3-knaerzche@gmail.com>
References:
 <20231119121340.109025-1-knaerzche@gmail.com>
 <20231119121340.109025-3-knaerzche@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Sonntag, 19. November 2023, 13:13:37 CET schrieb Alex Bee:
> Add registers to support the 2-port usb2 phy found in RK312x SoC familiy.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> Changes in v3:
>  - added phy_tuning-callback for RK3128
>  
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Vinod, can you pick up patches 1+2 if they seem ok to you?
Patches 3-5 are more or less independent from the phy changes
(the rk3128-usbphy was already documented in the binding,
 so I'll pick 3-5 now)

Thanks
Heiko



