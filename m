Return-Path: <devicetree+bounces-9556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4BA7CD6EE
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDAFD281378
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2CE156C8;
	Wed, 18 Oct 2023 08:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p5f7KhhS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A86125CB
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:50:12 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54338EA
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:50:10 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-507bd64814fso2273254e87.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697619008; x=1698223808; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VY8V074ZaWHR3uxPsaqqpbxmTtftcDfFzH7Dssm9LII=;
        b=p5f7KhhSc7cBaTlx5VdOHiZxPxaZbsYhD5lw4ZBavMdgIgM/Vb6zaSFd6hl3orzys3
         p9qKMeHQFkcQF4RrD7+t27oYC3f9U5jSzRAv3bIpWcITG/8D74GyWOREX3yGcmZXiO7b
         a8Nb7uIgIgNJKTkHrz6P9Z9VLntIh4Vj72C5RC5IsCHfTiKdBPIhtlIW5l3d3triwBfI
         RodFmm7ucL6GIWiY8wmtTPr07rhHDXOnvSoGj1aR9THKp8Of8ZTYwjHFcF3Q/r+CKmvL
         aO7VFWJSJB3vzAZfi66DdWSTJukO9UziAZTuSyR5oFTV3MOtko17/iWfEXB61KosHiK7
         Eouw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697619008; x=1698223808;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VY8V074ZaWHR3uxPsaqqpbxmTtftcDfFzH7Dssm9LII=;
        b=WaFFW91Z7JHanv2KGFF08bIsKpTXCdSWNP4L05H8unoe/FhNTSLyETzROM4Zoo6+Z5
         BGd4jg1fE2MWNprcMM0x+UHZ4a9Jn+8f5lT8lSsWwOqclE9X92jE9T2kpbGL6HGUpf9v
         TQz60f4iRqLreXdN7+E4RPIVypxU7y5+SH6ezIykMStWHmnLIe5T2ZkKhWCtMc/RD6Gr
         avVz4nvFvqan/xbDx5N2RMpD6RAev4cgL+0uPHo9vP9XCG2cov3Oa9DbKDe2H4JH9K6J
         BTykia8Yj2NvIh65b0scNpBkjnJUnfsAvoASdRHTW+BqAVOHyeHiwFclhq5dJrnRUWjJ
         baDg==
X-Gm-Message-State: AOJu0YzPxb7r9Z7TGPomEvD+4vGbNui6aFVP9H7CAr4ZgvzyBrmpofMq
	VV+cD4Z5O6PLqsAW9s7GtvAmVw==
X-Google-Smtp-Source: AGHT+IF5XWZCdhFd+sdr7SW9sr+WDumaME1Zk8oICpesr0u85VtPi3laTpJVUkx0QZ0bIQz0st1WIg==
X-Received: by 2002:ac2:5586:0:b0:500:95f7:c416 with SMTP id v6-20020ac25586000000b0050095f7c416mr2891199lfg.7.1697619008563;
        Wed, 18 Oct 2023 01:50:08 -0700 (PDT)
Received: from [172.30.204.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id x20-20020a056512079400b00507a3b8b007sm615700lfr.110.2023.10.18.01.50.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 01:50:08 -0700 (PDT)
Message-ID: <6b4c544b-5325-42cc-9479-bd4db7250687@linaro.org>
Date: Wed, 18 Oct 2023 10:50:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: msm8916-longcheer-l8910: Enable RGB
 LED
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, Stephan Gerhold <stephan@gerhold.net>
References: <20231013-bq_leds-v1-0-cc374369fc56@apitzsch.eu>
 <20231013-bq_leds-v1-1-cc374369fc56@apitzsch.eu>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231013-bq_leds-v1-1-cc374369fc56@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/13/23 22:51, André Apitzsch wrote:
> l8910 uses KTD2026 LED driver. Add it to the device tree.
> 
> Tested-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

