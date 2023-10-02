Return-Path: <devicetree+bounces-5071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E346E7B504B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:28:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 946B7283803
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D6CEAE4;
	Mon,  2 Oct 2023 10:28:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E78FEACD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:28:19 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C4FEEB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 03:28:17 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c12fc235fbso36630341fa.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 03:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696242495; x=1696847295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y9uiHFCMzLlJe5x4a/5rmxmhTkPKOnSgYN/+M4Z494U=;
        b=MVSKxw//4l4FwnaPHIDIlsZIbwPjXgHVNTCaZ22IfTskD3ul+7o93Ls9F2d6JFY6Gm
         UTq5wiT1nT9jrqWaExrzSf6KmNsG6+KIcKQUC4Vgyc7zhoEPdj9vXCkEX0NOTjMKP068
         xEhmf5mo3s+hYFRH5b8DkF0aOK5FxT4WFxO1NEU09e9TgRElvifaQlqiHnb78cJRCfAU
         n/UB6PSw1PTMdCoV4uWXxgPG860JJkl9pqRQw8p4uBfKMtZ79UlquwB9Iy+bjIJIx4YQ
         KuvSV1raKIsVZ6rVNX9oRhh1ezRAQUOloJ7lCkYawLJ45kkpGqMT77prC/rGaYAlDCBY
         WmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696242495; x=1696847295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y9uiHFCMzLlJe5x4a/5rmxmhTkPKOnSgYN/+M4Z494U=;
        b=E0LMgkal3s33zRObT0nRt3CKsSNRkhhLJe6v44xTZGwfJbsEnGnktLnDEBDJ027v45
         6VMisaZfmvYaiFR835POcUpQIXOGCkxVhcSJjpXO2IO75RbXtYsWEng9tBtWlU9ZOFZX
         x9HFBFQ0tj2hzLM2n0yx0t3jtR18MZwFVuD9AhI2f2CZvj416RaShYSvpir+sE2Yupyv
         xYYvZiHT7VSJFnVsYeuq0pFdVajTdBt9KfiYLmGTb8gQKDK+Crl+iiinWGLA8RZEsGYO
         Dw437sOijb7A9ZGr6bU35BZAqYoVfwPfJOb9KDHbdXsRKw7xyVIKg3q+R5Jg53kF1sxN
         CINg==
X-Gm-Message-State: AOJu0YxHCgTz/CBTzhUe1NJxUi8AECfZhynKYbQq6CKRhVB8Ul959ZrY
	Gs+KcCHUzkMBJMfKeCfU6YlugQ==
X-Google-Smtp-Source: AGHT+IFW0+gwOlLqYNeZ7mETu3Pd+ABKNdjIkutZF+3SdjfoqKiO6ARmXcfuf4v6kQQrsTNkCCKXZA==
X-Received: by 2002:a2e:9956:0:b0:2c1:7e15:dca6 with SMTP id r22-20020a2e9956000000b002c17e15dca6mr9135945ljj.0.1696242495619;
        Mon, 02 Oct 2023 03:28:15 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u9-20020a2e9b09000000b002bff98b3080sm5123147lji.60.2023.10.02.03.28.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 03:28:15 -0700 (PDT)
Message-ID: <175c4782-94a7-c1f5-16d2-2df117a4b5dd@linaro.org>
Date: Mon, 2 Oct 2023 12:28:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm8550-qrd: add orientation gpio
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
 <20231002-topic-sm8550-upstream-type-c-orientation-v2-4-125410d3ff95@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231002-topic-sm8550-upstream-type-c-orientation-v2-4-125410d3ff95@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/2/23 12:20, Neil Armstrong wrote:
> Specify orientation GPIO to the PMIC GLINK node.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
w/ fixed commit msg


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

