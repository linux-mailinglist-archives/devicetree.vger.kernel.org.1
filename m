Return-Path: <devicetree+bounces-138128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A732A0BBD4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:26:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75FE018828C7
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 388A31FBBFA;
	Mon, 13 Jan 2025 15:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH66fG07"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136431FBBF0
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 15:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736781973; cv=none; b=DFprjQkzhgcUKzyaj6Ty26Wo1eme1opI28JqdnwxeQfuXJ5vbI8ONPAShXZe4zyn0ABn31sHF9uCew0samd85+26oxT+bsVzthZS4DgLjwaSF/rId/ifOmujHuYBysPz0vHPXgQGE2vzVRJTCJQLRcC3ETZudUAWwJbc/JHTZ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736781973; c=relaxed/simple;
	bh=L1R+P/tjl2FjPXSydhuOYhhOg/TRO9pX3DOvYWouLiU=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=rqiB7HDJzuTWAJamcDGxnJRdGUSpTAoU4vMuPNiKiDxkx+P8Y6BgJS72RNw1tmMUzj0rtEXG2Bst3LV6+oOsdBFubfY7qXsTTtVawx7if9EfO2qOLosLWcx8X4sy4XeepmF4zSCoKkZk/S4PYV6otnDj78GdZGVl5qr/Cv8FfDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH66fG07; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6FD4C4CEE2;
	Mon, 13 Jan 2025 15:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736781972;
	bh=L1R+P/tjl2FjPXSydhuOYhhOg/TRO9pX3DOvYWouLiU=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=YH66fG07evs9BG5w2FWyi/UULi5Kc6C/xzyuJEs+t1yLXr9A3SC2WRyD+r1eLti8L
	 JKCf558KBfZ4ofNuTrxoc6teX/Ngah3a7dafVwV7QjINPHJY1k5WzX3w2aMFiUoRnS
	 AXn3GoOB1rn1I0H6yaNS29Azg3M4shzyP0epjuKFXwalTwAhuUBksvcNLc0ancbRwt
	 qVjeMn+fVh89+Atq8rX6806+kaAcUdndK5VWX7TqknZIe8Jeoa3zohovyMjgJ4qiLu
	 mYiw5+woiJCW/RUTtmALtfy/43CbAefFk3h8XctjfTCKTWA3//WlgU6CibP06ePvGM
	 dWShCGmkPLWkA==
Date: Mon, 13 Jan 2025 09:26:12 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org
To: "Kirill A. Korinsky" <kirill@korins.ky>
In-Reply-To: <871px910m1.wl-kirill@korins.ky>
References: <871px910m1.wl-kirill@korins.ky>
Message-Id: <173678161767.2153691.10024126463123282044.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: add HONOR MagicBook Art 14
 devicetree


On Sat, 11 Jan 2025 22:45:13 +0100, Kirill A. Korinsky wrote:
> Introduce device tree for the HONOR MagicBook Art 14, built on the
> Qualcomm Snapdragon X Elite SoC (X1E78100).
> 
> Supported features:
> 
> - Keyboard
> - Display
> - Touchpad
> - Touchscreen
> - PCIe ports (pcie4)
> - USB type-c, type-a, Magnetic webcam connector
> - Wifi (WCN7850)
> - ADSP and CDSP
> - X1 GPU
> - GPIO Keys (Lid switch)
> - Audio definition
> - UFS storage
> 
> Signed-off-by: Kirill A. Korinsky <kirill@korins.ky>
> 
> --
> wbr, Kirill
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


New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/aspeed/' for 871px910m1.wl-kirill@korins.ky:

arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-blueridge-4u.dtb: /ahb/apb/fsi@1e79b100: failed to match any schema with compatible: ['aspeed,ast2600-fsi-master', 'fsi-master']
arch/arm/boot/dts/aspeed/aspeed-bmc-inventec-starscream.dtb: /ahb/apb/dma-controller@1e79e000: failed to match any schema with compatible: ['aspeed,ast2600-udma']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bonnell.dtb: /: compatible: 'oneOf' conditional failed, one must be fixed:
	'ibm,bonnell-bmc' is not one of ['delta,ahe50dc-bmc', 'facebook,galaxy100-bmc', 'facebook,wedge100-bmc', 'facebook,wedge40-bmc', 'microsoft,olympus-bmc', 'quanta,q71l-bmc', 'tyan,palmetto-bmc', 'yadro,vesnin-bmc']
	'ibm,bonnell-bmc' is not one of ['amd,daytonax-bmc', 'amd,ethanolx-bmc', 'ampere,mtjade-bmc', 'aspeed,ast2500-evb', 'asrock,e3c246d4i-bmc', 'asrock,e3c256d4i-bmc', 'asrock,romed8hm3-bmc', 'asrock,spc621d8hm3-bmc', 'asrock,x570d4u-bmc', 'bytedance,g220a-bmc', 'facebook,cmm-bmc', 'facebook,minipack-bmc', 'facebook,tiogapass-bmc', 'facebook,yamp-bmc', 'facebook,yosemitev2-bmc', 'facebook,wedge400-bmc', 'hxt,stardragon4800-rep2-bmc', 'ibm,mihawk-bmc', 'ibm,mowgli-bmc', 'ibm,romulus-bmc', 'ibm,swift-bmc', 'ibm,witherspoon-bmc', 'ingrasys,zaius-bmc', 'inspur,fp5280g2-bmc', 'inspur,nf5280m6-bmc', 'inspur,on5263m5-bmc', 'intel,s2600wf-bmc', 'inventec,lanyang-bmc', 'lenovo,hr630-bmc', 'lenovo,hr855xg2-bmc', 'portwell,neptune-bmc', 'qcom,centriq2400-rep-bmc', 'supermicro,x11spi-bmc', 'tyan,s7106-bmc', 'tyan,s8036-bmc', 'yadro,nicole-bmc', 'yadro,vegman-n110-bmc', 'yadro,vegman-rx20-bmc', 'yadro,vegman-sx20-bmc']
	'ibm,bonnell-bmc' is not one of ['ampere,mtmitchell-bmc', 'aspeed,ast2600-evb', 'aspeed,ast2600-evb-a1', 'asus,x4tf-bmc', 'facebook,bletchley-bmc', 'facebook,catalina-bmc', 'facebook,cloudripper-bmc', 'facebook,elbert-bmc', 'facebook,fuji-bmc', 'facebook,greatlakes-bmc', 'facebook,harma-bmc', 'facebook,minerva-cmc', 'facebook,yosemite4-bmc', 'ibm,blueridge-bmc', 'ibm,everest-bmc', 'ibm,fuji-bmc', 'ibm,rainier-bmc', 'ibm,system1-bmc', 'ibm,tacoma-bmc', 'inventec,starscream-bmc', 'inventec,transformer-bmc', 'jabil,rbp-bmc', 'qcom,dc-scm-v1-bmc', 'quanta,s6q-bmc', 'ufispace,ncplite-bmc']
	'aspeed,ast2400' was expected
	'aspeed,ast2500' was expected
	from schema $id: http://devicetree.org/schemas/arm/aspeed/aspeed.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: i2c3_mux_oe_n: $nodename:0: 'i2c3_mux_oe_n' does not match '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-hog.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@63: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@64: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@65: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@66: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@67: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemitev2.dtb: /ahb/apb/video@1e700000: failed to match any schema with compatible: ['aspeed,ast2500-video-engine']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-fuji.dtb: /ahb/apb/sdc@1e740000/sdhci@1e740200: failed to match any schema with compatible: ['aspeed,ast2600-sdhci', 'sdhci']






