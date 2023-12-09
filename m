Return-Path: <devicetree+bounces-23439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA3480B4C5
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 15:02:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E9191F21006
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 14:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 869AA14F8D;
	Sat,  9 Dec 2023 14:02:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4156210EF;
	Sat,  9 Dec 2023 06:01:55 -0800 (PST)
Received: from i5e860d1d.versanet.de ([94.134.13.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBxtv-0003vt-Qz; Sat, 09 Dec 2023 15:01:51 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Sat, 09 Dec 2023 15:01:51 +0100
Message-ID: <2595712.Icojqenx9y@diego>
In-Reply-To: <20231209103815.1568614-1-andyshrk@163.com>
References:
 <20231209103622.1568289-1-andyshrk@163.com>
 <20231209103815.1568614-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Samstag, 9. Dezember 2023, 11:38:15 CET schrieb Andy Yan:
> Add Cool Pi CM5 EVB, a board powered by RK3588
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 5de9f3090be1..24dc6dfb8285 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -95,6 +95,11 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Cool Pi Compute Module 5(CM5) EVB
> +        items:
> +          - const: CoolPi CM5 EVB

similar
- const: coolpi,pi-cm5

from
https://cool-pi.com/category/11/pi-cm5


> +          - const: rockchip,rk3588
> +
>        - description: Cool Pi 4 Model B
>          items:
>            - const: CoolPi 4 Model B
> 





