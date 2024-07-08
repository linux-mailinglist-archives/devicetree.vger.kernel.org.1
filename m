Return-Path: <devicetree+bounces-83959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9065892A741
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 18:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C99201C20882
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 16:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B12314659F;
	Mon,  8 Jul 2024 16:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="jROZB+fm"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBB9145B3B
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 16:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720455890; cv=none; b=XVGDPfzRmxmONF8vwWvj/eMppvsRFM0vCqPGnz01fScMUoyA1mRPGDCXIXuLsYHZdX5obreAf5VolCXBHJB86gVJHT+nilO5IZcH/Z5tTk4LBtneklgcGZA99u8Gg47AHnWmYsUwAd7p6JslEHzLsmLuId9jgLUgkT6viDhmeuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720455890; c=relaxed/simple;
	bh=tmd5bq1a2Sjy86eidKR+y5wOuRpAzQW9jANelnAElr4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XRx3M8wnOb+IQMS+xblonoIq6tykc4Jx7vBdJXqV/vjnR24pJLc/pkCW6Tgl3RL1vFdBQXg3I2RNsYKEFsVINxeLNm7hhRNpi9kEYwRV9w857NLNR4y+MwLHEdV84dpkqJm/InBMDVlMm6e7tcaHNscHy2QI3yxjZy+INanq1HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=jROZB+fm; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E7368887C1;
	Mon,  8 Jul 2024 18:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720455887;
	bh=OYeTMxUL+opXKRi7H7/XeJ9+r7U/kSUH3d13hAnjyFQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jROZB+fmFq3k2RVxICP16IFjcbgFrl9YBR7GgbJ8KDdxKrXj/B1bk7zkkakHzH3Uq
	 McuCscpDu9k630zBfm7/mQWR4OhvEYz7v7ZL246+RQ9A0NRYsmPgMbiYU90M+n0h63
	 Bv1mVG8LWdUZI1o0b0WltOgzuMjyhjuhwcpiAhhmMDkZeVO0+HoTKmoSXQAfnQwDLL
	 +8scC79TyjPY9FpSzJlBJtGNC3sDxHP7v8S+uz0lfUSlgmcVGYTDVMGHVshGluyWRj
	 CaHNZwp47lYCG2AYgHrT4WD7RYYlVPIngXUppjoyTT+YaOCBbF9ltKzp44GWeoPiYm
	 ms41zyl11PLMQ==
Message-ID: <660f2c61-3797-45cc-9e1e-3462f306ae39@denx.de>
Date: Mon, 8 Jul 2024 17:08:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: tc358867: Document
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
References: <20240625120552.145389-1-marex@denx.de>
 <2118572.KlZ2vcFHjT@steina-w>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <2118572.KlZ2vcFHjT@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/26/24 9:29 AM, Alexander Stein wrote:

Hi,

>> +
>>       oneOf:
>>         - required:
>>             - port@0
>>
> 
> I get this warning:
>> mx8mp-tqma8mpql-mba8mpxl.dtb: bridge@f: ports:port@2:endpoint: Unevaluated
>> properties are not allowed ('toshiba,pre-emphasis' was unexpected)
> 
> DT node looks like this:
> 
> port@2 {
> 	reg = <2>;
> 
> 	endpoint {
> 		toshiba,pre-emphasis = /bits/ 8 <1 1>;
> 	};
> };
> 
> I think you are missing this change as well:
> -- 8< --
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> @@ -92,7 +92,8 @@ properties:
>               reference to a valid DPI output or input endpoint node.
>   
>         port@2:
> -        $ref: /schemas/graph.yaml#/properties/port
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
>           description: |
>               eDP/DP output port. The remote endpoint phandle should be a
>               reference to a valid eDP panel input endpoint node. This port is
> -- 8< --

Picked for V4, thank you !

> How would you determine the values to be set here? I suspect it's the value
> from register DP0_SnkLTChReq (0x6d4) after link training. Are they dependent
> on the actual display to be attached?

In my case, I only did trial-and-error, because the test hardware I have 
available right now ... well, it is a test hardware and won't work 
reliably with pre-emphasis 0, so I had to up it a bit.

