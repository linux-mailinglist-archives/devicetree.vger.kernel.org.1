Return-Path: <devicetree+bounces-256740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D974D3A2D8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22D7C3013C55
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A967354AD7;
	Mon, 19 Jan 2026 09:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="KdVE+e2J"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C86526CE3F
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768814814; cv=none; b=ND0hu3uOJxumAWCr8wowQj9a0QogRKqAA/8lX/3igXeFWy+GLJBmMccn3DNVgJNLzV/w+IoDdntWC5odlLIPSghWs//JXfDI7Ty4+bxdGUQfNZPN0F2NP/moPnZYacLwFZACJsp9Hm7Ig0p4/GtBURYuja7ynzdC5vygODsE6mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768814814; c=relaxed/simple;
	bh=DR8RZ7roKxHDcGWfapIb9zcVtiQcN8V/lc4S7t4gkVU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q+YORzbBdODxkDXo0YpcX2r0yVMF+NKEFxiiLdukIAWUSxXLRePglHKxplCI8d+Gl2xc4L2krBw2lZ5DZKuM4r1KSphJQAxPxe1QNsNyb6qRHeI+pVZfHb+i6283lfrgKkpwMJq92rZqa1AA/GpYXaqMdcp34CodWFZjNoCQbhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=KdVE+e2J; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Message-ID: <ef7f344b-2c56-46ba-9718-72b490465749@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768814807;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XowlzC+p1/HbYmLkdmabnkTGKmKO4cNKigcp24lQJsw=;
	b=KdVE+e2JCQIkOgvcAERTfuhedah++E3+DZZoZGl3w66Nl35JmOWewhrOp0Hb9/Ik4UghP0
	Ku1wNvp3D0TblcxH6WxSXf23/TaMg79Can9wWaX+6E4fkMjflWy2q5eX9odyUINHN4DE+7
	IfE8od9CTP9In6nUlWHFBhlJ8nhZsjgL8YxxNEXd0iGVJe+xhNbiX6G0b1g0kBg9nhkAqz
	P8/PTRwLc3si1Ey3vIWNP6UZTH+lU1Fi8EutYFd5Yii1HIggo9dcMVt/jRDyaqFqFP37bS
	I4Gue5yBiLZmUQr7b7BHPVfteVitrIv0+46gG+74sgWw8SO4s5yIB5nHd3eMUw==
Date: Mon, 19 Jan 2026 06:26:36 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/5] dt-bindings: display: bridge: simple: document the
 Algoltek AG6311 DP-to-HDMI bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-4-val@packett.cool>
 <h2vft6wwp7765i7rxtsr2yddnx52a52nv5acfg3l2mm5vmjbz4@d3aossnwdkjf>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <h2vft6wwp7765i7rxtsr2yddnx52a52nv5acfg3l2mm5vmjbz4@d3aossnwdkjf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 1/19/26 3:36 AM, Dmitry Baryshkov wrote:

> On Sun, Jan 11, 2026 at 05:35:10AM -0300, Val Packett wrote:
>> The Algoltek AG6311 is a transparent DisplayPort to HDMI bridge.
>>
>> Signed-off-by: Val Packett <val@packett.cool>
>> ---
>>   .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
>> index 20c7e0a77802..e6808419f625 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
>> @@ -27,6 +27,7 @@ properties:
>>             - const: adi,adv7123
>>         - enum:
>>             - adi,adv7123
>> +          - algoltek,ag6311
> I tried to pick this up and got an immediate error from checkpatch:
>
> -:22: WARNING:UNDOCUMENTED_DT_STRING: DT compatible string vendor "algoltek" appears un-documented -- check ./Documentation/devicetree/bindings/vendor-prefixes.yaml
> #22: FILE: drivers/gpu/drm/bridge/simple-bridge.c:264:
> +               .compatible = "algoltek,ag6311",
>
Yeah, same with the "ecs". I'll include the vendor prefixes in v2

~val


