Return-Path: <devicetree+bounces-68172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0FD8CB097
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 16:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86F4EB243EE
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ACED142917;
	Tue, 21 May 2024 14:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bFVAHxie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961CC142915
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 14:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716302497; cv=none; b=Q1Hk0Ej+ICavznf61TLjDDw2fOgUGjqZoVegiRQfbtRBumA7BKsrK6VxzAHczP/Ga8MOp6WqRX01G9EmwOsvb/bAm0H7zltinQZjAk2jIhdxzQA3DuFSBs4yUT/4kiPa3D4FyeBu3rezsRhqphHHXvkvBWdWabGU21U95q7wLsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716302497; c=relaxed/simple;
	bh=nZ1k0uetES8u8MlD8iJUWjUc76+6FpZkYnzMg83sWbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QHMs+f4ez4rpadu6SXj6vhZTtOC0yBokSlBelAuLsP8UHWbfDHUU5PpgwgTaZ2FHaUPDxmqeVvhgyUKvXRZSbjcYNIRuh4cA+n/EPtBhutoLp5Q4VWkjpFXndJ7sPHV7lUr39isnmB5hK0HrAd8CgavgSVt21+nrjWrN4zeJXsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bFVAHxie; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4200ee78e56so30667135e9.3
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 07:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716302493; x=1716907293; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nZ1k0uetES8u8MlD8iJUWjUc76+6FpZkYnzMg83sWbo=;
        b=bFVAHxieuQVjKck7HTM7uyqnBMRA5+8K6e1D0lKLtcMXg1K9abX455xrGOQtqmdy/N
         MxfAwCutRAHQpNhbyCeEDQgzSmAxRJ+jduKZJE+RYSt/Y/013h6bHqhSY2IxWU6HYS6F
         xAIopEhpomgvfMWAVqzpt8xnmYgFhMlbdAPyBB9qApkgZkiYsHMpD0YSP0SstDXtbByH
         y13mcAdN8nIRSLsCs/pL6LOwor+CsCPuoq4iitkRtRGX43w98JWyT5xvFNfUQWNtC/vA
         jIWr1GaKvXu9xoThtiLe9mU6IY2ktXKzXOCRSBnGdbmDVSe4DrH893zG0S9hkUAQdV3N
         wgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716302493; x=1716907293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nZ1k0uetES8u8MlD8iJUWjUc76+6FpZkYnzMg83sWbo=;
        b=lqlx4xMPs5Jur3SykiIAnwUmBBDcFd1f884vkTA1pQSoPFNf0te9eDxlp8xgy+2Yib
         omiQK9KlILtkFXzQ/OdVEJ01DaRZaKT1ybQL/XuLSAalUNe1ngeNcAbZR2VrfbnHT/+O
         Y0GxOWfuS6OHPPDnpNUXxxWRaXViBzAJvkB/CYswOvBN7097aAL16dJkHDRc7A5bBihm
         E1py7yY5dLqfOjwSpTGiIIEAwBwf6Mu7gx1J8UtmYqmIAAmc4yuE6FtpTmkJ9AYmcCbV
         X9iCnIjQaCaRrDBpAqJ2UsoTY3wO3c5OTlTEAe6Ia9i8/4G290TZZCMnnQzgdkmIFthX
         28Sg==
X-Gm-Message-State: AOJu0YwTnEM56M/wa+Hq599HQUSFhC24AKnWXQmibeB42SHiQtTCBiqt
	lUm1eLfXIDqqLM+hx5jmGED48XeuUbRDTUZGmReQFRQPKZwq/lLpdC5ja4BxC2W1QVgAN+gzJHk
	C
X-Google-Smtp-Source: AGHT+IHj1hRyPZRmpYHWeU3LYRrDP7CJ224DzJ6GRA/c94bv1YnN1lYSiHKxZR3Gf4iM4ruXYyQNOA==
X-Received: by 2002:a05:600c:1794:b0:41e:454b:2f7 with SMTP id 5b1f17b1804b1-41feab40be5mr262645805e9.23.1716302492758;
        Tue, 21 May 2024 07:41:32 -0700 (PDT)
Received: from [10.2.5.115] (abordeaux-651-1-78-161.w90-5.abo.wanadoo.fr. [90.5.97.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41ff5e3dcfbsm428288055e9.22.2024.05.21.07.41.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 07:41:32 -0700 (PDT)
Message-ID: <8078d106-0173-4f04-aab7-4b2726b0bb3a@baylibre.com>
Date: Tue, 21 May 2024 16:41:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: mediatek: mt8188: add default thermal
 zones
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Nicolas Pitre <npitre@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20240521-mtk-thermal-mt818x-dtsi-v4-0-b91ee678411c@baylibre.com>
 <20240521-mtk-thermal-mt818x-dtsi-v4-4-b91ee678411c@baylibre.com>
 <ff12e104-da8b-4800-bfbe-a006ffe1b840@collabora.com>
Content-Language: en-US
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <ff12e104-da8b-4800-bfbe-a006ffe1b840@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/21/24 16:19, AngeloGioacchino Del Regno wrote:
> Il 21/05/24 16:05, Julien Panis ha scritto:
>> From: Nicolas Pitre <npitre@baylibre.com>
>>
>> Inspired by the vendor kernel but adapted to the upstream thermal
>> driver version.
>>
>> Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
>> Signed-off-by: Julien Panis <jpanis@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/mediatek/mt8188.dtsi | 432 +++++++++++++++++++++++++++++++
>>   1 file changed, 432 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
>> index a9f1b9db54a6..2b0f3e03acc1 100644
>> --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
>> @@ -12,6 +12,8 @@
>>   #include <dt-bindings/pinctrl/mediatek,mt8188-pinfunc.h>
>>   #include <dt-bindings/power/mediatek,mt8188-power.h>
>>   #include <dt-bindings/reset/mt8188-resets.h>
>> +#include <dt-bindings/thermal/thermal.h>
>> +#include <dt-bindings/thermal/mediatek,lvts-thermal.h>
>>     / {
>>       compatible = "mediatek,mt8188";
>
> ..snip..
>
>> +
>> +        gpu1-thermal {
>
> You forgot to implement my feedback to Nicolas - this must be gpu-thermal

Sorry, I did not forget. I just did not understand correctly.
Even after looking at mt8195, I thought that only the '_'
in 'cpu_big0-thermal' and 'cpu_big1-thermal' were wrong
in v3. Thanks for making it clear.

>
>> +            polling-delay = <1000>;
>> +            polling-delay-passive = <250>;
>> +            thermal-sensors = <&lvts_ap MT8188_AP_GPU1>;
>> +
>> +            trips {
>> +                gpu1_alert0: trip-alert0 {
>> +                    temperature = <85000>;
>> +                    hysteresis = <2000>;
>> +                    type = "passive";
>> +                };
>> +
>> +                gpu1_alert1: trip-alert1 {
>> +                    temperature = <95000>;
>> +                    hysteresis = <2000>;
>> +                    type = "hot";
>> +                };
>> +
>> +                gpu1_crit: trip-crit {
>> +                    temperature = <100000>;
>> +                    hysteresis = <0>;
>> +                    type = "critical";
>> +                };
>> +            };
>> +        };
>> +
>> +        gpu2-thermal {
>
> ...and for consistency with the other SoCs, this must be gpu1-thermal.

Now I think I get it, thank you.

>
>> +            polling-delay = <1000>;
>> +            polling-delay-passive = <250>;
>> +            thermal-sensors = <&lvts_ap MT8188_AP_GPU2>;
>> +
>> +            trips {
>> +                gpu2_alert0: trip-alert0 {
>> +                    temperature = <85000>;
>> +                    hysteresis = <2000>;
>> +                    type = "passive";
>> +                };
>> +
>> +                gpu2_alert1: trip-alert1 {
>> +                    temperature = <95000>;
>> +                    hysteresis = <2000>;
>> +                    type = "hot";
>> +                };
>> +
>> +                gpu2_crit: trip-crit {
>> +                    temperature = <100000>;
>> +                    hysteresis = <0>;
>> +                    type = "critical";
>> +                };
>> +            };
>> +        };
>> +
>> +        soc1-thermal {
>
> Any idea of what can "soc1" ever be? What measurement point is that?
>
> VPU? IMG? INFRA?
>
> soc1, soc2, soc3 make little sense.

No idea to be honest. I'll try to find out that information
and will change that in v5.

Julien

