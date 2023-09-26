Return-Path: <devicetree+bounces-3564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5088F7AF47A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 52E87B20A90
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0968548E97;
	Tue, 26 Sep 2023 19:53:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDA938FAA
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:52:59 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EAADA3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:52:57 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qlE73-00038P-Fv; Tue, 26 Sep 2023 21:52:53 +0200
Message-ID: <478a5449-8811-c1de-f542-a4486bb29adb@pengutronix.de>
Date: Tue, 26 Sep 2023 21:52:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] arm64: dts: imx8mm: fix imx8mm-venice-gw72xx-0x-rpidsi
 compatible
Content-Language: en-US
To: Tim Harvey <tharvey@gateworks.com>, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
References: <20230926194410.1451940-1-tharvey@gateworks.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230926194410.1451940-1-tharvey@gateworks.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello Tim,

On 26.09.23 21:44, Tim Harvey wrote:
> Fix the imx8mm-venice-gw72xx-0x-rpidsi dt overlay compatible string
> which should be gw,imx8mm-gw72xx-0x.
> 
> Fixes: 6b4da1354fd8 ("arm64: dts: imx8mm: add imx8mm-venice-gw72xx-0x-rpidsi overlay for display")
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  .../boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso      | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso
> index e0768d408c3b..2e4156b58108 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtso
> @@ -11,7 +11,7 @@
>  /plugin/;
>  
>  &{/} {
> -	compatible = "gw,imx8mm-gw73xx-0x", "fsl,imx8mm";
> +	compatible = "gw,imx8mm-gw72xx-0x", "fsl,imx8mm";

Do you really want to fix up the compatible in the kernel device tree or was this
meant as a compatible for the overlay itself?

If it's the latter, you want to change above &{/} into / and use &{/}
only for the actual fragments below.

Cheers,
Ahmad


>  
>  	panel {
>  		compatible = "powertip,ph800480t013-idf02";

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


