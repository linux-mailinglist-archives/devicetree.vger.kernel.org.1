Return-Path: <devicetree+bounces-1742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ADF7A7F7D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3B892819B6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B346E30FA9;
	Wed, 20 Sep 2023 12:27:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C5630FA7
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:27:20 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42FA4EA
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:27:17 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9a9f139cd94so934724766b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695212835; x=1695817635; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hv2thh1H9tA97kPGliYAF+DpZy/mFhBKmC18f7g/H+8=;
        b=gTBJ71bQIeIVolDEZJIODZhuDnrWLqps9SijgyLrQpTQpXNDl9CsRDpdrRglaEzyXt
         ekH0Q8wd2rJ4Owa7f9X2BbRnw/qbqbDOsaumPnTlh/g4zKTuSCenS0zQ14CWkARLV/Uk
         0EYW7KYQ051zL1sXCEDJCdLP124OkKiOiJtwLwDkHvM9vLx9wkUve5bR19cRE0YTCypp
         YJwpbky8d4Vh2Q/Bs0m06gPnjkZNIg69iSKvc5e9zCVdyvrfkakTOjt8xM+aclIPoqif
         IKs/KvlvQHpXnJjGkI41sWdEgDtY4LwEgnsKFNbSqi1SpxN1aUbuu51YzbAhIrYDE21V
         NmSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695212835; x=1695817635;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hv2thh1H9tA97kPGliYAF+DpZy/mFhBKmC18f7g/H+8=;
        b=T38/T9+ALPyJnYHh+RcGLOT4D9Iw/Gv1du7l3Fdb3uje0ekJU0wHhGUEHt6zvzpNxT
         wU7DAhjuK4ZsEHhA8P4fn7GAc0vo9R9NmYidIu0guXW/2PdsWW0T5E6xQspuGXjwvUX9
         FMuEXJFwLVYV08QPUowbmUQbE3ilbG0fNeVTwvqbB1JEUkiW9FwRKV+wAGwKvfta5bBd
         XAY+CTuZwB/kPVJU19C4I3sLZRR2FsWWzHPQA8bLcxdVSscS+gt2gsjWFqCt3akh69Fn
         BtlLBv7TYnuxmkDA9OzjXq33EY6vwSTkAc1AKj4BpzIIC+kYKqR5X0Pfold1reVnJd+L
         ib3g==
X-Gm-Message-State: AOJu0YzS/ukOt0IhPg67LFepgZRI2uLUTtEmtx9OdTJ7L3TUcOCFQ6mG
	j/oGJ2Jb9dhSL8O0iDcLTRvCUg==
X-Google-Smtp-Source: AGHT+IGhilnDj/sus5JakUZtSo3PYNc+I+MMntBHtlUMM1+I1hu3v/I4zTxsAW6rKgXqdzXJYZ8m6w==
X-Received: by 2002:a17:906:2ce:b0:9a5:846d:d81f with SMTP id 14-20020a17090602ce00b009a5846dd81fmr1726172ejk.17.1695212835687;
        Wed, 20 Sep 2023 05:27:15 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id z18-20020a1709060ad200b009887f4e0291sm9210859ejf.27.2023.09.20.05.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 05:27:14 -0700 (PDT)
Message-ID: <817a2b0c-cc90-e109-0b8d-4283f0ac2610@linaro.org>
Date: Wed, 20 Sep 2023 14:27:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 3/3] media: exynos4-is: fimc-is: replace duplicate pmu
 node with phandle
Content-Language: en-US
To: Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230815060739.30160-1-krzysztof.kozlowski@linaro.org>
 <20230815060739.30160-3-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230815060739.30160-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/08/2023 08:07, Krzysztof Kozlowski wrote:
> Devicetree for the FIMC IS camera included duplicated PMU node as its
> child like:
> 
>   soc@0 {
>     system-controller@10020000 { ... }; // Real PMU
> 
>     camera@11800000 {
>       fimc-is@12000000 {
>         // FIMC IS camera node
>         pmu@10020000 {
>           reg = <0x10020000 0x3000>; // Fake PMU node
>         };
>       };
>     };
>   };
> 
> This is not a correct representation of the hardware.  Mapping the PMU
> (Power Management Unit) IO memory should be via syscon-like phandle
> (samsung,pmu-syscon, already used for other drivers), not by duplicating
> "pmu" Devicetree node inside the FIMC IS.  Backward compatibility is
> preserved.

Hey Mauro,

This patchset is waiting a bit. Patchwork:
https://patchwork.linuxtv.org/project/linux-media/list/?series=11051

This is a cleanup which blocks further DTS cleanup changes. Any comments
from your side?

Best regards,
Krzysztof


