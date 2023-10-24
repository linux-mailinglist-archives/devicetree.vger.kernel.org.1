Return-Path: <devicetree+bounces-11203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4710E7D4BDD
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF5E3B20C23
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A770022EF1;
	Tue, 24 Oct 2023 09:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oH2tmN+u"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14ED749A
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:21:46 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8778E
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:21:44 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40853c639abso30239985e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698139303; x=1698744103; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bHLz8PPjT5hmB2yN6aVrR9CV+tu/9PbMfn39Dru7aRI=;
        b=oH2tmN+uFbi4r5EtEV87Eap4fiKhWjYbRAF7+0kFVPe/cUeb2GtJIZg0Crx/2PFHbN
         i6LWRpAATzjIkw2Se1FPiaG7ioGTCnWPGxCMCiHRB1hGBeWXUhFOx8nsUDdfgugubr07
         2EcjCDX3z469k6OQMJcEQJPPSLvwrzJxYNG8ZiZpy9DCTgO3O9usaWhLyhTr9vuOKZcs
         2ssB5MFqo4JiKn4nkGhJnGzfqSuNbajnPIIM+A4ZSbbS8l2N/YafJzYZJKPImcQIMFAA
         sPvxWhdb7w+3RV5YtaCinuasqTvvNWFi6qnBz6K8GDZJAC6QIjyGoVngTemWZEJwverC
         hx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698139303; x=1698744103;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bHLz8PPjT5hmB2yN6aVrR9CV+tu/9PbMfn39Dru7aRI=;
        b=QTaDM1PWm2QfviBnJjX4aYDXGFtkv3P09iSrPqbXbT1XX2e8XeRfUw992TdIHvdB82
         lQJfLidKdnrO2kp+nzTwEA7yo3XPg5oTWySVtIz8SPfR6eI7q7VZGQkrrCGSFWQcTXGR
         h7YpTRm0QXcM8z1B2XRrpJs+yfrOc9Ce/2QT+/Grfaj+ygnNruhMdrr75l4ID7CYgXyJ
         Y6NXd82AY1PsWOJydLgBnXZiXJ5U3VCPjMzZ9hXhoISBwdfZnhBCLXOsgLZjD2fAQHu9
         t9fJuBlcWcji4fabXhB6/iU/MbxwNmYXf+KiJ7SHBoB7MIMj4YdT0LsBgvpkNfQ9DUmV
         f3nA==
X-Gm-Message-State: AOJu0YxMye/viFYz6sQl3dflJFE2Y6s6j2ihZpfi6K7/iVYxwdB39QjS
	9ntizEW/L6BLbaGqg/sfVIQAlA==
X-Google-Smtp-Source: AGHT+IGmTE7S8Bn22t6axk51MnY+srHjcF3lXhxJM8aBvQIoNaSPW1U6i8mvZVzOD+mypNBfwpseVw==
X-Received: by 2002:a05:600c:3b99:b0:407:5ad0:ab5b with SMTP id n25-20020a05600c3b9900b004075ad0ab5bmr9181918wms.8.1698139303217;
        Tue, 24 Oct 2023 02:21:43 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id q19-20020a05600c46d300b0040836519dd9sm11523045wmo.25.2023.10.24.02.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 02:21:42 -0700 (PDT)
Message-ID: <ec7c16ef-5878-488c-af7e-10138783f726@baylibre.com>
Date: Tue, 24 Oct 2023 11:21:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/18] dt-bindings: pwm: add power-domains property
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
 <20231023-display-support-v1-11-5c860ed5c33b@baylibre.com>
 <20231023-oppose-tamper-36d526ece102@spud>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231023-oppose-tamper-36d526ece102@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Conor

On 23/10/2023 19:38, Conor Dooley wrote:
> Yo,
> 
> On Mon, Oct 23, 2023 at 04:40:11PM +0200, Alexandre Mergnat wrote:
>> According to the Mediatek datasheet, the display PWM block has a power
>> domain.
> 
> Datasheet for which soc? The mt8173? Is it valid for all devices in this
> binding?

I can't verify for other SoC. Then, I fix the commit message
and remove the example changes.

> 
> Cheers,
> Conor.
> 
>>

..snip..

>> -- 
>> 2.25.1
>>

-- 
Regards,
Alexandre

