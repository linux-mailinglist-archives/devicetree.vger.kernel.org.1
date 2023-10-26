Return-Path: <devicetree+bounces-12125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEE37D80A4
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E4C8B2124E
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC4C82D04C;
	Thu, 26 Oct 2023 10:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h0GqJ5t6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6EE2D02B
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:23:57 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6506DC
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:23:55 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c59a4dcdacso12270981fa.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698315834; x=1698920634; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HpHNzaNnGzJDoenjeZleAPUoWRMrdSrD5ESAN+FMcak=;
        b=h0GqJ5t6G265X/OozvIU21IJ8uTrDAyra/VYnuEzDKcEcHp94Re4lFxpPZcgmLYvkb
         xx3CRetqZpJS+mcXvRU0xaNoq9HlUYfhhbgTvy2Nk1WeCGbM92J9VFPwbIg4Gn/Sil91
         USaynIOC0esqMyTu2hXmN2Z9FZAdBQxELiqsO4lHRHRbnzgRReeRPJbXxALNzD5r/eHx
         uGTp/1We3WQvOKy6sOcRuLHuw82kXkT2WWqTXv+/+tXpQW+uCs5baEVHfoCioEUEW8ED
         8qICfT1gXBPbndTWzrq+/91PaGOF9LJXPPey0KBcql6JgJH6DVZWOE11iXLP9Lzpvh/v
         +lrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698315834; x=1698920634;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HpHNzaNnGzJDoenjeZleAPUoWRMrdSrD5ESAN+FMcak=;
        b=glUVVcXA7raDi3rV+B7n020F6HTkntq7aUjzRSmw4Btw28TWGtjwAVPyQzmkGeUEhr
         7QlZU3UerNwg7aNFBocfv/Y07qU5fm1TTs0XbCvttOH/3i5AS7h/dZWXKrgjxzepB6Nc
         QbNLsVt+5Y9Slpae1cEMtt5budcPpDogF3RnZmzSpixMeE0e0TMzLqt619SOlfTemZSI
         dxGzrj6kRyAAVsmA1+TugfMU2XXNvXes0kM63mDftSQD1jjR0t/w1OoIwBe3DP5VlLsU
         85NlbuXh78+n6f1Ztjz3hQtGWyyvPfgTV5/vXxB9rq11j47g6WDvxXbU51qCUk0Vud5S
         a1xw==
X-Gm-Message-State: AOJu0YzVBCgsTzwchJPEum+5VCb+cbWiuVL5evQzgUXIVvYB81Hds5w5
	jtcKAAUfVKWu9dkj2QTwwDxyMQ==
X-Google-Smtp-Source: AGHT+IG9JqVY+mqg7HhWv7eQKI5L9L3KgreCiYej72sPk6Eo+gOn4P650gnDL2YAR2JzVL0gO+OR9g==
X-Received: by 2002:ac2:550b:0:b0:507:a86d:89bb with SMTP id j11-20020ac2550b000000b00507a86d89bbmr12135845lfk.23.1698315834022;
        Thu, 26 Oct 2023 03:23:54 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 14-20020ac25f4e000000b005068d6de988sm2940995lfz.226.2023.10.26.03.23.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 03:23:53 -0700 (PDT)
Message-ID: <b165d2cd-e8da-4f6d-9ecf-14df2b803614@linaro.org>
Date: Thu, 26 Oct 2023 12:23:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: arm: cpus: Add qcom,oryon compatible
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 catalin.marinas@arm.com, ulf.hansson@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, ayan.kumar.halder@amd.com,
 j@jannau.net, dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
 m.szyprowski@samsung.com, u-kumar1@ti.com, peng.fan@nxp.com,
 lpieralisi@kernel.org, quic_rjendra@quicinc.com, abel.vesa@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 quic_tsoni@quicinc.com, neil.armstrong@linaro.org
References: <20231025142427.2661-1-quic_sibis@quicinc.com>
 <20231025142427.2661-2-quic_sibis@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025142427.2661-2-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 16:24, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> These are the CPU cores in Qualcomm's SC8380XP SoC.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
There was an off-list discussion, not sure if it reached you in the
end, but this won't fly. I was told there are at least two separate
core types (discernable by a different MIDR_EL1[PART_NUM] [1]), all
of which should have their own compatible, otherwise we will introduce
something as meaningless as qcom,kryo before - we want more
granularity, like arm,cortex-x1 or arm,cortex-a78 are separate.


[1] https://developer.arm.com/documentation/ddi0601/2023-09/AArch64-Registers/MIDR-EL1--Main-ID-Register

Konrad

