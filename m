Return-Path: <devicetree+bounces-1421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF557A62EE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F16E1C20C01
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0144374DB;
	Tue, 19 Sep 2023 12:29:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98CEE374C2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:29:44 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BA8FFC
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:29:40 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9ad810be221so740676766b.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695126579; x=1695731379; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8EtiuNXgnIZXl6uZ3s+na9fQCFST8PiCnTLp3+2BYCE=;
        b=jitHC/oMKRr6hiQh1x5wonGwka2eXk/RXLcSh9OTs09XQPHeO8ek5ZoM5RpRfuEIi6
         BTbKFe3dd305hI1vK2aVyuf3xJq80a0+rdV90+gTgyv5hU08wgDRrM3hCG6eBHUUVSGQ
         WJU8mH/SRwlx+92DKHlkYaW8aG0+gIXRdpCJvhjy3s5mhCh6rvkjVJ2pQi6Ovg2ylU7/
         FHs8aI3rGxpbV/Oynaz7JWLc4HORC5oHuwVgxOnZZEsDfFyQ7K3rFyLtF3/KwamWZIQF
         cZ16tct63KSn5F9gIxDSYQB10Jx6rZkXGWE6kXI8hr0R6exHriujSElCX0RCB/2GQKGk
         AInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695126579; x=1695731379;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8EtiuNXgnIZXl6uZ3s+na9fQCFST8PiCnTLp3+2BYCE=;
        b=QNwfvplOUcqqpKL9M/9JjupYb6GXfdIyOEh4Bqnt8ew4+1k4/tAseLvYmVAkA4VViN
         YEqiAs7jBWfkakoozqToNrzxqOXQmCFtyJT2O1hFTy65dnxG0gaRBENQO1OEBvPuDvdN
         8+7yuutyZheozFtTSBO7HKvXuE2GDGabd8yO/LMJOB+T2lGIhHZIO7slwxux2kRol4Cq
         opRohI9YZU/mt0qnOGbfHx8wJ2qysVHv0kjwyngYyw5p4A6JPUy8+qhi0478OiT1U5hE
         dkkibQAzbwQc69EJAaLUPhuQCBLkt7n9WCuORS3QLnAKEmOC6LBLJk2eVYGSyOrAtgAA
         2NLg==
X-Gm-Message-State: AOJu0YzTWvqq/3FmAt3RxJSJRnWUrdBuhJqGdvHLRwjSJqEZ6fGBYWN/
	UM1kbNIJRAhlVBrqTGJdWEE1KQ==
X-Google-Smtp-Source: AGHT+IHHeTZchplaQKxq8oPK/RMzsBnOVPhOn2auV6wN1oA1mFfnJtCuhxn4/gkedGhA7WnuWYoR+w==
X-Received: by 2002:a17:907:b0c:b0:9ad:a46c:2936 with SMTP id h12-20020a1709070b0c00b009ada46c2936mr10566454ejl.8.1695126578936;
        Tue, 19 Sep 2023 05:29:38 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id br20-20020a170906d15400b0098669cc16b2sm7677155ejb.83.2023.09.19.05.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 05:29:38 -0700 (PDT)
Message-ID: <1fd6fb74-40be-13e3-8a96-f4db358582d1@linaro.org>
Date: Tue, 19 Sep 2023 14:29:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: Add Richtek rtq9128 audio
 amplifier
To: cy_huang@richtek.com, Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Allen Lin <allen_lin@richtek.com>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1695086301-10376-1-git-send-email-cy_huang@richtek.com>
 <1695086301-10376-2-git-send-email-cy_huang@richtek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1695086301-10376-2-git-send-email-cy_huang@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 03:18, cy_huang@richtek.com wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Create richtek,rtq9128.yaml for rtq9128 amplifier.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

Best regards,
Krzysztof


