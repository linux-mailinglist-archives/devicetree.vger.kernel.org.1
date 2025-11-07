Return-Path: <devicetree+bounces-236019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A0C3F4D3
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2EAB44EFEE7
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF14C302142;
	Fri,  7 Nov 2025 10:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cogentembedded-com.20230601.gappssmtp.com header.i=@cogentembedded-com.20230601.gappssmtp.com header.b="fPL4W9M9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074182ECD14
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762509732; cv=none; b=M7jXAEFg/VGiDoN3dX6VOKbJsSCVg5w018q4xptxokCH/i/nS+OKqwdOi9j8Xdh7h2wTH1HQN6uB3XLemx3kOmHsJ/F4yIy/D5TgnNUETojOLitfcTVpKgO/3GmAGJB6zzUmsTUVqMaecmSR3GIZN4MVWl2hP1OW8tdwVDjTqws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762509732; c=relaxed/simple;
	bh=JJGs4zIda6s1YsKiNN6VSjbE0TevdnhAVZj4houk4zg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SwsN9NeNiqfxdRrWOgVHp0W362URL+JbwPzAuV9N05fdQR2jNj/7EnATlN9Umk1EEVvdU2m0sI1wmBOv5NivwSIg1AiulF7JtZpn/4TDU4PV3OhkZXva1i58Y7eWn0Q+NWuyExMHl21pe22+b5g548L7m5tv0+MGV3ioAqIiG00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cogentembedded.com; spf=pass smtp.mailfrom=cogentembedded.com; dkim=pass (2048-bit key) header.d=cogentembedded-com.20230601.gappssmtp.com header.i=@cogentembedded-com.20230601.gappssmtp.com header.b=fPL4W9M9; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cogentembedded.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cogentembedded.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-640bd9039fbso1120266a12.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20230601.gappssmtp.com; s=20230601; t=1762509728; x=1763114528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sI3AaX9grHbjP5KjZYhTK6oQKUD2yVQSwBL3X3Q60WM=;
        b=fPL4W9M9YNIXN2+La4AF8emD2uG6M7TzB7mAg2wTgGhvckbXIXf6/8NJBdfPly1rM+
         a+q6hjcQn7G8Th/4D7HnLPIxv37Gf2Ty69LwmY2VXVnSWp8ZFJL90QhqfvgVnAWman7U
         fKkGaTfGbxG/7Eu6myq5wLxpQMFXsfplrsva4i8uXG6JWMFJIstyqlgP+ybUcNWiBkYy
         sEn1GAZgeGxDr02ZaN05DTORM6HIpHjKc3Efe9fteq80TzkRDBnQ4C5l4C1ZUNtj45QO
         ijtHpiWb6+h5I9zDa3OcEJ1WTiwr/z3oK7JV5QUAWvgwRLwdYYgB1QNiV0XPHJhgFW51
         DxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762509728; x=1763114528;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sI3AaX9grHbjP5KjZYhTK6oQKUD2yVQSwBL3X3Q60WM=;
        b=mFdrB5PKLbcAE1tWCikmIKg1c/g0UUicuwDKYaP5RhxJpXoKx1YlIE40nhp50n1S2z
         JGDliXDEZz3/qzsypb37y1xo0kepj8RrH6gRAQ3e/uN0szW5ttr/K9Ho6BkzBgFb/TSX
         VXToYpiTTCx+WIG9ISSHapMAJXuqouCHItD16x+PuCF+K+ve9f40FEBTcYX8n/8O7Pbz
         56ObLBiQIky9JVHWakUtz8L0hRn+XAUkf9hHdcibljEwROx1FtNI3fkiNcL/lE4qItao
         6bSh5W7G1/fRNFmzA2ZCh56gUzd2ljawTGgHyWYehce0VDRvnEV7LUXc0NBQHxp5pfr1
         5GMA==
X-Forwarded-Encrypted: i=1; AJvYcCUSlM5jDwpGuoZvN21D8DSGgXAplFBh0KCToXNrjGC19Mb/fhG3QuQFZ0fQ+4GI2ZFEACiAuPAPgoDt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4v3gT03/Lo0apJG4kQM4XvCDtSky2PVz6Ft6LUOae/uQH0K8A
	+hxMmEhj/Bv61lLeJqcsgzwTKFxSrzJIa/jp+9rNwtjMJs9RtNg4JQprYfLzxncIXRo=
X-Gm-Gg: ASbGnctM7K4zdI7IPq+OCzyIOl++nTqGpFxCWqMlGRWvNET8Ufp8bKNoA+WgwP6wxVB
	6guZBTH8+aWibnOGeOMvKeJlJ9Tr/JN49L0FCgfLNOcUyKocMR2WYfuLefsBE8lR58wS6tXD5mU
	zAm37pWzwvi5IZpHlsp4juxNB0vSdRwlDyqTaP9xddLeEddp5j8xmNKCZavejfhJ2SUu4jNMwXz
	FOvEiqzqgre3qpvZfPok6q+MGT23QRTPaWGQkd5dhezwUlH/AoNHc5Bdm5ircywDUL/1/DNdyT/
	ZP0/zbCIQfXYo4PzfqJojMXloDb1ycrDnlTdWrwKGq1JA/1ijwGkWvEY5Ywd/lGRUoaTiiyAag9
	i+k7m5pfMzF/iZEANhnajP8GeMkVJZjOddoKyXOj3QH0Zrlx87taBfEPHAFQpXz2IWTneBtXgMQ
	T2anMQMt8+cjSrSIjv85L/s921wWsPmthVwuvA
X-Google-Smtp-Source: AGHT+IHlT54Zkq9G78xurNR3OQ80FwPe+AHLLB41tVK7/67rPq4iDsWAMcHtSavKQD8aOgkIUNYv2g==
X-Received: by 2002:a05:6402:40d1:b0:640:b1cf:f800 with SMTP id 4fb4d7f45d1cf-6413f059b97mr2381350a12.4.1762509728210;
        Fri, 07 Nov 2025 02:02:08 -0800 (PST)
Received: from ?IPV6:2a02:810a:b98:a000::4e88? ([2a02:810a:b98:a000::4e88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f8575eesm3693449a12.22.2025.11.07.02.02.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 02:02:07 -0800 (PST)
Message-ID: <03012c3b-ae9d-4591-8ac5-8cf302b794a5@cogentembedded.com>
Date: Fri, 7 Nov 2025 11:02:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 09/10] net: renesas: rswitch: add simple l3
 routing
To: Andrew Lunn <andrew@lunn.ch>, Michael Dege <michael.dege@renesas.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Paul Barker <paul@pbarker.dev>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20251106-add_l3_routing-v1-0-dcbb8368ca54@renesas.com>
 <20251106-add_l3_routing-v1-9-dcbb8368ca54@renesas.com>
 <06213fb1-12dc-4045-803e-d2a65c7e9fc6@lunn.ch>
Content-Language: en-US, ru-RU
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
In-Reply-To: <06213fb1-12dc-4045-803e-d2a65c7e9fc6@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>> +static bool rmon_ipv4_dst_offload_hw_op(struct rswitch_route_monitor *rmon,
>> +					struct rmon_ipv4_dst_offload *offload,
>> +					u8 frame_type, bool install)
> 
> Why all this bool functions? Especially when you have calls returning
> error codes you are throwing away.

The original idea behind that was - this is "not success" from an optional optimization step, that is 
not exposed outside. If it fails to offload - then the stream will remain handled by software.


But, there is a more interesting question about this patchset (that actually stopped me from submitting 
it when it was originally developed).

What do people thing about the entire approach used to detect streams to offload?

The situation is:
- hardware is capable of doing L3 routing, with some (limited) packet update capabilities - rewrite DST 
MAC, decrease TTL,
- there is interest to use that, because software L3 routing even at 1Gbps consumes significant CPU 
load, and for 5Gbps will likely not keep the speed at all (we did not have hw to try),
- but - given the capabilities of hw are incomparably weaker than capabilities of linux networking, 
which approach to take to detect streams for offloading?

Second question - how exactly to get the routing decision from the kernel stack, to apply it in 
hardware? I was not able to find any existing implementations of something similar...

What the patchset actually implements is - maintains it's own shadow structures for (subset of) routing 
information, and generate offload rules based on that. This is definitely not elegant (because the same 
kernel where this code runs maintains full-scale routing structures).  Also this is definitely breaking 
any complex cases - actually anything more complex than simple destination mask based routing.

I was going to post this approach as RFC at some point, raising all these questions...  but 
unfortunately I did not have a resource to complete that :(

Nikita

