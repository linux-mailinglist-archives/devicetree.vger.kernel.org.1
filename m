Return-Path: <devicetree+bounces-7085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A5B7BF1B5
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 05:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C39702819EB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015BA2104;
	Tue, 10 Oct 2023 03:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="WVx4SFqe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEA3390
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 03:53:16 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 728019D;
	Mon,  9 Oct 2023 20:53:14 -0700 (PDT)
Received: from [IPV6:2405:201:2033:3002:3848:5d20:59c9:c87c] (unknown [IPv6:2405:201:2033:3002:3848:5d20:59c9:c87c])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 705013D6;
	Tue, 10 Oct 2023 05:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696909991;
	bh=4Gqs0eLo+EBbzG39UcwXadyv2NlIUjuZuyQ9YKGzG5c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WVx4SFqeA/RWgByXG8dJR/FAvRgOVKCApWuj/zhn51BQ2CkvFMaTanD909h1kzVvj
	 +tHtsVQBo0M/rRIn0D5rBPDpMsb0mbUmxR9eAy8aH0et9RoYifUI4vtQqieQHWimZ3
	 Qbki7vlMRYeal+JPLp1XtdGr/shHRGGxPMFc6VoY=
Message-ID: <4b319504-45e8-5ad6-7c7a-e503a3c98428@ideasonboard.com>
Date: Tue, 10 Oct 2023 09:23:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/5] media: dt-bindings: media: imx335: Add supply
 bindings
Content-Language: en-US
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc: "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
 <20231010005126.3425444-2-kieran.bingham@ideasonboard.com>
From: Umang Jain <umang.jain@ideasonboard.com>
In-Reply-To: <20231010005126.3425444-2-kieran.bingham@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Kieran,

Thank you for the patch

On 10/10/23 6:21 AM, Kieran Bingham wrote:
> Add the bindings for the supply references used on the IMX335.
>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

LGTM,

Reviewed-by: Umang Jain <umang.jain@ideasonboard.com>

> ---
>   .../bindings/media/i2c/sony,imx335.yaml          | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> index a167dcdb3a32..1863b5608a5c 100644
> --- a/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx335.yaml
> @@ -32,6 +32,15 @@ properties:
>       description: Clock frequency from 6 to 27 MHz, 37.125MHz, 74.25MHz
>       maxItems: 1
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
>     reset-gpios:
>       description: Reference to the GPIO connected to the XCLR pin, if any.
>       maxItems: 1
> @@ -60,6 +69,9 @@ required:
>     - compatible
>     - reg
>     - clocks
> +  - avdd-supply
> +  - ovdd-supply
> +  - dvdd-supply
>     - port
>   
>   additionalProperties: false
> @@ -79,6 +91,10 @@ examples:
>               assigned-clock-parents = <&imx335_clk_parent>;
>               assigned-clock-rates = <24000000>;
>   
> +            avdd-supply = <&camera_vdda_2v9>;
> +            ovdd-supply = <&camera_vddo_1v8>;
> +            dvdd-supply = <&camera_vddd_1v2>;
> +
>               port {
>                   imx335: endpoint {
>                       remote-endpoint = <&cam>;


