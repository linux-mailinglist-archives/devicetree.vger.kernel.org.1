Return-Path: <devicetree+bounces-12139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A687D8160
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E54DC1C20AAC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7143156E4;
	Thu, 26 Oct 2023 10:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l0obdJTH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C48013FEB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:55:43 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA2E618D
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:55:41 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507cd62472dso2192908e87.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698317740; x=1698922540; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dUYZd0Ej097jAhIw6DNm96Y3LVWu6JPXMni62KgrIN8=;
        b=l0obdJTHYWptkiEEjz2dzvxoel7Vn33Ifsp0uR6RJJaQHnperervUJGswUpgcft8zR
         zfLaLpRy2FkoyMeZwAsAL2vUTzIsmxlde0SnlUyR7XL2059gJniXuPZEgyesZf/tK+0u
         fj8Vb9Ifpi1Epx5+wA5VtC2dTbeqBJh/H3n3XFQLao+R2e0R9c0g4UryoZRPh4S6aUns
         +JGauesxrgtBVNUHGi1eza04ke1cSQR55Ki3L8vaFX9ZDL9nYhsXz+Vv8jA3M69rqr1L
         jC2QVbR0qiDkgKfvyimjEgwKCnqN6D2tIyLgPcMf3lVaNzUXtoX9zNVp0TGraLCuXdxb
         O4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698317740; x=1698922540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dUYZd0Ej097jAhIw6DNm96Y3LVWu6JPXMni62KgrIN8=;
        b=Zw13Dlz1wmx6mp871dzr6abEDeasQQJbU9hxxD8CsGhkRB1IE29WQHBa9K6X+0LVKh
         ZMNI2nEYVOdmfk6LBWdDolgGFsN5z40RdQM+W2AkRMTbl50FnYi3bqo1AHGrlJMlBoPJ
         JybZB6XOSUk2zb8LOvFyrSLJxk7P6jQytpaxpI5mJEetidLaxatFuG61C+o5RKvrZLKW
         7K3nO3H2fqExbVqqxu7MU6mB5mecF8fUvh1BegpdKHFYH4KE+2/NntQvvCaP4/080tL/
         XDHUUpGhNVpwnG4VqwoGuVX+GoA++W4O/spOloJw5RjYOtRoAkx/FWjR8xQjJ9bWE+L7
         KUxw==
X-Gm-Message-State: AOJu0Yyr0LKKbehMxInTHnCpEi2W/MW68SO4rdPywqfWAmUDrAQ1SFNh
	Sr+Sz5HweMMY1wr4mv4409aEXg==
X-Google-Smtp-Source: AGHT+IFJY2h+PhA5ZUnssDD4RsegMb7tOojibhbB7ctcpygg5CqvyoT4m7nEpbiCRLtXU5nM8L/JGg==
X-Received: by 2002:a05:6512:159c:b0:507:cc09:59ab with SMTP id bp28-20020a056512159c00b00507cc0959abmr854411lfb.9.1698317740057;
        Thu, 26 Oct 2023 03:55:40 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z8-20020a196508000000b0050420b0a642sm2993332lfb.91.2023.10.26.03.55.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 03:55:39 -0700 (PDT)
Message-ID: <3ec21dca-14c8-41ed-8295-bc0463826e00@linaro.org>
Date: Thu, 26 Oct 2023 12:55:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: defconfig: Enable SC8380XP SoC base configs
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
 <20231025142427.2661-6-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025142427.2661-6-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 16:24, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Enable GCC, Pinctrl and Interconnect configs for SC8380XP needed to boot
> to a console shell.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
Please mention that =y is necessary to get console and =m would
cause issues there

Konrad

