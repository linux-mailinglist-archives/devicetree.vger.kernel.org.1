Return-Path: <devicetree+bounces-8717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E07957C9C05
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 23:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90D1B281600
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1996114A8F;
	Sun, 15 Oct 2023 21:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c8IoE1Vl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1592EEA1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 21:54:40 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7339C1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:54:38 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40684f53bfcso36151225e9.0
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697406877; x=1698011677; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0QG9vlqxiNVALcyUAQIY9+SbjzzlS00U4CnvIpEmDRQ=;
        b=c8IoE1VlOM4P9DeE5bJfPGlVr0Wb1LMAzh5d8PG+SvqnBc0nVUaBZkJqYihYDOaxSB
         BQApQS79Z4v8pF1ea1UvPY3pBQC+DNpUhmcOEGi2CJsHIx+csl0ugEFQ9IRGMWX2KJgK
         KYd+8iQnkV/cn9NsDC4iXejKtMBTW3D3O0FtlEYfvjtwJYjwN+r4CppydQkEI7dsqp5a
         rp+QuP3UUcKtfB3HBlvzTVYtymcYMgCNGRBlfV8V1KMW3tRODTq9m89AVZWH51KHJYr0
         PAlk6g1YV7ISOfC/Vtoc284501bvqd/I2hnyYzXIX8Z7FUiOC0J8JQoGx3rziJB8DXBx
         AaAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697406877; x=1698011677;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0QG9vlqxiNVALcyUAQIY9+SbjzzlS00U4CnvIpEmDRQ=;
        b=BT4soqg6ywZuTZnUVmOlK0BAE7838oSDXb3PpHdyrABA5Y7mmFze6fX9eU+2VtdyYX
         4qB6Lhmu1vKGCMk3S7OIGRqV2MLh7bbdiZvhQkMUdqncYSx1zt9tpfyWrPp+yEhNLyDB
         KKsn07pWL1omZ1+rTITK3fyY/UHcn41ABcwMrvOhBcWgf58hHHPsi8Zx3TSmau+Otfmc
         43X/IukIH1C85OzJnuyRMRJNUPO5rxS+4xdhrvVC2nOo0qcqN2XuvMBKioafuTZEa28J
         51Fdc7IDHtgVwFZkeAEefadUgOOtnLPwFvBspDlw426bk/WMloJ6SOiKZbZslDYX+xNF
         s0rg==
X-Gm-Message-State: AOJu0YzxgbqFLLtn7XBDDPFg4Sr8LLXgipqBUDtdZ4QW+eWFDheQ9bAj
	IJA9pda/py0Fjn+6R78fY7KDdQ==
X-Google-Smtp-Source: AGHT+IGXZ6gUTWqXb+xT9o+FleuWv6jXqAEwhIBbsrFbTegYHrtte+4y/J8ZdhEBguj+srpdLn/7kg==
X-Received: by 2002:a05:600c:1910:b0:407:859c:a1bc with SMTP id j16-20020a05600c191000b00407859ca1bcmr709327wmq.26.1697406877121;
        Sun, 15 Oct 2023 14:54:37 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id jb17-20020a05600c54f100b00401bbfb9b2bsm889040wmb.0.2023.10.15.14.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Oct 2023 14:54:36 -0700 (PDT)
Message-ID: <83dbd835-c36e-4e7d-a5e4-c572e19c649d@linaro.org>
Date: Sun, 15 Oct 2023 23:54:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/4] dt-bindings: thermal-zones: Document
 critical-action
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>
Cc: rafael@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 conor+dt@kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20231006180453.2903342-1-festevam@gmail.com>
 <CAOMZO5CfW10dwVDYaHkvhTMKeHw38ZAt1kdH8qB=8AM=cqdHvw@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAOMZO5CfW10dwVDYaHkvhTMKeHw38ZAt1kdH8qB=8AM=cqdHvw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 13/10/2023 12:39, Fabio Estevam wrote:
> Hi Daniel,
> 
> On Fri, Oct 6, 2023 at 3:05 PM Fabio Estevam <festevam@gmail.com> wrote:
>>
>> From: Fabio Estevam <festevam@denx.de>
>>
>> Document the critical-action property to describe the thermal action
>> the OS should perform after the critical temperature is reached.
> 
> Are you happy with the v10 series?

Yes, I think they are fine except one thing.

The include/linux/reboot.h is changed along with thermal*.c file. IMO it 
is preferable to have separate patch, I mean all reboot.h changes folded 
in a single patch before the thermal_*.c changes. It is actually 
orphaned and we should ask Matti Vaittinen <mazziesaccount@gmail.com> 
its acked-by as he is the author of the code you are changing. 
Otherwise, he will have to ack the patches which contain also thermal 
code which is not its area.

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


