Return-Path: <devicetree+bounces-16023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5997EC85A
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:20:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C467FB20BC1
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973C5381C2;
	Wed, 15 Nov 2023 16:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LFcv9MQU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B2C3175C
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:20:19 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 672CFE5
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:20:18 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c50fbc218bso92974741fa.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700065216; x=1700670016; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YgZKA0DsdEM8wfBvKevVF7NO4a9xgKqf98z7VA8pCt4=;
        b=LFcv9MQUpSFeuwVXbqhBUtqHoUK4djj/xcRY8TJUDxr8hSdZBR/Aob8PnC6pZiFAWA
         z2aim21gSehuSrhpSytji5nsUvsn72Krh69RpXyv/2+Iv1Wc3CS5xJGAQCOcIct/XLOL
         c1Gwecw6qLV2HufkCsirfq+A6AkTPC+x9nRaWqzG/P6cgAxL7WZjzCiRCfanYV4RGAZU
         1bkZq7IPXa2T3JmlnP1oXD96TXydUGpJIZD97PTkHWn2CFUXhfo43875VTpRHbzHkDE8
         Q5wfNHc0pS0LiW0Faew1svroshISM7sfE2Y2IDXeqb7vgECSCWOqhyJqPdEeRttvZukP
         ihIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700065216; x=1700670016;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YgZKA0DsdEM8wfBvKevVF7NO4a9xgKqf98z7VA8pCt4=;
        b=gkgpz2HlKOBMsACeN8plfNa4zCg2fVMdMSYogWbdsgc68TeLH5/cmVdQkEhXabHWrs
         XItaoEC1bGExuV9JOmpThFEXYdKuR/Dd21LFw4d+YqxxcyWxplmafHWinXjEt99OfraL
         wz0ArgsFcTWLJgsW/snjmWRUHvSjrbAWCjFSo05sD5igonBYa/G5/5KBiSBGJ8bm2L+q
         pNuUY/sLmiK0WRp482+aEDsiiSKXMQ5ellM+fyqVEEegKwgdi9I2HRxV7x/PLi0T3bR8
         iqriLvx/VpUVYVmQapntaCfrnuhx9o2I16tHczNPNe+0gNM7bqa44vkfuEzoep2pPERV
         myCA==
X-Gm-Message-State: AOJu0YxuuYSHk4RdA5HOUrjEw2p31WXXJlAnw/pvIxrmRd3Bw6xc9clX
	tp6HnX5oKG1a8k4//XMwhyg+rg==
X-Google-Smtp-Source: AGHT+IHk3uMUNlHK4NV9UcrNsdAssZ6J6dzByPvwjC/T3+TqTzTc7Q32W1dsQXYmHXcCyhCreLbElA==
X-Received: by 2002:a05:651c:10a5:b0:2bb:a28b:58e1 with SMTP id k5-20020a05651c10a500b002bba28b58e1mr4164080ljn.41.1700065216616;
        Wed, 15 Nov 2023 08:20:16 -0800 (PST)
Received: from [172.30.204.150] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k8-20020a05651c0a0800b002bce77e4ddfsm1699622ljq.97.2023.11.15.08.20.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 08:20:15 -0800 (PST)
Message-ID: <c1e604cf-4388-458a-835d-0674056aec5f@linaro.org>
Date: Wed, 15 Nov 2023 17:20:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845: correct Soundwire node name
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231111095617.16496-1-krzysztof.kozlowski@linaro.org>
 <20231111095617.16496-2-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231111095617.16496-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/11/23 10:56, Krzysztof Kozlowski wrote:
> Soundwire Devicetree bindings expect the Soundwire controller device
> node to be named just "soundwire":
> 
>    sdm845-db845c.dtb: swm@c85: $nodename:0: 'swm@c85' does not match '^soundwire(@.*)?$'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

