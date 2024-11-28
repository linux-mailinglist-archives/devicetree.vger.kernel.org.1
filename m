Return-Path: <devicetree+bounces-125226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA0D9DB411
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 09:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14EC9161BE4
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 08:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED8614D44D;
	Thu, 28 Nov 2024 08:46:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cpanel.siel.si (cpanel.siel.si [46.19.9.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B5B149DF7;
	Thu, 28 Nov 2024 08:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.19.9.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732783600; cv=none; b=meTfcystuBgIJX5YAidrvAgbf5aRg4hWL99JyrNLhZKyi+iEy7PEOCTIUeO4Tw5cFuguuGE+g1RSsx5EM3KAJj/K+I5MVk72DIGbbYq2R6n6N7sPGd0qrpZh7H7df16MueGDuD+aqc8RpL0pYIJF1e1sTNthE+oODy4UjzcnmaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732783600; c=relaxed/simple;
	bh=QrLzs/rcELysx/e/M3L4W/sjcPuvNI9J5sbyihVA6o4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ak9T2qWlmN5/ZQVzfdlG6mZ27zXHZcFxeSplnyT5Vvw9gagNKJg4zZxCXQmsHgyxwH0+KBYGl1tFP06ICk91ez2jF9BqXZlir+VEc1mTr5TCd6c9J6wd160cdkziamik2XtOoRLD+4sjHLiQBKjbXHExCOiZWI9z69a6ZLHbXh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com; spf=pass smtp.mailfrom=norik.com; arc=none smtp.client-ip=46.19.9.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=norik.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=norik.com
Received: from [89.212.21.243] (port=39042 helo=[192.168.69.52])
	by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.2)
	(envelope-from <andrej.picej@norik.com>)
	id 1tGaAW-00Btos-25;
	Thu, 28 Nov 2024 09:46:36 +0100
Message-ID: <3b5768e5-dcb6-436d-837c-418676e13b2e@norik.com>
Date: Thu, 28 Nov 2024 09:46:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: drm/bridge: ti-sn65dsi83: Add optional
 property ti,lvds-vcom
To: Rob Herring <robh@kernel.org>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 marex@denx.de, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
References: <20241127103031.1007893-1-andrej.picej@norik.com>
 <20241127103031.1007893-2-andrej.picej@norik.com>
 <20241127151630.GA3515396-robh@kernel.org>
Content-Language: en-US
From: Andrej Picej <andrej.picej@norik.com>
Autocrypt: addr=andrej.picej@norik.com; keydata=
 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
 xtT/8OxBOVSHvA==
In-Reply-To: <20241127151630.GA3515396-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi Rob,

On 27. 11. 24 16:16, Rob Herring wrote:
> On Wed, Nov 27, 2024 at 11:30:29AM +0100, Andrej Picej wrote:
>> From: Janine Hagemann <j.hagemann@phytec.de>
>>
>> Add an optional property to change LVDS output voltage. This depends on
>> the connected display specifications. With this property we directly set
>> the LVDS_VCOM (0x19) register.
>> Better register property mapping would be quite tricky. Please check
>> bridge's datasheet for details on how register values set the LVDS
>> data lines and LVDS clock output voltage.
>>
>> Signed-off-by: Janine Hagemann <j.hagemann@phytec.de>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>>   .../bindings/display/bridge/ti,sn65dsi83.yaml      | 14 +++++++++++++-
>>   1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>> index 48a97bb3e2e0..5b2c0c281824 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>> @@ -58,6 +58,12 @@ properties:
>>                     - const: 2
>>                     - const: 3
>>                     - const: 4
>> +              ti,lvds-vcom:
>> +                $ref: /schemas/types.yaml#/definitions/uint32
>> +                description: LVDS output voltage configuration. This defines
>> +                  LVDS_VCOM (0x19) register value. Check bridge's datasheet for
>> +                  details on how register values set the LVDS data lines and
>> +                  LVDS clock output voltage.
> 
> Constraints? 0 - 2^32 are all valid values?

Not really, only first 6 bits, which also means that this can be uint8 
then. Will fix with other issues.

> 
>>   
>>         port@1:
>>           $ref: /schemas/graph.yaml#/$defs/port-base
>> @@ -78,6 +84,12 @@ properties:
>>                     - const: 2
>>                     - const: 3
>>                     - const: 4
>> +              ti,lvds-vcom:
>> +                $ref: /schemas/types.yaml#/definitions/uint32
>> +                description: LVDS output voltage configuration. This defines
>> +                  LVDS_VCOM (0x19) register value. Check bridge's datasheet for
>> +                  details on how register values set the LVDS data lines and
>> +                  LVDS clock output voltage.
> 
> Never good to just have 2 copies of the same thing. Move the whole port
> schema to a $defs entry and add the property there. Then just $ref it:
> 
>    port@0:
>      description: Video port for MIPI DSI Channel-A input
>      $ref: '#/$defs/dsi-port'
> 
> 
> $defs:
>    dsi-port:
>      $ref: /schemas/graph.yaml#/$defs/port-base
>      unevaluatedProperties: false
>      description: Video port for MIPI DSI inputs
> 
>      properties:
>        endpoint:
>          $ref: /schemas/media/video-interfaces.yaml#
>          unevaluatedProperties: false
> 
>          properties:
>            data-lanes:
>              description: array of physical DSI data lane indexes.
>              minItems: 1
>              items:
>                - const: 1
>                - const: 2
>                - const: 3
>                - const: 4
> 

Ok will do it like this + just noticed that we are adding this under 
MIPI DSI port, and not LVDS output port for which these property is 
meant for. Will move it there.

Thanks. Best regards,
Andrej

