Return-Path: <devicetree+bounces-63932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 053938B70B9
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 12:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73C051F21E46
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 10:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C14D12C46B;
	Tue, 30 Apr 2024 10:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UbLVpBve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A1412C46D
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 10:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714474149; cv=none; b=pWL3OdNq8Ia8nBm4KPPC4/UkIwX//mAdOvUEcaG2s+AOWgc6lIZ78/js8wiJaxlqUGF3srzADpf5fIDZjgaddsREa9rYJEE90FAu/MbSg/AJ4J3VJNy1tvBummxYyIAFQj29oSO4MRnleo9K8tAa0fXQnOkUJrtucWolDNjc1F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714474149; c=relaxed/simple;
	bh=KR7LI6rrvuirq0c+KmaHMvWrLRxfufK+DbJifyv82Qk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BUt+UTOpwEQgOMVAsPBC2DTqz+YQJ4ELSQEVrN5OXGBMGVkL/8Tn87Qg2wuzu6ZeO9Z5C6R8sfEvyhEHZ5jJpGZYkMm3MXa23V5/vhCXABoejsjakFQKqyJHv6udaCxiTdKlr2N1JNVtX2ZVdwaDk48BSmQS23kWY3xcG31pBDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UbLVpBve; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-56e6a1edecfso8285941a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 03:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714474145; x=1715078945; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=96pQ6DWgcHMQ5/U8CMRhHuWIuxEmhkD85mjVVrXWF00=;
        b=UbLVpBve3+r94mvVfUfWo1duE7zM7QYdhmgmHaq3nc70SaaR1GT9XyTGQvsl7iMaac
         qSdCDaeXzyt0m+JD+fdTTFt31E42Dq8fbPVGupovwp8mbeDQBVJkzua/vMc+8jf3f4GJ
         sJd65VtIu7HP87mUwk2H40YUZXOwCuURLkZxLlGngqwaPBmnYLLhVC68MEFL8MHmg83K
         FTDxJqto65BoBGnDRNtFVz1PG4Zgoiz61LY0UWXPyuMV2iGTvciX40OcUyqq+Q4+c22K
         Bxgv/1Sx7zIU+kL+2yYnBpHPz17f0AdAERNviZFArPXy/CiX3E4J1ymYoA14xMKjnMIP
         1gHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714474145; x=1715078945;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96pQ6DWgcHMQ5/U8CMRhHuWIuxEmhkD85mjVVrXWF00=;
        b=DS6sGmEII5c1VD0mKz8wMHlXiXSn1ZJWx4pUCerxZ0oXe8wiPHygNmD+pYcY/OR9YO
         18lI93d5g8IJQOnJaUGIj9f5AU0JEhFRmbGuKZgoRoO8evhM4sb2YR07NbTRIm1kFoUU
         iRlbFjvbecHneCDfrIOgtfFJMj2WXgumDvGuzCr1tRbQvRgqdRRwwb/ZX6i0iXdSlScw
         yVgl/txm3Gj4ZXl9UK7LftUFL39MVepxB9G2lVh4QHXOWo1oZjY1Xegr4LavmJQfJ3zQ
         ClAGq28B/GN5JZysUPPXFGxlwH457L8M84bKW8WvkxG4eDrkD4oN4AWtxdnjJae6BM5u
         KJmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZx4bvgVPixXkp9MmRHO9IkqaVm24LgDqy3/PMFZWF/GT/3WbC9xKzwkR6zL5mDLrs5r7BfV2rleDa7MCDpX9xtvR1Q7wnNQ6kVw==
X-Gm-Message-State: AOJu0Yw5l3EDhuUEYbKO83b8w8vc3GHSIMjPfrwmIP4Pnm2qLzMDl8zR
	sLrFwhJseHx3bTfmxC4bwJrUAzzv2jdtsbUoKmzWvH/zF1hMrDXJOoBuHiJ6QxU=
X-Google-Smtp-Source: AGHT+IHcHgW7CGWFxNpCJDQuVnBapsMVl/Bvxuzrl9xFVKEJT4JxiWQYtybyj+kN/JkgGXn8LVTdIQ==
X-Received: by 2002:a50:9f66:0:b0:570:5214:f62 with SMTP id b93-20020a509f66000000b0057052140f62mr7149035edf.0.1714474142756;
        Tue, 30 Apr 2024 03:49:02 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id f11-20020a056402194b00b005728a19c957sm1280572edz.26.2024.04.30.03.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 03:49:02 -0700 (PDT)
Message-ID: <26b5a160-f804-4f3b-aaaa-6c4eb6d9d056@linaro.org>
Date: Tue, 30 Apr 2024 12:48:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] firmware: qcom_scm: Add gpu_init_regs call
To: Connor Abbott <cwabbott0@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Jun Nie <jun.nie@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 freedreno@lists.freedesktop.org
References: <20240430-a750-raytracing-v3-0-7f57c5ac082d@gmail.com>
 <20240430-a750-raytracing-v3-2-7f57c5ac082d@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240430-a750-raytracing-v3-2-7f57c5ac082d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30.04.2024 12:43 PM, Connor Abbott wrote:
> This will used by drm/msm to initialize GPU registers that Qualcomm's
> firmware doesn't make writeable to the kernel.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Connor Abbott <cwabbott0@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

