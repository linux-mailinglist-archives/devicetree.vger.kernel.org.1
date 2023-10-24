Return-Path: <devicetree+bounces-11223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7C57D4CA5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6BF1B20E7F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 235BE249F6;
	Tue, 24 Oct 2023 09:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QTQWkmhc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D7418E27
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:40:09 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D10A10CF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:40:07 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4084de32db5so36627155e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698140406; x=1698745206; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s5f7lk/sUG2K+sQIa3tjkVyEh0bsGlRfNvy9ZFNdKNY=;
        b=QTQWkmhc0BqLIA8qDMKzNV2MkliYchZ7Dxm897HUywGCxC6j1/b4focsMmuvLrL8PN
         TPChlrWSht0h/dOBDIxH6gl092z6jR/R4HGSp6S+WChgS/XoiKQPozVztn0SBb45GXup
         rMmiTJa5HJ/CjvaqQfDzIsgrMLzvgesglTxeNPv3ScBwUJGKu3Uli7AvoCkaxFBefguZ
         HGFnWh+IWNEtazj99eEbtJGSMw9QQLm2ONhy3arCjh78WB5t3loK74+LsbB/cSDetIWm
         OjciaiQGT79d/r0Ss7chH0bDBfdrpIT5HcLtanr82JCIGfw9+5WKrSKfBR2Amy5fMUXe
         j4kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698140406; x=1698745206;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s5f7lk/sUG2K+sQIa3tjkVyEh0bsGlRfNvy9ZFNdKNY=;
        b=TCNbNHpXiPaCCpcWdOJvpHd+gtaJJmEENOOCwjSo65BRieGHivXv6R+X2lAAP0kMbS
         sIoXYltq7DOMhXBW+KXl4+bjP5tudzdFJYXLmESq20tTLb3JR0Ry75uAzkH+dmgR5ubN
         oX39ulQ/brjyqcvmn1HVBAz1EEVgk1fkRQbnO9i8kVuhC8XMlPoHaS6eGRCLfCsIMfkZ
         TKuLR/FX85Sd8nTxF5d027M2dfIwC/6vraHsrhLa0214+8VdawC+TAQgKyNs3QEsaCCI
         dyQQVquqvcbQloRn8rqc9GHjWvGLE/RjdONdjP5hiz2E5QPNPMqQYM5ZOrb0D5Mvzlhu
         ArsQ==
X-Gm-Message-State: AOJu0Ywc7j+eySKfEWqH1IrUrNctbtUX1xCnCI+z1LZ3vl+nTaYm1JWN
	v3UYFCvE5Q0XB7XPJauMSNq+aw==
X-Google-Smtp-Source: AGHT+IE5TFlYkZdpsRZM+iH9l+SKXhZgWmaMXLLCnEWvyFWT59f5AvnVu7eLhTN1BnA5As6Hb9uDhw==
X-Received: by 2002:a05:600c:3109:b0:408:5bc6:a7d with SMTP id g9-20020a05600c310900b004085bc60a7dmr6475543wmo.19.1698140405732;
        Tue, 24 Oct 2023 02:40:05 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id l22-20020a05600c1d1600b004042dbb8925sm16576200wms.38.2023.10.24.02.40.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 02:40:05 -0700 (PDT)
Message-ID: <866d5582-a4e2-4b98-a291-6e41939bd9f3@linaro.org>
Date: Tue, 24 Oct 2023 10:40:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3.1 3/4] clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC
To: Stephen Boyd <sboyd@kernel.org>, agross@kernel.org, andersson@kernel.org,
 conor+dt@kernel.org, dmitry.baryshkov@linaro.org, jonathan@marek.ca,
 konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 mturquette@baylibre.com, quic_tdas@quicinc.com, robh+dt@kernel.org,
 vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231023153821.189331-1-bryan.odonoghue@linaro.org>
 <20231023153821.189331-4-bryan.odonoghue@linaro.org>
 <aef93a48cf270d5078ccdc39d95113a4.sboyd@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <aef93a48cf270d5078ccdc39d95113a4.sboyd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2023 01:34, Stephen Boyd wrote:
> Quoting Bryan O'Donoghue (2023-10-23 08:38:20)
>> diff --git a/drivers/clk/qcom/camcc-sc8280xp.c b/drivers/clk/qcom/camcc-sc8280xp.c
>> new file mode 100644
>> index 000000000000..0631bd5fad57
>> --- /dev/null
>> +++ b/drivers/clk/qcom/camcc-sc8280xp.c
>> @@ -0,0 +1,3048 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
>> + * Copyright (c) 2023, Linaro Ltd.
>> + */
>> +
>> +#include <linux/clk-provider.h>
>> +#include <linux/err.h>
> 
> Is this include used?
> 
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/of_device.h>
> 
> Should be mod_devicetable.h instead?
> 
>> +#include <linux/of.h>
> 
> Is this include used?
> 
>> +#include <linux/pm_clock.h>
>> +#include <linux/pm_runtime.h>
>> +#include <linux/regmap.h>
>> +#include <linux/pm_runtime.h>
> 
> This got included twice.
> 
>> +
>> +#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
>> +
>> +#include "clk-alpha-pll.h"

You're right, I didn't scrub the autogen headers.

Update sent as v3.2.

---
bod

