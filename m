Return-Path: <devicetree+bounces-73209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9128FE3A3
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D39E91C23326
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2550B17F51C;
	Thu,  6 Jun 2024 09:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hj7TExGz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660D017F4FC
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 09:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717667830; cv=none; b=Kswa99qRPSKPOVbtXC/BsJXEv+l8mIzgZkUdK4iwR/FgqHGmbezWyZS0H3OSSLEJLFeOGXICImDdYYqI+jtP8iSrCtiGhPJy54+muqG0+WyhCTTwD5PQa0rfrQcAyjpnsHGxf2eA7gQKYcprwb1Um3qMGX6yIZH4Ht4UlDUcKuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717667830; c=relaxed/simple;
	bh=pZba+yKPKAIjlW59yMlzkexteKvLGEOvgVy2SEAGPV4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X8DVsIRY/WH/j6igCbiYvjboTpJeVIQea7gjF8ugOdEJ9Uj02NaxuR2zjGh6opc6BH1vT+sk9rgA9TVzzUhZKGGKNezT15fu0R6RAnwjHo3hJ+J8DmvhetMEVIoia50wTStOZw4JyFVeINpjIUcym+IZJ4+bfjPlKoDB8+pfLow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hj7TExGz; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-57a2f27090aso3165184a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 02:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717667827; x=1718272627; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=E3f93tFB2rT6AGkBJjlcrliLx2/McmtIe80WPbfuLCA=;
        b=hj7TExGzMyPHmQrCZTc8qMWfoDn0e0b/DFij//PEb+4tNXWb0Zrue+DHD3y2PuT3TC
         hatT0qDrX9XdGMQcs3T5gjDvHLbekEmhHXVK4/cs4xq65m2g/KCCPYvNFmPrCGqnAAzD
         UZOgwLRW+n/9mDIssHYiu2Zq/D5ezQkDLId7HZRVRFA7kJfuFBHnp4vzbEPaLKRBzYEI
         u+vOfhWH6hUH9I3QtzGnNCud+pjb+SZjSc6dnnvTtJMDFCXRpT+1AEgOQKCu/iFtPeVF
         2xm64Rl+QIjQ55Uo9uUQmPxq2QakzUp9ArNFPZu7lpeTxSa+eGUxpDL9k8buojXfKfEg
         VPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717667827; x=1718272627;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E3f93tFB2rT6AGkBJjlcrliLx2/McmtIe80WPbfuLCA=;
        b=dCh8LTqodrqnX76wA18PdUe4ccpvThNmKT7PhRtau65Zvytc3s5XcDJSvcVfrmts3p
         duQKeECAL+q5x6qEiKPd5MHskO2qhGtM+ud1Lc6FFoGl0GzyAQFmgntRdvhIsrQ5iNIi
         Nrm/2SeHZ9dB6J8Y7GuCxNVUDHnE3LRbj7w//OfeztF+6Iy2lHlYTB+qCGLeRgHosVxD
         o1zrVYhxOqfKF7ukh42ybUDH+N+bz3NAgHvHaQznzo30jeC9gqL2TcwFwb9V1kgszaBK
         BWGKFZVfmBve8UTbY888WuD40zj9vvtfqqhEMkV3obxAykVN1nbjcgs18+aNMjKugdUy
         h9tA==
X-Forwarded-Encrypted: i=1; AJvYcCUM7hVP++eA9zbIT/kUrgziFKB3rWUQ6jmM1u+R+ljXRyoKKqGehTx4nmnJx0ID33mvt1PRyId6Upod+6/kMDvky0pFJhM2aFmsbw==
X-Gm-Message-State: AOJu0YygrxWA8zGIBsxFaGtTQmr6/KHNbSZ2tPAo/aGVd4FVufk6cW0J
	NkEWgkX6hximN+iVWM3QzaVpAw/P9vTsJ3i2kBKUK2Y/haM2RA6QsiDD+03oerw=
X-Google-Smtp-Source: AGHT+IEo0+Vr7PVFW2gZBx1g/PraiBGsC+gt0IJWns+YxpEU8kU7Lfu7cX7h5TitU7otGn9P0VMA/w==
X-Received: by 2002:a17:906:228b:b0:a69:2554:9c6 with SMTP id a640c23a62f3a-a6c75f942b4mr188930866b.6.1717667826883;
        Thu, 06 Jun 2024 02:57:06 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c8070e2d9sm73065366b.158.2024.06.06.02.57.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 02:57:06 -0700 (PDT)
Message-ID: <db76dd17-905c-40a8-9319-94659c95a6c3@linaro.org>
Date: Thu, 6 Jun 2024 11:57:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcm6490-fairphone-fp5: Use .mbn
 firmware for IPA
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240606-fp5-ipa-mbn-v1-1-183668affe58@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240606-fp5-ipa-mbn-v1-1-183668affe58@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6.06.2024 11:09 AM, Luca Weiss wrote:
> Specify the file name for the squashed/non-split firmware with the .mbn
> extension instead of the split .mdt. The kernel can load both but the
> squashed version is preferred in dts nowadays.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

