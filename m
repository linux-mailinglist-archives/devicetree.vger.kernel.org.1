Return-Path: <devicetree+bounces-6455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB657BB71B
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:00:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99BFC1C20986
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3141CAAD;
	Fri,  6 Oct 2023 12:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w25afzsl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC171BDCC
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:00:17 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CDACCA
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:00:16 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5043a01ee20so2550398e87.0
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696593615; x=1697198415; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gcUqK1NW/dA5bg/50jl0q11SkwovBNOgvNnB+Ups9ZQ=;
        b=w25afzsl0dMFz97tc0TuC5qGuvCxyJbX0i1REMJuSBA6q1W0SEsxn3XVqC4qTDXPET
         BJNwXMqr1GNAJNV11HOohXBTfyN2KIPF/Y2TMr5toa+Uj2rvQwiWu0H8CzMrI3UROQRV
         FT5syL62AD5pq3VKTuTpOyd84ENGYiaoIlqnMpB+Elw1C8pOAAFPx+/XiJK4SuONdgwv
         tnt3Gg7HUmpxbK/qU+u+t45yqg48rUj7xt7HKUUSCGX9L52AYKnxF8DS6jlcMrZO70Gs
         qD9r8LkzlwN+eG6fn8/wOvP5WFw/qC/Wd+lVKIK44JoQFwrp17TC+0UXxm2WUF/5jvlV
         u1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696593615; x=1697198415;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gcUqK1NW/dA5bg/50jl0q11SkwovBNOgvNnB+Ups9ZQ=;
        b=FcQufU+nEHB14WOL40DJ9bhHeNvsYbe/4F8JeS9htdBJJ0r79Rc3+dKXOmbdvCJUCa
         /3yxdPYXhOy7Gv2kSmvlKLtYZ5cZXWYtiZwDtPIHu+8KoJz4Wt6LOahq+LUZawMs5YZo
         83i2tyvpt74RH3pJJeZElyXYiz98GRKw21biq5otQs8nWdvyQDDkCVYsAbttm3zDfhl5
         4PhuP0tHdnYQ7Pj1HPmAG69wFl597WKXpSKCNm9nAUW8mIbbKo+3LOCNYmaf6HND8Gsr
         NJSDfJGSuDHIMPfTMzXh1WtnzwzlXm8I8upEteNrDz4XQSqgFU2MaE4Ludt6SaI7GHnQ
         oxcA==
X-Gm-Message-State: AOJu0YzQ9onh+4KI3gAIHUnzgrouGVn2V9DCNiDxubcfvSUyHC+Q/hQz
	yhljheGZrXcFlaH25cPaKfmD+Q==
X-Google-Smtp-Source: AGHT+IFJWJNl4YXCaP30ZQCTHcwBJawdDelacTX9CWxRzhZbAxlknHF5JhucrQH8GQCOvS2QSU/D6Q==
X-Received: by 2002:a05:6512:e9f:b0:500:d960:8b6d with SMTP id bi31-20020a0565120e9f00b00500d9608b6dmr8796566lfb.33.1696593614656;
        Fri, 06 Oct 2023 05:00:14 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id t9-20020a19ad09000000b00503fb2e5594sm275387lfc.211.2023.10.06.05.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Oct 2023 05:00:14 -0700 (PDT)
Message-ID: <5eb8fac4-36f1-4515-ac83-0051cce275f5@linaro.org>
Date: Fri, 6 Oct 2023 15:00:13 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] drm/msm: mdss: add support for SDM670
Content-Language: en-GB
To: Richard Acayan <mailingradian@gmail.com>, Rob Clark
 <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Vinod Polimera <quic_vpolimer@quicinc.com>,
 Ryan McCann <quic_rmccann@quicinc.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Liu Shixin
 <liushixin2@huawei.com>, Krishna Manikandan <quic_mkrishn@quicinc.com>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20231003012119.857198-9-mailingradian@gmail.com>
 <20231003012119.857198-13-mailingradian@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20231003012119.857198-13-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 03/10/2023 04:21, Richard Acayan wrote:
> Add support for the MDSS block on the SDM670 platform.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   drivers/gpu/drm/msm/msm_mdss.c | 7 +++++++
>   1 file changed, 7 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


