Return-Path: <devicetree+bounces-12140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DB47D816F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 327311C20E85
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D62918022;
	Thu, 26 Oct 2023 11:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="slPCDwNa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE0813FEB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:02:11 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98361195
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:02:09 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507975d34e8so1077879e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698318128; x=1698922928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oFTiVkbcygW9fRAqDmMAspuZYfVMMqoc65jUqQ9G+ng=;
        b=slPCDwNaSxXQz/dxbRUiWHB8rhWsYd5HpioT1I8BDtDknECorurvfhHW1JVdUd39TI
         XkdYFcOuywgF1FMrBa0D/3f2lnhDJyAILb+fENADf97IeUfilxpfoEGpDbgAncMZKH40
         VxrhEzxK9XOLx5wX+Skv6hsEr24Ur3k3ZF+8kjFmwttk8a6HBEBTaA3f/DFljaYPXEIy
         FPDef0BwUQR5rmuD4gKKRWOoDFpJUtI9PITQexeKMyFyel88Urdv2pSz+oD5klB2NRgT
         RrskEoR8w4R5CVGxbyyVDKL7CgmJxNlTVUZqi3w/f6IlanLvbxiiWz9aA9RqrgjOIQh0
         D1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698318128; x=1698922928;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oFTiVkbcygW9fRAqDmMAspuZYfVMMqoc65jUqQ9G+ng=;
        b=tbK6ghr2R6YxHG+QFfNCs4/8Bl7u+ptZWAUjlpBbyzkuKZmcMKgh3/w6JFf7Jak9Lu
         ip7fDR3fCVTgtJRdvrrSap5c5tjdQ0Rx7RiVQ5iew46RqAIGLJRYSFaB/bBqKYGZWvo9
         61p8+OB42c4Tm4vBRel3wjjcHW+9K+UB6VTLF3TfY5G7q/Zeremlsj7oVyMidDJMXHCF
         mDGglTb0k+/YI0v3EHa+j9WM4QO7TiAQmnvG+T8zXigrOnvik17Ibq03g1VIIiY0Zrzm
         8Z3Miu0pLCbMYPz5GYi3/2CVOKeCQYsNbaT+MllAb6gyOpjIzEcm4mgNMwDNPQhyQ55F
         50Yw==
X-Gm-Message-State: AOJu0YxNUOMinPPvfIcWC0GjcckIUf6zSYCr04AKmXhN+Vy1ToRCsXoD
	737ZYBb8xelQiGGjNYxzLNHcow==
X-Google-Smtp-Source: AGHT+IHuKulB9emKJgqQ69HvVbewPB34ttNv0u9Y6mDJc7Y5W4nrW5hskThJPgFfTpuOkCKhANk+DQ==
X-Received: by 2002:a19:9155:0:b0:503:18c3:d874 with SMTP id y21-20020a199155000000b0050318c3d874mr11332085lfj.45.1698318127810;
        Thu, 26 Oct 2023 04:02:07 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id m7-20020ac24247000000b005079d34f330sm2956190lfl.282.2023.10.26.04.02.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:02:07 -0700 (PDT)
Message-ID: <147be4db-647f-43d6-a242-cb38a2c96295@linaro.org>
Date: Thu, 26 Oct 2023 13:02:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] soc: qcom: llcc: Add configuration data for SC8380XP
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com,
 abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_tsoni@quicinc.com, neil.armstrong@linaro.org
References: <20231025134632.10363-1-quic_sibis@quicinc.com>
 <20231025134632.10363-3-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025134632.10363-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 15:46, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Add LLCC configuration data for SC8380XP SoC.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
Just double-checking, has this been updated for R2?

Konrad

