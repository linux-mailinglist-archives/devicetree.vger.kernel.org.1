Return-Path: <devicetree+bounces-72415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FEE8FBA49
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 19:27:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6883E1C227CE
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 17:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D6DE149C6A;
	Tue,  4 Jun 2024 17:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="raqeS7DL"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923731494D0
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 17:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717522029; cv=none; b=qXEFy6RnF3vXvgblWQP6vWiRBTdO+Rp95mJpjp3rHzH5045sMNZmSndb78QnESbpowQt9/F5fsWySYlbWdBiB4lr9ALCqGldDthsfEvk+ovE8s00HL70MVL896qyOs0kUcNNX8WsdtmL5TMbznhip0jQIclS7ETF+HXPXEvmKyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717522029; c=relaxed/simple;
	bh=RjfX7Yo25lcg4G8aaIsLZteL0jP5jM60uf9C0KmlKNI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JNpNw16IKaMsuArg0C848ZXjgX7uYyT7TVMs0CIKFt6ijYWT0ErMVInIA5EsKg7ksLrGI/EKY3H2GQjo8KLvm/Y5xmHrlIFa0Ys9z/Fa5lDjxjnY7ZYmAPYqdRPH7ZXEBl+E/Mbe14yRUCGTe8r8K632J8N6MSVxCVo98DyWNBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=raqeS7DL; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id C219D884D2;
	Tue,  4 Jun 2024 19:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717522025;
	bh=y5WTHCt79SQfJ12FXU8PBZFTTrxRb97gCWjJe0nRVWo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=raqeS7DL1h/dHw0nEfMubYrX8Fi8S5XFr4fQsfV9tj5M12tgtGOHs6KsStp75R824
	 RJ/aJpeDa5bnZYobA2mkg63EVQZIZWcI9Jd2iLLXf1QH5uFloaSaSdKyAYPN+yo1aH
	 od0Jtx/hNiLKKwfU7dFHV9oD/VslDuCIQ9vHOdvSoMxCOTYzqrO2n3ZAYeaBYKNwTk
	 PXkAYylp1nHz9HEHqAdmSsr5CtZHkhLiSX0+nV3914GIY3SofBxxzyIOM8TbqFEY4n
	 wxDS8FrvyFyVvJvKBNYIq+J6ytQJFKHfYgqKLJWPh24Bocl7l3CbbXDf3EMLFckiSU
	 LuanGCji5K/AA==
Message-ID: <c912cee0-88e1-4c3f-b4dd-8df967b76abb@denx.de>
Date: Tue, 4 Jun 2024 18:31:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 dri-devel@lists.freedesktop.org
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
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
References: <20240531204339.277848-1-marex@denx.de>
 <3302939.44csPzL39Z@steina-w>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <3302939.44csPzL39Z@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/4/24 11:42 AM, Alexander Stein wrote:
> Hi Marek,

Hi,

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
> Is this a property of the port or the endpoint?

Endpoint I think.

>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>> +                minItems: 2
>> +                maxItems: 2
>> +                items:
>> +                  enum:
>> +                    - 0 # -6dB de-emphasis
>> +                    - 1 # -3.5dB de-emphasis
>> +                    - 2 # No de-emphasis
> 
> Is there a reason you reversed the notation here? de-emphasis <-> pre-emphasis.
> Commit message also says:
>> in range 0=0dB, 1=3.5dB, 2=6dB .

Copy-paste error from 
Documentation/devicetree/bindings/usb/snps,dwc3.yaml , fixed in V2, thanks .

