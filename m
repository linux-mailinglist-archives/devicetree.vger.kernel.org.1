Return-Path: <devicetree+bounces-216444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8EFB54D19
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:18:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E54F3B4549
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0758C30505A;
	Fri, 12 Sep 2025 12:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="epwqyXdn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E731F2D3A94
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678820; cv=none; b=RSBJhnE9iSeYIomKsKj5Wq+RwGwc4MxWunBb34B5Z5Ma67XPJQFEgobuJcYaLXzMaXDJW1r40CzwPruMMG1rGebIGK/y0juvaoUV3LEvsbuSSXlnYw7in2fRFRl3kE2gBV86a1M/pJqTxIGg43sGnP8U3w2H4Dg/BsruRQls64E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678820; c=relaxed/simple;
	bh=7tLsPQ56GHykSvGu2h/RP8o92u88h3vhaDOKuu5gNK4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ul0XDlMIZ75OHc/YhImFatXq8sUOrnkyJ10+gKyyzKcMbCdZZ0kilF9aU0ItGYlnUvX3ygWSTEGpK/Hm8iAvetuSODCcRo3ymadum4AYIN7c6ufUe7durR5WbyClVDMSIuDKFcVYpEE6Jam693ExRR0DuY1rzgiKqzPKAMSpbPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=epwqyXdn; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3e76766a172so521515f8f.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757678817; x=1758283617; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CE95xq6ZgnpOLnyTR/eAjFT0tRmq5j5KNZb4KBSgErs=;
        b=epwqyXdnnAMuWqdFrWmyTklhrzltxKBEXEibAYGbDKc4Lmun9qqEi1Qfed9WsYQXf3
         pt27wud0vU2YGi0DaYp+sYBGQgHvBZ6lsS2xxcy7wvUD+3X6EruDIRyGcB7djWZpiyvq
         sAR1sPJrP3blN0F1TWq40Eua7+oOF+lmWTVEutp3tzRCj93V5IWxTw7FxkmXi1Sa/RoJ
         xVj6HR9biwRMnGVB6ILhkpVlDhXOkmwjDGSTZtojHbMeQq7YSSxPBLB2F/6FZ79Exw7l
         bgdnPKRgDhKKVQwXI3FGt/x7xdola+RtvgXaX0spAW9P5Vzl2e6B2/7ypvMEdmDnF+eO
         DlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678817; x=1758283617;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CE95xq6ZgnpOLnyTR/eAjFT0tRmq5j5KNZb4KBSgErs=;
        b=rxWizikM7xaMYnPbtquZAY/uoQY6ujq6EfTRoQNg2UqQNAqI8jBbj1BOoSluLaXbUo
         kxPLBeAJR3s/oRbIhEyLRYAI6BTO0ROieSRiqxDwICZij6T1iBGNKt7Pkb7BRz9vMMqJ
         s0rjOCaliYMXPJNfAuOXbhOrlGXla5sD1DAxuXC9bgoMkNF+tFS71dvvhtMJ01dxba2m
         oWNom+9BqT0FkgUyXDmkHnUYH6I7BVQ49iWWWA+0IX04rNnSz9szrp/kLbRh0KvN1FbO
         iMk1VMXXold700fij6Fmn2V5axycK6TENq1DXW98fjj64N96V+zSFdUSIcZ0M770qEeo
         LaYA==
X-Forwarded-Encrypted: i=1; AJvYcCUPwGSgqQobY5Jzguf+8RxG6zwFeLt37ls+q64cjcy6d9UFpxqd3XfxP4W462q3t63ys2M2c465pk63@vger.kernel.org
X-Gm-Message-State: AOJu0YxeBIeWfzstYCAl/Pmmlg9Sh5O67JwllbM3U+CgK6EQZm8ZgDme
	M0ASKjxPdFP96aVa/GqI9fHSmY7T4PGCdNuHq+3nJSvryFzwCT3m90Pv
X-Gm-Gg: ASbGncuaGlNIRJsOUlEbyaXm9zoW7H9fu4BL4HVcrOGsvtRhWp28k3969TUWn5ts1dp
	2dshGZaSZR4LLzRSexx3YsAFby/I1JuPaqKOXP5zRujOwx7446yOGSdswFjG0hgVBvCXrEQYMc1
	G1R7nsP4FzwuUvRHFoXoxyddXy37MEKQniCFkb+fNPWCtUUK3LKW2xG9PpSw+2Wk/a8opVKvJq3
	Z60ExTles5y6DyeDbyt37R1zwbVcinzOzxAU8VOUfNxMGDJlnyyHgEf6eXB4ONguk6u0T3lP+sZ
	wLiWNzIbuxtb/azV1cs9ii5/sPcKx3WdebP4D9ttDcegCW3yFTNnlpJ9Sz9dYkTLlaj1Dz/PnwU
	/e1dbyvOat4iPtiCDfjoQDmyRkscLEhk=
X-Google-Smtp-Source: AGHT+IETh19o0d8FqUptONExUhi8XbDE/+I2zw2k77iRDOfZ4p95STnqI67o6JmXlfRcZZ+LQx9RNQ==
X-Received: by 2002:a05:6000:2f87:b0:3e4:8163:b6f9 with SMTP id ffacd0b85a97d-3e765796c6bmr2563890f8f.14.1757678816740;
        Fri, 12 Sep 2025 05:06:56 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e76078fe3bsm6411847f8f.28.2025.09.12.05.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:06:55 -0700 (PDT)
Message-ID: <cfc03953-7c00-4164-bf91-cab0c24f0fde@gmail.com>
Date: Fri, 12 Sep 2025 14:06:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/38] dt-bindings: mailbox: mediatek,gce-mailbox: Make
 clock-names optional
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org, robh@kernel.org
Cc: herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org,
 conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
 airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com,
 mchehab@kernel.org, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, sean.wang@kernel.org, linus.walleij@linaro.org,
 lgirdwood@gmail.com, broonie@kernel.org, andersson@kernel.org,
 mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, tglx@linutronix.de,
 atenart@kernel.org, jitao.shi@mediatek.com, ck.hu@mediatek.com,
 houlong.wei@mediatek.com, kyrie.wu@mediatek.corp-partner.google.com,
 andy.teng@mediatek.com, tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com,
 shane.chien@mediatek.com, olivia.wen@mediatek.com, granquet@baylibre.com,
 eugen.hristev@linaro.org, arnd@arndb.de, sam.shih@mediatek.com,
 jieyy.yang@mediatek.com, frank-w@public-files.de, mwalle@kernel.org,
 fparent@baylibre.com, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-sound@vger.kernel.org
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 24/07/2025 10:38, AngeloGioacchino Del Regno wrote:
> The GCE Mailbox needs only one clock and the clock-names can be
> used only by the driver (which, for instance, does not use it),
> and this is true for all of the currently supported MediaTek SoCs.
> 
> Stop requiring to specify clock-names on all non-MT8195 GCEs.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

> ---
>   .../bindings/mailbox/mediatek,gce-mailbox.yaml        | 11 -----------
>   1 file changed, 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml
> index 73d6db34d64a..587126d03fc6 100644
> --- a/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/mediatek,gce-mailbox.yaml
> @@ -60,17 +60,6 @@ required:
>     - interrupts
>     - clocks
>   
> -allOf:
> -  - if:
> -      not:
> -        properties:
> -          compatible:
> -            contains:
> -              const: mediatek,mt8195-gce
> -    then:
> -      required:
> -        - clock-names
> -
>   additionalProperties: false
>   
>   examples:


