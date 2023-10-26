Return-Path: <devicetree+bounces-12126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DEC7D80B4
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:25:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32D5BB2136C
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A262D04E;
	Thu, 26 Oct 2023 10:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sB18Qo+o"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D832D786
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:24:53 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE07A195
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:24:51 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507a98517f3so937164e87.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698315890; x=1698920690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a4Cf1JZHZEJIbarHfjcQQvZGpAiamoBRA5YGADyvYNA=;
        b=sB18Qo+oQ0VbqWZxI47oQ1YRnsgcbnT0iPr1FJ2ahjtcvWca8tLfTmf51KD53w6neF
         6Zwm9dwj29FPrukB7Tfg9ux2H4IcRr7MnsvDuQSFHFUZ+JvEAk5cnSD8+JNY+EhQecrx
         HYXgNI9Qhd5mb196zwd5dR+VFu6jPCTeC+a21goOTH0x+ngd/bGkPvw4GaVymyndQqBn
         iKe1SYYEYD28sGSO9ZUvL2hObST/XfTTsYKb2++tMQbbhctDIyZcg+aHF8AJvKFRi8+t
         duBkWou2wOgGLhM0q+WpCJq5yHvtIUr/jETFh6zeMxoLOPEdD1QnPvL8CNCMnPBdW4ak
         jA0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698315890; x=1698920690;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a4Cf1JZHZEJIbarHfjcQQvZGpAiamoBRA5YGADyvYNA=;
        b=DR2gxszjZSciEQeOqEOPNvW/y4140wO9M4ScubJhzFWeMInCFt6/e7uc4iFVXslfFh
         wKMx0R20wnwXINZ03FjQrHzigClPPty1yNusSDBtkqBO1jRwz0sVnunLCGwvRRqptVAO
         EibPf/JfQJe/KFQQIgf8B0aqBlBLFQJOb8FUaXIlAbH8sXduEEdS7Kv0TF5lHFomx2JG
         lf4/XwJ/5ihSojX1DCsQS03qlHhQT1+qvRnSqCQUGjTs7xgFW1kWZFepCFi0KHewsuI8
         jfRBHpXWoryj/nukxUFTPwJKhUcZznirMQeE/J86K4h1t5K5xENwHqqQaF+p3P6Jhuhz
         o97Q==
X-Gm-Message-State: AOJu0YweuB+pa69F/B9uUFvFOux3COjEwrihnXYrUH6KDiHE0ZZs5R52
	8c3+roTVbkf2ZIPxG9HyP1yskw==
X-Google-Smtp-Source: AGHT+IFsc+CJWxE8BflOegK1D3LDUoloSBpJPCNoiuJnlzySCAJ0Gg7g6Sh6PmKM3Wnl1JkJm31pOg==
X-Received: by 2002:ac2:54aa:0:b0:505:7360:6010 with SMTP id w10-20020ac254aa000000b0050573606010mr12221397lfk.28.1698315889795;
        Thu, 26 Oct 2023 03:24:49 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 14-20020ac25f4e000000b005068d6de988sm2940995lfz.226.2023.10.26.03.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 03:24:49 -0700 (PDT)
Message-ID: <d0b22e91-ebf0-47e8-985e-f99629f97cf7@linaro.org>
Date: Thu, 26 Oct 2023 12:24:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: arm: qcom: Document SC8380XP SoC and
 boards
Content-Language: en-US
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
 <20231025142427.2661-3-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025142427.2661-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 16:24, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Document the SC8380XP SoC binding and also the boards using it.
> Also document the new board id qcp (Qualcomm Compute Platform).
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
Looks good, but can you elaborate a bit more on QCP? Is it going
to be a new fuse setting for devices that fall into the "compute"
category, but aren't necessarily CRDs?

Konrad

