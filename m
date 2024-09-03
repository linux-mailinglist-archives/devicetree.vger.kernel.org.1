Return-Path: <devicetree+bounces-99591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A3896A4DC
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 18:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6514328745E
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 16:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40C4B18BC08;
	Tue,  3 Sep 2024 16:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="LwByXBiT"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D07C17A90F
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 16:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725382327; cv=none; b=B6+wKomSnI6rp8BcoEpOVO7OtTye+eU7Rt2xnQ1sUqFOwYYi9gHLXkL3qvBoj3QspnB3yVcFrbyjETlUXLSbAB3LjOQ/q/f7t+cMNblDsfOTglb+s3ECveczU1C7YDFUw+hENSEq+B9RYapMsTp2ifHvbxVB6Eqf3zh77oD/cXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725382327; c=relaxed/simple;
	bh=MGSlVRj2RBgbpKkYY81SPh4swBS6ajry8Y2hqDy6CRo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FOHrxPK9wcv+0pEuP6FfVbqJEaHcLrKfF6GkkVyddg7Wev3YaVDTcszJ0Ckqui3pteUtdME8xy4cfICO0A2gWqsslJUjkgn/jQ+H2Czm0IEGevQIA4CgHdQctQ2rIC+VJqKWJAe5z+RD5nr0oc61+nm/H9KbnRHL5NAzFUCklSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=LwByXBiT; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D6C9C88365;
	Tue,  3 Sep 2024 18:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1725382318;
	bh=L9PW0zu06SOQABEZQUU7xjnR+wwFb76VQHJCYIBdo4Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LwByXBiTMrrIp23FhEn6q7M6ODzrObDSuS4by3GU3EZ4BoddIQyu2G6TmENBb6lW6
	 jbroXoqYW5whbOaF3pnXE0c/5yrBTUoiFqSLz1NhZNpD8Qrw9GXXDN2cT2I1H04Q0r
	 Jm4bONfkWGb2a3w/dZwmmi2KYmt3CfAcgFksIdqAiVimGNMWIBeHBjE3fa2rRU710m
	 He0fho571zsw3Vf7lrpdipAM74Stg6XEpNhTXZyLxtZ1Uv+SdcTlEEoowWxPzFfdVN
	 ZTYbV4YP0YEnq5tkxkwZszK8EEIr+AXVhtQi5Tm7go8gnQlDwifcKnEmbWKDhst2Iz
	 4gGeC9YptWyBw==
Message-ID: <0b97acc0-2720-4962-b3c3-bb444cf81e66@denx.de>
Date: Tue, 3 Sep 2024 18:51:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: lcdif: Document the dmas/dma-names
 properties
To: Fabio Estevam <festevam@gmail.com>, mripard@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20240903162729.1151134-1-festevam@gmail.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240903162729.1151134-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 9/3/24 6:27 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX28 has an RX DMA channel associated with the LCDIF controller.
> 
> Document the 'dmas' and 'dma-names' properties to fix the following
> dt-schema warnings:
> 
> lcdif@80030000: 'dma-names', 'dmas' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>   .../bindings/display/fsl,lcdif.yaml           | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 0681fc49aa1b..dd462abd61f8 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -50,6 +50,14 @@ properties:
>         - const: disp_axi
>       minItems: 1
>   
> +  dmas:
> +    items:
> +      - description: DMA specifier for the RX DMA channel.
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +
>     interrupts:
>       items:
>         - description: LCDIF DMA interrupt
> @@ -156,6 +164,17 @@ allOf:
>           interrupts:
>             maxItems: 1
>   
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - fsl,imx28-lcdif

This also applies to MX23 , that one also has the support for 
command-mode LCDs which are then driven by pumping commands via DMA. I 
don't think Linux actually supports this mode of operation, but I do 
recall using it some long time ago on MX23.

