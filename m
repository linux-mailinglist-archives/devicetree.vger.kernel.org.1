Return-Path: <devicetree+bounces-10548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 526637D1E32
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 18:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BE3E1C20925
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 16:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71DE12B94;
	Sat, 21 Oct 2023 16:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pjU9v8Sh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E635251
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 16:17:38 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55C78D5D
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:17:33 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c503da4fd6so27293811fa.1
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697905051; x=1698509851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2QCO7vKJdpewvnrGf7uSRM6TlZdVHtky0YfzwG9dgVY=;
        b=pjU9v8Sh/YyZ8em/EcIQCkdxq2+38oY0OIMcZ/DbABHxJpz/lkPlMKWQMfaCjsBurT
         dIiaPd+Ih/j+utE8T6fKkbdWZr80i7w1QsMjuwnuSrvWKQKSx8rnC/ClQE/54oSfA77/
         c1LGbIJ7i1Lanwd8zGVa+vRwQQaVWqyeCFO70Z9bckUWP8+vEIVPKTm6bA4Uu14R1RWN
         oy/qfamM5eCPtMlJ4yGP7hnVXpmXNpvNnloBSAYm7ixbYdlCe+vbnkm2w4J5CuoUaPTs
         XxRZtVEvjYTpE4c4bUEM1qqxyMJihW0Iq1gOfOiQr1VqrrPsFpeCMNjXAcgB/gp7dxLs
         3d6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697905051; x=1698509851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2QCO7vKJdpewvnrGf7uSRM6TlZdVHtky0YfzwG9dgVY=;
        b=hWANnI74yDJh9+HYrTdI6xwRD2zppb5r/zeHpOGpGo4sgnDY2v4jkQr7cRNqFrmmbc
         UmYXBNYbY4wpF36wjVnp/hY0iiYtjxfdTwDltWh+zqUtyeR3SQUlCgyKDWKpM2DOY4W5
         mJaPmy8V4xKScwTRbKYGdQbrm6amlSLX3tmuDRs6i/1WAh0UOvxjYIb0+aM506rzdJ1C
         Dj17w2HRAjL3+00WwimdJlEc6K8LJhR55orlVgiXJethUI9PbHVH4Zws2SG8/ITwCaZG
         TTXIYrBRwI/HzVItyzeJVFKbXMgNI8jJNxpY32COIn6SOJVc/WQWyH6Y06LuMo+Yemd6
         freA==
X-Gm-Message-State: AOJu0YxzTUExzkzWrXdHkji/k43oTmQUfFr4pf+85z7FFDpBe45EA45B
	h6jjnVC2Y3WzgpbrXiFasPxSYQ==
X-Google-Smtp-Source: AGHT+IGUX29kGn+O+8jtH1EHnalh5tcVZoDjnw2thl7vfAv7LtObZoQC9rYzurf+iaRF8Wb17E7sig==
X-Received: by 2002:a2e:9210:0:b0:2bf:f7ea:884a with SMTP id k16-20020a2e9210000000b002bff7ea884amr3462294ljg.30.1697905051347;
        Sat, 21 Oct 2023 09:17:31 -0700 (PDT)
Received: from [192.168.1.116] (abyl4.neoplus.adsl.tpnet.pl. [83.9.31.4])
        by smtp.gmail.com with ESMTPSA id h5-20020a05651c124500b002b95eb96ab7sm876376ljh.18.2023.10.21.09.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 09:17:30 -0700 (PDT)
Message-ID: <ae070706-2f0a-4932-b917-b8cc9a59b46e@linaro.org>
Date: Sat, 21 Oct 2023 18:17:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] sc7180: Add qdsp baked soundcard
To: Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Cc: jenneron@postmarketos.org, linux-arm-msm@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231020-sc7180-qdsp-sndcard-v1-0-157706b7d06f@trvn.ru>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231020-sc7180-qdsp-sndcard-v1-0-157706b7d06f@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/23 17:33, Nikita Travkin wrote:
> Some devices, such as Acer Aspire 1, can't use lpass dirrectly, but
> instead must use adsp core to play sound. Since otherwise the hardware
> is, usually, very similar across the devices on the same platform, it
> makes sense to reuse the same boardfile.
> 
> This series refactors the sc7180.c slightly and adds the functions to
> control clocks via adsp instead of controlling the hardware directly.
> 
> Existing google devices should experience no change.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
s/baked/backed, unless it's a nice bread :)

Konrad

