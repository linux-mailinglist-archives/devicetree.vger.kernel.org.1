Return-Path: <devicetree+bounces-24759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E062811225
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FFC51C20899
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA902C185;
	Wed, 13 Dec 2023 12:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="onZlDTA2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77D75D42
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:54:39 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40c31f18274so64407485e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702472078; x=1703076878; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k0T+A6SRa9G6oV07TV0BevTGZT6++0no4uJCEiRG1HQ=;
        b=onZlDTA28DDwtZGIb+SIGlapV7GUIgUx8zHiMtRZS5XYYOz5HWeTdhy4gwhOD8n814
         LmlJGEKuqHmW2ajdHhd/TS4rq9VaxguJQLJW470Y4pLHawpFZwDSOova5IlDcn0ylIqS
         5e30DUIVCqf0rQEICOY1TQ5QyfYHPNErHhJu1DDKaAhWjxvsOc+HVGvjFS5powo1y7Cw
         D5IIfocUBM4AhCJ/GLhcP8dUEmEo8ciOUmJN3IiPFFDglhYgYvNqOPm9kTbq1IoxtRth
         r0ihUcs8Z2XNCbMv4G4GBPj72J8JXIMDYuU5IehXbbYrfU8lk4SkWDA7Yl7s+5P1llGG
         Jalg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702472078; x=1703076878;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k0T+A6SRa9G6oV07TV0BevTGZT6++0no4uJCEiRG1HQ=;
        b=o/5FaVW9lW2/30NsxZyXRfsRmCZI7Heaa+zVZzpGLxHu1xxFAi69cGxMO3UKiRSKqn
         d9GnZbYMITwKNnQdG+clLx/rLgpf10ZA82AyOIHfqC/tkWSD7yPx7Y0+rw+buaDIdB1A
         9bMhKJy8qi/3yyCynpIkT3NNsw8MWLJbbqZYRJmE1wnYlZr98/GUOIXt0YFQJcOn1q5e
         9BN1vL8ixdLJcP4RCtFIWM5d5TwZ4fhfk0Hh2AHQhvhMnJBIwGuDt5SECsPG8DJq3FXT
         pkqT0QqHVUGAOF4OCD4X4QH2Et4idib/sO5C5RZiC8ggAOCcaFMYhaVu881feHME3HpY
         jyEg==
X-Gm-Message-State: AOJu0YzZWxBT9dV1o4WGW2zbjIWGu/39Zn7RbQgXv35aTcUC7iSfckLx
	efZ9I48Dwy/h2uO0md7s0URrGw==
X-Google-Smtp-Source: AGHT+IGfK+6t200n7Uf79+mFIVcnbySb7ZZ/Zv9J0qH1I2C1ziTS7sBTa5sZAA0q/aUz6AB2R57PGQ==
X-Received: by 2002:a1c:4b10:0:b0:40c:32d5:18df with SMTP id y16-20020a1c4b10000000b0040c32d518dfmr3912612wma.182.1702472077776;
        Wed, 13 Dec 2023 04:54:37 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id bi8-20020a05600c3d8800b0040c43be2e52sm12903853wmb.40.2023.12.13.04.54.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 04:54:37 -0800 (PST)
Message-ID: <47523014-1ed6-4644-8099-52fe785bef13@linaro.org>
Date: Wed, 13 Dec 2023 13:54:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 1/4] dt-bindings: thermal-zones: Document
 critical-action
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, rafael@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 conor+dt@kernel.org, mazziesaccount@gmail.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20231129124330.519423-1-festevam@gmail.com>
 <e0b9c0c1-eae5-4664-bddb-56515e9fee56@linaro.org>
 <CAOMZO5CTBkT+T+wevFRYyBJuwMCiUoFuDKGSyYNNZQ9CWsEJrQ@mail.gmail.com>
 <CAOMZO5AhP1Jhjte2dncWbmWzJ0ZHK9PrOC=pQt8YANTU+B076Q@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAOMZO5AhP1Jhjte2dncWbmWzJ0ZHK9PrOC=pQt8YANTU+B076Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/12/2023 12:39, Fabio Estevam wrote:
> Rafael, Daniel,
> 
> On Wed, Dec 6, 2023 at 9:59 AM Fabio Estevam <festevam@gmail.com> wrote:
>>
>> Hi Rafael,
>>
>> On Wed, Nov 29, 2023 at 10:13 AM Daniel Lezcano
>> <daniel.lezcano@linaro.org> wrote:
>>
>>> Rafael, ok for you if I pick this series ?
>>
>> Please let us know if Daniel could pick this series.
> 
> Can this be applied for 6.8, please?

I have applied this series on my bleeding-edge branch, this one will be 
merged with the PM's bleeding branch. After a few days it will migrate 
to linux-next.

If no obvious regression happen it will end up for v6.8

Thank you

   -- Daniel

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


