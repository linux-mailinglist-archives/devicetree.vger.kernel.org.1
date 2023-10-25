Return-Path: <devicetree+bounces-11610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DADC7D6389
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBDDB281C6E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6FA11944F;
	Wed, 25 Oct 2023 07:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yK9rF/SY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36DD1A284
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:38:00 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3521C10F6
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:47 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507adc3381cso7835777e87.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698219345; x=1698824145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aBbMMGXhgW9dj85vLrlAsi/scxI5pUmqL1hVksSIORg=;
        b=yK9rF/SY2yK1krSgnPghSkFbqcU6sG9vgvEiHjZwGUpJN+IrGyKqEfRIuQ6Or6/5m0
         TGqC9PqJRXetnndOmM3afx516YOzH9AiWnUTsCJFh6teb9gkhyTLEHENLj3ckpCVrPO1
         NG97PVYojzYt+6X3cRR7YLrPSSHWbvLf73csO5fXlnch7xw87pqsrOnv47qCFV8NR65V
         YQTBKza1qDJJh7Zxmr7H10sxReXwcAqghNVhJHhte9aWRyKp/+xHQl+gSKSszK68BK9E
         +XYKGdUD3sl+Q2+crd75oPZe3EyPFghTRNOeP8yszcyi8r2S17EZcBwoo69OrEi2Xt88
         o0WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219345; x=1698824145;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBbMMGXhgW9dj85vLrlAsi/scxI5pUmqL1hVksSIORg=;
        b=n0TdexwgkaL+Nh/iRGf7ktINw5dl3k5jK+UbbDOjHwPGU9lva6/VU/IW7ZkprGXQAy
         67DjMsI42leJ/dXYEloxF1Oh49NI1avTxrFU3tH/mF6Y3Unwy2stGpFN+jE147Z2YaWE
         2Are4tPl8btueDSKixA7uMbJA2OuFxpFl1ItZtJXvO4M6ihfXZ20RBTX96czFh5bCXKg
         IcG3F0aFQOsHM3p/1gn818Q0Hk4ofDc8cxQG++36aJAR0fDugiujDAs/4Ic+DNvOUqDR
         81vfZZtLIGWNque1v1KR+XoZ8fRqTGh3FU/qO+sjl7fNOoCOcEh4Y7hJ217r7Jdg8+al
         Ugyg==
X-Gm-Message-State: AOJu0YzxwCr1wLC461OZIiPm4f9H+ItE9lp9LgGjMbRphWFchQ3HrBEX
	44MSqLbDEyDoeGq1Mm1imn3xFA==
X-Google-Smtp-Source: AGHT+IGfDcK6b789W6RGHEquV5YMHBAiCzfv/Rctz+XtFqNQN0vhdNvDDXE2hLiVtblka3kNhM2IfQ==
X-Received: by 2002:ac2:5147:0:b0:507:9777:a34a with SMTP id q7-20020ac25147000000b005079777a34amr10168194lfd.39.1698219345170;
        Wed, 25 Oct 2023 00:35:45 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id h15-20020a05600c350f00b003fe1fe56202sm13962243wmq.33.2023.10.25.00.35.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 00:35:44 -0700 (PDT)
Message-ID: <d7d40b45-ca7c-4f84-bdb3-02555094126b@baylibre.com>
Date: Wed, 25 Oct 2023 09:35:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/18] dt-bindings: display: mediatek: dsi: add binding
 for MT8365 SoC
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
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
 <20231023-display-support-v1-5-5c860ed5c33b@baylibre.com>
 <20231024203010.GA518520-robh@kernel.org>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20231024203010.GA518520-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 24/10/2023 22:30, Rob Herring wrote:
> On Mon, Oct 23, 2023 at 04:40:05PM +0200, Alexandre Mergnat wrote:
>> Display Serial Interface for MT8365 is compatible with another SoC.
>> Then, add MT8365 binding along with MT8183 SoC.
>>
>> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
>> ---
>>   Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
>> index 12441b937684..2479b9e4abd2 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
>> @@ -34,6 +34,8 @@ properties:
>>             - enum:
>>                 - mediatek,mt6795-dsi
>>             - const: mediatek,mt8173-dsi
>> +              - mediatek,mt8365-dsi
> 
> Not valid YAML nor json-schema. Please test your series before sending.

The serie has been successfully tested with the 2 following command 
before being sent:

make DT_CHECKER_FLAGS=-m dt_binding_check DT_SCHEMA_FILES=mediatek,dsi.yaml

dt-validate -s Documentation/devicetree/bindings 
arch/arm64/boot/dts/mediatek/mt8365-evk.dtb


I made a rebase error, that will be fixed for the next revision thanks.

> 
>> +          - const: mediatek,mt8183-dsi
>>   
>>     reg:
>>       maxItems: 1
>>
>> -- 
>> 2.25.1
>>

-- 
Regards,
Alexandre

