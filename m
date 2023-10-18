Return-Path: <devicetree+bounces-9483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D5F7CD37B
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 07:21:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 025AC2817F7
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 05:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5EE2F2B;
	Wed, 18 Oct 2023 05:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F3F43112
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 05:21:02 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 38B9CBA;
	Tue, 17 Oct 2023 22:21:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 843818027;
	Wed, 18 Oct 2023 05:21:00 +0000 (UTC)
Date: Wed, 18 Oct 2023 08:20:59 +0300
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh@kernel.org>
Cc: Andrew Davis <afd@ti.com>,
	=?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm: dts: omap: Apply am57xx-idk overlays to base dtbs
Message-ID: <20231018052059.GJ34982@atomide.com>
References: <20231010211925.1629653-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010211925.1629653-1-robh@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Rob Herring <robh@kernel.org> [231011 00:19]:
> DT overlays in tree need to be applied to a base DTB to validate they
> apply, to run schema checks on them, and to catch any errors at compile
> time.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Only test applying overlays when building all DTBs

Andrew, any comments or care to ack?

Regards,

Tony

> ---
>  arch/arm/boot/dts/ti/omap/Makefile | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/ti/omap/Makefile b/arch/arm/boot/dts/ti/omap/Makefile
> index d2b590004fed..d6ee4a247100 100644
> --- a/arch/arm/boot/dts/ti/omap/Makefile
> +++ b/arch/arm/boot/dts/ti/omap/Makefile
> @@ -129,6 +129,16 @@ dtb-$(CONFIG_SOC_AM43XX) += \
>  am57xx-evm-dtbs := am57xx-beagle-x15.dtb am57xx-evm.dtbo
>  am57xx-evm-reva3-dtbs := am57xx-beagle-x15-revc.dtb am57xx-evm.dtbo
>  
> +am571x-idk-overlays-dtbs := am571x-idk.dtb \
> +	am571x-idk-touchscreen.dtbo am57xx-idk-lcd-osd101t2587.dtbo
> +am572x-idk-overlays-dtbs := am572x-idk.dtb \
> +	am572x-idk-touchscreen.dtbo am57xx-idk-lcd-osd101t2045.dtbo
> +
> +# Build time test only, enabled by CONFIG_OF_ALL_DTBS
> +dtb- += \
> +	am571x-idk-overlays.dtb \
> +	am572x-idk-overlays.dtb
> +
>  dtb-$(CONFIG_SOC_DRA7XX) += \
>  	am57xx-beagle-x15.dtb \
>  	am57xx-beagle-x15-revb1.dtb \
> -- 
> 2.42.0
> 

