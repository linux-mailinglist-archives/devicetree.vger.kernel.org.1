Return-Path: <devicetree+bounces-16292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F1C7EE35D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:53:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 372D8281008
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209C030CEC;
	Thu, 16 Nov 2023 14:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P3Si+JPn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7040293
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:53:24 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50949b7d7ffso1284098e87.0
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700146403; x=1700751203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DCGMSCkSoWBnrTUSH4qK8JLFeQXZXM72s+bKdEOy7ms=;
        b=P3Si+JPn/hgQt7EhlIlwDGnCgvwYM44ahuQAqX84bJ2Sx2LukOf5a6vogMWD4jOWWD
         vIgMSr6dTL/Pk4xI/oMrYVZm9FlAaK5rTiqHQa8jjvPxGPdefaaAN3/XQH89fZ3Y2G6R
         qbVqPuFYulCo9an/R0nLQ6wDc0hwqm5wo9o710T0ExjcXqt3dNxjYeC3dEw/Oy8MoQO8
         5/F2Th9RS2bSzdXFyQ7n+xLB+YTALYtAZlrS2amQA//EJtgFIJEItcDiHacwFCaeD8qu
         t5AIOXQvec+mEWIX4boFasjxi5KVJuPodcsimGZy2oki2rFiwIdDswEZF9zMP8SRu8xI
         6VnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700146403; x=1700751203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DCGMSCkSoWBnrTUSH4qK8JLFeQXZXM72s+bKdEOy7ms=;
        b=szPfj4iERg3cT7cySaFZJ9TdWATNYt9plAtHg5AP1BA7txPH8T7bJVEA3yL8NsdVPX
         IdRCTSGpCyIiiVN+UtkfzQUUfL0EAKSWQusog+8ZAr4f59v3ph8qAE6F1RWy4iklZ78a
         bFJOauAIgXl8rpW4iRIDGHqnZ4Ydy8NW2yEZhSbiCdLLG3SjGAuvKZJaQDU6HCGXOybZ
         sXxmRaDSSGEe/HRkuMwyvBhCEw+331qXiv9FXE3RjXuG9k3ucpsTnYlvkZRyKb2St/fV
         NN9J4nPrWgYKQwXyByi7LwHHwsl/9e57bJooBlC7LIOyDkgKyqWJs2F1RAM/a4vC0J4t
         d+kQ==
X-Gm-Message-State: AOJu0YxX+nRXEODIxvedQGmlZv5yWCDItuTCzHNpMz5WX8PM2Ntr2YhJ
	zEpj3IRKcFQS67+D3sZ8IHoalA==
X-Google-Smtp-Source: AGHT+IEdBplgYFkk+bVCMr/NvJAR836rixMiQjKtxiF+Lp7YEE2DvqnWbMgqfbd/oPwUsrp1S/MBLw==
X-Received: by 2002:ac2:504d:0:b0:509:455c:9e3d with SMTP id a13-20020ac2504d000000b00509455c9e3dmr1758698lfm.18.1700146402658;
        Thu, 16 Nov 2023 06:53:22 -0800 (PST)
Received: from [172.30.204.128] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u23-20020a196a17000000b004fe5608e412sm16550lfu.170.2023.11.16.06.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 06:53:21 -0800 (PST)
Message-ID: <ac66f3c6-04bf-4194-ba81-f91bee5cb13c@linaro.org>
Date: Thu, 16 Nov 2023 15:53:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/11] arm64: dts: qcom: sc7280: Rename reserved-memory
 nodes
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, =?UTF-8?Q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
 <20231113-sc7280-remoteprocs-v2-3-e5c5fd5268a7@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-3-e5c5fd5268a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/13/23 09:56, Luca Weiss wrote:
> It was clarified a while ago that reserved-memory nodes shouldn't be
> called memory@ but should have a descriptive name. Update sc7280.dtsi to
> follow that.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

