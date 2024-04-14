Return-Path: <devicetree+bounces-59082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 559828A429A
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 15:33:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F3311C20934
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 13:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF94E42049;
	Sun, 14 Apr 2024 13:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G40NE2go"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540202D61B
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 13:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713101588; cv=none; b=hdTqlHu/BxZ2tcKaPlkt+/z8EOcK26l1Pa3YMz+ygJzlQ6cXa3K8057T6+T8dYINAwUXYZJWCEwXTblMSOY7GX+x0HtuQDf+VjFqmHokFtlCPPaXoYvyWIaRnKsU+rUnQYLSDZGw+ouj6HsWwxpgKa2K/ni7YV4UJOedXVjwzaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713101588; c=relaxed/simple;
	bh=UGTdV60rTTa1/z7FjjcIkV8wA+snRkQpamMTF8dkDYI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UYbeimSCuBRI7Cl/87aqGUGrkF8TwSaI8W6nM4as6eUhwunvnWt0oSTib/aV75vecSIoRs9C3UG4SsGkMQpjN0VgfAF7i6cvCQLbTSoRQhT0t/7lvj1zcsJZt2rI3em2qr5/zx6XMiU2ZJj7ps2PjYDxrvkMt0mQgV9X9TXpmgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G40NE2go; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-56829f41f81so3438689a12.2
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 06:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713101585; x=1713706385; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Tnz2Ub9YHRcyx+OTx0bhxWC9MSKU9cWV4v6zit2//m0=;
        b=G40NE2goNpo6dO2BjwtnIijvgtFOQRH8v2CCVyhJE6KkXnbjK+nDwJmUl0JHfxcjGf
         PXMFjLMSIBHvGRLwR8u85zICbOv+8Ybtjn3vmRJNk0ks6xKWAJTCdKUrlDG258uSUYwX
         tLYNJUAIz/4nUCrHPlBn9/l9EO2HC24iwqBN2vIy/tYw9MMVytmyIvLh5uL2Y7hT3qN6
         WwgjRBJQKUwfentHKl2QfEuOE1srY2rmR2lFzW68wmSZosfYTcXzGfOdV+Dw4L917cmT
         6K8dRRJ5YHOUl0vrfz1Zd1SJIRSzz1Upaoqaf1br3TxBHG9s7fz7ko2Xzmg3yaaFtAuK
         mDUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713101585; x=1713706385;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tnz2Ub9YHRcyx+OTx0bhxWC9MSKU9cWV4v6zit2//m0=;
        b=AkMi7jZcMYp8oQs9CVDfAPXZuBQyROis/joS+S+gYWTZbuNbv93v4je+rY+UNI+WHM
         n6KRnz02/fmwr8kkjlA8fUdeS0cEFb68fPTt79MRZxsP4VfaQ1fR0+GtR5KNsRE8PmAx
         7rp8+Pt16ZLfqM0CZzm8paJFlSa7D7is/6S7V2cze/y1l8ypXc7eJb80YwwWtn0IjQu+
         b6hxuHf76XCC7oTYe3tJBwwT7kzTm1k9b33tuuDElCy5OQ0vbD59FgKGgFodvpT4xD8s
         UJu0w9ncwNqm5kvITw8liMxPm3/uYBDESn8/IOa3/yG0F4AdtTpWO4tMBmrGTdC100MG
         7fEQ==
X-Gm-Message-State: AOJu0Yzw7a4xReJ/uH/JnLwf6VKv9CFZBYgePep7K/gRdfRxjOXXkHxh
	va2Ak3pVv8L3PqcqdJDstMvUHfgN4DF+hCpadI36GDVE1OKWJk3zSCZG78Xr6s8=
X-Google-Smtp-Source: AGHT+IEJdQEMXrX7+ib29PFiYSciihOFHgT5L3QfI75G1ws6jpvAjzBzQvbITHRCnun6+1TlduP/EA==
X-Received: by 2002:a17:906:d932:b0:a52:223e:2d33 with SMTP id rn18-20020a170906d93200b00a52223e2d33mr4428762ejb.25.1713101585464;
        Sun, 14 Apr 2024 06:33:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id h14-20020a1709070b0e00b00a518c69c4e3sm4193934ejl.23.2024.04.14.06.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Apr 2024 06:33:05 -0700 (PDT)
Message-ID: <efd1eb32-afd6-4383-be45-89b0f71f118f@linaro.org>
Date: Sun, 14 Apr 2024 15:33:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240414131529.1730506-1-jonas@kwiboo.se>
 <20240414131529.1730506-3-jonas@kwiboo.se>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240414131529.1730506-3-jonas@kwiboo.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/04/2024 15:15, Jonas Karlman wrote:
> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
> computer based on the Rockchip RK3566, with a compact form factor and
> rich interfaces.
> 
> The ZERO 3W and ZERO 3E are basically the same size and model, but
> differ only in storage and network interfaces.
> 
> - eMMC (3W)
> - SD-card (both)
> - Ethernet (3E)
> - WiFi/BT (3W)
> 
> This adds initial support for eMMC, SD-card, Ethernet, HDMI and USB.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>  3 files changed, 510 insertions(+)

How do you build your patches? That's rhetorical, because they cannot be
built... Missing Makefile.

Are you sure therefore that your dts pass dtbs_check? If this is not in
Makefile, how did you run the command?

Best regards,
Krzysztof


