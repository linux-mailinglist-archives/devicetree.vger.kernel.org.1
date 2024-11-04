Return-Path: <devicetree+bounces-118808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 433639BB94F
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 16:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 114D72825E2
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A0D139CFA;
	Mon,  4 Nov 2024 15:46:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A8270816
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730735178; cv=none; b=JztGT00aBSBmSzQ6kOFpZn/lzaqMUttDJW9YLTE+JMhJsUl9RSF1HIwbOJxg3yF6Z7IW5UQ/rDTFf0uoiAFwLM2iiCC0Bmy8aZgEPx6QieyvAvv8brI8PyHcie0zSAIjdCNJjV2AMEbHOG6/98mVbDh/t6J7stRqMWN/DO1x2mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730735178; c=relaxed/simple;
	bh=QAJdDZFfeKebQ8XuBArUKttiwqQuGrseeLwKbmISSA0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UvDaVYvyBHKlm5SEN6hjKXoigQ7oLYiFoMXWNOYgmiiLIY7wH80D9k0NkwNtjdD0PJKrgiNaP/TIbdion5Ui4RjGu5bJVYIk1iEuNCWofzbPXKy0mIs5Bfjnb+z2sKfZwW6hTkQP1ZKam37EwlbMWuMM9wGoD3VN45xvDg655B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t7zHM-0007wV-Fl; Mon, 04 Nov 2024 16:46:08 +0100
Message-ID: <2d950234-b71f-4879-86f9-e36086914e88@pengutronix.de>
Date: Mon, 4 Nov 2024 16:46:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif
 fallback
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: marex@denx.de, andreas@kemnade.info, kernel@pengutronix.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Fabio Estevam <festevam@denx.de>
References: <20241101135406.47836-1-festevam@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241101135406.47836-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 01.11.24 14:54, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx6sx.dtsi has the following lcdif entries:
> 
> compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
> 
> This causes the following dt-schema warning:
> 
> ['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long
> 
> To keep DT compatibility, document 'fsl,imx28-lcdif' as a possible
> 'fsl,imx6sx-lcdif' fallback.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Changes since v3:
> - Also update the example.
> 
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 8e3a98aeec32..aa3204b6aff9 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -19,7 +19,6 @@ properties:
>        - enum:
>            - fsl,imx23-lcdif
>            - fsl,imx28-lcdif
> -          - fsl,imx6sx-lcdif
>            - fsl,imx8mp-lcdif
>            - fsl,imx93-lcdif
>        - items:
> @@ -32,6 +31,10 @@ properties:
>                - fsl,imx8mn-lcdif
>                - fsl,imx8mq-lcdif
>            - const: fsl,imx6sx-lcdif
> +      - items:
> +          - enum:
> +              - fsl,imx6sx-lcdif
> +          - const: fsl,imx28-lcdif
>  
>    reg:
>      maxItems: 1
> @@ -182,7 +185,7 @@ examples:
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
>      display-controller@2220000 {
> -        compatible = "fsl,imx6sx-lcdif";
> +        compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
>          reg = <0x02220000 0x4000>;
>          interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
>          clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

