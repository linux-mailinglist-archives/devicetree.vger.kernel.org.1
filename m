Return-Path: <devicetree+bounces-1785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2DB7A8433
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69F941C20C22
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E3C3AC14;
	Wed, 20 Sep 2023 13:56:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0C83AC0C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:56:24 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06336E4;
	Wed, 20 Sep 2023 06:56:21 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38KDuBZa039452;
	Wed, 20 Sep 2023 08:56:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695218171;
	bh=m8KgHngVmiI/7GBOu/bwjxQ6OOHwyl5qa2i1mbM36xE=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=tEPYFUlh9wt7q5WoWNNmSUnEsKkrDooopKQmqUoS4IKX5U72BxLmc1kvpGe4Ru9Y2
	 CeWx8921YElb90aKdVydNTIo9oplHKn26L8uv49eXsIedP0Ra2XHxEol1fF/wxEFVL
	 fdgsm7EAuI2lOky9zIUeDIrUVvjfOR1iEe2rs5oE=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38KDuB1S020463
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 20 Sep 2023 08:56:11 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 20
 Sep 2023 08:56:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 20 Sep 2023 08:56:10 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38KDuAso003398;
	Wed, 20 Sep 2023 08:56:10 -0500
Date: Wed, 20 Sep 2023 08:56:10 -0500
From: Nishanth Menon <nm@ti.com>
To: Aradhya Bhatia <a-bhatia1@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Linux Kernel List
	<linux-kernel@vger.kernel.org>,
        Linux ARM Kernel List
	<linux-arm-kernel@lists.infradead.org>,
        Devarsh Thakkar <devarsht@ti.com>, Jai Luthra <j-luthra@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: Fix HDMI Audio overlay in Makefile
Message-ID: <20230920135610.njestouho5cemdtv@sprint>
References: <20230914194139.23132-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230914194139.23132-1-a-bhatia1@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 01:11-20230915, Aradhya Bhatia wrote:
> Apply HDMI audio overlay to AM625 and AM62-LP SK-EVMs DT binaries,
> instead of leaving it in a floating state.
> 
> Fixes: b50ccab9e07c ("arm64: dts: ti: am62x-sk: Add overlay for HDMI audio")
> Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>

Can you acknowledge Rob for the report and provide appropriate tags?
> ---
>  arch/arm64/boot/dts/ti/Makefile | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index e7b8e2e7f083..77aa44c9663b 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -9,6 +9,8 @@
>  # alphabetically.
>  
>  # Boards with AM62x SoC
> +k3-am625-sk-hdmi-audio-dtbs := k3-am625-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
> +k3-am62-lp-sk-hdmi-audio-dtbs := k3-am62-lp-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-phyboard-lyra-rdk.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-sk.dtb
> @@ -19,7 +21,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-dahlia.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-dev.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-yavia.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk.dtb
> -dtb-$(CONFIG_ARCH_K3) += k3-am62x-sk-hdmi-audio.dtbo
> +dtb-$(CONFIG_ARCH_K3) += k3-am625-sk-hdmi-audio.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk-hdmi-audio.dtb
>  
>  # Boards with AM62Ax SoC
>  dtb-$(CONFIG_ARCH_K3) += k3-am62a7-sk.dtb
> -- 
> 2.40.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

