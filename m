Return-Path: <devicetree+bounces-6835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 290337BD0C8
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 00:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4F7A28156C
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 22:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357C3179A1;
	Sun,  8 Oct 2023 22:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mB/Lobr0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B49125AC
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 22:13:08 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30045A3
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 15:13:04 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4064867903cso39030015e9.2
        for <devicetree@vger.kernel.org>; Sun, 08 Oct 2023 15:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696803182; x=1697407982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CICUqZ/o34LI6Dd5J98alxpKqSpwDiMxjvjmgrvbCcI=;
        b=mB/Lobr0WT2ksC3gulBRb00nhMgdvcqLYvvDLOWEgasU1quN0XphYtMHn+R4hfh+C6
         fp1wITWl4a4+LB6KnLhl51ZtoHMWzcbj3Le0E0sTvBLqR0mpuRV7QMIfb9Zd5RcfK0x5
         Y2Y/djR07Gy/wkkexjDOeWh/aGTk0jM8rio1UiDX4mbgpsxjNz4OvXao6tNV86sif58X
         hKUk1OghNAXGkn1JTxxWTXrsGbY7d6qAxWxBmXij4tieomlUZcp03XH8LsekAgBAE0RH
         c0icIx30hS7eT7ORp6YU9TFEzkdQz4oZSaD6fs35v0/2tZBTJoRBgFOR7l8QzvtxLltF
         MRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696803182; x=1697407982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CICUqZ/o34LI6Dd5J98alxpKqSpwDiMxjvjmgrvbCcI=;
        b=J8I2AZPHXcoZGlSKsQ4epJYKB6c8tCmhyW3Hv1rhpxlK2I3kTWfdbQyGHMDqn1qSB1
         RRK6LJ9UeZFsnEPiY4PJtm3VJGll8QHKgdhdH0drL48MIPhPDM2pkoRdeXThtztCPhEd
         V4Dh/PUdMJAVnfEsXsa5S2wIb8xQTXjJlmAg2L5MlUcq4OHq4oIbOgpAaue2E6V+0xg7
         ODHSDWqnM7P7ghW/sBtJPGMngXEyMiVAO+LbvH08SvG9JA6bldOy+pkaWS8zZMLMyiHZ
         3DTOGRCliyhpUPzdKlECC2hUpP25tJ/AhdXQ74euAYZnykY2e+oixONddPEu36akeQ4H
         Et+A==
X-Gm-Message-State: AOJu0YwDutOEEquq6PxIrMTYAzt/DJKClKh/KcXkER0j7KXmy4mqbzfR
	NiJUtpx1zxGpGxZ5ko+mW1Nstw==
X-Google-Smtp-Source: AGHT+IH9nHU1yaXAIFSlou3H22HrTz0smjAh3KcRu/MarUz/GBrfNBZQ0J2QRhj8DFvh/BjQAsCihg==
X-Received: by 2002:a1c:7414:0:b0:405:82c0:d9f3 with SMTP id p20-20020a1c7414000000b0040582c0d9f3mr12645537wmc.30.1696803182516;
        Sun, 08 Oct 2023 15:13:02 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id p5-20020a1c7405000000b004064e3b94afsm11747593wmc.4.2023.10.08.15.13.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Oct 2023 15:13:02 -0700 (PDT)
Message-ID: <4fdfd283-234b-4c14-8db1-3feaf1fa8618@linaro.org>
Date: Sun, 8 Oct 2023 23:13:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] i2c: qcom-cci: Add sc8280xp compatible
Content-Language: en-US
To: Andi Shyti <andi.shyti@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, loic.poulain@linaro.org,
 rfoss@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-3-bryan.odonoghue@linaro.org>
 <b8f2d7f1-16e2-4e6a-9c84-37da393f74a3@linaro.org>
 <20231008212824.cs6e6hc7zur67v6k@zenone.zhora.eu>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231008212824.cs6e6hc7zur67v6k@zenone.zhora.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 08/10/2023 22:28, Andi Shyti wrote:
> Hi Konrad,
> 
>>> Add sc8280xp compatible with cci_v2_data parameters.
>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>> Drop this patch, it adds nothing useful
> 
> what about the rest of the series?
> 
> Could you please be a bit more explicative?
> 
> Thanks,
> Andi

I think he means I can use the sm8250 or sm8450 compat string, which is 
true.

---
bod

