Return-Path: <devicetree+bounces-140714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8C7A1B187
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 09:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC8E71886C77
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 08:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B713218ABB;
	Fri, 24 Jan 2025 08:20:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E88F14A0A3;
	Fri, 24 Jan 2025 08:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737706842; cv=none; b=EZ1+5GnaP2HgBIF+VRIJTReyLCSX3jip36ZpAFk1eKbFA6DJd0+x497rXqRjfLq+g9P2zJUUnhxE9ly4kzJUoU3zdJo87l4YvfBBwUj+hXbBtGUMj7/zSp47IeBcoIOmP5awrWCV/e8qjF/sQ2+MEF59r6ZdP4wgx2P8mSx2v+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737706842; c=relaxed/simple;
	bh=RUeIxoL2LhSN2oSCmVAHYq+hVEU5DNCk2R/8TAnEkhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EJh7UErmgeS3LpuUyVMTWgSOt/iV7nIqjC+pCClQW3hRuYalnYuaPtvdsG230WrWgIfymThbvOnACGTyKsTK1dtKiRulLcEUch9vwFO69hUV9khy6F7LXIk9JbEQvKTmwo2igjet8yu1sOJptkSVx9JfoxcBAfxTin+dvhzAffY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 350E2C4CED2;
	Fri, 24 Jan 2025 08:20:41 +0000 (UTC)
Date: Fri, 24 Jan 2025 09:20:38 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/5] arm64: dts: ti: k3-am62a-wakeup: Add ddr-pmctrl,
 canuart-wake
Message-ID: <20250124-spicy-mighty-worm-ece42c@krzk-bin>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-4-515d56edc35e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-4-515d56edc35e@baylibre.com>

On Wed, Jan 22, 2025 at 11:24:35AM +0100, Markus Schneider-Pargmann wrote:
> Within the wkup-conf register range there are ddr-pmctrl and
> canuart-wake control registers. Add dedicated subnodes for these.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
> index 0b1dd5390cd3f42b0ec56bab042388722b4c22a1..a9bcda212c99d2f7669100ca29459eb13172da3e 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
> @@ -36,6 +36,16 @@ usb1_phy_ctrl: syscon@4018 {
>  			compatible = "ti,am62-usb-phy-ctrl", "syscon";
>  			reg = <0x4018 0x4>;
>  		};
> +
> +		ddr_pmctrl: syscon@80d0 {
> +			compatible = "ti,am62-ddr-pmctrl", "syscon";
> +			reg = <0x80d0 0x4>;

No, why do you export single registers? Entire device is syscon, not
single register.

Best regards,
Krzysztof


