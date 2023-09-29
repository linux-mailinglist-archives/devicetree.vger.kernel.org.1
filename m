Return-Path: <devicetree+bounces-4693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFCB7B374B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:52:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C3B5B283385
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3CE521B5;
	Fri, 29 Sep 2023 15:52:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21E8521AF
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 15:52:24 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4220A1A7
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:52:23 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4054496bde3so125168895e9.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696002742; x=1696607542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IrS+nzD68lxpKLinSVXhSEs3fVhjvM8TXqXpQevNJBs=;
        b=Sn3Ed8UGv5mdqPn4PA4bd7aTXYIJAfdgINOxGcha/NsfEnt1fkuvcyE8rZZS+K1pCe
         e98JNYxp+IchJaQCx/+a3/hlB3AV+lkfrw3gWELwGc8y2l4c3AsCPpm7MxoKatG+5t5y
         GrcQ11DSQSJutU2L5ZevyVdRum0BJvPzzHRyDMKQ6zFWXYKtQg4uRBADgay+fus0fNxy
         Jqh+aHf5wF3Mm+vgkJXf4OU+6a5DpSCReWfp57vreLtoQiqvZGYVTGuwzK8/xcLDEG8T
         fQoaaoZfo5mGZx9DpDa8aY9M9cAgwkXqMDU6vPXvx9NSdlGlzD7Q9ZQ+A4A6G3PWV8Dc
         KOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696002742; x=1696607542;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IrS+nzD68lxpKLinSVXhSEs3fVhjvM8TXqXpQevNJBs=;
        b=khao9H0yctTiLRxjq7Wtf6n7U0snp7Rsd7lJKUQfchS7pG9ItdzsUDA3sy8I7ERBuu
         fV/A33PmlvEII4QCZ1UPZydP8/Mta/QstpXn5eAqvzXZVi9bXa/ViRp1ywdR2fy0JvYX
         wyO9skSsalZRJvOWRg/1NQ9bSAst/TwjOBmxNjepl4LqWeYCEgQAFZWwkHytBJWj1tTp
         Xc4HWJAG5RM3eQhzsZZ73sLiKNkqQW08fToNQDFdX+sMxeEuUmfXlXcNkNYpZzEXK3+L
         /e3ztcye+InzwqzErSS1ZEGtwr3Vs0WPBTZ8bW6QZwRAnYavkh3eFAb0rkbekgV55S/O
         U73Q==
X-Gm-Message-State: AOJu0YwDX1LBsngDZJ9I6Ud3yKcvgLvERQjff1O8U4+55WgH2jLIuv6w
	dsbqUForvuxw22Roa8zVhQq9mA==
X-Google-Smtp-Source: AGHT+IGWszKKxw4TdMa+hddnqsHXs6q8yNQZry/GtgBQM82ugScktA6LHs1ViFFsbX/SAdDuPBryyw==
X-Received: by 2002:a7b:c8d1:0:b0:405:3b92:2fed with SMTP id f17-20020a7bc8d1000000b004053b922fedmr3953096wml.26.1696002741647;
        Fri, 29 Sep 2023 08:52:21 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id y19-20020a1c4b13000000b00405bbfd5d16sm1685765wma.7.2023.09.29.08.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 08:52:21 -0700 (PDT)
Message-ID: <b983e5e4-9a70-4e50-9d32-234cd5c47f66@linaro.org>
Date: Fri, 29 Sep 2023 16:52:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc7280: Add Camera Control
 Interface busses
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230929-sc7280-cci-v1-0-16c7d386f062@fairphone.com>
 <20230929-sc7280-cci-v1-2-16c7d386f062@fairphone.com>
 <8dd470e5-ce33-3d33-98f1-e66935ca7b56@linaro.org>
 <1b5bd391-4bb0-44ac-88d1-e326bec4dd7d@nexus-software.ie>
 <acc606a6-c46c-43f5-86e0-84bf876001dd@linaro.org>
 <db5d00b5-5d18-4144-88c2-ff6cfb8c176a@linaro.org>
 <b6f801fc-1d8b-420b-a439-ea0cdd12f7f6@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <b6f801fc-1d8b-420b-a439-ea0cdd12f7f6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29/09/2023 16:25, Konrad Dybcio wrote:
>> Not actually a required clock for the clock controller.
>>
>> I suspect the same is true for dispcc and videocc though it would also mean the respective drivers would need to switch on <&gcc DISPx_CAMERA_AHB_CLK> or <&gcc GCC_VIDEO_AHB_CLK> prior to accessing registers inside the ip blocks which may not currently be the case.
>>
>> Feels like a bit of a contrary answer but my reading is the GCC_IPBLOCK_AHB_CLK clocks belong in the drivers not the clock controllers..  or at least that's true for sm8250/camcc
> I believe the idea here would be that registering GCC_IP_AHB_CLK
> as a pm_clk for the clock controller would make that clock turn
> on when IPBLOCK_CC is accessed (e.g. when we turn on
> IPBLOCK_CORE_CLK), so that it doesn't need to be duplicated in
> each and every end device.
> 
> Konrad

Yeah I mean I accept the logic - the core AHB clock is effectively gated 
by the ipblockcc even though they originate from different places in 
hardware - and _when_ do you want one clock without the other ? Never 
except at probe() time for the ipblockcc.

Then again if you can show the clock dependency tree of camera or disp 
requires GCC_IP_AHB_CLK you could make the argument the dt requires the 
clock dependency defined in that block.

I'd say we should offline this from Luca's patches tho :) for me anyway 
the first two are fine.

Agree #3 is verboten. No new empty nodes.

---
bod

