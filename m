Return-Path: <devicetree+bounces-86109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DC293265E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B07AC283939
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396D919A2B1;
	Tue, 16 Jul 2024 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OcNOrxf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C882D13A3E4
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 12:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721132123; cv=none; b=gxI1QjOJub9kqss28bmzolhzFQbgGj3ZGp2lxvH18JYQlKAZleGb39KMS+q/qRvC/FeLXOcIfas1mRVOF/QpmBkrL2u2OLeiOuTIQevKNtNVFJfSZn8pJVWW8qQCIGdM5mBiaOlW8l+qBYUKXj2TiAcZM8pZIyLxZK9WjrbdJHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721132123; c=relaxed/simple;
	bh=/mJSEHVWWL/+/TzG4vXCLTvtSyApfM55zicTRypWeIw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pyyPN7sGK5oLeYJn5VE0HwQoNuFp/KUUhSGfAPAS0Jm9cnGhjrXks7yE8aCWoLOhcW8FoFPbAD4NXLRbffRV8xmC8dyNLEZ91itnmuJgD9uMXM3KiGc1EhRnfR5hd/QectgpbhyJuJf6Qns4l0MkPRrfqf1h50xf7iH6hvqE0jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OcNOrxf3; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-58ef19aa6c4so7144337a12.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721132116; x=1721736916; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iQwj37Z64kkWkq1QNNNRBOD95NNDPJjcOzXptOwbtXo=;
        b=OcNOrxf3FUK8MfZDS0v5z5fks207JeddgsHbPSNuDyPWiH2bxC1aHMnj44pkhQ4dli
         CzE6dicMDQ6q+TrkT1t5f9tdbGxAPp/WZrIm0zAZiEmt3b+vfcKdVDSl/9XB0/SVsf5Q
         WcbAwmQnlGEm3jgDPT97829aYEIo4KeAUJjeAtLrQscdk3pH61ezuBvyy24WkUbjoueX
         GHEpAw/cu3ip6ZZabTv2L3FQm7WjkF6zhoIVj8P96zLaA3ij5jrk5g9huRMYS954JCkh
         nAzCjSMjw0/rJYnm9ZX975JIqjd0LwAqvxvO96mNNmOd/uIUBa5Z/dkAoTLZFJPGLpEX
         HDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721132116; x=1721736916;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQwj37Z64kkWkq1QNNNRBOD95NNDPJjcOzXptOwbtXo=;
        b=ZxkBcokHD3LdReMghHYMk77TdkIZXAoWHc10R5E8hNXzNf8N6icJ4Ddiay0kjua5bk
         9sofEPCRqnSnN6F+PVeZoo1r2SJifQb21wPk3876QdhqGdIK5QtXmvu6PUZGeCzgqenP
         bVYTKCxTIn4kxwNFbWWRZBBLthWTKplRQRKiiB89knQIuoFTrbI0nhc/C2t8wmnVfDXA
         iK4xv1vDNuUFt1hLUhpal+IAgrhRftyq+UTXfH2xnNh0aDx2b2IVblBxxYADTtWgrrgr
         m+H6OvjawhbQlxxhYTxXwzxUD+AmikcTr3iSHyEaA72XH7RC9/8J7rHWNLyZAYxAt/xO
         p6/g==
X-Forwarded-Encrypted: i=1; AJvYcCVqlF89pRUGtFPGpjBukbNSCvchigwVTgPBW9bCq3u9AfS5FdciXPuT6cv8SS/QbDzptxQNrueEk5Az4HB37pHkFMXWgwbr9t1emA==
X-Gm-Message-State: AOJu0YwAIDW7K8cbO5dnF7SB5b6I1U9L4q1dWKQJ/rMjq7h/LRl+ar86
	ThjaMBsDdvBspGuX8vGZeUTpUw4siDUrP/6RkDlujaZF9HYzo1EjtlvVF7nbYFZTDsr4svEn911
	f
X-Google-Smtp-Source: AGHT+IHfEm9rSiHqbH+SusBNneyOosPqVrpvY7RwUkyFYFz6O61G1Ifzfw53sglOfpelrIaM3lCSvg==
X-Received: by 2002:a05:6402:3486:b0:58e:4088:ed2 with SMTP id 4fb4d7f45d1cf-59eeee44bc9mr1445338a12.16.1721132115994;
        Tue, 16 Jul 2024 05:15:15 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59e663e4a6esm1594433a12.80.2024.07.16.05.15.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 05:15:15 -0700 (PDT)
Message-ID: <d454e01f-3d6b-4a02-87cf-3d289bc6957c@linaro.org>
Date: Tue, 16 Jul 2024 14:15:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/9] pmdomain: qcom: rpmpd: Add IPQ9574 power domains
To: Varadarajan Narayanan <quic_varada@quicinc.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, ilia.lin@kernel.org,
 rafael@kernel.org, viresh.kumar@linaro.org, ulf.hansson@linaro.org,
 quic_sibis@quicinc.com, quic_rjendra@quicinc.com, danila@jiaxyga.com,
 neil.armstrong@linaro.org, otto.pflueger@abscue.de, abel.vesa@linaro.org,
 luca@z3ntu.xyz, geert+renesas@glider.be, stephan.gerhold@kernkonzept.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240710061102.1323550-1-quic_varada@quicinc.com>
 <20240710061102.1323550-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240710061102.1323550-6-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10.07.2024 8:10 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add the APC power domain definitions used in IPQ9574.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Could you please confirm [1]?

Konrad

[1] https://lore.kernel.org/linux-arm-msm/57dadb35-5dde-4127-87aa-962613730336@linaro.org/

