Return-Path: <devicetree+bounces-62486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4DE8B1455
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 22:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E181B1C21449
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 20:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51C291420A8;
	Wed, 24 Apr 2024 20:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MbenPKLW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06DF13C9CF
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 20:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713989701; cv=none; b=RPGQ4yNL0I8Gc9+HFWZbAY2NQLpcZ8KFaKrY8uboJAiWDSgftMV1lY/hnmPHstHUVgrlesPJBs3ypF7rB32hWGA7kARBYSFtaLx1diR5rft1vjgWze2WjTiPqMnVhu2Ew7I6Ip+nKzGiIOxDMWC369lFI56fRNOztEJP06LU1+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713989701; c=relaxed/simple;
	bh=5juKDdGEYxNl2ENPjsF/4a/Y2iZb9ON1oaGj0sw8O/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=asa3X1MUWF2AaIIx4grUCN5UzbtKDo7zGVikMHNkCNs4/Iydt+54Eby3M1YH7ZJh0OcJNoMgVrYV47vwhQ5HLBfCbDtknQ1KiuvfQoSizMpi+x1VHM/2etMIVJGb6PKuHwOgMXGtRavaDCu6jeHFsP9PD+IHSe8hXVl697wkPRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MbenPKLW; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-518a56cdbcfso322150e87.2
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 13:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713989698; x=1714594498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rcWOpWv1JwDPxWKBqvGmsKPJY5XCaFq86YjpwkCYxAM=;
        b=MbenPKLWtF0nn+uFB1Alyfq3Yx0wO9CTHaO+PrTgOAam7ai/Ezt0UZVNHQvWk9Psa0
         OOoCT44LoxsOBtKSkxcB5qsx5FQSF/BhxzRgDbcpxu6srCRb4m6QVEQJ3zfSzZuEB9O9
         E0+GgzvYyiY8UWkMSS9qLCvBsGjswoXNSpk2Mk8D7WCejjp7nANAwfaP/yx+WtuG8/EQ
         GlgUNiXjR/xaPTYRUKd96axAKYNti74m/OBTCAdngC/9OjC2X9eg8HiFR/rPJpXMg8k2
         KVb/PmeNMC7bV5AjejunlMRQc10M5UKco+8dS0aDP33k5kFN3sNiYdD5KVxGaBf7T6U9
         21cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713989698; x=1714594498;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcWOpWv1JwDPxWKBqvGmsKPJY5XCaFq86YjpwkCYxAM=;
        b=IrXghWwTYLq2bKb/pTIYw5+nr+WCHVF26dUsNSimP+z0UJdomc8eZeFNfO/ZAaOq0A
         dsUKSMZECCrPVK/8YziYjXLx11NWpBPAtmdTnh5LTMbDtcme37aayvJkXjdnLyzNgC1V
         zM5mvPsZYEcnXUoLDGXkxn4oVUhA9ad1nST8mHC8ve0c4VUBgEUDRAodpKRcdVapSe2x
         m9GwS6sN03OFecd9OvdTfioAcKVHaxHoCqC1nfGr46UGRJfPIVk19cgiFv7SCHMKRpBi
         xMmy3llcvF/hkYrgDA8PHEWCIMj1dOB+Z54Iu3rD5CrQQ3xagwR2Gi0kOrgtY3n926yj
         5ecQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAgwVJd4ezE+DfLOzTsgzxFbe+onGjlYvx+7i65aYozXRLSo8w7ERyL6HoKG3Cg0Had/CfdsT7BZNu/k5yQtEVbWJbmCWrtmQMlQ==
X-Gm-Message-State: AOJu0YyMWDIzLMlGh5rdg1H6dLiA6Q02sVRyh8y+fByIe4lOmvORvWMV
	e/D83hIvUK3rlw2nFdne7ky0S/5Mov7wIZiq0qKdzPGRUZcAQQwAkw+rKLeCARw=
X-Google-Smtp-Source: AGHT+IFWfKmpt/zCTTNaAgChkLXIuQcnFtLqUQiBwozFZAE0yy2EsRl8Jcw+q9SGpBpbDe5si7kEpQ==
X-Received: by 2002:a05:6512:2209:b0:51c:249:56cf with SMTP id h9-20020a056512220900b0051c024956cfmr2416526lfu.13.1713989698079;
        Wed, 24 Apr 2024 13:14:58 -0700 (PDT)
Received: from [172.30.204.223] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d42-20020a0565123d2a00b0051aef948b0asm1554274lfv.201.2024.04.24.13.14.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 13:14:57 -0700 (PDT)
Message-ID: <b4aca81d-5fec-4780-96bb-874816b77ba2@linaro.org>
Date: Wed, 24 Apr 2024 22:14:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: qcom: msm8976: Use mboxes properties for
 APCS
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240424-apcs-mboxes-v1-0-6556c47cb501@z3ntu.xyz>
 <20240424-apcs-mboxes-v1-6-6556c47cb501@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240424-apcs-mboxes-v1-6-6556c47cb501@z3ntu.xyz>
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

