Return-Path: <devicetree+bounces-31887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B4A82CEDF
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 23:06:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E70CB1C20F10
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 22:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65E2616435;
	Sat, 13 Jan 2024 22:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="Sj1Ng4V9"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10AF168A2
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 22:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id DAF0B86EF1;
	Sat, 13 Jan 2024 23:06:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1705183587;
	bh=enZha7Iw0gW9RpadFFFdbpE81iwRLSzhId9/3yJ2jIg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Sj1Ng4V94PkiIHfdQq6aGI2pUiEs6YwNbWAYTjzt96v3BRPFmzfpvi/umcP4ffKBG
	 ryHNHawxQuxVObxOXsYnMzVaJMaB5DYL+ByNrfrBOkcmj8ZRRxy273bBRokBuJJjvR
	 ACALmL7h0tY6Y62GY9So8kpB84tJvQ44mIpAoe5ROcDNBlDhMyzrPz5IEEO/i0hPYN
	 bqT00TPsog/m33PHs3vXCXYu20h/WnrXqZ5aH5snjkaCrq6stbDwRqLAUCrEmp+T/A
	 qnZaVvowThRxjc7zTMPUit7fAZSfY3JxswRe7mJE95mkZFEgJMO6xS2Kxn5M9sdo6Z
	 BZ2GvEY+/iQvg==
Message-ID: <04c11c66-98f6-4d4e-8644-7bdf0443d4d1@denx.de>
Date: Sat, 13 Jan 2024 23:06:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: extcon: ptn5150: Describe the USB
 connector
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, cw00.choi@samsung.com
Cc: myungjoo.ham@samsung.com, robh+dt@kernel.org,
 krzysztof.kozlowski@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, shawnguo@kernel.org, hvilleneuve@dimonoff.com,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
References: <20231212112729.700987-1-festevam@gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20231212112729.700987-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 12/12/23 12:27, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> PTN5150 supports USB Type-C connector, so improve the bindings by
> allowing to describe the connector like it is done on nxp,ptn5110.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>   Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> index d5cfa32ea52d..3837da7416e9 100644
> --- a/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> +++ b/Documentation/devicetree/bindings/extcon/extcon-ptn5150.yaml
> @@ -37,6 +37,11 @@ properties:
>         GPIO pin (output) used to control VBUS. If skipped, no such control
>         takes place.
>   
> +  connector:
> +    type: object
> +    $ref: /schemas/connector/usb-connector.yaml#
> +    unevaluatedProperties: false
> +

If I read drivers/usb/roles/class.c usb_role_switch_get() implementation 
right, that function is doing an OF graph look up and expects a port {} 
subnode for that purpose. The drivers/extcon/extcon-ptn5150.c 
ptn5150_i2c_probe() calls usb_role_switch_get(), so I would expect the 
ptn5150 DT node should contain a port {} subnode, not a connector subnode.

I think that's what should be done here -- update this PTN5150 binding 
document and describe the port {} subnode. The two DT patches are not 
needed and are in fact wrong ; at least the PDK3 one breaks PDK3 USB-C 
operation as the usb_role_switch_get() look up fails in the PTN5150 
driver with that DT patch applied.

