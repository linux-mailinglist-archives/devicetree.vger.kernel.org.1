Return-Path: <devicetree+bounces-8394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 919C57C7F5E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:04:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7ED88B208A2
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E3A10791;
	Fri, 13 Oct 2023 08:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K31duJoe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3F01078C
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:04:38 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC63EDD
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:04:35 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4066241289bso19149255e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697184274; x=1697789074; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6oVhznh5ySaCITk6uUsd0gVfsZrYmqi620mDBOnSkgE=;
        b=K31duJoe56u0w54NAeMc6te01AIC3N17mKrTKGY6mvukNSDU5evPg4dl1Ufa4Yytr+
         H0S6dU9GLdecBRcxKteJX826vo01wtOVzTZi98VWePbsbIK92gLObdZVp0TH9lt10oV7
         EsB0GNtCOmWbhZq2gQ+9o3F3TVHEE1+I5UUYgZ2Retntp9E3ShK4EOnpqHM/7B9VgqXJ
         JfRM4WYU27IWniVehHegrw7KmOgWJe/ji1AmUpTketZMLDQZmtVXhpStMQHcdBGVooiR
         +TPa4G3L67mdHBXo+B3ZHGjjhearB0aDTC/+jNIQ6bSLcXMuzkWm5x4XxZMWRwHEEiQG
         7B5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697184274; x=1697789074;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6oVhznh5ySaCITk6uUsd0gVfsZrYmqi620mDBOnSkgE=;
        b=htUq85iiHeYHBUnDLf5Tzqj2sSfl1vgq8yl+4zMpzMx/IDj8QTDMPlcMaKtLzLKkGn
         GpQIgJ6cJGuD9b2xIPQpuH/jaX7A/I49wUNNjrMz6UIDrBtzmooFJ6RH/1d7VLC24gd2
         q+uX2vwGRBHkMMPaBrvhLBw5NT6WErVqTt3Mq4hTugOaMRmuyJQ3z3mvEf+APx53T8vI
         M9kX+LF196+XIFnpplneSz1MLSXyxQ9iMTOnisLhNT2esKwdzgH/TKkjXwI1VEDP8yP3
         sB7EmkkAXdzqhLbyMsW7ngVHNk2Ra4CjbRhVpvXP75q7wbJlwwgjO+iOcgNOKUov0br5
         vTqg==
X-Gm-Message-State: AOJu0YwtazQSmNzDhbSfKudVIuoV7Nt1aHilxA0tuI5JXX2fB5LmtjHw
	vhP/5qn5lebaZekLTtJLwd0wGA==
X-Google-Smtp-Source: AGHT+IEY+YdginKOKbt7XjrFQw/JmsnmIDsYLonWOqHU1C0wPurRswbnevHMG+OjuJH3csgNEH7xww==
X-Received: by 2002:a7b:c7d7:0:b0:3fd:2e89:31bd with SMTP id z23-20020a7bc7d7000000b003fd2e8931bdmr22943447wmk.14.1697184274113;
        Fri, 13 Oct 2023 01:04:34 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id t14-20020a1c770e000000b0040303a9965asm1850318wmi.40.2023.10.13.01.04.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Oct 2023 01:04:33 -0700 (PDT)
Message-ID: <24073646-373e-452d-94b6-3d91101ac5e2@linaro.org>
Date: Fri, 13 Oct 2023 10:04:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/13] thermal: tegra: Use driver-private data
 consistently
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20231012175836.3408077-1-thierry.reding@gmail.com>
 <20231012175836.3408077-5-thierry.reding@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231012175836.3408077-5-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 12/10/2023 19:58, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Instead of passing around platform and plain devices and figuring out
> the driver-private data within each helper, directly pass around the
> driver-private data when it's available.
> 
> Also store a pointer to the parent device in the main driver-private
> data structure for easier access.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

[ ... ]

> -static void soctherm_debug_init(struct platform_device *pdev)
> +static void soctherm_debug_init(struct tegra_soctherm *tegra)
>   {
> -	struct tegra_soctherm *tegra = platform_get_drvdata(pdev);
>   	struct dentry *root;
>   
>   	root = debugfs_create_dir("soctherm", NULL);
>   
>   	tegra->debugfs_dir = root;
>   
> -	debugfs_create_file("reg_contents", 0644, root, pdev, &regs_fops);
> +	debugfs_create_file("reg_contents", 0644, root, tegra, &regs_fops);

(Orthogonal to this series) : in case you are not aware of it there is 
the debugfs_create_regset32() function. That may make go away a bunch of 
code related to the debugfs code here.

cf. 
https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/tree/drivers/thermal/mediatek/lvts_thermal.c?h=thermal/bleeding-edge#n159

[ ... ]

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


