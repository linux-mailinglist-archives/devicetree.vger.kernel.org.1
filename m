Return-Path: <devicetree+bounces-25258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C73D5812C30
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 640DE1F217AA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D15835EF1;
	Thu, 14 Dec 2023 09:51:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 928611FF6;
	Thu, 14 Dec 2023 01:50:47 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDiMN-00023i-MP; Thu, 14 Dec 2023 10:50:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: iommu@lists.linux.dev, Andy Yan <andyshrk@163.com>, joro@8bytes.org,
 jroedel@suse.de
Cc: conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, robin.murphy@arm.com, will@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Thu, 14 Dec 2023 10:50:26 +0100
Message-ID: <14263703.RDIVbhacDa@diego>
In-Reply-To: <20231212005710.1837066-1-andyshrk@163.com>
References: <20231212005710.1837066-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Joerg,

Am Dienstag, 12. Dezember 2023, 01:57:10 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add a Rockchip RK3588 compatible
> 
> I split it from the vop2 patch series as suggested by Heiko[0]
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

could you possibly pick this patch for the iommu tree?


Thanks a lot
Heiko


> [0]https://patchwork.kernel.org/project/dri-devel/patch/20231207080235.652719-1-andyshrk@163.com/
> 
> ---
> 
> Changes in v2:
> - Add maintainers for the iommu subsystem to cc list
> 
>  .../devicetree/bindings/iommu/rockchip,iommu.yaml     | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> index ba9124f721f1..621dde0e45d8 100644
> --- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
> @@ -19,9 +19,14 @@ description: |+
>  
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,iommu
> -      - rockchip,rk3568-iommu
> +    oneOf:
> +      - enum:
> +          - rockchip,iommu
> +          - rockchip,rk3568-iommu
> +      - items:
> +          - enum:
> +              - rockchip,rk3588-iommu
> +          - const: rockchip,rk3568-iommu
>  
>    reg:
>      items:
> 





