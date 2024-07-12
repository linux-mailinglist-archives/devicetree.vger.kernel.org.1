Return-Path: <devicetree+bounces-85341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A492FB97
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 15:40:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 053341F2243B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 13:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F85516F904;
	Fri, 12 Jul 2024 13:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju8ZnVSi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0642158DC1
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 13:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720791653; cv=none; b=W1YzpB9EWWpIHZAgmzzQTK+RY6qy9lYCqHgIG63FXvmfEFEKf4iPhOvNi3pAhD67Xhb5klJzHmsGrX9EsIv1rI0T+9RBn9iPghl0vRkdAP1EbAHjh2u69r3lAp8K0ylQ6QKFdHY5VrZ2Rf0/ZFEonFFrJUPUD0uWwgWdxNFeQkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720791653; c=relaxed/simple;
	bh=VLtfSMeoeADhEa4pp2a9bKAWS5qmH6rruyYG7N1rxbc=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=bCaZpxd6v04N07dZ3U8Rtn4SFG605PZ64q0tOAjfd+BT7PD7D2DpVOJoPX2/onVUA3spS6DoR/hPJbHZq9+0v5aI2EHOpVehdq7fEKPH+vCeiP/W+f7a7vzMk3CFzoL7KMeuTAi919QGh5Iveb2Pb6BiiqeNU1X1MMELQxEowb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju8ZnVSi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F488C4AF0E;
	Fri, 12 Jul 2024 13:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720791652;
	bh=VLtfSMeoeADhEa4pp2a9bKAWS5qmH6rruyYG7N1rxbc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=ju8ZnVSiadtnkc45Xl8j6Fdh2MTKZ7YllkAmd6CGPL4rmcJ5DyVkMlmfXtRUhtKBv
	 sly30jWVDxeFWHCvj5tucCeIJ60HMWLfKZweAW1ynB39uMTMRbaRdC4vGj93y8Q581
	 bBO3BUHuENR2CIVt5ktJ6JZsvVP4COa8ynJnIVsLAmkQr886dsJAMo4mJTw1kKnHkr
	 8CSJPhJ2DBiK6+01ZZ4VfXhf3g/TAx2d8AaOj0Ldk+qvA18MSyhB69G+d6nxqGdDuK
	 p582nuqp/R7goChQrnmTtmM/Gmay6NcTn6Bdt8xbbhUFbcEgQF5/gDE3QtiNs+De5O
	 I26FKAjSjK71w==
Date: Fri, 12 Jul 2024 07:40:51 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: krzk+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>
References: <20240711210526.40448-1-naoki@radxa.com>
Message-Id: <172079161064.585998.17732026644627123754.robh@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0


On Fri, 12 Jul 2024 06:05:25 +0900, FUKAUMI Naoki wrote:
> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3288 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240711210526.40448-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtb: /: compatible: 'oneOf' conditional failed, one must be fixed:
	['radxa,rockpi-e', 'rockchip,rk3328'] is too short
	'vamrs,ficus' was expected
	'vamrs,rock960' was expected
	'amarula,vyasa-rk3288' was expected
	'radxa,rockpi-e' is not one of ['anbernic,rg351m', 'anbernic,rg351v']
	'radxa,rockpi-e' is not one of ['anbernic,rg353p', 'anbernic,rg353ps', 'anbernic,rg353v', 'anbernic,rg353vs', 'anbernic,rg503', 'anbernic,rg-arc-d', 'anbernic,rg-arc-s']
	'armsom,sige7' was expected
	'asus,rk3288-tinker' was expected
	'asus,rk3288-tinker-s' was expected
	'azw,beelink-a1' was expected
	'mundoreader,bq-curie2' was expected
	'mundoreader,bq-edison2qc' was expected
	'chipspark,popmetal-rk3288' was expected
	'chipspark,rayeager-px2' was expected
	'radxa,rockpi-e' is not one of ['coolpi,pi-cm5-evb']
	'coolpi,pi-4b' was expected
	'edgeble,neural-compute-module-2-io' was expected
	'edgeble,neural-compute-module-6a-io' was expected
	'elgin,rv1108-r1' was expected
	'embedfire,lubancat-1' was expected
	'embedfire,lubancat-2' was expected
	'engicam,px30-core-ctouch2' was expected
	'engicam,px30-core-ctouch2-of10' was expected
	'engicam,px30-core-edimm2.2' was expected
	'radxa,rockpi-e' is not one of ['firefly,firefly-rk3288', 'firefly,firefly-rk3288-beta']
	'firefly,firefly-rk3288-reload' was expected
	'firefly,firefly-rk3399' was expected
	'firefly,roc-rk3308-cc' was expected
	'firefly,roc-rk3328-cc' was expected
	'firefly,roc-rk3328-pc' was expected
	'radxa,rockpi-e' is not one of ['firefly,roc-rk3399-pc', 'firefly,roc-rk3399-pc-mezzanine']
	'radxa,rockpi-e' is not one of ['firefly,roc-rk3399-pc-plus']
	'firefly,rk3566-roc-pc' was expected
	'firefly,rk3568-roc-pc' was expected
	'radxa,rockpi-e' is not one of ['forlinx,ok3588-c']
	'radxa,rockpi-e' is not one of ['friendlyarm,nanopi-r2c', 'friendlyarm,nanopi-r2c-plus', 'friendlyarm,nanopi-r2s']
	'radxa,rockpi-e' is not one of ['friendlyarm,nanopc-t4', 'friendlyarm,nanopi-m4', 'friendlyarm,nanopi-m4b', 'friendlyarm,nanopi-neo4', 'friendlyarm,nanopi-r4s', 'friendlyarm,nanopi-r4s-enterprise']
	'radxa,rockpi-e' is not one of ['friendlyarm,nanopi-r5c', 'friendlyarm,nanopi-r5s']
	'radxa,rockpi-e' is not one of ['friendlyarm,nanopi-r6c', 'friendlyarm,nanopi-r6s']
	'friendlyarm,nanopc-t6' was expected
	'radxa,rockpi-e' is not one of ['friendlyarm,cm3588-nas']
	'gameforce,chi' was expected
	'geekbuying,geekbox' was expected
	'geniatech,xpi-3128' was expected
	'google,bob-rev13' was expected
	'google,veyron-brain-rev0' was expected
	'google,veyron-fievel-rev8' was expected
	'google,gru-rev15' was expected
	'google,veyron-jaq-rev5' was expected
	'google,veyron-jerry-rev15' was expected
	'google,kevin-rev15' was expected
	'google,veyron-mickey-rev8' was expected
	'google,veyron-mighty-rev5' was expected
	'google,veyron-minnie-rev4' was expected
	'google,veyron-pinky-rev2' was expected
	'google,scarlet-rev15-sku0' was expected
	'google,scarlet-rev15-sku7' was expected
	'google,scarlet-rev15-sku2' was expected
	'google,veyron-speedy-rev9' was expected
	'google,veyron-tiger-rev8' was expected
	'haoyu,marsboard-rk3066' was expected
	'hardkernel,rk3326-odroid-go2' was expected
	'hardkernel,rk3326-odroid-go2-v11' was expected
	'hardkernel,rk3326-odroid-go3' was expected
	'rockchip,rk3568-odroid-m1' was expected
	'hugsun,x99' was expected
	'indiedroid,nova' was expected
	'radxa,rockpi-e' is not one of ['khadas,edge', 'khadas,edge-captain', 'khadas,edge-v']
	'khadas,edge2' was expected
	'kobol,helios64' was expected
	'mecer,xms6' was expected
	'leez,p710' was expected
	'radxa,rockpi-e' is not one of ['lunzn,fastrhino-r66s', 'lunzn,fastrhino-r68s']
	'mqmaker,miqi' was expected
	'neardi,lba3368' was expected
	'netxeon,r89' was expected
	'openailab,eaidk-610' was expected
	'xunlong,rk3399-orangepi' was expected
	'phytec,rk3288-pcm-947' was expected
	'pine64,pinebook-pro' was expected
	'radxa,rockpi-e' is not one of ['pine64,pinenote-v1.1', 'pine64,pinenote-v1.2']
	'pine64,pinephone-pro' was expected
	'radxa,rockpi-e' is not one of ['pine64,pinetab2-v0.1', 'pine64,pinetab2-v2.0']
	'pine64,rock64' was expected
	'radxa,rockpi-e' is not one of ['pine64,rockpro64-v2.1', 'pine64,rockpro64-v2.0']
	'radxa,rockpi-e' is not one of ['pine64,quartz64-a', 'pine64,quartz64-b']
	'pine64,quartzpro64' was expected
	'radxa,rockpi-e' is not one of ['pine64,soquartz-blade', 'pine64,soquartz-cm4io', 'pine64,soquartz-model-a']
	'radxa,rockpi-e' is not one of ['powkiddy,rgb10max3', 'powkiddy,rgb30', 'powkiddy,rk2023', 'powkiddy,x55']
	'prt,mecsbc' was expected
	'qnap,ts433' was expected
	'radxa,rockpi-e' is not one of ['radxa,cm3-io']
	'radxa,rockpi-e' is not one of ['radxa,e25']
	'radxa,rock' was expected
	'radxa,rockpi-e' is not one of ['radxa,rockpi4a', 'radxa,rockpi4a-plus', 'radxa,rockpi4b', 'radxa,rockpi4b-plus', 'radxa,rockpi4c']
	'radxa,rock-4c-plus' was expected
	'radxa,rock-4se' was expected
	'radxa,rockpi-n8' was expected
	'radxa,rockpi-n10' was expected
	'radxa,rockpis' was expected
	'radxa,rock2-square' was expected
	'radxa,rock3a' was expected
	'radxa,rock-3b' was expected
	'radxa,rock-3c' was expected
	'radxa,rock-5-itx' was expected
	'radxa,rock-5a' was expected
	'radxa,rock-5b' was expected
	'radxa,rock-s0' was expected
	'radxa,rockpi-e' is not one of ['radxa,zero-3e', 'radxa,zero-3w']
	'rikomagic,mk808' was expected
	'rockchip,rk3036-kylin' was expected
	'rockchip,px3-evb' was expected
	'rockchip,px30-evb' was expected
	'rockchip,px5-evb' was expected
	'rockchip,r88' was expected
	'rockchip,rk3036-evb' was expected
	'rockchip,rk3128-evb' was expected
	'rockchip,rk3228-evb' was expected
	'rockchip,rk3229-evb' was expected
	'radxa,rockpi-e' is not one of ['rockchip,rk3288-evb-act8846', 'rockchip,rk3288-evb-rk808']
	'rockchip,rk3308-evb' was expected
	'rockchip,rk3328-evb' was expected
	'rockchip,rk3368-evb-act8846' was expected
	'rockchip,rk3399-evb' was expected
	'rockchip,rk3399-sapphire' was expected
	'rockchip,rk3399-sapphire-excavator' was expected
	'rockchip,rk3588-evb1-v10' was expected
	'rockchip,rv1108-evb' was expected
	'rockchip,rk3588-toybrick-x0' was expected
	'tsd,px30-ringneck-haikou' was expected
	'tsd,rk3368-lion-haikou' was expected
	'tsd,rk3399-puma-haikou' was expected
	'tsd,rk3588-jaguar' was expected
	'tsd,rk3588-tiger-haikou' was expected
	'tronsmart,orion-r68-meta' was expected
	'turing,rk1' was expected
	'wolfvision,rk3568-pf5' was expected
	'radxa,rockpi-e' is not one of ['xunlong,orangepi-3b-v1.1', 'xunlong,orangepi-3b-v2.1']
	'xunlong,orangepi-5-plus' was expected
	'radxa,rockpi-e' is not one of ['xunlong,orangepi-r1-plus', 'xunlong,orangepi-r1-plus-lts']
	'xunlong,orangepi-5' was expected
	'zkmagic,a95x-z2' was expected
	'rockchip,rk3566-box-demo' was expected
	'rockchip,rk3568-evb1-v10' was expected
	'sinovoip,rk3568-bpi-r2pro' was expected
	'itead,sonoff-ihost' was expected
	'rockchip,rk3399' was expected
	'rockchip,rk3288' was expected
	'rockchip,rk3326' was expected
	'rockchip,rk3566' was expected
	'rockchip,rk3588' was expected
	'rockchip,rk3066a' was expected
	'rockchip,rk3188' was expected
	'coolpi,pi-cm5' was expected
	'rockchip,rk3588s' was expected
	'edgeble,neural-compute-module-2' was expected
	'rockchip,rk3328' is not one of ['edgeble,neural-compute-module-6a', 'edgeble,neural-compute-module-6b']
	'rockchip,rv1108' was expected
	'rockchip,rk3568' was expected
	'engicam,px30-core' was expected
	'rockchip,rk3308' was expected
	'forlinx,fet3588-c' was expected
	'friendlyarm,cm3588' was expected
	'rockchip,rk3368' was expected
	'rockchip,rk3128' was expected
	'google,bob-rev12' was expected
	'google,veyron-brain' was expected
	'google,veyron-fievel-rev7' was expected
	'google,gru-rev14' was expected
	'google,veyron-jaq-rev4' was expected
	'google,veyron-jerry-rev14' was expected
	'google,kevin-rev14' was expected
	'google,veyron-mickey-rev7' was expected
	'google,veyron-mighty-rev4' was expected
	'google,veyron-minnie-rev3' was expected
	'google,veyron-pinky' was expected
	'google,scarlet-rev15' was expected
	'google,scarlet-rev15-sku4' was expected
	'google,veyron-speedy-rev8' was expected
	'google,veyron-tiger-rev7' was expected
	'rockchip,rk3229' was expected
	'phytec,rk3288-phycore-som' was expected
	'pine64,pinenote' was expected
	'pine64,pinetab2' was expected
	'pine64,rockpro64' was expected
	'pine64,soquartz' was expected
	'radxa,cm3' was expected
	'radxa,cm3i' was expected
	'radxa,rockpi4' was expected
	'radxa,rockpi-e-v3' was expected
	'vamrs,rk3288-vmarc-som' was expected
	'vamrs,rk3399pro-vmarc-som' was expected
	'rockchip,rk3036' was expected
	'rockchip,px3' was expected
	'rockchip,px30' was expected
	'rockchip,px5' was expected
	'rockchip,rk3228' was expected
	'tsd,rk3588-tiger' was expected
	'xunlong,orangepi-3b' was expected
	'rockchip,rk3318' was expected
	'rockchip,rk3328' is not one of ['rockchip,rv1126', 'rockchip,rv1109']
	from schema $id: http://devicetree.org/schemas/arm/rockchip.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /: compatible: 'oneOf' conditional failed, one must be fixed:
	['radxa,rockpi-e-v3', 'rockchip,rk3328'] is too short
	'vamrs,ficus' was expected
	'vamrs,rock960' was expected
	'amarula,vyasa-rk3288' was expected
	'radxa,rockpi-e-v3' is not one of ['anbernic,rg351m', 'anbernic,rg351v']
	'radxa,rockpi-e-v3' is not one of ['anbernic,rg353p', 'anbernic,rg353ps', 'anbernic,rg353v', 'anbernic,rg353vs', 'anbernic,rg503', 'anbernic,rg-arc-d', 'anbernic,rg-arc-s']
	'armsom,sige7' was expected
	'asus,rk3288-tinker' was expected
	'asus,rk3288-tinker-s' was expected
	'azw,beelink-a1' was expected
	'mundoreader,bq-curie2' was expected
	'mundoreader,bq-edison2qc' was expected
	'chipspark,popmetal-rk3288' was expected
	'chipspark,rayeager-px2' was expected
	'radxa,rockpi-e-v3' is not one of ['coolpi,pi-cm5-evb']
	'coolpi,pi-4b' was expected
	'edgeble,neural-compute-module-2-io' was expected
	'edgeble,neural-compute-module-6a-io' was expected
	'elgin,rv1108-r1' was expected
	'embedfire,lubancat-1' was expected
	'embedfire,lubancat-2' was expected
	'engicam,px30-core-ctouch2' was expected
	'engicam,px30-core-ctouch2-of10' was expected
	'engicam,px30-core-edimm2.2' was expected
	'radxa,rockpi-e-v3' is not one of ['firefly,firefly-rk3288', 'firefly,firefly-rk3288-beta']
	'firefly,firefly-rk3288-reload' was expected
	'firefly,firefly-rk3399' was expected
	'firefly,roc-rk3308-cc' was expected
	'firefly,roc-rk3328-cc' was expected
	'firefly,roc-rk3328-pc' was expected
	'radxa,rockpi-e-v3' is not one of ['firefly,roc-rk3399-pc', 'firefly,roc-rk3399-pc-mezzanine']
	'radxa,rockpi-e-v3' is not one of ['firefly,roc-rk3399-pc-plus']
	'firefly,rk3566-roc-pc' was expected
	'firefly,rk3568-roc-pc' was expected
	'radxa,rockpi-e-v3' is not one of ['forlinx,ok3588-c']
	'radxa,rockpi-e-v3' is not one of ['friendlyarm,nanopi-r2c', 'friendlyarm,nanopi-r2c-plus', 'friendlyarm,nanopi-r2s']
	'radxa,rockpi-e-v3' is not one of ['friendlyarm,nanopc-t4', 'friendlyarm,nanopi-m4', 'friendlyarm,nanopi-m4b', 'friendlyarm,nanopi-neo4', 'friendlyarm,nanopi-r4s', 'friendlyarm,nanopi-r4s-enterprise']
	'radxa,rockpi-e-v3' is not one of ['friendlyarm,nanopi-r5c', 'friendlyarm,nanopi-r5s']
	'radxa,rockpi-e-v3' is not one of ['friendlyarm,nanopi-r6c', 'friendlyarm,nanopi-r6s']
	'friendlyarm,nanopc-t6' was expected
	'radxa,rockpi-e-v3' is not one of ['friendlyarm,cm3588-nas']
	'gameforce,chi' was expected
	'geekbuying,geekbox' was expected
	'geniatech,xpi-3128' was expected
	'google,bob-rev13' was expected
	'google,veyron-brain-rev0' was expected
	'google,veyron-fievel-rev8' was expected
	'google,gru-rev15' was expected
	'google,veyron-jaq-rev5' was expected
	'google,veyron-jerry-rev15' was expected
	'google,kevin-rev15' was expected
	'google,veyron-mickey-rev8' was expected
	'google,veyron-mighty-rev5' was expected
	'google,veyron-minnie-rev4' was expected
	'google,veyron-pinky-rev2' was expected
	'google,scarlet-rev15-sku0' was expected
	'google,scarlet-rev15-sku7' was expected
	'google,scarlet-rev15-sku2' was expected
	'google,veyron-speedy-rev9' was expected
	'google,veyron-tiger-rev8' was expected
	'haoyu,marsboard-rk3066' was expected
	'hardkernel,rk3326-odroid-go2' was expected
	'hardkernel,rk3326-odroid-go2-v11' was expected
	'hardkernel,rk3326-odroid-go3' was expected
	'rockchip,rk3568-odroid-m1' was expected
	'hugsun,x99' was expected
	'indiedroid,nova' was expected
	'radxa,rockpi-e-v3' is not one of ['khadas,edge', 'khadas,edge-captain', 'khadas,edge-v']
	'khadas,edge2' was expected
	'kobol,helios64' was expected
	'mecer,xms6' was expected
	'leez,p710' was expected
	'radxa,rockpi-e-v3' is not one of ['lunzn,fastrhino-r66s', 'lunzn,fastrhino-r68s']
	'mqmaker,miqi' was expected
	'neardi,lba3368' was expected
	'netxeon,r89' was expected
	'openailab,eaidk-610' was expected
	'xunlong,rk3399-orangepi' was expected
	'phytec,rk3288-pcm-947' was expected
	'pine64,pinebook-pro' was expected
	'radxa,rockpi-e-v3' is not one of ['pine64,pinenote-v1.1', 'pine64,pinenote-v1.2']
	'pine64,pinephone-pro' was expected
	'radxa,rockpi-e-v3' is not one of ['pine64,pinetab2-v0.1', 'pine64,pinetab2-v2.0']
	'pine64,rock64' was expected
	'radxa,rockpi-e-v3' is not one of ['pine64,rockpro64-v2.1', 'pine64,rockpro64-v2.0']
	'radxa,rockpi-e-v3' is not one of ['pine64,quartz64-a', 'pine64,quartz64-b']
	'pine64,quartzpro64' was expected
	'radxa,rockpi-e-v3' is not one of ['pine64,soquartz-blade', 'pine64,soquartz-cm4io', 'pine64,soquartz-model-a']
	'radxa,rockpi-e-v3' is not one of ['powkiddy,rgb10max3', 'powkiddy,rgb30', 'powkiddy,rk2023', 'powkiddy,x55']
	'prt,mecsbc' was expected
	'qnap,ts433' was expected
	'radxa,rockpi-e-v3' is not one of ['radxa,cm3-io']
	'radxa,rockpi-e-v3' is not one of ['radxa,e25']
	'radxa,rock' was expected
	'radxa,rockpi-e-v3' is not one of ['radxa,rockpi4a', 'radxa,rockpi4a-plus', 'radxa,rockpi4b', 'radxa,rockpi4b-plus', 'radxa,rockpi4c']
	'radxa,rock-4c-plus' was expected
	'radxa,rock-4se' was expected
	'radxa,rockpi-e' was expected
	'radxa,rockpi-n8' was expected
	'radxa,rockpi-n10' was expected
	'radxa,rockpis' was expected
	'radxa,rock2-square' was expected
	'radxa,rock3a' was expected
	'radxa,rock-3b' was expected
	'radxa,rock-3c' was expected
	'radxa,rock-5-itx' was expected
	'radxa,rock-5a' was expected
	'radxa,rock-5b' was expected
	'radxa,rock-s0' was expected
	'radxa,rockpi-e-v3' is not one of ['radxa,zero-3e', 'radxa,zero-3w']
	'rikomagic,mk808' was expected
	'rockchip,rk3036-kylin' was expected
	'rockchip,px3-evb' was expected
	'rockchip,px30-evb' was expected
	'rockchip,px5-evb' was expected
	'rockchip,r88' was expected
	'rockchip,rk3036-evb' was expected
	'rockchip,rk3128-evb' was expected
	'rockchip,rk3228-evb' was expected
	'rockchip,rk3229-evb' was expected
	'radxa,rockpi-e-v3' is not one of ['rockchip,rk3288-evb-act8846', 'rockchip,rk3288-evb-rk808']
	'rockchip,rk3308-evb' was expected
	'rockchip,rk3328-evb' was expected
	'rockchip,rk3368-evb-act8846' was expected
	'rockchip,rk3399-evb' was expected
	'rockchip,rk3399-sapphire' was expected
	'rockchip,rk3399-sapphire-excavator' was expected
	'rockchip,rk3588-evb1-v10' was expected
	'rockchip,rv1108-evb' was expected
	'rockchip,rk3588-toybrick-x0' was expected
	'tsd,px30-ringneck-haikou' was expected
	'tsd,rk3368-lion-haikou' was expected
	'tsd,rk3399-puma-haikou' was expected
	'tsd,rk3588-jaguar' was expected
	'tsd,rk3588-tiger-haikou' was expected
	'tronsmart,orion-r68-meta' was expected
	'turing,rk1' was expected
	'wolfvision,rk3568-pf5' was expected
	'radxa,rockpi-e-v3' is not one of ['xunlong,orangepi-3b-v1.1', 'xunlong,orangepi-3b-v2.1']
	'xunlong,orangepi-5-plus' was expected
	'radxa,rockpi-e-v3' is not one of ['xunlong,orangepi-r1-plus', 'xunlong,orangepi-r1-plus-lts']
	'xunlong,orangepi-5' was expected
	'zkmagic,a95x-z2' was expected
	'rockchip,rk3566-box-demo' was expected
	'rockchip,rk3568-evb1-v10' was expected
	'sinovoip,rk3568-bpi-r2pro' was expected
	'itead,sonoff-ihost' was expected
	'rockchip,rk3399' was expected
	'rockchip,rk3288' was expected
	'rockchip,rk3326' was expected
	'rockchip,rk3566' was expected
	'rockchip,rk3588' was expected
	'rockchip,rk3066a' was expected
	'rockchip,rk3188' was expected
	'coolpi,pi-cm5' was expected
	'rockchip,rk3588s' was expected
	'edgeble,neural-compute-module-2' was expected
	'rockchip,rk3328' is not one of ['edgeble,neural-compute-module-6a', 'edgeble,neural-compute-module-6b']
	'rockchip,rv1108' was expected
	'rockchip,rk3568' was expected
	'engicam,px30-core' was expected
	'rockchip,rk3308' was expected
	'forlinx,fet3588-c' was expected
	'friendlyarm,cm3588' was expected
	'rockchip,rk3368' was expected
	'rockchip,rk3128' was expected
	'google,bob-rev12' was expected
	'google,veyron-brain' was expected
	'google,veyron-fievel-rev7' was expected
	'google,gru-rev14' was expected
	'google,veyron-jaq-rev4' was expected
	'google,veyron-jerry-rev14' was expected
	'google,kevin-rev14' was expected
	'google,veyron-mickey-rev7' was expected
	'google,veyron-mighty-rev4' was expected
	'google,veyron-minnie-rev3' was expected
	'google,veyron-pinky' was expected
	'google,scarlet-rev15' was expected
	'google,scarlet-rev15-sku4' was expected
	'google,veyron-speedy-rev8' was expected
	'google,veyron-tiger-rev7' was expected
	'rockchip,rk3229' was expected
	'phytec,rk3288-phycore-som' was expected
	'pine64,pinenote' was expected
	'pine64,pinetab2' was expected
	'pine64,rockpro64' was expected
	'pine64,soquartz' was expected
	'radxa,cm3' was expected
	'radxa,cm3i' was expected
	'radxa,rockpi4' was expected
	'radxa,rockpi-e-v3' was expected
	'vamrs,rk3288-vmarc-som' was expected
	'vamrs,rk3399pro-vmarc-som' was expected
	'rockchip,rk3036' was expected
	'rockchip,px3' was expected
	'rockchip,px30' was expected
	'rockchip,px5' was expected
	'rockchip,rk3228' was expected
	'tsd,rk3588-tiger' was expected
	'xunlong,orangepi-3b' was expected
	'rockchip,rk3318' was expected
	'rockchip,rk3328' is not one of ['rockchip,rv1126', 'rockchip,rv1109']
	from schema $id: http://devicetree.org/schemas/arm/rockchip.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






