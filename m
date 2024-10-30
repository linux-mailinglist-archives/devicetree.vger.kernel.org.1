Return-Path: <devicetree+bounces-117365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A11919B6025
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0EBC0B21808
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 10:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ADEB1E32C5;
	Wed, 30 Oct 2024 10:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mgzygzOJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEE01E2848
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 10:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730284333; cv=none; b=acBKJqKEHIIHkYCkwI8IPwRHkfRveAl5NyqcOnmM/ObvfxAsYtwFDiRREx22LjdKOEAukgRb3b30TUC84+tiq2M7FBoMVI0JZRT5u73C8DKiO0EQ6GCeIOyO8RflCTjV5QIwdaBzLpHIoyeLkB6H4m1bMmjy5cPkwPOJ3lqTpe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730284333; c=relaxed/simple;
	bh=CU1cu24+i45K2ONyDBFElC17mZkV4BvGmiF2jOuAeeI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tsARPHT4S8mRnJjQVWPtwWD2NOk6v9PWg1rxd73sg7Gh9Bd1LS3gMB/jtIr020LLHxexow2Ggl56hTShV9fSh0HTooi5Ib6KVBcA2rJlt+ZRSkya3h3GG8NAPdgcoDy8hsU9FXrg9g+G3HbSWah8IjRQu0Nt+ni6T5D6wpWUKmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mgzygzOJ; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb561f273eso58357951fa.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 03:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730284329; x=1730889129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6e62zABhJgu0xsmWlRUsEgJ/DIZADPy+MDY7G9xqvTM=;
        b=mgzygzOJcIWje4b2Bs50E75/j68lD9kPzL+Pqb3r17f5wXtsuBzZIC1ROZEeFONqRU
         39c30p1hqmGWer+wsufR0oQkX81CaEyUL5sEDXHp/WrhX33+T2XXm6EUfCzKq21WwJQb
         P27/JjoQEBZ6r+5pdbf2bH2jj/15J2nP+4WsLXwO5hOpvvEaEmi1vD5zeRFQEVr3sqdb
         CdF4PwQLuyAvBaLYH0Aqp4FBiO6SqWrtt6w6wg+k1lsP7p3uDjDR3JrT8fALD304kMOG
         W9MFs80PC2bdPPH0i/NBZGzqrhVJK0fQ6oWGK5ykWFYopkTYwV0+aeuYoBZq7zisM233
         NFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730284329; x=1730889129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6e62zABhJgu0xsmWlRUsEgJ/DIZADPy+MDY7G9xqvTM=;
        b=uwAlcGfBsPBhp0yRTK1yKK+k1LW2Pwco6dGukS33YjZ38XLNRG4HrKdoOrMf65JLw0
         0os6cX8w1RCtgB58vMCkIdU6KFkrXj7+WyMrCmUarnGXQrlQrcUMipLDX1cGjuaH/dSK
         sDzPeWwdKswYyYbpAwu7b4e4nt7/sh89dSz7/URk3/XUrCOzQeKqYoVHCeO6TC4VHABn
         /rQblzQAHYMztT0EjYzOGW/ckugwYEeSAhpoRoQuPe5UmNpiWylPQWFHm6/VbfXoyboV
         0XuSRsv+CSGxr+fQiwnya9JybdTK2jjMIdD6oYm93EDykVKHe7woW1Zw4qx/hzBoMWHU
         s8RA==
X-Forwarded-Encrypted: i=1; AJvYcCXK1QbQw0ErpcE1mpbuZve7ti3CrFFwch5Htxw7qZ/fe3CbafTZlBkgtLCqogxyUVG6rvPaXdZyOJOk@vger.kernel.org
X-Gm-Message-State: AOJu0YylexnBRjw1peUeyjaNrpMHXS/j8uZAUtFSRBkz8QW6IAFnBkh5
	KUmIqebloPXSEEYcabK3d2VhAVB2h6RIG3k2s7oympOkZCJN/tVkH0SjqL6lWyI=
X-Google-Smtp-Source: AGHT+IHN0Q+Mdq7fYa0Zn8cYYpDEzpyE0X1QlkitrR+30fjLy2hEruXPOPZRkaCk7IohqcOaFpkJEA==
X-Received: by 2002:a2e:bea5:0:b0:2fa:dcb6:fa7a with SMTP id 38308e7fff4ca-2fd0590bdc8mr13523571fa.11.1730284327314;
        Wed, 30 Oct 2024 03:32:07 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd9ca747sm17059915e9.45.2024.10.30.03.32.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 03:32:06 -0700 (PDT)
Message-ID: <c553db69-6bb8-44f8-b571-21c631fcaee8@linaro.org>
Date: Wed, 30 Oct 2024 10:32:05 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/11] scsi: ufs: exynos: add gs101_ufs_drv_init() hook
 and enable WriteBooster
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-8-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-8-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> Factor out the common code into a new exynos_ufs_shareability() function
> and provide a dedicated gs101_drv_init() hook.
> 
> This allows us to enable WriteBooster capability (UFSHCD_CAP_WB_EN) in a
> way that doesn't effect other SoCs supported in this driver.
> 
> WriteBooster improves write speeds by enabling a pseudo SLC cache. Using
> the `fio seqwrite` test we can achieve speeds of 945MB/s with this feature
> enabled (until the cache is exhausted) before dropping back to ~260MB/s
> (which are the speeds we see without the WriteBooster feature enabled).
> 
> Assuming the UFSHCD_CAP_WB_EN capability is set by the host then
> WriteBooster can also be enabled and disabled via sysfs so it is possible
> for the system to only enable it when extra write performance is required.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

While reviewing this patch I noticed few cleanups can be made. I sent
them here:
https://lore.kernel.org/linux-scsi/20241030102715.3312308-1-tudor.ambarus@linaro.org/

Feel free to include them in your set if you're going to respin. Or not,
if you don't want to tie your head with cleanup patches. I can respin
them on top of yours later on.

