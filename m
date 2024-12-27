Return-Path: <devicetree+bounces-134382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 670A29FD583
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:18:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09D2C3A464F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5240C1F63C9;
	Fri, 27 Dec 2024 15:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGCV7k85"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC01B6CFB;
	Fri, 27 Dec 2024 15:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735312728; cv=none; b=s7Za9/HZjYtn56+EJOF4gOz/rvuOnDzkCzJky9H+OF9gvpc0LIXd6TEJr2/osRpLUindWTeszw4zeu7dAjhmmYT1RG3IcCMWkD5py68KXTMYyR07nOViU35Gf9d9Cg1+l7SD0bWdROgcMg4wEGiZt56eJI1UgSwUS4c0rKuvuUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735312728; c=relaxed/simple;
	bh=IeeczP30L+JhJs0l+pjv1ZQkEXJAq4Amm+GIyITjjtg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=DJJOvU0NzSvrt9SUu6wUiX+y/mIodZwi43QEGpzYwzh7pLadE7son/hAx4O5aSiM7mNjR9bXzj96eFgCjf9gsXrZItf3obi7Dkq1QGf/8mvgLDUHgjqcKK5ktX2jEsf9AbRkfoLs8ujtjm+6kN+XV//Q8b3nQDCui/YmoKD5kIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGCV7k85; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50F85C4CED0;
	Fri, 27 Dec 2024 15:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312727;
	bh=IeeczP30L+JhJs0l+pjv1ZQkEXJAq4Amm+GIyITjjtg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=jGCV7k85TPBSjYwuAJP7uCjnbH74LtFgpHS9xgWFLkX1Vnrv/9S9ATlJCktdBtJE6
	 UMql9ePqFgwW8f7P8xHfcs7gYDXncODZQIqR8DEtchoxkQNmKovSR28sUi+nyz/lqc
	 ZCgTMFNLs/ZCSE51sg2kzc6P/GqiVORUwdkKW8D1JrEYj7R5DcHVkHVFiQVk0xxsmN
	 mNPDK0RuKdgvTKGaVkbSsqTHnvIXMlgbDUsfuGO5EYW1/Xd0OlAf4sraxLTTrCRsRp
	 gvNLRWQkT5it/PGNZ16oNx7tS7kfHiASOp8eTU+MXF7oAPFnHJinlE4/DwlPxzLoJH
	 q0WlG45fD+gzw==
Date: Fri, 27 Dec 2024 09:18:45 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
To: Chen-Yu Tsai <wenst@chromium.org>
In-Reply-To: <20241224084839.2904335-1-wenst@chromium.org>
References: <20241224084839.2904335-1-wenst@chromium.org>
Message-Id: <173531253082.3886317.9089734959024871009.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: mediatek: Drop MT8192
 Chromebook variants that never shipped


On Tue, 24 Dec 2024 16:48:37 +0800, Chen-Yu Tsai wrote:
> The Hayato rev5 sku2 and Spherion rev4 variants were designed in
> anticipation of shortages of the headphone codec. This never happened.
> As far as our records show: the variants were never produced or
> shipped, and no such devices were deployed to any lab.
> 
> Drop them.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v1:
> - none
> 
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 11 -----------
>  1 file changed, 11 deletions(-)
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


New warnings running 'make CHECK_DTBS=y mediatek/mt8192-asurada-hayato-r5-sku2.dtb mediatek/mt8192-asurada-spherion-r4.dtb' for 20241224084839.2904335-1-wenst@chromium.org:

make[3]: *** No rule to make target 'arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dtb'.
make[2]: *** [scripts/Makefile.build:440: arch/arm64/boot/dts/mediatek] Error 2
make[2]: Target 'arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1463: mediatek/mt8192-asurada-hayato-r5-sku2.dtb] Error 2
make[3]: *** No rule to make target 'arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dtb'.
make[2]: *** [scripts/Makefile.build:440: arch/arm64/boot/dts/mediatek] Error 2
make[2]: Target 'arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1463: mediatek/mt8192-asurada-spherion-r4.dtb] Error 2
make: *** [Makefile:251: __sub-make] Error 2
make: Target 'mediatek/mt8192-asurada-hayato-r5-sku2.dtb' not remade because of errors.
make: Target 'mediatek/mt8192-asurada-spherion-r4.dtb' not remade because of errors.






