Return-Path: <devicetree+bounces-25451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E94A381346F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:16:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3DBE281940
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0411A5C906;
	Thu, 14 Dec 2023 15:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kQljPUl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6928612E
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:16:33 -0800 (PST)
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-67f02843e91so8135016d6.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702566992; x=1703171792; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=54RTUeCStl2XfJOj/oJEJaXZt4rCjNFswpjA28eM300=;
        b=kQljPUl2fXxqRoJNnSgwk99NcsawIjIrXawq3gW32+aGLE7LO6LV/v5TAHvntRTLe1
         RXv3V5b4Kh/jgxhLR/nSv/DgPXKa2re/XWMO/6biDM0i5LZGw5HglLDhUdmz95PhaNZz
         5usbhFifw/LCGV6RtTXdflTz9ozkvxNUFCu60GX2CuEk1k5UlszQy57I0dqIQ3VJnjSm
         gTmrjL/TJ+ScZb7VcPKTyiU9YkR7i2zphePVu7faMPssrvpIMyxEGvgcBEwPZk+Cubuv
         XWHuJmc+A3Olr8hUuZaLbmTkmWCKJP7etBFeXXoIFP93QsIClvkOTAEHuWNfi4gay7LE
         asyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702566992; x=1703171792;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=54RTUeCStl2XfJOj/oJEJaXZt4rCjNFswpjA28eM300=;
        b=xHFLqUoVDC5K3Ec/SWIdzyyjlmw3QOuVdZuFFKzT9irlXW4cHAGZou7ziGsR/ivO3e
         zNtsPo4kRnZCceK4bBx9uMYnRNWfmS+TrME/qBDquimj5Z861gnkP7j+qPfBY/nw6vSs
         BkYqoAJVXB1lxdRZssLAAAzsiygD+TN9PuFi3oD6KRaeysrnS6SDjbKPzZKv4B3YqJVG
         UeVOIKWbOh7LMSnsy3aaIOuzb5Jerqa+tKarcqll1EkJkT99bfIJ9zW+l+h+ZIFz34VK
         j+1fJDxRWAnGYzwq1P221FL10r93PM9XfxMk3bjVxXuAAShZJukp0DRT88HMYQkpGW2o
         9FDQ==
X-Gm-Message-State: AOJu0Yy6Nl9xeZ1tkG2OjxFuJaqiNzt964yfHUN8WLqqRxXmkdTFqyq4
	hJfjMzGaYePrYq41EojEecPOVg==
X-Google-Smtp-Source: AGHT+IGLJtJAlPhMZDyfvOtG/1tfi4fUaHOYjcssxbj6fRakyinkNMF2tdViRIiqWzEz49/KDj+UZA==
X-Received: by 2002:a05:6214:4119:b0:67f:1007:c707 with SMTP id kc25-20020a056214411900b0067f1007c707mr667253qvb.70.1702566992547;
        Thu, 14 Dec 2023 07:16:32 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id db14-20020a056214170e00b0067eebb03a09sm399868qvb.143.2023.12.14.07.16.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 07:16:32 -0800 (PST)
Message-ID: <0d3ae184-5ded-42ab-97cf-13bbb296083a@linaro.org>
Date: Thu, 14 Dec 2023 15:16:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/13] dt-bindings: clock: google,gs101: fix CMU_TOP gate
 clock names
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 sboyd@kernel.org, conor+dt@kernel.org, andi.shyti@kernel.org,
 alim.akhtar@samsung.com, gregkh@linuxfoundation.org, jirislaby@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com, arnd@arndb.de,
 andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org
References: <20231214105243.3707730-1-tudor.ambarus@linaro.org>
 <20231214105243.3707730-2-tudor.ambarus@linaro.org>
 <CAPLW+4kr=aVjuqGz3ps5f6EzM+QASTFEoB57g+fR7jKH0s+1Zw@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4kr=aVjuqGz3ps5f6EzM+QASTFEoB57g+fR7jKH0s+1Zw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 12/14/23 15:07, Sam Protsenko wrote:
> On Thu, Dec 14, 2023 at 4:52 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>> The gs101 clock names are derived from the clock register names under
>> some certain rules. In particular, for the gate clocks the following is
>> documented and expected in the gs101 clock driver:
>>
>>   Replace CLK_CON_GAT_CLKCMU      with CLK_GOUT_CMU and gout_cmu
>>   Replace CLK_CON_GAT_GATE_CLKCMU with CLK_GOUT_CMU and gout_cmu
>>
>>   For gates remove _UID _BLK _IPCLKPORT and _RSTNSYNC
>>
> 
> Doesn't it break existing gs101 device tree?

No, compilation went fine at this point. The TOP gates are not used in
the device tree at this point. And since the bindings patch was just
applied I think we should fix it, so that we avoid name clashes as
described below (I found a clash with a gate from PERIC0).

> 
>> The CMU TOP gate clock names missed to include the required "CMU"
>> differentiator which will cause name collisions with the gate clock names
>> of other clock units. Fix the TOP gate clock names and include "CMU" in
>> their name.
>>
>> Fixes: 0a910f160638 ("dt-bindings: clock: Add Google gs101 clock management unit bindings")
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
> 
> (snip)

Thanks for the review!
ta

