Return-Path: <devicetree+bounces-254837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 496A8D1D0C5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:17:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 454E93008D52
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 756CA37C0F1;
	Wed, 14 Jan 2026 08:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HHNZyi4h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEC637E2EE
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768378628; cv=none; b=hyaTUJ4HHYcjQZWeszOz5hd+d7H+61hg6Mca/RXwlhu5t+GyScUOnW6aQ9bmTK3e5WgNZ5j1P2R9TLXnljqY2tIm95iOCxZqSBysOwWijJ/xs5uzlfxQu58yHkNYdL1716xomWewQlQajfEzKxL0Jybcqv97NAn+DB3fBIXPnGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768378628; c=relaxed/simple;
	bh=o5URozGNlcTJCoUm4Mq2kJtCRIFDHpPaYBHu8P+apsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kf8gABgbK21ueqRsBfaR1tyoGOpD0r9SSrZ5YSX09RgAp/X74FmXwveClzPbJbPgmLai23L+Er14f0xDrSQvrcsfHy+OmoaJ+lIdXRCWpl5paSWFFUH9Kt0GU6qbHHEBCpU/NnQg4H37FLbhkgExB/jPKrOGMlrmADUvs1QMtLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HHNZyi4h; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47ee0291921so8735755e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768378620; x=1768983420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rdiAvhIBSkRBz7twMnAqXfiNrByqG73RL/D6sMKeEGU=;
        b=HHNZyi4hc9y+JApGqSROX7Y8aOukpnS9ItxVBFyIelltRrhL8lW5X5isxwPuJCgUGP
         xMClHs7uLwJ75kuZx2y1gsUxqDb4wTKs7vdOL0SjKQZQ28072mtp4POSEewP3adJT1ai
         QXWwVipsjcS044mepsn3IVkqPxfOuFAEduH9aBrqy4lrasIPPLGqNkXHEOsJhUwPI1Hs
         C1gL6EnXXdzTPw3zRsUUj54hhMxgS4yKegebMbZOI4GzoE0o8/jPEZZrjvDFU5oHdS0k
         3+qMVowdouDOvz+syicD5FBrVNrsk8npGrqCfpbsZ1e2rajTSJ50EkcWUj3rI4fEYDkm
         PEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768378620; x=1768983420;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdiAvhIBSkRBz7twMnAqXfiNrByqG73RL/D6sMKeEGU=;
        b=t2G+LmdLAZKD/++Jn1VrE6tp1GCMoANYom8ku+bdPMSKDzkOkGMqbhi2Bvka8a0DfZ
         GtNgDfUHm0FDhm4VjsmJBA7pHGPm9DEyR6m08SLvPe+QQ5ykhbLkDO11Q4Veq9h8an9M
         7EHSOWqtTEFtaNjn+8t/M1SVbZnlmsMPrsQeRPquLjo3UfQvPcgVB210R6LxD07gHryf
         1vNOqIYYgB8u/6ywU2ammAmGTt/+YREGEIB0eXARChVc2FTD8ubTLN1Gi2dOn4xHEXHg
         30aqCLg20uViM3CYAhmRB7i2HMHG71s2cEns2AxYtMLS7veMZj2VViA/sMOJU2DgxUeZ
         xq1g==
X-Forwarded-Encrypted: i=1; AJvYcCVv2pG29oecoK1Ojo1e8gn1A49Jgt0sbRKXYElghijiSUC+O9rdjGUxsNOMcDZ5ef0BkV+c3uynw/Yj@vger.kernel.org
X-Gm-Message-State: AOJu0YyFmCVeKwi8pxC+ccvbW+GSvyMsT6sn1JjR02c8x/EcTPudl9TD
	ZwWr64ZrFVrDmRlzOigwq27J9ehxQc4r0YXgqtZgdsmIzQZL+ym1xbgf
X-Gm-Gg: AY/fxX7WuPDdsv/DVUmRc7yUAakEgWSRvvxba2w4//U2kQZFx0PutzB6CXlScV0GYRb
	tx/0rWglAVGkeXkOjUElPzRojcI4nYbYQcqo7at+LW2sQQKN9rTOw6KgrnU1oiLXR07DU3r09GF
	a+T/bAFpHW8+U5fjh9faWSV7DVTE11weqSFce48tlvX+AUVSIOxYvs7xj9UXyzXV45brGvfw/zj
	W29B+nzYHFmKHI7VVNauRDiFAMx98tFfwBGq+BbuGG7DBWjpTBKipWkAdZPRZjbUUqKpR70I0f6
	neXuwrig2whKGR1YXQXON7Nb34yRpgwxHOce/J4xFsa8VJ2i3u+z3xAvxrvQNxHrjJGJ27IW1J3
	tuU05pJBAeAp8E3CG3/ONhwKPpUygMCmlGgYwT5BlkxtLAGhWaEvTJZlwKZWTs3kb+eUOeQ/YRM
	8xhBVKzo+jxFjv8aNEPuRz/FOOqdxNRSrnWuTYwLEGzHRNvUxn29F7QPBwcThQFTwp7JA=
X-Received: by 2002:a05:600c:c0d0:b0:47e:e78a:c831 with SMTP id 5b1f17b1804b1-47ee78ac9e2mr3070835e9.36.1768378620011;
        Wed, 14 Jan 2026 00:17:00 -0800 (PST)
Received: from [192.168.1.27] (84.121.134.198.dyn.user.ono.com. [84.121.134.198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee578d37esm15572945e9.1.2026.01.14.00.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 00:16:59 -0800 (PST)
Message-ID: <0eb5086c-39f1-4cf3-aa71-440036930052@gmail.com>
Date: Wed, 14 Jan 2026 09:16:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: clock: mediatek,mt7622-pciesys: Remove
 syscon compatible
Content-Language: en-GB
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, matthias.bgg@gmail.com,
 ulf.hansson@linaro.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com
References: <20260113110012.36984-1-angelogioacchino.delregno@collabora.com>
 <20260113110012.36984-2-angelogioacchino.delregno@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20260113110012.36984-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/1/26 12:00, AngeloGioacchino Del Regno wrote:
> The PCIESYS register space contains a pure clock controller, which
> has no system controller register, so this definitely doesn't need
> any "syscon" compatible.
> 
> As a side note, luckily no devicetree ever added the syscon string
> to PCIESYS clock controller node compatibles, so this also resolves
> a dtbs_check warning for mt7622.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   .../bindings/clock/mediatek,mt7622-pciesys.yaml        | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7622-pciesys.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7622-pciesys.yaml
> index 9c3913f9092c..c77111d10f90 100644
> --- a/Documentation/devicetree/bindings/clock/mediatek,mt7622-pciesys.yaml
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7622-pciesys.yaml
> @@ -14,11 +14,9 @@ maintainers:
>   
>   properties:
>     compatible:
> -    oneOf:
> -      - items:
> -          - const: mediatek,mt7622-pciesys
> -          - const: syscon
> -      - const: mediatek,mt7629-pciesys
> +    enum:
> +      - mediatek,mt7622-pciesys
> +      - mediatek,mt7629-pciesys
>   
>     reg:
>       maxItems: 1
> @@ -40,7 +38,7 @@ additionalProperties: false
>   examples:
>     - |
>       clock-controller@1a100800 {
> -        compatible = "mediatek,mt7622-pciesys", "syscon";
> +        compatible = "mediatek,mt7622-pciesys";
>           reg = <0x1a100800 0x1000>;
>           #clock-cells = <1>;
>           #reset-cells = <1>;


