Return-Path: <devicetree+bounces-4429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F12557B293D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 02:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0D5C11C2094A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 00:03:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27120630;
	Fri, 29 Sep 2023 00:03:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7D119C
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 00:03:04 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23948195
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:03:02 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9adb9fa7200so23699366b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695945780; x=1696550580; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fJoQABJwrjN7DXpldL83GMfqcCjhQ/lDP5wcxhA79e0=;
        b=G+mI2RfgpGpq+aILp+BDMRVTEZGuD2mdzRZvIyunJj/UbSoFWmKpXwthjXIBY/6v7u
         RBbt7WZzE1iOpyliz4Gz9A/KjqXtsnzUP0E/M8Q5sewvKpYaxEb+MifdiRh6zLhW0Bmz
         r6vKN/TN/d5sjMJSgX71RAlVihlZqo9H8fDaMWltfDnBqFMaBCyrHHEAxClRI+yMRy2l
         kQiYS71r0VdCMmOITWrebdD4zpyA20DOZH+I/Tjst1ANTzqWw+Bh7vMbSRqzZtrJlG49
         UNsDibihVmXVoZxTYGuBwzeKWvKCu3kd8h+Nb0jYr7Hvz6DEfR9tnWPQ6elfwsxKrG4l
         5Rpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695945780; x=1696550580;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fJoQABJwrjN7DXpldL83GMfqcCjhQ/lDP5wcxhA79e0=;
        b=tdQp2R68xe4iI79iRrnn2cxu5I8spvo9Z7bYcE0BKtBq+Jf4GIHce2zN4LD/dEp2wE
         9dk9EIRA8Tp8aJT6TeJ0/ZJ10dClJQDgj9G9hDP9CUiaToDb+X1ZEDnhpalK0LA65xYi
         BjmpBPDZ8BBrq15lJaJ7szm2icIczqc+lSx5802uGk5usQPm1M1Ofvo9cYdVFxeXfqs9
         OV+QVwxqt5TVfoiawJPbU1ikoqHSt9C83zTUAenDiOcLTuZpNhGFlg1rIiAah9Cb0T3M
         FUGDRRCVlqt/n6G2E2NGiMK0FGwiVqdYPIxL+hCrvc65ZVO//OurMIxpBiKvGFViOnzT
         ljdg==
X-Gm-Message-State: AOJu0YxfBmPiTsp5uXGNWtPYHPVdzvGW43J6Gwm3qgxvMxssApC0UNzR
	CQBTDaobzcD9bMxCagEIf2xJ5Q==
X-Google-Smtp-Source: AGHT+IGcvT7rG1Dp9q+pepiUE9YMrXoIwg8rikPYq9kzHjH0K5DORbDTYbMi9f+iQ2jZA1cCt8uoBA==
X-Received: by 2002:a17:907:6092:b0:9a5:c38d:6b75 with SMTP id ht18-20020a170907609200b009a5c38d6b75mr2869547ejc.15.1695945780603;
        Thu, 28 Sep 2023 17:03:00 -0700 (PDT)
Received: from [192.168.33.189] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id t4-20020a1709064f0400b00992f2befcbcsm11434646eju.180.2023.09.28.17.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 17:03:00 -0700 (PDT)
Message-ID: <9febcacd-675f-4d91-9338-f8b3fad4cf62@linaro.org>
Date: Fri, 29 Sep 2023 02:02:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/panel: Add driver for BOE RM692E5 AMOLED panel
Content-Language: en-US
To: Jessica Zhang <quic_jesszhan@quicinc.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
References: <20230927-topic-fp5_disp-v1-0-a6aabd68199f@linaro.org>
 <20230927-topic-fp5_disp-v1-2-a6aabd68199f@linaro.org>
 <000416ca-3bbe-4913-9fe5-0993b90b2829@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <000416ca-3bbe-4913-9fe5-0993b90b2829@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29.09.2023 00:00, Jessica Zhang wrote:
> Hi Konrad,
> 
> On 9/27/2023 6:19 AM, Konrad Dybcio wrote:
>> Add support for the 2700x1224 AMOLED BOE panel bundled with a RM692E5
>> driver IC, as found on the Fairphone 5 smartphone.
>>
>> Co-developed-by: Luca Weiss <luca.weiss@fairphone.com>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
[...]

>> +static int rm692e5_on(struct rm692e5_panel *ctx)
>> +{
>> +    struct mipi_dsi_device *dsi = ctx->dsi;
>> +    struct device *dev = &dsi->dev;
>> +    int ret;
>> +
>> +    dsi->mode_flags |= MIPI_DSI_MODE_LPM;
>> +
>> +    mipi_dsi_generic_write_seq(dsi, 0xfe, 0x41);
>> +    usleep_range(1000, 2000);
> 
> I'm not familiar with this panel, but is calling usleep() after almost every single DCS command necessary or specified by the spec?
Removing them doesn't seem to cause adverse effects, so I'm willing to
do that :)

[...]

> Are these generic DCS commands? If so, can you use the MIPI_DCS_* command macros/helpers when applicable?
Unfortunately, it doesn't seem so.

[...]

> Just to check my understanding of the comment here.. so the above DCS command will set the panel to 90Hz, and if we change the parameter to 0x00, it will be set to 60Hz instead?
Yes. Since the commands differ, I was reluctant to introduce
a second, identical-except-60hz mode for now. Though I can
define a driver-specific struct like this:

struct rm69e25_panel_desc {
	drm_display_mode drm_mode;
	u8 framerate_magic;
};

and then define both a 60 and a 90 mode.


I also moved DCS calls from .unprepare to .disable so that they
are not sent to a DSI host that's powered off and will include
that in v2. LMK if you have more comments.

Konrad

