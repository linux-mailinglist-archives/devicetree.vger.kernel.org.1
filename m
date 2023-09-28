Return-Path: <devicetree+bounces-4168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE1B7B1760
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 300592813F5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA46341A1;
	Thu, 28 Sep 2023 09:30:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC1231A8B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:30:06 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6587B94;
	Thu, 28 Sep 2023 02:30:05 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S9TfQg119815;
	Thu, 28 Sep 2023 04:29:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695893381;
	bh=g+Okr5QpQDgpPh2snfByuM6vFuk+PcZyuirCEPx3X6I=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=axMTn5C+we8O2X+PBwJ72/Y4ROFypb8WMOgjsAlwGunpnBRFHs1V1RGLNLYjP6bCW
	 EsvCd5GVNxAAzq2nyJzJVCAAwbOKMQT+oHlz7BuSppTAAFekTpVPCoxRvStUnNlL/H
	 62JSbodfpyHW2dnK/juyahOTihvVH6ZJQd0sW2rE=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S9TfDQ015673
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 04:29:41 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 28
 Sep 2023 04:29:41 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 28 Sep 2023 04:29:41 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S9TeCA093668;
	Thu, 28 Sep 2023 04:29:40 -0500
Date: Thu, 28 Sep 2023 14:59:39 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Muhammed Efe Cetin <efectn@6tel.net>
CC: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <heiko@sntech.de>,
        <sebastian.reichel@collabora.com>, <jonas@kwiboo.se>, <megi@xff.cz>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
Message-ID: <20230928092939.lfvfqqiii43hrmyg@dhruva>
References: <cover.1692632346.git.efectn@6tel.net>
 <0281d757b4cbcf2092167bdcf3d112e330fe6b92.1692632346.git.efectn@6tel.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0281d757b4cbcf2092167bdcf3d112e330fe6b92.1692632346.git.efectn@6tel.net>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Aug 21, 2023 at 18:47:57 +0300, Muhammed Efe Cetin wrote:
> Add Orange Pi 5 SBC from Xunlong.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index ca5389862887..b9649e27bc82 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -877,6 +877,11 @@ properties:
>                - xunlong,orangepi-r1-plus-lts
>            - const: rockchip,rk3328
>  
> +      - description: Xunlong Orange Pi 5
> +        items:
> +          - const: xunlong,orangepi-5
> +          - const: rockchip,rk3588s
> +

Reviewed-by: Dhruva Gole <d-gole@ti.com>

>        - description: Zkmagic A95X Z2
>          items:
>            - const: zkmagic,a95x-z2
> -- 
> 2.41.0
> 
> 

-- 
Best regards,
Dhruva Gole <d-gole@ti.com>

