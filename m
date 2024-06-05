Return-Path: <devicetree+bounces-72860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB64B8FD329
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:52:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31C44286DF4
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A2DD188CBA;
	Wed,  5 Jun 2024 16:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="SNFbD22Y"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B7015350D
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717606317; cv=none; b=GwNWb+Tcm1bIEyVMjkZGPZbkjOCCbCN7ul0MYP+e+WHx8U58U1/9yrn6fA/IXOMml9aOVhYQF19CuHliBpebnGMdJXhn87ffakD10BbOQa4D30WEHHfZBmIEAm4EnueJeJ/N7+l+BDERlcbcphdLQWzsDduP0OmGnsly/UuiOJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717606317; c=relaxed/simple;
	bh=upOSX7C0PGMAJmhPW81r1cqSMJFtuK1JJlxWnJoM6Ns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WwJViNSmy6ium1S1R2e0nG/z3vlWjz2K3gCx7/gszxqnkQSwMfiidGf2R3R48ATRGpKVDr9gXsWGf/NKKvxk4Eym/p81wMp77GgoBfPSA0mwc4pVMAinkPXGOV65SCjFCGZnncFEqeCFNTIQeerbXEkdga0LT3zharrOelmMOts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=SNFbD22Y; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id B9DCB881A2;
	Wed,  5 Jun 2024 18:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717606313;
	bh=rVfcNH8WIbB0r/vFRDdU0pF+tcrg2c6t8y4LuiC7xTY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SNFbD22Yklo8wnJO3O7oA3tjywoVepOSnAN/3kk6+RTgKgiOTS3nz8vca9/rwU/gh
	 ugbQSDfllJgNN8CfPx0mznMqCH1DtR/1ffXDv2/PaKWEgvMomjwLDJ2lwYrWg60U1s
	 +PUs1mZoMd44Z4hmbE5PKcqo9yLZA4vcY7w1ywtfCweUQ6GwPclH6B+2dPPrM3Tb+V
	 t1/oe66QpP5dDn3O0Zylnr1i7nerFmWk0hq/EnOUQ2zmawpWegaz0LC0dqpglgUQvs
	 BjLvOK5mn9gUJu3UU+OgNNe6ThYK0PswHFFGgD8LjoZ7/i+LguyLRugCbRTW/PaSqd
	 XsLXycu21VkUA==
Message-ID: <00e9ef90-3bbe-4556-8da9-462f65928781@denx.de>
Date: Wed, 5 Jun 2024 18:33:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
To: Rob Herring <robh@kernel.org>,
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com
References: <20240531204339.277848-1-marex@denx.de>
 <3302939.44csPzL39Z@steina-w> <20240605160533.GB3222592-robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240605160533.GB3222592-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/5/24 6:05 PM, Rob Herring wrote:

>>> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>> index 2ad0cd6dd49e0..dcf56e996ee22 100644
>>> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>>> @@ -98,6 +98,24 @@ properties:
>>>               reference to a valid eDP panel input endpoint node. This port is
>>>               optional, treated as DP panel if not defined
>>>   
>>> +        properties:
>>> +          endpoint:
>>> +            $ref: /schemas/media/video-interfaces.yaml#
>>> +            unevaluatedProperties: false
>>> +
>>> +            properties:
>>> +              toshiba,pre-emphasis:
>>> +                description:
>>> +                  Display port output Pre-Emphasis settings for both ports.
>>
>> Is this a property of the port or the endpoint?
> 
> What's the difference? Either is the same data path.
> 
> The preference is custom properties in endpoint node, not port nodes.

Let's keep it in the endpoint node.

There is some mention in the TC9595 datasheet that the DP might operate 
in some split mode, where each DP lane is used to feed one display (?), 
so I assume in that case there might be two endpoints (?), but that is 
not supported right now.

If that is ever needed, I guess this array would have minItems 1 and 
maxItems 2 and another endpoint would be added to the schema for this 
port 2.

