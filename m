Return-Path: <devicetree+bounces-4597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 669087B33BB
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:36:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1654B283CBA
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE84A1A735;
	Fri, 29 Sep 2023 13:36:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54211A71F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:36:11 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7898B1AC
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:36:08 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9b2a3fd5764so933522466b.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695994566; x=1696599366; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dX3EzbJ03kiWTkjRF5Z0MKioiAU0uGpyTvDAMJfhWR8=;
        b=mzes1ZywjR/25gy+Ia406hFKM9n0KP+jt1U4BFerJEMcy7hCibiJxUttSNMVn51zj3
         OcBlBuxjnj+US8oGOtQsiRP/lkN10ukOGYCgeO8M/StEK7ASQr5k0i5L2LfHFtLgFzSG
         juYrGeKjrPW9mLk3Pq32ZenP3ErYA1TnZGBwyQ46qTbkfWgfAdv8fR4QpzzpX24o5tVQ
         5O3zqqmfdwkXefovdTx073hGmlG7cf0F5rP8tm8PJadjLwtyOQ/fgHbb4FHkxBMdh5Cy
         RnTi67WJnH9hYfo827Bghif27oCtpzV4BxqwhpskKCPhur871kHM26RH9kBTVfXVpxp6
         v8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695994566; x=1696599366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dX3EzbJ03kiWTkjRF5Z0MKioiAU0uGpyTvDAMJfhWR8=;
        b=sTtSPz6KTvQX+Bob5LDgfyxVSgDiJtbx6VgVMkfZ0X2ORqHjPhFUhuVMap2+Vovut7
         8JcRQCVyF3BX5KNbNGflpdNvlEuMsKbRRY0rSeXByuG/gK5uW6xM+f2+23mcs2Ur5dM5
         jpgl4uQCldhcvvxZooJ5Jhv1aPjU306q6FC9XaZvF7cHxO+Ls5rZd0Gy7iSBid2UHqZm
         l2OaJdMrI9ycISDqlreOBgLUfQ7jiKrXir1ef4hWMZky8V2rgIRZQrR6NjZG5+QNycjJ
         ZQ97NNM0oAG+Nw8LTSvwj6dPVyQeyhWBoOkDK3MN3rcbcKU02n9fhGZ5YU2ZGEgxm8kD
         WVUw==
X-Gm-Message-State: AOJu0Yy0v95ov72mcs1HQETRU5Jm97c5L/vOCGpz5cIuPDbQ99LxX7W3
	PDSWkxLbpCxsKrQQIfm/0RFa+w==
X-Google-Smtp-Source: AGHT+IEI3AsAY5gvqlvssgXWfjMGDIL9ozYTysNBuCR2Lsgq307OmkUqGFKI5pXY7nlqcaper59rkw==
X-Received: by 2002:a17:906:29e:b0:9b0:552c:b36c with SMTP id 30-20020a170906029e00b009b0552cb36cmr4212980ejf.21.1695994566618;
        Fri, 29 Sep 2023 06:36:06 -0700 (PDT)
Received: from [192.168.0.123] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id rf19-20020a1709076a1300b009b2c5363ebasm2289902ejc.26.2023.09.29.06.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 06:36:04 -0700 (PDT)
Message-ID: <02eb9847-62ea-e453-0745-6f6ff46f3ad0@linaro.org>
Date: Fri, 29 Sep 2023 15:36:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable CCI
 busses
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230929-sc7280-cci-v1-0-16c7d386f062@fairphone.com>
 <20230929-sc7280-cci-v1-3-16c7d386f062@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230929-sc7280-cci-v1-3-16c7d386f062@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/29/23 10:01, Luca Weiss wrote:
> Enable the CCI busses where sensors are connected to.
> 
> Not covered here is the regulator used for pull-up on the I2C busses.
> This would be pm8008_l6 (L6P).
Does it make sense to enable non-functional hw then? Or is it on by default?

Konrad

