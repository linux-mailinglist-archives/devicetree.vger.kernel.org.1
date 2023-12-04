Return-Path: <devicetree+bounces-21492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C08F7803D35
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 19:36:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F169B1C20A4C
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 18:36:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C33E2C867;
	Mon,  4 Dec 2023 18:36:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A73ADFF;
	Mon,  4 Dec 2023 10:36:45 -0800 (PST)
Received: from francesco-nb.int.toradex.com (31-10-206-125.static.upc.ch [31.10.206.125])
	by mail11.truemail.it (Postfix) with ESMTPA id 10075207C9;
	Mon,  4 Dec 2023 19:36:42 +0100 (CET)
Date: Mon, 4 Dec 2023 19:36:40 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>
Cc: Francesco Dolcini <francesco@dolcini.it>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: ti: add verdin am62 mallow board
Message-ID: <ZW4cONRWiRoOiaVd@francesco-nb.int.toradex.com>
References: <20231201145551.23337-1-francesco@dolcini.it>
 <20231201145551.23337-4-francesco@dolcini.it>
 <20231204181336.scm2fgfyyzpr2u7t@dimmer>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231204181336.scm2fgfyyzpr2u7t@dimmer>

Hello Nishanth,

On Mon, Dec 04, 2023 at 12:13:36PM -0600, Nishanth Menon wrote:
> On 15:55-20231201, Francesco Dolcini wrote:
> > From: Joao Paulo Goncalves <joao.goncalves@toradex.com>
> 
> [...]
> 
> > +
> > +	tpm@1 {
> > +		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
> 
> arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dtb: /bus@f0000/spi@20110000/tpm@1: failed to match any schema with compatible: ['infineon,slb9670', 'tcg,tpm_tis-spi']
> arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dtb: /bus@f0000/spi@20110000/tpm@1: failed to match any schema with compatible: ['infineon,slb9670', 'tcg,tpm_tis-spi']
> 
> We should either drop this node OR introduce bindings and later
> introduce this series.
> 
> Yes, I know there are other places where the compatible is already used
> arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts1G
> etc.. But, unfortunately, I'd rather see the binding
> Documentation/devicetree/bindings/security/tpm/tpm_tis_spi.txt
> transition over to yaml prior to picking things up. (NOTE: the same
> rules apply to TI devs as well..)

I disagree (and I also know that in the end is your call to take patches
or not and I will just accept your decision whatever it is).

What you are asking here is to not use any binding that was not already
converted from txt to yaml, I do not think it is fair to force this
decision just for TI DT files.

I'd like also to add that a conversion to yaml of this binding is in the
work [1] and this DT is compliant with it.

What's DT maintainers opinion on this matter? Rob recently provided
feedback on TPM bindings txt to yaml conversion so it should be fresh on
his mind.

Francesco

[1] https://lore.kernel.org/all/cover.1701093036.git.lukas@wunner.de/

