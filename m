Return-Path: <devicetree+bounces-24531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E4680F795
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 534A6281FAA
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD6963BE5;
	Tue, 12 Dec 2023 20:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ixit.cz header.i=@ixit.cz header.b="FZ2Z3sxw"
X-Original-To: devicetree@vger.kernel.org
Received: from ixit.cz (ip-89-177-23-149.bb.vodafone.cz [89.177.23.149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5119D0;
	Tue, 12 Dec 2023 12:10:12 -0800 (PST)
Received: from [10.0.0.200] (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 2E71F16113E;
	Tue, 12 Dec 2023 21:10:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1702411811;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=NSwXMRwwI2WsYqTTPxV1sw3kfTJjec0iyybbmjyTcwU=;
	b=FZ2Z3sxwnCN5HptDmDfL2YEghN9aDyz3Tur4DgifMFD9UCi3hIy+v8rSVwchmGhDBowuc5
	yG9FChVsXAO0P25uxkGROHc9CSypuv54PUYKJOvIUOxxMREHZWEBEq+3iGJZNxL6F5PqOs
	/wPZiIKof64cKa7u0vyVp0Sn/y5Z/7I=
Message-ID: <526b0519-0acd-40c9-ac19-b285ccc3d70b@ixit.cz>
Date: Tue, 12 Dec 2023 21:10:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH] dt-bindings: panel-simple-dsi: move LG 5" HD TFT LCD
 panel into DSI yaml
Content-Language: en-US
To: Jessica Zhang <quic_jesszhan@quicinc.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231212175356.72062-1-david@ixit.cz>
 <69874f27-46ea-4991-a735-6609233ddb8a@quicinc.com>
From: David Heidelberg <david@ixit.cz>
Autocrypt: addr=david@ixit.cz; keydata=
 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
In-Reply-To: <69874f27-46ea-4991-a735-6609233ddb8a@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Good catch, thank you! Sent v2.

David

On 12/12/2023 20:41, Jessica Zhang wrote:
>
>
> On 12/12/2023 9:53 AM, David Heidelberg wrote:
>> Originally was in the panel-simple, but belongs to panel-simple-dsi.
>>
>> See arch/arm/boot/dts/nvidia/tegra114-roth.dts for more details.
>>
>> Fixes:
>> ```
>> arch/arm/boot/dts/tegra114-roth.dt.yaml: panel@0: 'reg' does not 
>> match any of the regexes: 'pinctrl-[0-9]+'
>>          From schema: 
>> Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> ```
>
> Hi David,
>
> Would "Fixes: 310abcea76e9 ("dt-bindings: display: convert simple lg 
> panels to DT Schema")" be appropriate here?
>
> Thanks,
>
> Jessica Zhang
>
>>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>> .../devicetree/bindings/display/panel/panel-simple-dsi.yaml | 2 ++
>> .../devicetree/bindings/display/panel/panel-simple.yaml | 2 --
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git 
>> a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml 
>> b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
>> index 73674baea75d..f9160d7bac3c 100644
>> --- 
>> a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
>> +++ 
>> b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
>> @@ -42,6 +42,8 @@ properties:
>>         - lg,acx467akm-7
>>           # LG Corporation 7" WXGA TFT LCD panel
>>         - lg,ld070wx3-sl01
>> +        # LG Corporation 5" HD TFT LCD panel
>> +      - lg,lh500wx1-sd03
>>           # One Stop Displays OSD101T2587-53TS 10.1" 1920x1200 panel
>>         - osddisplays,osd101t2587-53ts
>>           # Panasonic 10" WUXGA TFT LCD panel
>> diff --git 
>> a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml 
>> b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> index 2021aa82871a..634a10c6f2dd 100644
>> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> @@ -212,8 +212,6 @@ properties:
>>         - lemaker,bl035-rgb-002
>>           # LG 7" (800x480 pixels) TFT LCD panel
>>         - lg,lb070wv8
>> -        # LG Corporation 5" HD TFT LCD panel
>> -      - lg,lh500wx1-sd03
>>           # LG LP079QX1-SP0V 7.9" (1536x2048 pixels) TFT LCD panel
>>         - lg,lp079qx1-sp0v
>>           # LG 9.7" (2048x1536 pixels) TFT LCD panel
>> -- 
>> 2.43.0
>>
-- 
David Heidelberg


