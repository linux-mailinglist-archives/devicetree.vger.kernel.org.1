Return-Path: <devicetree+bounces-23438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A7D80B4B3
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 15:00:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7C861C204F8
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 14:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E196914F7C;
	Sat,  9 Dec 2023 14:00:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 655181712;
	Sat,  9 Dec 2023 06:00:45 -0800 (PST)
Received: from i5e860d1d.versanet.de ([94.134.13.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBxsl-0003ul-P1; Sat, 09 Dec 2023 15:00:39 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
Date: Sat, 09 Dec 2023 15:00:38 +0100
Message-ID: <2263987.atdPhlSkOF@diego>
In-Reply-To: <20231209103748.1568462-1-andyshrk@163.com>
References:
 <20231209103622.1568289-1-andyshrk@163.com>
 <20231209103748.1568462-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Samstag, 9. Dezember 2023, 11:37:48 CET schrieb Andy Yan:
> Add Cool Pi 4B, a SBC powered by RK3588S
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 5deb66a5c7d9..5de9f3090be1 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -95,6 +95,11 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Cool Pi 4 Model B
> +        items:
> +          - const: CoolPi 4 Model B

- const: coolpi,pi-4b

at least according to https://cool-pi.com/category/6/pi-4b
this seems to be the model name

> +          - const: rockchip,rk3588s
> +
>        - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
>          items:
>            - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
> 





