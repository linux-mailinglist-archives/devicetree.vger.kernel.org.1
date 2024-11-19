Return-Path: <devicetree+bounces-122772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6FA9D2495
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 12:10:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91375284216
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 11:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1871C4635;
	Tue, 19 Nov 2024 11:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EuCfJY6j"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994D41C175C
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 11:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732014631; cv=none; b=F2AqEJqLcXl/UPXWHugXyX+QkcDG8LIq1WEVvwLsQzVdpTX8H98vxgF3iHWhwnyocUQOiM0pZ3vlGnqW/C2AcJPdWhratzR7nZaA9rdF7YpcxTtm/EhkmISt+dZ6FWwBIOkZXNrtqy6coBwCRhTqzF06/6/1NSaOB2v8uqfZaUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732014631; c=relaxed/simple;
	bh=LcXG10pkY4nJM0gRxEgW3Cpwhu0tG4XCMdI71du9r88=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qj077CuiKI2G660sC32RtotBdTwl2h+prUHKykgsd41GczDibKH3puvYVhZjBdjacnOHXffUguc0o5D3KU7DHd23H8J5MNYtQwlApksBrKZSBtwdmVA7Ht+/NKDYfcZuw5qsEAGnzmbwQNtp6s60rV9/YT7hqlEi3wqEVZRe6UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EuCfJY6j; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732014628;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t3CEd+clgPFVRk8eaz+5YffYgqV7UVBEYHjaZLke59o=;
	b=EuCfJY6jwWq908mtd/glJZg8Vo6fQmwtydSzHaJHPXawU8Nd76qWa0KjpUCPqh8sWulbMO
	rl00JSU6b4SwYfIa85lprL9ZjVgVNtok8Bc+gRsLcRmqRZgdx2h8SgvXQKk26zHuBNcdNc
	4UOulaf+6iOJTCEHyHukKha47MTQzaM=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-7-VA7cvoU6M8WxF2XEf3irZw-1; Tue, 19 Nov 2024 06:10:27 -0500
X-MC-Unique: VA7cvoU6M8WxF2XEf3irZw-1
X-Mimecast-MFC-AGG-ID: VA7cvoU6M8WxF2XEf3irZw
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-6ee7856bcf2so46964977b3.1
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 03:10:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732014626; x=1732619426;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t3CEd+clgPFVRk8eaz+5YffYgqV7UVBEYHjaZLke59o=;
        b=WadnKes0LDABL5eXesFkRHDSEZgu0owDLUGTUFkbNShE6HvE+b3g0kHJ0+dD88vxdS
         yjx3OXB/VBmTZ6bTzWUFnTtpg5Tpimco0P3df+6lnataofaVXKZxUU1D2pLYxQGeX6yX
         5PpTS8jRjzh86Nat5Cxpkg47Db6iJNaCucOOpwUd8Vt5xBw0AzoaDO1pcaYMryikd7Bd
         +r6BFoLEQWiBi+YT/Kv1dwHAVgdsAyf5KIo/o04z0+rLsV97ZKmkVNZZwhvEYyb39Hfj
         jCATJxQVbU0S6owldgWdSIJBIU9Ga8X49HGJlEU7E/hxst9Wf+dSFGVDkGUz8CnQwJfm
         iMBQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3JNUWxA9OlXYehoNyYcWRctIIKScTjQMm674BPHkBTjKvDIPDRNtN7yFthfyG0bMICKKzd7kcZdjn@vger.kernel.org
X-Gm-Message-State: AOJu0YwVZ838so6v84tUS5TsfhbQkDK4YTb9gq7GQ5vnwowStL8H2Fvz
	eMPC/ykMl/7QSOiWep9SZglC3rBYGyGM6mo2OkD3nozejt60E0T5vzK4xauIDbSKrbhsultdufK
	gYkmclhP04ypFszcHrmaGi7rb0Ih940Ujg1Gm5gs1VTQNGXFUKHhRZ/n7NW4=
X-Received: by 2002:a05:690c:610f:b0:6e7:e76e:5852 with SMTP id 00721157ae682-6ee55ca37dbmr168937267b3.32.1732014626633;
        Tue, 19 Nov 2024 03:10:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3hEKXZ8OIPdKHggBClCMhzsNt9PMcc+Km1iy5ohzxrmKycu0tAz1+EM1Xgg8AqAsOXJIVGQ==
X-Received: by 2002:a05:690c:610f:b0:6e7:e76e:5852 with SMTP id 00721157ae682-6ee55ca37dbmr168937077b3.32.1732014626354;
        Tue, 19 Nov 2024 03:10:26 -0800 (PST)
Received: from [192.168.1.14] (host-79-55-200-170.retail.telecomitalia.it. [79.55.200.170])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d40dd205ffsm47067066d6.84.2024.11.19.03.10.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 03:10:25 -0800 (PST)
Message-ID: <f8c50ee6-a3d7-45eb-9c11-8018cc4043cb@redhat.com>
Date: Tue, 19 Nov 2024 12:10:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next PATCH v7 0/4] net: dsa: Add Airoha AN8855 support
To: Christian Marangi <ansuelsmth@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, upstream@airoha.com
References: <20241117132811.67804-1-ansuelsmth@gmail.com>
 <20241118144859.4hwgpxtql5fplcyt@skbuf>
 <673b88ea.5d0a0220.17b04a.bc4b@mx.google.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <673b88ea.5d0a0220.17b04a.bc4b@mx.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/18/24 19:35, Christian Marangi wrote:
> On Mon, Nov 18, 2024 at 04:48:59PM +0200, Vladimir Oltean wrote:
>> On Sun, Nov 17, 2024 at 02:27:55PM +0100, Christian Marangi wrote:
>>> This small series add the initial support for the Airoha AN8855 Switch.
>>>
>>> It's a 5 port Gigabit Switch with SGMII/HSGMII upstream port.
>>>
>>> This is starting to get in the wild and there are already some router
>>> having this switch chip.
>>>
>>> It's conceptually similar to mediatek switch but register and bits
>>> are different. And there is that massive Hell that is the PCS
>>> configuration.
>>> Saddly for that part we have absolutely NO documentation currently.
>>>
>>> There is this special thing where PHY needs to be calibrated with values
>>> from the switch efuse. (the thing have a whole cpu timer and MCU)
>>
>> Have you run the scripts in tools/testing/selftests/drivers/net/dsa/?
>> Could you post the results?
> 
> Any test in particular? I'm working on adding correct support for them
> in OpenWrt. Should I expect some to fail?

Unfortunatelly this landed on netdev too close to the merge window. I'll
unable to apply it on time and process the net-next PR as expected even
if it would receive ack from the DSA crew right now.

@Christian, you will have to repost it after the merge window.

Thanks,

Paolo


