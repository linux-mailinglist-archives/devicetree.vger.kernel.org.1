Return-Path: <devicetree+bounces-16687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B33687EF45B
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 15:24:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 280D8B20B4A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922B4364DF;
	Fri, 17 Nov 2023 14:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xaeaZIYn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EC33D4B
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 06:24:04 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40838915cecso16337035e9.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 06:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700231043; x=1700835843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CKxOTnv9JfSvH6BdnkUvc5Oor+bZOeZyCbGjkcr5HZ4=;
        b=xaeaZIYnVAGCE87yBecmhqhDtOxX79ERrX+VwNQVUizfiAaHy9WEFwNnlT8m3jsfzN
         JMUFFwX5GpGKQ+hqDQgzz+AU6H0b1015ZIgT7DZ+TFATCWxxD1Kw9yJdUA9LCHVsmsRY
         Ams9FLtDjIvFNK5yzXlu71HNNUWb4OlExN14ESrcqdzELMK0U9c+hW3OGU2/NBqzgBau
         PFqQUXub+kDHcrlj9zv5HNt7k5XiDIRtqJFwlRWFHpqLQ9UMkYhX6GC/XasW1uhbRzB2
         a5z/ucYZ3l7uruOZGOI6+jXJuREFBAvk0Nt173bqnyny10frnRXx1hyfVrn7wWoudPej
         JCIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700231043; x=1700835843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CKxOTnv9JfSvH6BdnkUvc5Oor+bZOeZyCbGjkcr5HZ4=;
        b=scMkVMhD/ZmfVDxUVJKDx1hXCVmY8EMEnse+zwO1/xLzsd2c3e4JAliMqSbnK3njay
         b2ewp6Rmjb/QenRsyvR0OfubxRccgZ5zZQdj2dR8gONnzNPNMaONzCeQa0MKE4kq+25a
         nYlan7GQ9MDwxl537xm5d3m6aDT4GiIgv83YpyLnpb4b8C+26F7sN3ZNME7n/4rw066p
         9M3R571UQmNTCsGzqgLz0JyMMbNI6CzkfVF0SWcJQpCH/x5ldUTHeDi06/J2c0fv6H+s
         D3HxuAjaWk/0oU3huI0I/ow1+lyLsqVhUFfpYrWHUuqwHGc1rCzMPPn9x7lYIQ2jWECk
         Po7A==
X-Gm-Message-State: AOJu0Yy2Gl7kkEKU4tvT99D8DJr8q9g5krrLn4jfCKeUlElM1+iXWf+g
	lY7wqwnmEay87kTDYkn2K1z38A==
X-Google-Smtp-Source: AGHT+IFv9leUNZjNiQIqzlf8v4RMlj/DsgqhXWvcBbAW4P9cdbHdvPz7XGByDyW708WTbz3Wmi+1zA==
X-Received: by 2002:a05:600c:350f:b0:405:49aa:d578 with SMTP id h15-20020a05600c350f00b0040549aad578mr15287501wmq.37.1700231042824;
        Fri, 17 Nov 2023 06:24:02 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id y3-20020a05600c17c300b0040586360a36sm7047867wmo.17.2023.11.17.06.24.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 06:24:02 -0800 (PST)
Message-ID: <3d980823-29d5-44a7-9cf2-4246c8ae3c83@linaro.org>
Date: Fri, 17 Nov 2023 14:24:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: Add Global Clock controller (GCC) driver
 for SC8380XP
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_tdas@quicinc.com,
 quic_rjendra@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
 abel.vesa@linaro.org, quic_tsoni@quicinc.com
References: <20231025133320.4720-1-quic_sibis@quicinc.com>
 <20231025133320.4720-3-quic_sibis@quicinc.com>
 <483c4de3-951c-4ba4-89fb-36fcd44fa99f@linaro.org>
 <e857c853-51ef-8314-2a21-fa6fd25162ca@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e857c853-51ef-8314-2a21-fa6fd25162ca@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/11/2023 03:56, Sibi Sankar wrote:
>>
>> This is another discontinuinty with sc8280xp.
>>
>> Could you have a look through the sc8280xp gcc and do an aduit for 
>> clk_rcg2_shared_ops as against sc8380xp ?
> 
> ack, will do a quick audit before the re-spin.

A best guess will do, we will "shake out the bugs" through 
suspend/resume real use cases anyway but, worth a quick pass since you 
are doing a v2 for the SoC name.

---
bod

