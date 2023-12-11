Return-Path: <devicetree+bounces-23885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E30BD80C9BA
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D905B20DAD
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023583B2AB;
	Mon, 11 Dec 2023 12:27:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13C86CE;
	Mon, 11 Dec 2023 04:27:41 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rCfNp-00087M-1j; Mon, 11 Dec 2023 13:27:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@163.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Mon, 11 Dec 2023 13:27:36 +0100
Message-ID: <3203387.BEx9A2HvPv@diego>
In-Reply-To: <20231211105023.1779786-1-andyshrk@163.com>
References:
 <20231211104915.1779476-1-andyshrk@163.com>
 <20231211105023.1779786-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andy,

Am Montag, 11. Dezember 2023, 11:50:23 CET schrieb Andy Yan:
> Add Cool Pi CM5 EVB, a board powered by RK3588
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I just realized your mention of this being a som + baseboard combination
in the previous version.

In that case the compatible really should reflect that.

      - description: Cool Pi Compute Module 5(CM5) EVB
        items:
          - const: coolpi,pi-cm5-evb
          - const: coolpi,pi-cm5
          - const: rockchip,rk3588

Similar to how all the other som + baseboard combinations do it
(Edgeble neural modules, engicam px30, Thebroma-SoMs).


Thanks
Heiko

> ---
> 
> (no changes since v2)
> 
> Changes in v2:
> - change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 11d03035f3db..4da83bbd642a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -95,6 +95,11 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Cool Pi Compute Module 5(CM5) EVB
> +        items:
> +          - const: coolpi,pi-cm5-evb
> +          - const: rockchip,rk3588
> +
>        - description: Cool Pi 4 Model B
>          items:
>            - const: coolpi,pi-4b
> 





