Return-Path: <devicetree+bounces-78971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE43913CCC
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 18:40:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA2FF1C20D64
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 16:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 100B21822E8;
	Sun, 23 Jun 2024 16:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="tbjaibMt"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA9727453
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 16:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719160798; cv=none; b=e6QMvgqv6bYVTULMN3K2ZGPEajFoOgSGGLZkSjOgSGEYRnhf2B+VdnwlT4lULbL/+HW98yLJbgevcXjUPavDCZxFJWwWgl4wynSvnbTdNyKFtfJ+LCbxTK26r47ZebiuZCyY1U2wuRx46rJVaqPtruL+RAOZjXmKMOVAJs6mcpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719160798; c=relaxed/simple;
	bh=2LBSfgaV2vBvnkWIc4oWRUmSEvy3nLcO1OXUzIKNh3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CYnzdQ5qtDtm4kUf/Xi2dJvgic9n1H6i977vmGUEhNcqAbScgTwZcoKFDOCpPuWT29xCSJ4LwW0Mvd3zMsSAF4MASM+zTNfmmNhgrSG4v8B9LhKCacnsJXp4nuZ3MQgXhD+0KCXNc1nNEswX6u4bdMtr3WRGOb+PL8GzFcfjK6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=tbjaibMt; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 2CE4F881BA;
	Sun, 23 Jun 2024 18:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719160793;
	bh=cAJIm4iALUU+oSZhfT9gHdhAbUilwvRjrZh76MhmM1U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tbjaibMtjtbWGQFTF9Zwq1WglMwZ5MafULWJZNIWET8+lSMJfrrIUqJLffXnynrjy
	 A8FcO1+ReT6umgdsXPj4m+KB8dXkZlm0anjauMZ9AnhGRvNg4Bh7SbgO5vKfHq4kAc
	 ATcjxJeAGSSoU9MtWDmDlJ5jglEP5oQUgAA5ahOe0P7BVVdqEPbwG7p2B71nmFQlnR
	 U4HSUzmr8jAXiaRJA0Pzuu35j2L814qpQLp1nPgTfVOowqkfs7oVoKSMrQjiLdqxLr
	 iY35ygQZXN/FoOtyf4iOg9JzXZOMu6iwwxyiPzLP917r/UHnlD/DEowUXXCNm/BmHR
	 3PFZ+VGtP3G3A==
Message-ID: <8d6bc5d3-6a21-4b90-a5f2-74b5597ba3b2@denx.de>
Date: Sun, 23 Jun 2024 16:48:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
To: Conor Dooley <conor@kernel.org>
Cc: dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, kernel@dh-electronics.com
References: <20240621155430.92894-1-marex@denx.de>
 <20240622-ruse-stock-2c2b8d0b1cfb@spud>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240622-ruse-stock-2c2b8d0b1cfb@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/22/24 1:56 PM, Conor Dooley wrote:
> On Fri, Jun 21, 2024 at 05:53:53PM +0200, Marek Vasut wrote:
>> Document default DP port preemphasis configurable via new DT property
>> "toshiba,pre-emphasis". This is useful in case the DP link properties
>> are known and starting link training from preemphasis setting of 0 dB
>> is not useful. The preemphasis can be set separately for both DP lanes
>> in range 0=0dB, 1=3.5dB, 2=6dB .
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> V2: - Fix the type to u8 array
>>      - Fix the enum items to match what they represent
>> ---
>>   .../display/bridge/toshiba,tc358767.yaml       | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> index 2ad0cd6dd49e0..6287eb2b40908 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> @@ -98,6 +98,24 @@ properties:
>>               reference to a valid eDP panel input endpoint node. This port is
>>               optional, treated as DP panel if not defined
>>   
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +
>> +            properties:
>> +              toshiba,pre-emphasis:
>> +                description:
>> +                  Display port output Pre-Emphasis settings for both ports.
> 
> Why here and not in the port nodes?

There was a short discussion about that in V1:

https://lore.kernel.org/all/00e9ef90-3bbe-4556-8da9-462f65928781@denx.de/

"
Let's keep it in the endpoint node.

There is some mention in the TC9595 datasheet that the DP might operate
in some split mode, where each DP lane is used to feed one display (?),
so I assume in that case there might be two endpoints (?), but that is
not supported right now.

If that is ever needed, I guess this array would have minItems 1 and
maxItems 2 and another endpoint would be added to the schema for this
port 2.
"

>> +                $ref: /schemas/types.yaml#/definitions/uint8-array
>> +                minItems: 2
>> +                maxItems: 2
>> +                items:
>> +                  enum:
>> +                    - 0 # No pre-emphasis
>> +                    - 1 # 3.5dB pre-emphasis
>> +                    - 2 # 6dB pre-emphasis
> 
> I'd love to say please make this -bB and put this in units, but that'd
> require it being a string..

I can do that. Do you think that's worth it ?

