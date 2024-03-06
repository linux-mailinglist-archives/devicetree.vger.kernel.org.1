Return-Path: <devicetree+bounces-48836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD901873C05
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 17:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1AE281C23D93
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 16:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534B2136995;
	Wed,  6 Mar 2024 16:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oLI8sKfu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A9B136647
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 16:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709742063; cv=none; b=Ml2clNIsPkzJwuzF8f7lzTJUeBDK/3vDGTRv8oNPHTH2i7j+RnUeakap4Fm6sypHyaGuifJMpyzE8BONXJLH+E+Q0gPE3f7idkCzIw/wl2Nn3nDt4enwEWl+OkMkOXFPyu4dj2DRCsV6CB81lLcNfkestO5lOIuMYbwNCZthvkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709742063; c=relaxed/simple;
	bh=QtV70zoK2wJMqjwc6JzcKlIIzpzc17EKl1UKLHvpnpQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OZbylz0p6b6adShlTQMG/+DaetyzP9hpmiqpYc4BOK83iC2q2R16oHmJt6ZicEgyNERTLESe4i84q5vExTMvyY061r67Ge5AZsL7sUvXDWqUaVOxanfPvT/88fJUZiHVosYC7JgYzRTHAHgUdAXSzAOSb4gXSr+PpBUmmlg9s9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oLI8sKfu; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d3b93e992aso48871261fa.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 08:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709742059; x=1710346859; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9D2dbq9C8ecgKvX2qeUpbQy5XcASI5cg+tM6zwv+Yhk=;
        b=oLI8sKfuGmHJMXYCXhSBKI7YyC9shC9Yyt5UoCKHPSv2wAWNMIsUm+RkIAZgemYvp+
         idU4ZNp/H1ZuBxtVVom52SHMYiAz5mXKGJOtbhsmXrmIYwYZYWfAAWEreEXJNjAmGhH+
         2xEa6lzNvNfJtWgBtiEts8h3ufbct+WI7VdGR9TvVdAA3xMePJXSlT1pn/R5khOIyHla
         2LhKWwezHjMpbL3OUMjvB0nrjXd5otupfTxUAtH7twfyj9mX9pF38pJp3OXAOM3ta8yn
         H4xpg6MHj2LOKZi7WpahBovuDMsNGeAiCK8QWlzTYPN8kEqkJNLaAiKTyqzSutO21x19
         PGbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709742059; x=1710346859;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9D2dbq9C8ecgKvX2qeUpbQy5XcASI5cg+tM6zwv+Yhk=;
        b=RsKVDoQOjL9sptbwpfppZyof1KEhpKgSAHNKfLH5/0ootOqQxz+QTFIJX0Nq/JqzHU
         2WD7fnCQkEcRqyRJyFrnSL5TYtulEHWBwxcZydT+6xUUOioShfqpdIl1hGWQCavMkacV
         Y/LIVTkOd1xdXjrk58v86EV4LVerf6d/S+Uo9ixLE4mJTl7Y3sBOfFO/tHeHaaGocvRK
         Als+8qEQYaM8T/oA5xpKL1VS/zkvshzJ+EFZxnQOhX9Vy8BABs4EkQFr/LDHFTQSh3lH
         sUECWW24p2A0Wqh25q1mYEMA2ef6XPKql2feqaKdGuYXazlpLPf/UC+kxogN8wj44BGk
         YT7A==
X-Forwarded-Encrypted: i=1; AJvYcCWKSEgfJG+Hh8mp/iakkApDRuu/tmj37hRs/ZFpkFu0i42I+zNy44GcyU1yVL72jGi9bk9mBX/nhoMVCtQQkqYPP2TLgovxRhl9mg==
X-Gm-Message-State: AOJu0YxE+4r2m1gv/+no18jLU3U2MG/RXJBKth6+lp+7QOzjma2vYb1k
	7yg/grb8m6v2fkel2dAk0w0Z2RWS85GUpmPv4749klU+g8aGds1xSvlU26eFDP4=
X-Google-Smtp-Source: AGHT+IE70VPLZUiRtlAnFhCH8uvdp+2sTCgFunoRNb6UCJs7VtjSsds9ReixnTbK8+WSXqduWqHbyw==
X-Received: by 2002:a05:6512:203:b0:513:55ec:71be with SMTP id a3-20020a056512020300b0051355ec71bemr3278286lfo.30.1709742059492;
        Wed, 06 Mar 2024 08:20:59 -0800 (PST)
Received: from [87.246.221.128] (netpanel-87-246-221-128.pol.akademiki.lublin.pl. [87.246.221.128])
        by smtp.gmail.com with ESMTPSA id u12-20020ac258cc000000b005131941f7e9sm2668396lfo.5.2024.03.06.08.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Mar 2024 08:20:59 -0800 (PST)
Message-ID: <9bebba94-f124-4853-9126-8d80c764048a@linaro.org>
Date: Wed, 6 Mar 2024 17:20:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: ipq6018: add 1.5GHz CPU
 Frequency
Content-Language: en-US
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240306140306.876188-1-amadeus@jmu.edu.cn>
 <20240306140306.876188-3-amadeus@jmu.edu.cn>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240306140306.876188-3-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/6/24 15:03, Chukun Pan wrote:
> The IPQ6005 and some IPQ6000 SoCs (with PMIC) have CPU
> frequencies up to 1.5GHz, so add this frequency.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

