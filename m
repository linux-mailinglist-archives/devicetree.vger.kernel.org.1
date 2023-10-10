Return-Path: <devicetree+bounces-7091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAEE7BF210
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 07:03:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86B091C20A0B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 05:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13426EDC;
	Tue, 10 Oct 2023 05:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607917F0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:03:18 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D43D6A4
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 22:03:16 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qq4tm-0000T0-HR; Tue, 10 Oct 2023 07:03:14 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qq4tl-000ZpN-6X; Tue, 10 Oct 2023 07:03:13 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qq4tl-00DfcX-2k; Tue, 10 Oct 2023 07:03:13 +0200
Date: Tue, 10 Oct 2023 07:03:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	"Paul J. Murphy" <paul.j.murphy@intel.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	open list <linux-kernel@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/5] media: dt-bindings: media: imx335: Add supply
 bindings
Message-ID: <20231010050313.52e3vtdhrizb5sgr@pengutronix.de>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
 <20231010005126.3425444-2-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010005126.3425444-2-kieran.bingham@ideasonboard.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23-10-10, Kieran Bingham wrote:
> Add the bindings for the supply references used on the IMX335.
> 
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  .../bindings/media/i2c/sony,imx335.yaml          | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> index a167dcdb3a32..1863b5608a5c 100644
> --- a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> @@ -32,6 +32,15 @@ properties:
>      description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.25MHz
>      maxItems: 1
>  
> +  avdd-supply:
> +    description: Analog power supply (2.9V)
> +
> +  ovdd-supply:
> +    description: Interface power supply (1.8V)
> +
> +  dvdd-supply:
> +    description: Digital power supply (1.2V)
> +
>    reset-gpios:
>      description: Reference to the GPIO connected to the XCLR pin, if any.
>      maxItems: 1
> @@ -60,6 +69,9 @@ required:
>    - compatible
>    - reg
>    - clocks
> +  - avdd-supply
> +  - ovdd-supply
> +  - dvdd-supply
>    - port
>  
>  additionalProperties: false
> @@ -79,6 +91,10 @@ examples:
>              assigned-clock-parents = <&imx335_clk_parent>;
>              assigned-clock-rates = <24000000>;
>  
> +            avdd-supply = <&camera_vdda_2v9>;
> +            ovdd-supply = <&camera_vddo_1v8>;
> +            dvdd-supply = <&camera_vddd_1v2>;
> +
>              port {
>                  imx335: endpoint {
>                      remote-endpoint = <&cam>;
> -- 
> 2.34.1
> 
> 
> 

