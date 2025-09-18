Return-Path: <devicetree+bounces-218974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A27B86044
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 18:26:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 711303AA43F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 16:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0DA31D733;
	Thu, 18 Sep 2025 16:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="q1OF2wyE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA01931D36D
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 16:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758212547; cv=none; b=NXrUW9adUgOZJiEsopW9eWkyykND0wpPhZcPyA0A6OBD8z6SPiWV3nDNSTIDSZMUH/FMVh3aZYoQyAu3HTG9mSpPWUWKGtZU9D//pwmgY6B4CCK6eUB3bzO8dzrgpscdY1a+I3A6V+R2uRyOLS6XcBVZ/oSFQQo1g4VtQpHIVH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758212547; c=relaxed/simple;
	bh=JmMOdCGNZ0SBHOnqV81I+/ZKe28nhMfYW3ASbme/DJc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZtUBc9AXHu3+eOaj62eeulpNSdOtLY/wIwVEzu72ahqX5aqovYOH38I0FI4A/0wbnoH2lPyKEvMRtyQO5l5zyrYeM8sdFi7WtSTj8jjKUM6wOjwdA94/NpuQKTzHVexgQiT+Lv1mAQBfDguEi0MV3c+iDqwf29cPZBljNhGF6Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=q1OF2wyE; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-89336854730so45927639f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758212545; x=1758817345; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q60ma2V2EhO0+PfY8j2XOpbs7KGOot7DJdfuAqVmdQM=;
        b=q1OF2wyEyprnjAYfcF0aeKGfx6QclrxbYRHWdbBioqV5uLb7Oy2DEXZ9/TiPQnMGdL
         0KVHTw/99WD+M+3UH6gxwCEFqWxikYr8xTvbmFv6FHco+Hvbg82dTeWL+wQ+BNr3FSoY
         VHtEaWy0bhn8K1OthHsbNxkN+JAfSmgzjLInxOliRXlXAZWhn/00aEVX+Ul+Ywmcm7cf
         EcNiiouesb6Hh77p4oFvSb45O4dD4ddnOhgH7FpyXWQ+n9GC/wwdfvpEdHql7iIp0w+x
         55BiCRFgirg/kUhKWmVofL3TkLH3Hdau0SoF1JdM0gqLV6hT9mz/9srNMaaTxxyCQi4k
         79qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758212545; x=1758817345;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q60ma2V2EhO0+PfY8j2XOpbs7KGOot7DJdfuAqVmdQM=;
        b=ENfXGxbVsnawlmxB92iIzNj1Jwl8tbntPsqyvsaeJJEavutw9aTCWskV/SeoOFuicg
         8wd3yUK/taV71UNw1/UoRtHlwKvRR8tZ0ty/MIN6h9pp0AiLomY15D6eG0oMj7diZF8u
         4SGJgHHU1keKauKEFMa2+3FZrN0uVElD9xn3KBUrwqAucjygEucv/TgL0zVcLjEjXcXL
         pb4HqzHlgz4lsitvhRW0XlBdv1JF7LEiOQ1kGrATMyWrbcMdjvn8eYJKkGOIhQXgTSmR
         frGOC6dnSl4aavMVDSlO/32PPN1D7I7NZKOJ/fiGLJBVrKbJNNY87cfiKko4vPQTWgsO
         pL0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjzXCoH1f71Um1LXy+9MhtNzGxhJsNh1cGOhQbOaOJpwE8DmRHb6jHY7DopepIVHK9nzB5iAsNlSZA@vger.kernel.org
X-Gm-Message-State: AOJu0YyfazU58y3l0db3oJmtQWH2mpGgi8wzfQR/Yi5MyGj0N+WuZ7do
	VqLFKlMU9dr0uvlRfXb9WvYa9UcsO7p99DPqHw6km2SKcl+gaXJ7hcKYpftN0Lewc6I=
X-Gm-Gg: ASbGncvBTu6n205HXAl01xMKr5ZMg+9uXQ95oVH6lpDKvjLPCRqSXOSTPeNPek+d/Yf
	YSv2g5ooXtzJ5vuYJ6lJ/7yd6A//i4NAoW9aYZtNHace61rpSWaZwm5EG+V2nYUn4oR+gCPI0Yd
	Arvt3RM3Z+ueb59TdnabupVo4MBVlOoImFj2IVhDUUTqk2EOWb/BlNzUxycoLA9bXrFOoKeqssB
	/9Jgot7vX1hTb2PBZLpgsH5gv02wbSg9WO5Z2mIcDEdfI2ncEpakSnGJ0hIT2iVxbEK7vPuEzUh
	zVe0EOl8MkwTpljWAg+uXtaDsW00VMWFK8tnkPkZeRX8zdLDhnpupZL2T7vSMd075SJO0/G8LWe
	sBQPgZbKOhBlM7SAx24FlZ2Y8XxGWyOctqf12g/RqfZqJNRshChqPJ8HNaPo3BpZ+WEHvLxGBOF
	Dlr4XqH18RCA31mM9Z
X-Google-Smtp-Source: AGHT+IHno87PGRHfIe/4sYG48mSDNVPM2G0IVfwWSmkQa5Io8uxPrbllpYQCUBUanWZMFS1pdWGK8Q==
X-Received: by 2002:a05:6e02:148c:b0:424:80c5:87a with SMTP id e9e14a558f8ab-42481984015mr1925725ab.19.1758212544749;
        Thu, 18 Sep 2025 09:22:24 -0700 (PDT)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-53d3e3373f6sm1110059173.29.2025.09.18.09.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 09:22:24 -0700 (PDT)
Message-ID: <c32cc8da-6703-496f-b30f-4961aa811869@riscstar.com>
Date: Thu, 18 Sep 2025 11:22:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] riscv: dts: spacemit: define a SPI controller node
To: Yao Zi <ziyao@disroot.org>, Yixun Lan <dlan@gentoo.org>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, p.zabel@pengutronix.de, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250917220724.288127-1-elder@riscstar.com>
 <20250917220724.288127-4-elder@riscstar.com>
 <20250918133209-GYB1273705@gentoo.org> <aMwYRGjTdbQCJf3S@pie>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aMwYRGjTdbQCJf3S@pie>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/18/25 9:33 AM, Yao Zi wrote:
>> .. em, so the SPI will use pdma, then probably you should also adjust Kconfig to
>> select PDMA driver?
> The driver seems to depend on the generic DMA engine API only, IOW,
> theoretically it should work with other DMA controller as well. And it's
> even capable to operate without DMA (see k1_spi_dma_setup()).
> 
> Dependency to PDMA really doesn't seem something should be enforced in
> Kconfig: it doesn't exist in code level, and the driver is actually more
> flexible.

You're right on both points.  The code doesn't *require* PDMA to
operate correctly (to my knowledge).

Yixun, what do you think?

					-Alex

