Return-Path: <devicetree+bounces-100853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1968396F321
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 13:33:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C41CB21D97
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 11:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BC61CB31D;
	Fri,  6 Sep 2024 11:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iT7na9vS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE841B3757
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 11:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725622408; cv=none; b=bl0y9oYxSRqEjYSSz2NwAlCOYIHQC9qA+0E6jXK/M4YRzw89vruqD19h6WM5XXtH2Pb17LQJkWO8V3HS8UruGc/PCvWtFkTL0vJt4KIpQvy8pOjaKNsAFiaqhRUJ6wWpzSi9j55NY57/LF5MZj/zsyeZlr6prf68Znz5LiJuu/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725622408; c=relaxed/simple;
	bh=a1oiwHXhTP5k1qDN8Kz5shKpgHS7gkdYtvq/dlluG9A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k5VPSaXVtrs5qwbzJCIt94woth9CZF4qcuIjaPwVVW220fIDAdh5ytci1ME/5jqnN1lRu6LjCa8qENYmvcLYCahydfj4gWfF9od9UlqnxbKH7Smsv7w0V8zi4m/i0tzgVipSK8vjgTqXWoTyYpfzD1nr5/4IZlqH5/3jt+olj7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iT7na9vS; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6d6891012d5so17118977b3.2
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 04:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725622406; x=1726227206; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a1oiwHXhTP5k1qDN8Kz5shKpgHS7gkdYtvq/dlluG9A=;
        b=iT7na9vSVMNMOa4G0amg5V2y+C3JlFr5Dz0ewo8hhVHtJ0l68SilcsGyW/t2RwOauC
         NExXmexDyAe0HVgooQO2lIYOEXCOQJJQE6gM/KZrwncqI761m4EkYJgOJBKwxag6nBog
         rjPKoR+/pr4qnqTRS6I6GgXMa0Jzzm6ECGGtlhvYiRt5agiiA1Xr69p1Goti2GnRm4R4
         6fe+4fTh7acfuSjwjls+PETbbMa3pTyH1Yiw1DWZ7jA/P+nk6qKF5cSuSbNie5txJeaL
         TDosmEygY5hRYdWX+W8zHFuMEsXRhtNXjadAXlff9g3wyZvdjfBkpDM8juXtKPJagaVS
         aEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725622406; x=1726227206;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a1oiwHXhTP5k1qDN8Kz5shKpgHS7gkdYtvq/dlluG9A=;
        b=RNbtEExqnjwnhbEgYBI9IBJxMrWd0Qv6+v2pTqLbPgFx78uK/lRL0M1FKKxZAYVHj9
         yiNjJNiPEvSyDkOkwIDr/d4jcQsGEvSHWab9jn3UTRxQGS5IKAIvZ6ZeRiA5aiEhcyfz
         K7H7qxEgoz/CAW8nYMKPhfLy+QQnax0GnxF8c98Q/uZqsLIs6dV596dTaaLWKtv+CTk0
         SgF99wAsqSGagTcsLYlFc/98SZpW2z/dUHVGf6zWopeouHxcA5/eWvnZqwIcMrJZDCMH
         gOUrb7mwMFUwXv9waCuSrNt5TFSwadyn8gFpEgszxGiKtIiRoEMQsMLYdIggjBxCJONy
         MV6w==
X-Forwarded-Encrypted: i=1; AJvYcCXAH9VVQCCByxAVrwrYeOQ57yNS12wXlBoPxewkKXqKY2Ce0hKD131KTtp7K2xwiPZaP+GE9cGOCIEp@vger.kernel.org
X-Gm-Message-State: AOJu0YwjTy/HMlGFviF/iKOUIw+z2O7jdhOzrbyoG/rGJSpVYgGlX11o
	bxZfeVeHQCbhwKmmppcZCw89Y6UMLbBW4gVL4dvvyEp9iJfHofwJ/aTSvVi9d3a/8mMITVU/czH
	0zEU9JEPddr+hURlRA/pKkCMc4Ubr8KShAKdzOw==
X-Google-Smtp-Source: AGHT+IGkcx0LnZHoHukMiwPH2fOzPIp/adODmKyPix5sHHzkQiP21pFZVgYcCTOOmpTmXp2A5oULIb0ksyDmO2p8kGw=
X-Received: by 2002:a05:690c:6384:b0:6af:125a:1c6a with SMTP id
 00721157ae682-6db452d6a58mr25663227b3.41.1725622406397; Fri, 06 Sep 2024
 04:33:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <692cfe9a-8c05-4ce4-813e-82b3f310019a@gmail.com>
In-Reply-To: <692cfe9a-8c05-4ce4-813e-82b3f310019a@gmail.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Fri, 6 Sep 2024 13:33:15 +0200
Message-ID: <CACMJSes4cnCNUHiZUr4CF-K2c8-1VYzuh=T8JDi_erqfShkuZA@mail.gmail.com>
Subject: Re: [REGRESSION] firmware: qcom: scm: smc: switch to using the SCM allocator
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: regressions@lists.linux.dev, brgl@bgdev.pl, andersson@kernel.org, 
	konrad.dybcio@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, robimarko@gmail.com, quic_gurus@quicinc.com, 
	luzmaximilian@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	srinivas.kandagatla@linaro.org, arnd@arndb.de, quic_eberman@quicinc.com, 
	elder@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@quicinc.com, ahalaney@redhat.com, quic_djaggi@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Sun, 25 Aug 2024 at 08:51, Rudraksha Gupta <guptarud@gmail.com> wrote:
>
> Hello all,
>
>
> Found a regression with a platform that has the msm8960 SoC. Was hoping
> to code up a fix myself, but I'm not adept in ARM architecture or the
> Linux kernel, so I'm just reporting it here. Reverting this commit seems
> to fix it as well. Please let me know if there is anything else I should
> provide for this regression report.
>
> #regzbot introduced 449d0d84bcd8246b508d07995326d13c54488b8c
>
> Error: https://pastebin.com/SDRENUGk
>
> Defconfig: https://pastebin.com/CRDjC39a
>

Looks like qcom_scm_get_tzmem_pool() returns NULL. Not sure how this
happens. Can you confirm that the QCom SCM driver probed correctly?

Bart

> Platform:
> https://wiki.postmarketos.org/wiki/Samsung_Galaxy_Express_SGH-I437_(samsung-expressatt)
>
>
> Thanks,
> Rudraksha
>

