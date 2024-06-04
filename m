Return-Path: <devicetree+bounces-72414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 719648FBA48
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 19:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2DB21C2134A
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 17:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBE09149C4D;
	Tue,  4 Jun 2024 17:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="wRjgjC95"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7353414431C
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 17:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717522027; cv=none; b=PJZ0LJBrO9gu6XWqf1jwQk/Sj9EROX/TdjqaabiTTVjXJVr/yTPTz4bXCupM74ro+rmiyc1SDhUYeriXFOIvz6uJqwXrlD5Ofk9SEZy6HzpUPSi9Ry66x8xT9m/2tbwknA/1xqqKT2zBfWy6fGK1FaDSBouvD01PrFe1+ysv1wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717522027; c=relaxed/simple;
	bh=IfJOKnYqXpF23rXbLP3URbidFg+eR/YHm91kCtCiMaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zty5Z5seN6WPwZAPs39Oz10pNF9hLUF3Q5L+qH0Ww0Q1rIE+fDRASUamuNmiU8o30gufPq8WFpfHsp3BiALJ9E/y6wcmG3X55uhYMnntHItkbWoyx5+cif4rIl95HivF51ZpqA00LKNqzx2uqSq1uWFXIWnJ2Wb3SVp7AcYgxyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=wRjgjC95; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5CEFD884B8;
	Tue,  4 Jun 2024 19:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717522024;
	bh=xBvacjajTYRSgBByqOvWHI/umiM5+eWqHCC8nj12OBQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=wRjgjC95X2uikuZHHksymU6CYd/CV9OvjGG6+uEel61WN0nvH8ZCK+jH8EqWUV8yT
	 k92dxDjRgv+jkaSznRO/CnrM3OpX8xNPzU9Rpb/WvGwHFwLixq7SaU2uLGZx1oeCer
	 C5yS+ZNHXgqtffEaP9woUv1L/9O3zrOsc9PA3tKGNSXxwJuWRO6Z57M4d6b6J7LamO
	 51CPjOeighZoHUy1F1/fFZe2amHJ+fLCvi0Gm8nCAu4UjzurkX0tf4a7uWIuLPuPVX
	 8HlRBlwYoaY9HMfeQeKOc0UaJRGNCX3tsSfvbI7AwPwQjXu+DZfWk6Uck85z4k+R/E
	 ftaxx2EASUKEg==
Message-ID: <cf442ab8-6a8b-419a-abf1-7449f1885c4e@denx.de>
Date: Tue, 4 Jun 2024 18:29:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/bridge: tc358767: Add configurable default
 preemphasis
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
 <20240531204339.277848-2-marex@denx.de> <2272229.iZASKD2KPV@steina-w>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <2272229.iZASKD2KPV@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/4/24 11:49 AM, Alexander Stein wrote:

Hi,

>> @@ -2372,6 +2392,21 @@ static int tc_probe_edp_bridge_endpoint(struct tc_data *tc)
>>   		tc->bridge.ops |= DRM_BRIDGE_OP_DETECT;
>>   	tc->bridge.ops |= DRM_BRIDGE_OP_EDID;
>>   
>> +	port = of_graph_get_port_by_id(dev->of_node, 2);
>> +	if (!port)
>> +		return 0;
>> +
>> +	of_property_read_u8_array(port, "toshiba,pre-emphasis",
>> +				  tc->pre_emphasis,
>> +				  ARRAY_SIZE(tc->pre_emphasis));
> 
> This doesn't match the bindings. Bindings say it's a property of the
> endpoint, not the port. Additionally it's uint32-array, not uint8-array.

It should be u8. Moved to endpoint parsing in V2, thanks.

