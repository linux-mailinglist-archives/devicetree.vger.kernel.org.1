Return-Path: <devicetree+bounces-4590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 437CA7B3386
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:26:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 56B94B20D0F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCFC31A5B0;
	Fri, 29 Sep 2023 13:26:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2F811718
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:26:09 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F04CA1AA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:26:07 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so1460048a12.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695993966; x=1696598766; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RU+nGBxPHmO+YMgDRXpz23ytpIb5xFuGx0xQN0oYtCA=;
        b=qKXkGu/rA1llhGxBniJuo/rGF54DeHNh6kyKpWZmYiy6wyFCWnyh05lmOwfHrr5vqK
         T13sv/tGjZilpg/x67IZfnnALkbJdp1KS4rOL4KMsasMzRj9caqTJTMb+JxzEQlqT+0E
         YR1L4giF9Yepan2sFU61PvZCF2yYTihE0bNJo5TuPIYYII3nrBDMcKrOyvHueETf46K/
         ydn7HtSdHgHt0zPciJ5jJZijmx8pCamSnNAgAc/LYgGPmBr74s5cLc5472bJFEybRFW+
         PwDggl5X04vXJdCneCRyd4U+mSDZO6kONT3xnUfooBoQC8BQy7dXLh7H3MgXDPuBZgz0
         K6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695993966; x=1696598766;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RU+nGBxPHmO+YMgDRXpz23ytpIb5xFuGx0xQN0oYtCA=;
        b=rjA8mMV85wQdVNmVghelyuLO6hqDc7S9HCx0gjUjH/FmdI/UnoJZaiucVcfGcXQ+eV
         qrcRAosrZA0koVRPAAu8lISiTiNcaKag9Eb1E3dMaXOnI9rZRAAhFJwTiHk4GZ5t7o5F
         N9AyYiHd8DZJs/VzNU59DDH5hZFWxThCE6MyDM3NZr4DFP6MDwZsPZZcCLr59Vp4JHEk
         8QJMeegTKl55hSyASnqLx4JgR+NaSEoPiwkJ/I/wnAtd0zBg9qS+74qTs2yLae8xY/Ml
         CJ8yUSIID8TsA7MfW/L+dRhga5XkSKCTd/z8blKIniTQCb+yt0w410PLrDZHulnQUxTv
         mr9g==
X-Gm-Message-State: AOJu0YwpRbznzGrx+ydyAI9k4PcKoA8rIVNdn42JE1bmzjxHDgxwcVCR
	113LyPNZ8+RDXCe6Hr8L3Acq6w==
X-Google-Smtp-Source: AGHT+IHyYZ73egSBweUZ8ehMhZFpqK94+RpftDUfd4mbYz368Z/GKqdpJr+rjN+iLcM1tMDo+mnWrQ==
X-Received: by 2002:a17:907:7b8f:b0:9ae:5a56:be32 with SMTP id ne15-20020a1709077b8f00b009ae5a56be32mr4249912ejc.38.1695993966418;
        Fri, 29 Sep 2023 06:26:06 -0700 (PDT)
Received: from [192.168.0.123] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id i22-20020a17090671d600b009a193a5acffsm12220458ejk.121.2023.09.29.06.26.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 06:26:06 -0700 (PDT)
Message-ID: <ed61f6a1-a21d-cc23-b995-7692a2e8530a@linaro.org>
Date: Fri, 29 Sep 2023 15:26:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH V4 3/4] arm64: dts: qcom: sc7280: Add UFS nodes for sc7280
 IDP board
Content-Language: en-US
To: Nitin Rawat <quic_nitirawa@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, mani@kernel.org, alim.akhtar@samsung.com,
 bvanassche@acm.org, avri.altman@wdc.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230929131936.29421-1-quic_nitirawa@quicinc.com>
 <20230929131936.29421-4-quic_nitirawa@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230929131936.29421-4-quic_nitirawa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/29/23 15:19, Nitin Rawat wrote:
> Add UFS host controller and PHY nodes for sc7280 IDP board.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Tested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
I did not add these tags to this patch, drop them.

Konrad

