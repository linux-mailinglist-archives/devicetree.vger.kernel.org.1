Return-Path: <devicetree+bounces-62482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3930F8B1449
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 22:14:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A6471C2207C
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 20:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CD3144307;
	Wed, 24 Apr 2024 20:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R9kDUEVk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520B813CAB5
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 20:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713989638; cv=none; b=iFSpQC0bFkp03acNYxX8U6YRDP2P4Bvg4jMHI5B/EW7Q0T+LlD/um6M/NBDN8gi1HzbUu8n8Z686mal1QvIaoUKxW7P6aJIvzrsLthwHzY+CxMETaAu2Km3ip0l8xziCQJiT9/qfrp0r4zlSbrvJFq3zCGT6PcdwpXDM85crJF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713989638; c=relaxed/simple;
	bh=5juKDdGEYxNl2ENPjsF/4a/Y2iZb9ON1oaGj0sw8O/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P3pswsSeeoPKUavZwpYU5LL98hntEK1gsnzEVfghgfF9U5pAMbqAxl2Hm0gXsDVb8PPLA5txSzF0NbNAX+MPEZkwGG8c24F5bVwl0Ls9IrV4PnMh8lVKrBsjaMyRv7khxzbNzxjJMnSZAnrUrv26et8OhqwnuQGuwB+3ZYXRZkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R9kDUEVk; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d87660d5c9so2378701fa.2
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 13:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713989634; x=1714594434; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rcWOpWv1JwDPxWKBqvGmsKPJY5XCaFq86YjpwkCYxAM=;
        b=R9kDUEVkJAXt7js53ztZzpdcSlPkXE7YXL7Ntwgu5dQ7kWUe/PmwOycvS4nHUvtlNU
         bppMnyuHiqDb/52FLuyhLB/GGLj+gTN//NsOeV24A6gya465W+4YxtgNBx6XfpSUdtKZ
         YiL3HWyJPAxU741fhDqcnLW6+hDPttfbsMrSu0EtvepSG0YggJHR9IwDa84XPW26ZiZu
         siOq1ufnReWDB1FJKPuiAoWsUqgWf2vt4j6Jx0DsC28e5ol7ANRJ82sc3mGYB5qdpt/w
         il4sy1jJiogV0c9y0mRcitZHoCNaOy4U9G+GUzdNhGbpKVS7GyOeSSz7MG7CWcwZhpKp
         IErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713989634; x=1714594434;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcWOpWv1JwDPxWKBqvGmsKPJY5XCaFq86YjpwkCYxAM=;
        b=jKtjJmRSnjevhKiUuQOcz0O5IEGZiHwdpKyMV93G7DXloayH4KI345ix3NiqhlXB59
         d8D4f9bhwTut90fUUoolP90kJzJE7L3cmdtkyFFaS5PnC4PayiWn4Oplt2Vcc4BfDgYw
         VJV7J81+Jh6E5CWsRyAK4KO+bFy4RLtUoHBTlMUCoGIRqkyJ4kqsUIBd75eQNtVPCsZH
         nTk93bva3Ilkh3YTwzs15Ke+IFGTImqHtXe3rHlKF/Kr7e3PsCcxv6Y5SKhWXANeyBGO
         4rFdEdX9X7bfzKuj3VYwbRoKjCgLlwt2uym7bcgo3wkzgzmMoDsXHgMPHZpzvExvwkU5
         6c5w==
X-Forwarded-Encrypted: i=1; AJvYcCWGCiMz0svVlYXxHlu31TujL0WL3qKDmx8X9lZiYBsclHAoVEli0nB601EQSjGQymwMtP6dykwazgMnqasQUhJHb/MfwQU5GVGnkQ==
X-Gm-Message-State: AOJu0YyMaBjqKd+AiHchs8zQD83HQvRFhbgyPw6n0k3vtJURFv9a/vq6
	FAK+Y4aRT2qjvZDnb4EOhjHyrhHlAMmXh/s4HTW3YhVF6gTipWf1+gMrgJfeNIs=
X-Google-Smtp-Source: AGHT+IHbBMck575yTo+0QV891RtpsbHelGrtzt6MSOzg4v88bBDA7+36rpuohXNTJekQxEkxDwi1ZQ==
X-Received: by 2002:a19:e057:0:b0:518:c69b:3a04 with SMTP id g23-20020a19e057000000b00518c69b3a04mr3170938lfj.0.1713989634521;
        Wed, 24 Apr 2024 13:13:54 -0700 (PDT)
Received: from [172.30.204.223] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u15-20020a05651220cf00b0051b88cfa076sm762823lfr.237.2024.04.24.13.13.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 13:13:54 -0700 (PDT)
Message-ID: <71346ffc-c07f-43cc-9d0a-40c7f6406a95@linaro.org>
Date: Wed, 24 Apr 2024 22:13:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] ARM: dts: qcom: msm8974: Use mboxes properties for
 APCS
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240424-apcs-mboxes-v1-0-6556c47cb501@z3ntu.xyz>
 <20240424-apcs-mboxes-v1-2-6556c47cb501@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240424-apcs-mboxes-v1-2-6556c47cb501@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/24/24 18:23, Luca Weiss wrote:
> Instead of passing the syscon to the various nodes, use the mbox
> interface using the mboxes property.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

