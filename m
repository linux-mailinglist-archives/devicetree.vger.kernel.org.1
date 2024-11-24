Return-Path: <devicetree+bounces-124029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1C69D761C
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B035D164C78
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 16:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD84B18991E;
	Sun, 24 Nov 2024 16:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q/itKcJn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEEF18872F
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 16:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732466859; cv=none; b=ZvmOsbanZun9P9lGr7OXqn+Rig+R6Xrg31XZQsxaiOtPOwqR9QGjnCjboqhMArVQcaks88624cjaJfcYSOCqpLcKbqwS1k7EakpJKZH7u0t6lPNiCTEahAQdy2p7XvRHrAbJbFxE2O2EXqttT8E/nV69/sCuj2QF3gZWB0w3MoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732466859; c=relaxed/simple;
	bh=JobuoKPyUU08tu9YHImYXOLAYBpw0Kg1dIpk88EFCK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RPFw7lHLHV9lSqPmaz2RqpUZnXeDbIfGSOFw0Bn5SFaiucEYqSgAmToDwyK8THYwFNzasLxUNphEXUwALbL0cxV4GfC87JYWhqHs+FB2rUC39jesr8zEulqvLRxvLggPcEKU6aHI2owfoBBe/51GnZvxXhN23JXZEJ7661/EpO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q/itKcJn; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4349fe119a8so51425e9.3
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 08:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732466856; x=1733071656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jG9GYzj4h17FmTgqeFVCPXKuHFes7M1qnFJ6ZBIaFVY=;
        b=Q/itKcJnoFEZTwXmN/XbzE0fx+/4jUEZUc3DrFVghK3qr5v8elVhdqC4YdwEBMvLfe
         /J0GePzV7UDp9FmZXgu7HybVAcJiO5myuJ3f865rJtjIv2rfDxdxoQQS7sndSPYxQcmf
         +YTuIgRimUNFWvZU4S3nmSXfRO6uZ3sl/eKLQQH9ZZjrAYNEH66ByE9p9fSZU/079Mta
         cRmmDbsDLTIy1nhD+xP/i62E0pg+URN9xwstD33JrHMsKdYb7SwXyzbNhWobwmesxVdR
         KTrMuKq8AX5iX/0st88vvIE+nb2n0BViYC8ch3+aCx3P7l1vtKl19Ptl/1Dwt79RBQmP
         c1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732466856; x=1733071656;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jG9GYzj4h17FmTgqeFVCPXKuHFes7M1qnFJ6ZBIaFVY=;
        b=fV+InrWRtA00A4jorRTbSRFD63MLTA+Ox8cUuOZHXCuEJUAghY77jPJ8+JK/C13bW6
         iZBTS66a3bkfzohRDG/qV+1fllJrBptzdcDOqPaGz3BwMBDje5c6Vj4QT1xX+1VnuVKz
         9jIyBKEumykGEL0D1tZedne/b3F/7YPQVMOtgfxVobMQF0izK9M0IYCYyPAz6qYc6hGw
         vHgdc/3WFDVpnS/+QCaeP3fNBG9G1j5EzE7sMfiY6yO5+Nd/0O1AskY2s9N3f4xdHKS6
         z4owf+kleEYp5FzVMUGit+F4eAHJAXIBxWMbDa1h8li7xYOtAbox/QJSKZeEkZW5sC78
         xMWg==
X-Forwarded-Encrypted: i=1; AJvYcCVKx9yfAhhcI9/4/Y1G8al7AbSfhJ72X5clNHoatGhKULx30oh2AR5KtoG3nkX0kblN/uW6JgUDs1Cy@vger.kernel.org
X-Gm-Message-State: AOJu0YzBDf/b2Fe0xKOL0dZr5lroDwSKjlrf1TIfUQRRZAKofrq9yN/H
	MhJKFAnXNmi+dvrqCuO79qHz9CwRB6v8ReiyJlLWaT16f0CACJjqGC94QJlxlkk=
X-Gm-Gg: ASbGnctU1/KtSBDPvrGHSrtADygdrmB5VcrNWM7B/lwKAIgLp+MMcOaVqknuVfVscG9
	+4yKv9PZl1js+aeVFSVyZ0TWGzKlgS7lj8zOytiAaaPQspCLHecRWFcoZXqIcPj5mFOY4k6JljF
	MpdVunJWm2XJxnWeHi9z7ztr9+8gELEM9n5bGAT5veBBtiIHa75A7vSLm1OX3uRZT0MS3qn2vaB
	21u9KoOGLJjkK9JOvnqxBRI4EuhXU0+U/Ckc0KoB7PSnAGBaRc8KLodQ5pxQ2CEPeSM1Q==
X-Google-Smtp-Source: AGHT+IE+4mrCEOHqGjqGf8x9RVJ6Awxw07E9IFCalCVy/WamWyUDVIev1WrjA8IODAWUGYlnPIOfGA==
X-Received: by 2002:a7b:c848:0:b0:431:55c1:f481 with SMTP id 5b1f17b1804b1-433ce4c1f4bmr35892455e9.4.1732466856090;
        Sun, 24 Nov 2024 08:47:36 -0800 (PST)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4349e47f3d1sm18010255e9.17.2024.11.24.08.47.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Nov 2024 08:47:35 -0800 (PST)
Message-ID: <c25e6a80-f6dc-4ef9-a90d-0fa09cbbc217@linaro.org>
Date: Sun, 24 Nov 2024 17:47:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [GIT PULL] Devicetree updates for v6.13
To: Sasha Levin <sashal@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20241118210730.GA3331421-robh@kernel.org>
 <Z0NUdoG17EwuCigT@sashalap>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Z0NUdoG17EwuCigT@sashalap>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/11/2024 17:29, Sasha Levin wrote:
> Hi Rob,
> 
> On Mon, Nov 18, 2024 at 03:07:30PM -0600, Rob Herring wrote:
>>      of: WARN on deprecated #address-cells/#size-cells handling
> 
> With the commit above, I've started seeing boot warnings on a few

And same boards do not report problems on the next?

> platforms that KernelCI is testing. One example is:
> 
> [    0.047792] ------------[ cut here ]------------
> [    0.047803] Missing '#address-cells' in /firmware
> [    0.047873] WARNING: CPU: 0 PID: 1 at drivers/of/base.c:106 of_bus_n_addr_cells+0x90/0xf0
> [    0.047900] Modules linked in:
> [    0.047917] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.12.0 #1 933ab9971ff4d5dc58cb378a96f64c7f72e3454d
> [    0.047935] Hardware name: Google juniper sku16 board (DT)

If this is mt8183-kukui-jacuzzi-juniper-sku16.dts, then it looks like
bootloader adds /firmware node with missing address/size-cells. Is
bootloader updateable there? The dtc reports this as warning for almost
20 years, so I assume the bootloader is just junk or not using dtc.

+Cc Mediatek maintainers as it seems their board.

Best regards,
Krzysztof

