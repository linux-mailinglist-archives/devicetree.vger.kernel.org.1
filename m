Return-Path: <devicetree+bounces-126806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2E39E33D5
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 08:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31622B22DBC
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 07:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE2018A92F;
	Wed,  4 Dec 2024 07:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZmK6jvMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862931E522
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 07:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733296009; cv=none; b=RZSEqKbyrype6kOGprmXtEFtQK5q7nFHlR5jYd7dvWH/aD6KvdAzMf5GGmIVe2aNZr/JJtGkTIaq6nQQiKYdigy94H2quPdgnqhEKB3slPk3izrBMXjkwfucu3fACMKnFUU2beolNgRhygYCpVPBo1jGz44EBHcw/V6LgNIQ3Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733296009; c=relaxed/simple;
	bh=cGlfrmz+NqreEMAIegTgQf/lwOLc4c3SnJaIudI5nbk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BErAPEj6RraAvsom/n9W0OUcMe2xBn6DYRvTaWa6SqSAuMWI+6QnSnLh6F65BkSUMmzdt7imCeVsC7igFIi0EhZ1GV+hScMk8JwRwRekMp+/DsdEPgJzblyIIFOlAESsmVXfF1yQ24S3GN3GkCy36Rqa5Ee1PrpCiW24ximLaiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZmK6jvMD; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7fbc65f6c72so6050861a12.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 23:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733296008; x=1733900808; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xA+pFDHJg3JhuJO3t6B1WVFWzMnLuBLDIJWm/HSdUeE=;
        b=ZmK6jvMD5KpCtMToxjn2rYrq+ODnsUw+YkXnToMzFDJCRlvCwYmK9gmYVnT9jEh31n
         amE/LfIVIFapl4+AZ8lXH2ZsD/TEGL+2EJERVaJ/eFoBU8jRPLV/5p3qAe0Rg+k+kcDZ
         ImfdmS//e2UXActguJNrCYwSNLelF5S26MxmIBgMsh6X6WEVpOS81BHkKfmYAv7LawUQ
         62nx5nny2xRX/1FpVc1I3Jk61dEVHwsJ5Ty+eu9z3fDlllOKhJOIPWa2kE6tA489MW1J
         n0NQQZz2N1pIcJ+ea8P/ycqBi+Rw7oroLf/QhXy7zHK7e+eYmPpdhlG77oH1yzFQkwvc
         D5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733296008; x=1733900808;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xA+pFDHJg3JhuJO3t6B1WVFWzMnLuBLDIJWm/HSdUeE=;
        b=o5ofrFwlcpiXWUE3BY37aLfwoVk8R/n5hUIPdxcVTmwJISDI801f/+GTOTLJb2DE/e
         EHK2OQ0Rpc5KoPQnM54M/8tvIFxFUcvrHRLogBiqBrIPJRY9I0awn5fXlEN0PIVAeBke
         2Gcx8vZ+f9vF/jOW2odsj+phTrK+Z0xaRVN2RB8+3ohtSqdnZVFyQgridargRFrj57ty
         Az6pxaKEo80UfrVtPZ2WGzkX98rWtX5XK4c2D21Iynw6LzIIZ7LXFEqtesSILOpKuwkz
         ONoHbT0+6xZVlt22WM2FJnUcdWeU5Wli1mFmkcdAi8XZK6HxhDuRuizN0xlxXsZZPWQT
         3vnA==
X-Forwarded-Encrypted: i=1; AJvYcCX1ZpAkvMeR9Vcv64+uwML86RxAorH59lIoMy06J3eHB2C2q/Tna0gEN3olnDpjVbl4Ak7Q6sU8j10w@vger.kernel.org
X-Gm-Message-State: AOJu0YydarC06OEgNgHAHjfnsu3RpvH7Z3pUp0aVvGq2wvAd7kiMSuqk
	ClDDkwuyV4gOFpCec7INGFymtcqA/6wL4EdIeV0rmxdxIfunG6l1EEHyynx3S9c=
X-Gm-Gg: ASbGncujzTc1/QV76WFAMCo/1CBfhSG2/y54mEluyUGr7H8I5zaIDAmx2oVtG/mHZmu
	ID4dYdlMWFWGIQWng8bKM6ryXva1HtUpTLBO4XOgE2C24RfVkNvvbF8olT+GpINdbGF3VMMjjVs
	Nkyx7KnIwtfIHz0nIvBvKLLgH6vXFyRMAMmO5MB3ZM8fVFUt9C81qGoLTtVxlgm6nQWjinejgC1
	Sj4ta9R6YdNiDjxi2Vs+77CDEy8pf6ZjRIjuGX5g6RLVXoPTxwY
X-Google-Smtp-Source: AGHT+IG+WEflcRy0H3XEQNdVIydDsgK82mB+3ttGOJT8u6l9qXJ9IQZOOl8bI5c8OzLfA7MXQ9iRSw==
X-Received: by 2002:a05:6a21:999a:b0:1e0:d766:8da0 with SMTP id adf61e73a8af0-1e1653f2427mr7360540637.28.1733296007968;
        Tue, 03 Dec 2024 23:06:47 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72541761246sm11705852b3a.12.2024.12.03.23.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 23:06:47 -0800 (PST)
Date: Wed, 4 Dec 2024 12:36:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH v5 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
Message-ID: <20241204070645.4paiiaj5lsvlohlq@vireshk-i7>
References: <20241203163158.580-1-ansuelsmth@gmail.com>
 <20241203163158.580-2-ansuelsmth@gmail.com>
 <20241204053211.6gdogcpi4g3eavw5@vireshk-i7>
 <674fff09.050a0220.293594.24be@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <674fff09.050a0220.293594.24be@mx.google.com>

On 04-12-24, 08:04, Christian Marangi wrote:
> The idea I prefer this is to save a few CPU cycle and also to prevent
> bad usage of the CLK if anyone starts to use it. Returning 0 from a set_rate
> would provide bad information. Or your idea was to declare a set_rate
> and always return an error like -EINVAL? 

Returning error is not okay, as it will make opp-set fail eventually.
I think we are doing the right thing right now.

-- 
viresh

