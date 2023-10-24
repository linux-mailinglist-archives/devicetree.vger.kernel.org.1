Return-Path: <devicetree+bounces-11227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B8D7D4CD6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:47:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33A721C20AD7
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA26249FD;
	Tue, 24 Oct 2023 09:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fHJUspks"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545A918E27
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:47:34 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC45A92
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:47:32 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso36537325e9.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698140851; x=1698745651; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x6MWUd7aqJU+RyKZEkGxK6HLsZy1LBZI2NHtQ/z43aI=;
        b=fHJUspksWLBRv5KXFjTYEVzCvvLZGzV3lJroX+TmNZfQJqlZbUZ65Yd9MdgSUQ3fep
         Tb/aN4OPq7PGJPbhAp1gng6gNV84rF08EdwHuYCB6LyxzfKurO5U5W0Zc+hh3vdc54Hw
         VLaKh25D1cUHICorYtHU06YJxAerjUcqiOdMMCFaKArNLsRLzdq4syCEoq4o9cqCFK6K
         KqsMhYU/aaAo1AH4sK5wRKfCQbr1Xe803vALnDYFkcKwrYViDRrpAas0Xb2FPtDzl8Mz
         MwopLtBifKOSfneo+ejg6YfDMpS2cYyR6NkFqu8V9q0z8Eu6sNps5NT3Z+zu+spetdee
         Ft7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698140851; x=1698745651;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x6MWUd7aqJU+RyKZEkGxK6HLsZy1LBZI2NHtQ/z43aI=;
        b=s1C46j1J5NfN5qWJe70zxpmxZ1RPzdGPmV+4TLz7pFXIvxmniFKDAhHg+0KLjalqc5
         HKh7wVshauHrT5onsjfp7vEJQ+EIMqrqfz9mTQ45dPEw9EeZK1cNkWl/jrZfP/MGYXcF
         oX8r8oYuFg+gEdPQvvydDc1aQugQNKzxKEq6IPUu0mVDikvrhSxF8dfOWvKG5No0pqGV
         GLDKuPIcT4zcIq+h3IOhGF0/jp8N6hKFuu1k61400lgvuWezNsiXBobALFYReaq3b5Oq
         XsYedAQPrOLCWT5KNu9KSNX0jcsl7va0A0O8dSeyovsMyO++yN676uBhZcgRyCHEbA2i
         tEog==
X-Gm-Message-State: AOJu0YxssN1hM6XJh3Fp9TOdJm5vDYaxftKS+OMHgCwkHPzQbhe1c86w
	BonLEhK72yFWMH0n8HhG0WT9dA==
X-Google-Smtp-Source: AGHT+IEQBKgigKRTPFTRZ1HUumAXzBLooE6sUMLZ71bOwGt4iZlfl+uviaSnAYq2eru3B4WrrZD2NQ==
X-Received: by 2002:a05:600c:1907:b0:408:6fae:1aae with SMTP id j7-20020a05600c190700b004086fae1aaemr6443536wmq.31.1698140851135;
        Tue, 24 Oct 2023 02:47:31 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id r8-20020adff108000000b0032db1d741a6sm9602052wro.99.2023.10.24.02.47.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 02:47:30 -0700 (PDT)
Message-ID: <037d24b9-38ea-4da5-a1d2-8ace4d9dfa5c@baylibre.com>
Date: Tue, 24 Oct 2023 11:47:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/18] dt-bindings: display: mediatek: color: add binding
 for MT8365 SoC
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
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
 <20231023-display-support-v1-3-5c860ed5c33b@baylibre.com>
 <CAGXv+5Hwe8jhgthnxwXEPezhwvhfcE=WMp_My3W8FisRagRTKQ@mail.gmail.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <CAGXv+5Hwe8jhgthnxwXEPezhwvhfcE=WMp_My3W8FisRagRTKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 24/10/2023 11:40, Chen-Yu Tsai wrote:
> On Mon, Oct 23, 2023 at 10:40 PM Alexandre Mergnat
> <amergnat@baylibre.com> wrote:
>>
>> Display Color for MT8365 is compatible with another SoC.
>> Then, add MT8365 binding along with MT8183 SoC.
> 
> This unfortunately doesn't match what the patch is doing.

Yeah, I fixed it for v2.

> 
> ChenYu
> 
>> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
>> ---
>>   Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
>> index f21e44092043..fbf15242af52 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
>> @@ -39,6 +39,7 @@ properties:
>>                 - mediatek,mt8188-disp-color
>>                 - mediatek,mt8192-disp-color
>>                 - mediatek,mt8195-disp-color
>> +              - mediatek,mt8365-disp-color
>>             - const: mediatek,mt8173-disp-color
>>     reg:
>>       maxItems: 1
>>
>> --
>> 2.25.1
>>
>>

-- 
Regards,
Alexandre

