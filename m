Return-Path: <devicetree+bounces-5100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 184F87B537F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:58:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 221E71C20777
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE68E15EBF;
	Mon,  2 Oct 2023 12:58:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BD7EAEA
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:58:53 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA2AC99
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 05:58:51 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4056ce55e7eso133605295e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 05:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696251530; x=1696856330; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YAAsB+v6PNBlL4wIgKPSfMRB3+wsDhZmLZER5vEnd88=;
        b=gpd3v/HIcL2y9d8HiWHP7edy/MPvPPS66V0EQsOdrELhw0kqyYdAvuSl/GNhTvvQQj
         g0JFD+v/3A+L50AZogK8zxgj03ahuNBYW2eEcoAj4n0ZFxRDY2OWlENeGHTiFQYdIZBp
         T1knty6xVuUEYlUorTwCWRcVIeYHOGgid7efGTEUYDwOuXyy4DDP9Uw7qlhl5FaOC3LS
         C3moEwYGjO5t/xTRAVxlpUICgHsGxSurc89qIPnfjueTRf5w7k7F1/9wqKdVCqfJre1Z
         tWOBNQGvBFSirprYzH1UUVb0YVj4j3OdkqMiXAYz3uszKXlk/TWSBHHjeEfVZWtVUNx+
         lnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696251530; x=1696856330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YAAsB+v6PNBlL4wIgKPSfMRB3+wsDhZmLZER5vEnd88=;
        b=Yb3N70QKOAlO5z4yHpURrKkMdFCiDYSEE3nBzt/4ln1PD0P6bdENsedchzVoMnAVex
         9EFSLRpH7+yMdW3+cvw+SWjS3R5IbO1kLsXB0F7bStFj8r604yVHTDbHh1S2OZFGqZrR
         AzbYdQNv561nQatoVrLhzI1GPb7CFJ/WUDMEDBS6ovuCYPg9tZqqIZwyXOnwlDTNsSZV
         looLZzDSXT4w8lditG3BVg+mvhXEOR/bw8TsUa1FWoGCgL5PiTIy4RgcAb5LZ6d1R0Hv
         yRjgt1OuDyvid9wDa5PUkGrSAagVu1tUwCF6weMJvZDQUZV+ydkrIImkNt3XTzc4g1Tv
         qW+g==
X-Gm-Message-State: AOJu0YyaMXWOnftW5xDFPdV/rtYMEuRLko0JzFdOudk9Mql1oQwmsvlJ
	n6UWLBfx1sf+83kTBGbH7AFMIw==
X-Google-Smtp-Source: AGHT+IHSfOL8RFR//ckMOxB5y/HaSFn98XZ+xD9T5oC2hez8ssN2gTnQO8qiE59Y70eEAj2Gsx3u/Q==
X-Received: by 2002:a05:600c:4f45:b0:404:7462:1f6f with SMTP id m5-20020a05600c4f4500b0040474621f6fmr9795803wmq.8.1696251530162;
        Mon, 02 Oct 2023 05:58:50 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k9-20020a7bc409000000b00402f713c56esm7247590wmi.2.2023.10.02.05.58.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 05:58:49 -0700 (PDT)
Message-ID: <e9d49264-feee-18bd-e78a-ab743546a10c@linaro.org>
Date: Mon, 2 Oct 2023 14:58:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable UFS
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231002-fp5-ufs-v2-1-e2d7de522134@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231002-fp5-ufs-v2-1-e2d7de522134@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/2/23 14:30, Luca Weiss wrote:
> Enable the UFS phy and controller so that we can access the internal
> storage of the phone.
> 
> At the same time we need to bump the minimum voltage used for UFS VCC,
> otherwise it doesn't initialize properly. The 2.952V is taken from the
> vcc-voltage-level property downstream.
> 
> See also the following link for more information about the VCCQ/VCCQ2:
> https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-extra/devicetree/+/1590a3739e7dc29d2597307881553236d492f188/fp5/yupik-idp-pm7250b.dtsi#207
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Depends on: https://lore.kernel.org/linux-arm-msm/20230927081858.15961-1-quic_nitirawa@quicinc.com/
> ---
> Changes in v2:
> - Constrain UFS voltage to only 2.952V
> - Link to v1: https://lore.kernel.org/r/20230929-fp5-ufs-v1-1-122941e28b06@fairphone.com
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

