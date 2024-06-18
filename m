Return-Path: <devicetree+bounces-77019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6398490D324
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:59:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AE6A1F224F7
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1023137903;
	Tue, 18 Jun 2024 13:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mz1NFZJW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F89132109
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717747; cv=none; b=j7izVTXg9IWMAP3JlPT1MbTDZ+rZA0XzjNiO9GleTUoZVCZ4KnBlNkwgyShjd0dWzmsw8sw/i7IOjsgsAO9OqrD8t/puGnIdgZZDKi5LZeyWH4T+pm4mzWyITg7z7R90VbDMsdTtk80hZQgjBXtpIoD0taxq2QghIXTvXFnoZBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717747; c=relaxed/simple;
	bh=gE5K1CMg0FDplJQ5qb/JC8BlAQdTg4qg1zpQnY6aNRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JSPmenHHcVkXlJHk6R4+j/vkKgDbOFnMmlc1PLTlVlxzJc2PK3JliMAqJVpbEY7iwMCvDXInyCEkSpO7a8LMiJPZ3z5XsJpMUGAXBOLUMFRO7d3tnhcd2gPtS7qPv+LO3lAIvXVkrfB4RtASrhUVpT0W3ohEI1lRweWHHFRZPCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mz1NFZJW; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ebd421a931so51401131fa.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718717744; x=1719322544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G9s5hs5ZuL2Zn53VjZAMHLo13K1X8TUCRyypHJObaGA=;
        b=mz1NFZJWpiq65eSwDWuPoDz3ZahC4Hi718IVwT7Rd41037lj1hdmSWWILaMTn7hDdg
         uT2qRfGvMeSW6UdF4YznZMJqdLbiyhSSqcHfgmKCGPgmeKqCwtQ32EFv1uohr4ejLOKO
         IqAHpl2KY+uDkHSjaLkEoxHOvqxyggCBtylxaIhvGX+zIXyEp8qAd02BR7VAGAgOjsw7
         szEv5f5sdusYFc423maXJ6ai7FE3qqmhkwVE5A7oTwiRFlHIjJL5a5epbGHfgD54cPfL
         Xt35GXl0Az2d0Ima72XD1dLgVIuh+/fEZO4z4D0wSylJxwb49eSxag//zgne/iBrojPT
         mY8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718717744; x=1719322544;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G9s5hs5ZuL2Zn53VjZAMHLo13K1X8TUCRyypHJObaGA=;
        b=bsSf1HafGiyQDbR4Z0jwFupsuJuHRJ0mMP/R//8cypIsCEIDeyPafdCwFQXTRLjceO
         F3lyfL2dUKWLXiUfpcBeYaErcZQqmGIAxv3LDlzqPGtf63FDAhfeapII7P8DYWMKPVny
         HS092zWm9mlF8Z4PvUdNy8MD16r1NFSpxKGsIQQIAPKF6IHxdS64RmHJBomJniPp0kys
         hWqECAmcYXw7DdwlDJJiN8TxK4qkf2dQVG9uazmH//vTd7PoJ0Su3L9Wb7ewnGrxAT3o
         r2D78CeXq48gr7sBsFq9Pu7C/oLUVaVKvfXVMD2pX0p4F3JyliKmz3An8kxeucT18uGJ
         IjrA==
X-Forwarded-Encrypted: i=1; AJvYcCVVQ+2XtGtZzqUWHUdCop0u6MWXYXEOF9SgzBN9V+wxqrMI0vyTRbUyXzei6i1vuU/YEj78/dH/4DwzTNe6b4sfQCmLYHwPwrV3qA==
X-Gm-Message-State: AOJu0YyPb7onC7/MuMomcQPAfRoX3bvEw7FNHAJx3mgfAyr6/xFr4kUv
	5F371iXQfTlYZMZfn5RZ3ycWUAcCkOyoD6sYjKgUQVxgDdNu5oXtD5c7/JlG4zw=
X-Google-Smtp-Source: AGHT+IEKKcmYXRZGLCQoh1/2bz9eoQuNYXaJrxW4J4yKb9lxs1Zcann/PJVH0hN3sJo50UZMHp4w5Q==
X-Received: by 2002:a05:651c:546:b0:2ec:fa4:e310 with SMTP id 38308e7fff4ca-2ec0fa4e522mr96437711fa.34.1718717743930;
        Tue, 18 Jun 2024 06:35:43 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c89ce7sm16950161fa.112.2024.06.18.06.35.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:35:43 -0700 (PDT)
Message-ID: <c0c30696-0d38-410e-8a59-e5ad146da7c8@linaro.org>
Date: Tue, 18 Jun 2024 15:35:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcm6490-fairphone-fp5: Name the
 regulators
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Caleb Connolly <caleb@postmarketos.org>,
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240618-qcm6490-regulator-name-v1-0-69fa05e9f58e@fairphone.com>
 <20240618-qcm6490-regulator-name-v1-1-69fa05e9f58e@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240618-qcm6490-regulator-name-v1-1-69fa05e9f58e@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/18/24 15:30, Luca Weiss wrote:
> Without explicitly specifying names for the regulators they are named
> based on the DeviceTree node name. This results in multiple regulators
> with the same name, making debug prints and regulator_summary impossible
> to reason about.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

