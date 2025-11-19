Return-Path: <devicetree+bounces-240112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C7599C6D80C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:46:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 809674E3455
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:39:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB132EDD76;
	Wed, 19 Nov 2025 08:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="N+ayNv5m"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648DE2EA171;
	Wed, 19 Nov 2025 08:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763541552; cv=none; b=bmcA91Zpo2mKb89wmJi6U6NcrY5inhsLPQ7Y3KpGLsPs8+ZMKup74Mt3FKJl2YnP26U6lyC94wK8FLojrd6sl+ryTX9i1Xna3c3Ha3a8lQyGmcDygkmWz2YnvJmex8L5Y/17W7NI5aC1mymIM5pz/jQvHW9Pjz7Um1rt0eFJzgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763541552; c=relaxed/simple;
	bh=6XRDIcE23p1oIoiWUrxZPEk0k4GxcOxPuD68CPWrDSU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WrTcJolDO+cj/BY2oaYN6WakQlNfICD5yfayPEBTS+VRrDd28cffAs3C2FjJKXuxb6bjIV12i4QtPfIIua0UCnx/87sHejwrzmBjp4CqFRW6ZJ8KmC4qIa7gDGh89V0Cxj4c5ELD0I215FxZuBuMXzgJSk2R4D2YGiTnOVuzdpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=N+ayNv5m; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763541548;
	bh=6XRDIcE23p1oIoiWUrxZPEk0k4GxcOxPuD68CPWrDSU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=N+ayNv5mWWuJLSvrm6hwUGyQA7Upstur+j0+sMeLNMncK5SzMW6GZfjicXb1jUG45
	 u7A2EiULEPBPGo0T8iHmbKjR1pdT7z0gn1jXqN9UBEwYW1cYDgeZRhoYdkqVV+a18a
	 8gpk+rGuAiV6dtgUs1XZCmEr5Im/3/EuiUC2rKql5nN0P5gMq0Ij3M3b/uQO7kBotf
	 sKwBng+7IvvMf6bNB9DTmGURvQHjCswzE0VR7l1zPGkyHPygiDSWhunkncYBz3ETih
	 IXbUVbCu+ixlwovokDee5pSgvNKnb9OZCkY5OIP4BxjTW8z6Xo1ziPQ5Bzl/MlJoOz
	 uZtH4zyDNMWSw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 29B5717E005F;
	Wed, 19 Nov 2025 09:39:08 +0100 (CET)
Message-ID: <bd64ace0-b4c5-46e0-870b-e62f950f4199@collabora.com>
Date: Wed, 19 Nov 2025 09:39:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Aw: Re: [PATCH] arm64: dts: mediatek: Apply all DT overlays at
 build time
To: Frank Wunderlich <frank-w@public-files.de>, robh@kernel.org
Cc: matthias.bgg@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
References: <20251117211306.725678-1-robh@kernel.org>
 <679c1f30-7c62-484e-b4e5-7351a23f15e5@collabora.com>
 <CAL_JsqK4jvZQTQAXCjPgxBCUiENGKgkgaDgZ680QqL1XpS6bbw@mail.gmail.com>
 <trinity-dfca2931-a7e8-4b33-b722-c22105569d82-1763485361461@trinity-msg-rest-gmx-gmx-live-56d984c6fb-85gcg>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <trinity-dfca2931-a7e8-4b33-b722-c22105569d82-1763485361461@trinity-msg-rest-gmx-gmx-live-56d984c6fb-85gcg>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 18/11/25 18:02, Frank Wunderlich ha scritto:
> Hi,
> 
> this looks similar to my attempt i did here
> 
> https://patchwork.kernel.org/project/linux-mediatek/patch/20240608080530.9436-2-linux@fw-web.de/
> 
> But in my case i added full dtb with 2 overlays as there can be 2 devices (1 mmc + 1 spi) at one time.
> So usable as dtb for bootloader config without overlays, not only for validation...
> 

Please don't top post :-)

That said, for the target of what is done here, I think yours is nicer to the eye
compared to Rob's (not his fault at all, most of the times overlays cannot be
applied together, he can't possibly know if that is possible in this case).

If there is really no other solution to that... well, at this point I prefer to
have something nicer to the eye, with all of the necessary "evil" that comes with
it.

P.S.: Strong words contained in this reply are meant to be lighter than they appear

Cheers,
Angelo

> regards Frank
> 
> 
>> Gesendet: Dienstag, 18. November 2025 um 13:31
>> Von: "Rob Herring" <robh@kernel.org>
>> An: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
>> CC: "Matthias Brugger" <matthias.bgg@gmail.com>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
>> Betreff: Re: [PATCH] arm64: dts: mediatek: Apply all DT overlays at build time
>>
>> On Tue, Nov 18, 2025 at 3:36 AM AngeloGioacchino Del Regno
>> <angelogioacchino.delregno@collabora.com> wrote:
>>>
>>> Il 17/11/25 22:13, Rob Herring (Arm) ha scritto:
>>>> It's a requirement that DT overlays be applied at build time in order to
>>>> validate them as overlays are not validated on their own.
>>>>
>>>> Add targets for all the Mediatek overlays.
>>>>
>>>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>>>> ---
>>>> This will soon be a warning[1].
>>>>
>>>> Note that if it is desired that the combined .dtb is not installed, then
>>>> the combined .dtb should be added to 'dtb-' variable instead.
>>>>
>>>
>>> Uhm, sorry, can't we do something such that we don't generate a DTB with a
>>> preapplied overlay?
>>>
>>> Even something like generating those and deleting before build finalization
>>> could work, I guess, though that'd be hacky maybe.
>>>
>>> I don't know if this is the case, but I'm worried that various people have
>>> scripts to copy DTBs somewhere (in some partition) or embed those in images,
>>> and if they get the preapplied overlay dtbs in the same place, havoc could
>>> happen as the bootloaders might be selecting wrong dtbs (as a plus, there is
>>> no dtbo that varies machine compatible strings, rightfully).
>>
>> If they aren't using dtbs_install for that, then that is their
>> problem. When we moved all the arm32 DTs to vendor directories,
>> dtbs_install maintained the old structure which seemed sufficient to
>> not break folks. The same should apply here.
>>
>> Rob
>>
>>



