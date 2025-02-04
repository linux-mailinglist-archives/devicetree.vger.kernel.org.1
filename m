Return-Path: <devicetree+bounces-142936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6706DA273F0
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 15:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55FAC1889156
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 14:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E135C211482;
	Tue,  4 Feb 2025 13:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="BxQz//+0"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2371206F23;
	Tue,  4 Feb 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738677355; cv=none; b=X0pHvO0xZPnKLOzMeEdt4GlS5GAQmQENLx/6EgGFrRIkzSOGneF1NO1tHfbcUINPy8/brzHrWbqJIkVNuZtP5MNTHiELsgHeQJMTDZienEh66PuZjwmO3hWouzgErkBaCMCW5Xjq7RDOEx+kxP8AfsVV4nA9RSF0OWEug+a7ffQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738677355; c=relaxed/simple;
	bh=EQUSXlFr3njl5PP9Kzw658twDaEAGGl3qA9IHHP+oso=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oKY+bOg5yGW5mIO2oghFOmgPnDgRM/12dWGsjTgWzERilQjRkx8c6Gubru8Tof7P922jbPM+tBpnL9BggsMyBWGN6tsTPdaL82hyp73AiEyLxl2tvxzYirw35MvZEIMxnuFVMd7HJuvedjg9B4zDWCqHmYiOcpGtPIzM9dr68Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=BxQz//+0; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A9324CDB;
	Tue,  4 Feb 2025 14:54:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1738677279;
	bh=EQUSXlFr3njl5PP9Kzw658twDaEAGGl3qA9IHHP+oso=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BxQz//+0Y76vAOQxeOg7tY6S3bD1oRK6+Lx/j/6HLXP8V2FlwKsRykcZzHiEaGjLx
	 raSBFCKI2PCgcEa68I1Y6fx3ZQ/EJ6TWgjeeJJeCkjjUPibTshQAVY6rTdGbtZm9W3
	 ncNd3wt4Aw1KlaPAOUXHRWxAc6qfGNmqnZG6oxNw=
Message-ID: <eb8883f2-fc34-44f5-90a9-f4b14f0c45f2@ideasonboard.com>
Date: Tue, 4 Feb 2025 15:55:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: display: ti,am65x-dss: Add support
 for AM62L DSS
To: Devarsh Thakkar <devarsht@ti.com>
Cc: praneeth@ti.com, vigneshr@ti.com, aradhya.bhatia@linux.dev,
 s-jain1@ti.com, r-donadkar@ti.com, j-choudhary@ti.com, h-shenoy@ti.com,
 jyri.sarha@iki.fi, airlied@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
 simona@ffwll.ch, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
References: <20250204061552.3720261-1-devarsht@ti.com>
 <20250204061552.3720261-2-devarsht@ti.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <20250204061552.3720261-2-devarsht@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 04/02/2025 08:15, Devarsh Thakkar wrote:
> The DSS controller on TI's AM62L SoC is an update from that on TI's
> AM625/AM65x/AM62A7 SoC. The AM62L DSS [1] only supports a single display
> pipeline using a single overlay manager, single video port and a single
> video lite pipeline which does not support scaling.
> 
> The output of video port is routed to SoC boundary via DPI interface and
> the DPI signals from the video port are also routed to DSI Tx controller
> present within the SoC.
> 
> [1]: Section 11.7 (Display Subsystem and Peripherals)
> Link : https://www.ti.com/lit/pdf/sprujb4
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Jayesh Choudhary <j-choudhary@ti.com>
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
> - Add Reviewed-by
> - s/ti,am62l,dss/ti,am62l-dss
> 
> NOTE: This patch needs to be applied on top of AM62A dt-binding fix:
> https://lore.kernel.org/all/20250203155431.2174170-1-devarsht@ti.com/
> 
>   .../bindings/display/ti/ti,am65x-dss.yaml     | 25 ++++++++++++++++++-
>   1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> index 31c4ffcb599c..f82e9a84e8a8 100644
> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> @@ -12,18 +12,29 @@ maintainers:
>     - Tomi Valkeinen <tomi.valkeinen@ti.com>
>   
>   description: |
> -  The AM625 and AM65x TI Keystone Display SubSystem with two output
> +  The AM625 and AM65x TI Keystone Display SubSystem has two output
>     ports and two video planes. In AM65x DSS, the first video port
>     supports 1 OLDI TX and in AM625 DSS, the first video port output is
>     internally routed to 2 OLDI TXes. The second video port supports DPI
>     format. The first plane is full video plane with all features and the
>     second is a "lite plane" without scaling support.
> +  The AM62A7 display subsystem has a single output port supporting DPI format
> +  although similar to AM625 and AM65x Socs, it has two video planes where first
> +  is full video plane with all features and second is a video "lite" plane which
> +  does not support scaling.

The part above doesn't belong into "add AM62L" patch. It's also quite 
confusing. "although similar to..."? Maybe drop the text "although 
similar to AM625 and AM65x Socs, ", and start a new sentence from "it"?

For the AM62L parts:

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

  Tomi

> +  The AM62L display subsystem also has a single output port which supports DPI
> +  format but it only supports single video "lite plane" which does not support
> +  scaling. The output port is routed to SoC boundary via DPI interface and same
> +  DPI signals are also routed internally to DSI Tx controller present within the
> +  SoC. Due to clocking limitations only one of the interface i.e. either DSI or
> +  DPI can be used at once.
>   
>   properties:
>     compatible:
>       enum:
>         - ti,am625-dss
>         - ti,am62a7-dss
> +      - ti,am62l-dss
>         - ti,am65x-dss
>   
>     reg:
> @@ -91,6 +102,8 @@ properties:
>             For AM625 DSS, the internal DPI output port node from video
>             port 1.
>             For AM62A7 DSS, the port is tied off inside the SoC.
> +          For AM62L DSS, the DSS DPI output port node from video port 1
> +          or DSI Tx controller node connected to video port 1.
>   
>         port@1:
>           $ref: /schemas/graph.yaml#/properties/port
> @@ -123,6 +136,16 @@ allOf:
>           ports:
>             properties:
>               port@0: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,am62l-dss
> +    then:
> +      properties:
> +        ports:
> +          properties:
> +            port@1: false
>   
>   required:
>     - compatible


