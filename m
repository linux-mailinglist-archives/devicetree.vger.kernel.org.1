Return-Path: <devicetree+bounces-19964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EBC7FD6AC
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:24:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F11CEB21ADB
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 12:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004D31DA51;
	Wed, 29 Nov 2023 12:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="opKV7Kdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34F7110D7
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 04:24:28 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40b538d5c4eso3854085e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 04:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701260666; x=1701865466; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7DhAOyUG1OiZLTShDdBTISkChDUaLTQfa0lLug1y7bI=;
        b=opKV7Kdwv2kqZ7GCYWiLRqMCcokAtgUE+lDrIeYhNNCrr+aIc4J1hmsBhZeOyjKRpb
         Y2TgY6zJVePG5P3AigvOJXPgIqbmxQOJT5kgGTlNEkBoMmIq4IJgxElo+Yg56qSakT73
         jXTqgtkHJ/W/IxZW3lqoEG1xgcUPD5+88ra5S3tQlZpk5q+bibTUUn0VjuL+HNWLH5XR
         36HQQT8OAw7Ufc5x7LU6SbpdwtjHhVw1vR2JstFPONoa68j6FogFMYdEMVBpOnQZ4S/r
         qM1rM5GNFfu0uif6jyMiV86riTmjS9IgMW7yP/7JgevM+TSmJ/yWJ0AabAlsy5H/B5wT
         vsNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701260666; x=1701865466;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7DhAOyUG1OiZLTShDdBTISkChDUaLTQfa0lLug1y7bI=;
        b=iybgCaKcjeBqI/Tj5xxKigXdv+Rg1XbQqKP5oQTyaKLktbiwbzrSei7Tb45LfAOpyk
         kujNJrjMKIqG+LGe8pTg+yi00rdNznPd+JKt2CfFdruqbKJcGvNkpHHqjP0CAJNUspZr
         W69uqKfAHVNHSKDFrwZbnV7WZprUDqmCqLhglxfvxIX6dyWLkk7701Zv+FRtmMzjtao7
         O/Vu3x5+JZvybJ9BPqRdxJCbz/4UVg1LwEsBkD/eR5bXtUEWIyv5SXIpqxwD4n1i+iBe
         X7UVzPuR4ONLJS0AlwEaoDSA6pc+ygjADvgPUE6aZZZntsHy1sWFtWj/kN2BsMhYrAJE
         Sjug==
X-Gm-Message-State: AOJu0Yw/KqpaBIdt97ESCW11JGFJKSAYbmcHdE3o2qDHcOMa4kl3Zamh
	f0KkEgqau8fWbr6Zop234LMCTw==
X-Google-Smtp-Source: AGHT+IGi5tloNSLI4LYd4vqe68E6k/29FUG8DWVdl04/cafVh13sVoXbDJkjOwjDMPoyZ/FGt9k0pg==
X-Received: by 2002:a05:600c:3548:b0:406:c6de:2bea with SMTP id i8-20020a05600c354800b00406c6de2beamr11526960wmq.17.1701260665422;
        Wed, 29 Nov 2023 04:24:25 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:38f1:13b7:9b7a:2d6b? ([2a05:6e02:1041:c10:38f1:13b7:9b7a:2d6b])
        by smtp.googlemail.com with ESMTPSA id d9-20020a05600c34c900b0040b2c195523sm2123151wmq.31.2023.11.29.04.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 04:24:25 -0800 (PST)
Message-ID: <ca107e23-9361-47f3-8292-d2350bc858a0@linaro.org>
Date: Wed, 29 Nov 2023 13:24:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] loongson2_thermal: Fix some issues
Content-Language: en-US
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou
 <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Yinbo Zhu <zhuyinbo@loongson.cn>,
 WANG Xuerui <git@xen0n.name>, loongarch@lists.linux.dev
References: <cover.1700817227.git.zhoubinbin@loongson.cn>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <cover.1700817227.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/11/2023 10:57, Binbin Zhou wrote:
> Hi all:
> 
> Some thermal-related DTBS_CHECK warnings and driver issues were found
> when trying to introduce the Loongson-2K DTS{I} for LoongArch.
> This patch series attempts to fix those warnings.
> 
> Thanks.
> 
> -----


Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


