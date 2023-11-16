Return-Path: <devicetree+bounces-16221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD1A7EE08C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:16:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95C8A1F244F2
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 12:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3B912FE02;
	Thu, 16 Nov 2023 12:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pGJfwTbN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B183B9C
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 04:16:29 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id 5b1f17b1804b1-40838915cecso5792615e9.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 04:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700136988; x=1700741788; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D7ycO51ysX1rSvVh6kgMekK9dYTtGQCoY0CbDQh513c=;
        b=pGJfwTbNZ9Se+hycjpkik/g1Hw3wzPutdVQYfV9UL+xlTtL9g3tKgosGATTWWEL2wp
         YvTniZfAP5CSZs9X9pBc1wOLNNpOsptgQtWsDZbr03D3XOXC3XLCq9YHRF//tYIdGtpB
         Lzc3Hnn3bYxT0p4klm2nLv5QF50vcIIYBvGxEnPy2QzaXJEZka19nUGtAOw0xT6IRa6M
         HYg195UTEZzuxCYEJYwvF7YspjKQYA79S/svAZ5RjgF4mdb8tUUzms7WzB4D6XGJzG6P
         hY7IpeZZ2VtQ5RSQQS+01t2feYU3RIpCPdXpBvk+UUUQxmUjMotPThwKc5dnc4j6sSMS
         d4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700136988; x=1700741788;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D7ycO51ysX1rSvVh6kgMekK9dYTtGQCoY0CbDQh513c=;
        b=YyExodWbDnXJXU73n/5iyC9G/jhNFHpUVAUeS7WPSCsefvOCQlWcSGQ6hq1Uqf96DS
         4LOFca7V6b3u9EDFCyw6Ost+CUDBmOnbFO0HyFtW93PV8U+FXA5iK1jd8Jbb2uSEzhVN
         gI7MVAUykBf9tElQZvcbrShkyydKxcDTVHpGq7DCdv9aTmumKkqHJQnQQL24g7W95rkn
         z1s+ZQf7LnjjpOiiuS4y6Ek/AnQyIzNJrCpeUkTAC3/ca0go1vOLYSmanHSEQQbITFWP
         0E0RsYj/E6QUxQBYfJfN0bXNRDwjG9WlCVNK6Tn7IhVAN5qR2/vWN3x+tW9GFWkSv9a7
         wbGA==
X-Gm-Message-State: AOJu0YwMzKBOPSUUgXbYdn0nEpsb0XTvEJTPydTUpm3PpXTpRQyqJyPV
	QFy8Zfjj20tVnl9xrGWXHEmUUw==
X-Google-Smtp-Source: AGHT+IFczhZ8Qo9sXrqLwhZ/L63pvjx7kQ9JsWQDfDDyGP9Jbz6AyVEpdhwlDmQ1fNHduFTOS173uA==
X-Received: by 2002:a05:600c:350f:b0:405:49aa:d578 with SMTP id h15-20020a05600c350f00b0040549aad578mr12632382wmq.37.1700136988143;
        Thu, 16 Nov 2023 04:16:28 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id t14-20020a05600c450e00b003fee567235bsm3501665wmo.1.2023.11.16.04.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 04:16:27 -0800 (PST)
Message-ID: <e264cc5e-6d28-4a15-8ee0-07be2d1508fa@linaro.org>
Date: Thu, 16 Nov 2023 12:16:26 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v4 0/4] Add sc8280xp CAMCC bindings and driver
Content-Language: en-US
To: andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org,
 mturquette@baylibre.com, sboyd@kernel.org, dmitry.baryshkov@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 jonathan@marek.ca, quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/10/2023 11:53, Bryan O'Donoghue wrote:
> v4-resend:
> - Remove erroneous "--in-reply-to" from git send-email
> 
> v4:
> - Resend of v3.2 addendum as v4 for tooling purposes
> 
> Link: https://lore.kernel.org/linux-arm-msm/20231024093919.226050-1-bryan.odonoghue@linaro.org/
> Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/qcom-linux-clk-for-6.7-camcc-sc8280xp-v4

Ping.

This currently blocks the example in the yaml here

-> 
https://lore.kernel.org/lkml/20231110-b4-camss-sc8280xp-v5-1-7f4947cc59c8@linaro.org/T/

Which in turn blocks

-> 
https://lore.kernel.org/lkml/20231012113100.3656480-1-bryan.odonoghue@linaro.org/

---
bod


