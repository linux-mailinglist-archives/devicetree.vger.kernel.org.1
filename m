Return-Path: <devicetree+bounces-255507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 838D7D23B1A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F2199312BFB0
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E667235E54E;
	Thu, 15 Jan 2026 09:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="aYl//qPT";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="OEEGN+sZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF235CB68
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469862; cv=none; b=P5/yXSH0aXeDZnHI0s2lXa/cZ1x460tydfM6q4J32DveNDbosUnqlAsQUK7mwfmOdIgRT7U6JPlNDghgkpqOiKJXeQW5pu34WTmJlySxYUzmL1wLEWwa/9vSQ2n/WoW8ihDW8dJDx+MXZjXz+Q/vtK8ggSyukPD2tFsaEN061zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469862; c=relaxed/simple;
	bh=OvixmhxKp77Kx6QGMyWPAcEWNA77oY+wK7kwCqKoO1A=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=s0eC67ylb7PIyjM9dDkapr0k8UtNQV5KPdERorwL/wlXz5gIogWAw56W38sFhtuISZb9EUE5XKJVYuYYebj8A6GNZu1Zq7t6akRdy2k5jbWeGBnlfA7gPBHDKag1NdPyFzbyj7HNtvA35/j2fHcTaKbJMQ0OemG2f6BLFeSsQ4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=aYl//qPT; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=OEEGN+sZ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768469860;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HbyX5I3XmcBb65h/6RUQRH0oiD3GDHhpS2uLRUVlL/Y=;
	b=aYl//qPToN/cJ6yM1jx0vbmF57kCkD7l7Ib5Jow0HugKwdY9F6hMxgzwNnMaXvSX0TsNiW
	OoSWB01RMRa+H08M+DvQMCCtuk+w9yyuI3nnT86EF/njrxAod6odzVrBiRTAHE1R7+qI3e
	lF0DTEDrXCh4cMkm5ZuStfevxOvw5yI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-401-m9Or_uzxNS2NBF-xgpe_uQ-1; Thu, 15 Jan 2026 04:37:36 -0500
X-MC-Unique: m9Or_uzxNS2NBF-xgpe_uQ-1
X-Mimecast-MFC-AGG-ID: m9Or_uzxNS2NBF-xgpe_uQ_1768469856
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-47d3c9b8c56so8446585e9.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1768469856; x=1769074656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HbyX5I3XmcBb65h/6RUQRH0oiD3GDHhpS2uLRUVlL/Y=;
        b=OEEGN+sZdwY8G1bMuu+HHHQiqGb6QakLkJd4IGFmS0QZl2JmkCNY908XJ37anf0jan
         oGSzsSb4AbfRDi3T8/NspnCOLuIE0aGOh/gOEqOcSgsbZzNt5aOGw7zHHMN5amh1ywL2
         AEjiHWq40hRe9mjbOMqzRZ4yw6jk3Ma2x2YkZ5TPyoH1HSGZ8PMRaO1dHHGynqDILJsM
         eFUGlKwUK+179rDHEQGifOij1F6Eb/BVRBS5sYAMPlAhkX0kQkUotsaOZ6SwCY2XeWPm
         qVAAcveyEPUshcdHLxEmP/2lsHv8YsA4fPds9IF3OGUYn2nuXR2axukfGRnXpOQHAkOh
         V52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469856; x=1769074656;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HbyX5I3XmcBb65h/6RUQRH0oiD3GDHhpS2uLRUVlL/Y=;
        b=uLXAp3ckX90UlOBC5PV1dWYdy0HC2G84nfcrRe9R/N9bhBjx77PAUga5rJjJgKu9tY
         RyEMxo+Th9708TkE1yq1FGUm17hHZkpGAbOMvWm88byGuLmh+5oZ6K0EFCwccPJvbvLz
         /3ON2JQl8+aZXXL1uv/1REOG9DsgZOsRrB0Pl919LWQgyH4rialzZT64cxP8sgb0AXot
         k4A9l9KDAv7m0Z1lHL2+gUWVTfz2ZwArDicUOHUenlwNFzlUEum4KDJzQYq1KHb6h80L
         VymRwOBhYtyG+LrM5CJqzwGiZv25qpUQLPjyNVTcT5/6ZtwfDs7QGsDruU+r1tt+9Hut
         dVGA==
X-Forwarded-Encrypted: i=1; AJvYcCWp8KDfKrEBJEVd0IYubOzTNBOxXMNR7xjp80m51MSNHcPIIhxk30+ZtpXrw0UZE5p8i99poegi+zHQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzcMu7tyWgEQ9A4GUoTqvUirH39a8RHgrQ87+/qv0mb/XUuFVqn
	fILoknU2RGOmjNARQHFyEB4C7p7L1e951m3bAgJrEfMOd687S0AswLiQgTLsG5OAx/v0nNoTOZm
	24ZTT6wWuG7gLlw02pGG3rgw2N7VcCGR/lOcqPgq/cJdmrrFgWWp+/sLvWyPgdA8=
X-Gm-Gg: AY/fxX5uZmO7Gq93cMCgjVPTtBAho8ePGOzJPnROQbMw3XHG9Ddq+mWjCqgvUTL8HVb
	x1Z1pBnH1rL25Gtp4YfTAe6ll7rphpVWesTo/FF1zpQWeIoSW5RFBJyqh/8ZiCCfUViYYbkimRj
	3FhX51r/dYtfClG0YpeLOddJMUDAVjPamjBmhfCc2V6VZ8fHAbcoj3NDwc2gWbMrkayPvLmE48r
	sUE3Y7OwYkaIKhYdnYWdgMDM0aAabQt7tgeU2ZSr7RgyY/+3i3VI3bIpfiydFs6tEHrZYAbDyvR
	s5/m8L97cJmNalR+cLZh7RPslGpOML8tDZIhgFrCtR9mJTZ/1jCxZONrVwDONDET5yMatJ0Ju+X
	XgDuZ3peB364plQ==
X-Received: by 2002:a05:600c:34c3:b0:480:1a3a:5ce6 with SMTP id 5b1f17b1804b1-4801a3a5f92mr13914225e9.14.1768469855740;
        Thu, 15 Jan 2026 01:37:35 -0800 (PST)
X-Received: by 2002:a05:600c:34c3:b0:480:1a3a:5ce6 with SMTP id 5b1f17b1804b1-4801a3a5f92mr13913865e9.14.1768469855311;
        Thu, 15 Jan 2026 01:37:35 -0800 (PST)
Received: from [192.168.88.32] ([212.105.153.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f428af0c7sm37233455e9.4.2026.01.15.01.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 01:37:34 -0800 (PST)
Message-ID: <173d1032-386c-4188-933c-ca91ce36468f@redhat.com>
Date: Thu, 15 Jan 2026 10:37:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 net-next 05/10] phy: add phy_get_rx_polarity() and
 phy_get_tx_polarity()
From: Paolo Abeni <pabeni@redhat.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Eric Woudstra <ericwouds@gmail.com>, =?UTF-8?Q?Marek_Beh=C3=BAn?=
 <kabel@kernel.org>, Lee Jones <lee@kernel.org>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Vinod Koul <vkoul@kernel.org>
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
 <20260111093940.975359-6-vladimir.oltean@nxp.com>
 <87o6n04b84.fsf@miraculix.mork.no> <20260111141549.xtl5bpjtru6rv6ys@skbuf>
 <aWeV1CEaEMvImS-9@vaman> <33ff22b4-ead6-4703-8ded-1be5b5d0ead0@redhat.com>
Content-Language: en-US
In-Reply-To: <33ff22b4-ead6-4703-8ded-1be5b5d0ead0@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 1/15/26 10:34 AM, Paolo Abeni wrote:
> On 1/14/26 2:10 PM, Vinod Koul wrote:
>> On 11-01-26, 16:15, Vladimir Oltean wrote:
>>> On Sun, Jan 11, 2026 at 12:53:15PM +0100, Bjørn Mork wrote:
>>>> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
>>>>
>>>>> Add helpers in the generic PHY folder which can be used using 'select
>>>>> GENERIC_PHY_COMMON_PROPS' from Kconfig
>>>>
>>>> The code looks good to me now.
>>>>
>>>> But renaming stuff is hard. Leftover old config symbol in the commit
>>>> description here. Could be fixed up on merge, maybe?
>>>>
>>>>
>>>> Bjørn
>>>
>>> This is unfortunate. I'll let Vinot comment on the preferred approach,
>>> although I also wouldn't prefer resending to fix a minor commit message
>>> mistake. Thanks for spotting and for the review in general.
>>
>> Yes fixed that while applying
> 
> Could you please share a stable branch/tag, so that we can pull patches
> 1-5 into the net-next tree from there?

Vladimir, could you please re-post patches 1-5 after that Vinod shares
the above? So that we don't keep in PW the dangling (current) series.

Thanks,

Paolo


