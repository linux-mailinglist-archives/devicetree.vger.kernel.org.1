Return-Path: <devicetree+bounces-117336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B2D9B5F03
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 10:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7D14B215D3
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 09:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D941E22F1;
	Wed, 30 Oct 2024 09:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hrcTSY4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9802428F7
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 09:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730281155; cv=none; b=DnsfA82rWf3Yx/e3wyuyFztfEX8fu0yWPcfnuG+pIWNDJcSjwg24SMn5H08f7DJgOj9eNFhrOLppBTIFjQINwmFU7mfN5wrGLBpJRUymPOg/ev5N6oL8VHHJXNPh1wPq0rClltKWBa1I5MXO6yWYGsyKXi4zMNM+crv4keAmKVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730281155; c=relaxed/simple;
	bh=gExNcjrUtvag1nDOnOiDLd7cvI4wjdQFmT0fqwMb11A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BrmqY4qvTH9HNtwSCAbW/uZGVp5x5BwbdpwypbEDnT3GHgZnAu7sS7hZPNmXl8f/SnBAryfy2ADDZVrD+r/MTBc/zKHKKWyb8Mbi+skKN7FECR2TZyoQphJqwzrbzg5jQ4WKgjRIHKNMUiadj/470hJumKMM5tkV8VG1A8g57Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hrcTSY4P; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4316f3d3c21so59590565e9.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 02:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730281152; x=1730885952; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gExNcjrUtvag1nDOnOiDLd7cvI4wjdQFmT0fqwMb11A=;
        b=hrcTSY4P0PsxcOUusUi/CL6E//NGAce1CbDjPrQIjROhXQ2FL9WPCLRNiUK9lkp1xi
         ZJ6M9pDLtAeeJxwE4H2ONZeaK0LjriLWHFKpk7L2rvSjYUhYb19PkzP7+5ipllozolKU
         wU2/7h6HQrXRIXyF2qrWSMOijWeyENbtMjndskfwByOOEh2/QsGiEk6J0tGNciatYjh0
         DOGleFq3eIGYYGSc5V8MgPawUAr7Rkumsw7peggkFuNA6gzqtNXIJYdZRpz4AcE3xk3L
         LqVzPJEwpCqadtuCoe4V6iqtqqsWcEpx901Fvt6YtMPOuCbCKwrxePuaKlpw6Nv7GPVS
         LgdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730281152; x=1730885952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gExNcjrUtvag1nDOnOiDLd7cvI4wjdQFmT0fqwMb11A=;
        b=cUISNReHTSVhN0ABbtzsSnikr5EfDb6TK5Zwo1NCqA10AgzvCHMQgfTrrF/G+v2ziQ
         GVEIuHktAmY3scF+oIBP/PXvkOLLDPRmILhysapyBlbzgcJ07eC9Z2m6GMpG0q99SMiV
         VEEZ6UoYN2tHXLZcbd3TFjxO+zwjQk4S4vFUruj4KAaTZA6WJ6cpiwuGmRAI0UDDaE9I
         3fHrSpo+7RIeHZKJadTusnbbH4nqFy9tLaO6T6GHUUFlQM8D0Rvd8ZSPh3lwGpT0+5cK
         oX2o8StHi/hCW1eW1MxAO+UFhF4fm68xyoV9qNwaAftbPOkovk/FLAA4kH8QvuzNN+J5
         mnTg==
X-Forwarded-Encrypted: i=1; AJvYcCWCdrRUhlguw/Q31uOxtgp0vowakJeBvcwTlAZlW714oCXLQowfi9WndCgqfC5mReui5PYqb2fqKCL8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqbzl/VDQkZfC3QpeMRXWnvlAkWTgMtdeOs8Pgy4nHD9jzu6pp
	j+VKfPmyN3cCrnhyycj01Koo1pDWwllLVIl3SR8QBrz4rlaCODXYD7Sa5Xov6fQ=
X-Google-Smtp-Source: AGHT+IE32/QWwJxt5SXFpIYLSDpj6WX3oAgieA0BND3K1CgVJXvPCDBSisVF5SvFS5ZZDNzolgjR8w==
X-Received: by 2002:adf:ec4f:0:b0:374:c614:73df with SMTP id ffacd0b85a97d-381b710f3f4mr1868603f8f.57.1730281152021;
        Wed, 30 Oct 2024 02:39:12 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.43])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b70c44sm14816858f8f.80.2024.10.30.02.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 02:39:11 -0700 (PDT)
Message-ID: <430e6dfd-4a7d-44d9-9dd6-64d99c8bc91e@linaro.org>
Date: Wed, 30 Oct 2024 09:39:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/11] scsi: ufs: exynos: remove tx_dif_p_nsec from
 exynosauto_ufs_drv_init()
To: Peter Griffin <peter.griffin@linaro.org>, alim.akhtar@samsung.com,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 avri.altman@wdc.com, bvanassche@acm.org, krzk@kernel.org
Cc: andre.draszik@linaro.org, kernel-team@android.com,
 willmcvicker@google.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 ebiggers@kernel.org
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-7-peter.griffin@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241025131442.112862-7-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/25/24 2:14 PM, Peter Griffin wrote:
> Firstly exynosauto sets EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR so setting

exynosauto and gs101, the users of exynosauto_ufs_drv_init().

> tx_dif_p_nsec has no effect.

Both set EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR, the conclusion is correct
for gs101 as well.

With this addressed:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

nitpick/personal preference: I wouldn't use the commit body as a
continuation of the subject. I would specify what the commit does in the
body as well. No need to address.

Also, as a side note, I thought of removing tx_dif_p_nsec from
exynos7_uic_attr, but it seems that this struct is used by
exynos_ufs_drvs as well, which don't set
EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR. That's a little confusing, I guess
it's more clear if each driver has its own required settings specified.

