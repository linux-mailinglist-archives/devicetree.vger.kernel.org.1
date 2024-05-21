Return-Path: <devicetree+bounces-68068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A177A8CAB65
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 12:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51F55281773
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 10:01:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4246BB56;
	Tue, 21 May 2024 10:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RBwG+Be9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDD3224F0
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 10:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716285702; cv=none; b=uoDhvp3o58kPCzmmotzFVYfwnS5Jb9wHhUyA9do/vg75NmpDcD8UgfJKuh+HkaeiaBFWuKEDWFKoUbJe6+MM6YNvndUgLAOMn6nfuOhLe1YS9RQ9bJqiG8Q8D1aSKaQFPpDN0jsu15kB+BiB9mCAHJ9Tr8Ok0e/N+x2NRcgk+F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716285702; c=relaxed/simple;
	bh=eSvaMBIbPocMUUAl2gCaybx5KCg+piZs3ZrESkEh/t4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YuM6uGWsvS1uUltZorXJsGR4kr0KoByMjoaTwyl8l6jBQPYYek65HpRBQmjEj7VvT5gnoz6XpyE+fSAHxiYRPdgfg5mWDo6fkXvlLZEXQnC8telgjOVMDoRCAqXnBkJ9C/VkWEAGmPWzwl3tx0DQZTEvtvkfJOZGe56MemCh5Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RBwG+Be9; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-48072da2f81so923963137.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 03:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716285699; x=1716890499; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=05P/WlwWKKhut6I1eqLgXZLr7T/6QQDhvGE0vkqsqJo=;
        b=RBwG+Be9ISsaQ9wSEh5/7UhbNY26zueVmxaSRIwPcub+SFxb2Kpwc9C6GoYx4pUwHS
         IGvJk/ZQ7zrlTC0VhKbpd5/Akik4LiOOAl7XUH8xMq/GpERYeonlifxAGH2E+0HCkRVU
         9/YVsFB4kGs9prmVZREu5rViJ6Xp7axxWQnY9NL3Cxm3N02cqSJ6fVuhgJNPdko/H/eq
         DKVW7NTQ6MoPe1uZKfVulGfwDTgEPaebagIu7gIeyq2igu618c7vz9m9+8XVRuPLbTfu
         8MC8bdyQVQpWRFF+i1CaWLn/DDcDT4e3ZSU+10gkCLSLM8i2syOq7uz+NGuBYmaUyctx
         eTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716285699; x=1716890499;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=05P/WlwWKKhut6I1eqLgXZLr7T/6QQDhvGE0vkqsqJo=;
        b=scvJBx/K2S3XRoPcYpkw1Lg2EJW3i9ps+sQpnCnBqWGkp9AFTUIq+uONFiTNIFg9t0
         TigrxwnLIeTILU8Tj0NOZ5lrVuVLe2R3OAXsPYQlFL6xJ6REIAl0SoMQA3Y/I05toilO
         42pZSC+9gw7bKG6oyyDTwHUrbDMgoUOhWMzQqzts3VJMKRmglfsy3bNfzwg721x7rejZ
         z/SmXuxVYTCNL19bqsglxRZYZNfKkLidJ4b0DGhKnRqWR25zcG8q92DVVrAfe/IUswxW
         zvUsBFUkHcMarHACYDCZxhhaH4YM2LHln84Iiori4wTqLye7y3S5YOCFfEysfsTKx/5e
         aztg==
X-Forwarded-Encrypted: i=1; AJvYcCXpUxVjlOSqW5jFcStFmtOTKd16izslB3iomoZWofuDbFYGy6QmPBM2EMr4IlHIK4f2xHR9qOr/DKNVNmqJO0rbXB3eE2hlbcdXXg==
X-Gm-Message-State: AOJu0Yz3R1cm7qCgq+2rn6YBdHs8qd4QIVZ0SCil0cXzoncVWZXhmh12
	W3kIL41le8/iPJWCRuN/RpsaI8ThFANvU/rBL4lAUziTECNIwZis5j5Tpq8HjAlew5WdOg9BGiT
	gj3dRiMOBBVcYwvpCu7f87O7J0kTXbqPHXHbSy8QEIIz+rLCSxhs=
X-Google-Smtp-Source: AGHT+IHBg8oA+nkRXQ2kYvjQcVJRCg+dFqmIUTocHTkS2BlcGovr4ox8u9dBOyyUejfPP8YcSa3ykxFw12tBsBCGjcA=
X-Received: by 2002:a17:90b:4d8d:b0:2bd:69ce:1966 with SMTP id
 98e67ed59e1d1-2bd69ce2345mr5713134a91.29.1716285678586; Tue, 21 May 2024
 03:01:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
 <20240521-qcom-firmware-name-v1-6-99a6d32b1e5e@linaro.org> <a314906d-b297-474d-910c-6634c8c23042@linaro.org>
In-Reply-To: <a314906d-b297-474d-910c-6634c8c23042@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 13:01:05 +0300
Message-ID: <CAA8EJppLtsQmjC93_zPSqeWAk9vM_ZVF96pcWLRHHpm4KrY2cg@mail.gmail.com>
Subject: Re: [PATCH 06/12] remoteproc: qcom_q6v5_pas: switch to mbn files by default
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Loic Poulain <loic.poulain@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, wcn36xx@lists.infradead.org, 
	linux-wireless@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 May 2024 at 12:49, <neil.armstrong@linaro.org> wrote:
>
> On 21/05/2024 11:45, Dmitry Baryshkov wrote:
> > We have been pushing userspace to use mbn files by default for ages.
> > As a preparation for making the firmware-name optional, make the driver
> > use .mbn instead of .mdt files by default.
>
> I think we should have a mechanism to fallback to .mdt since downstream
> uses split mdt on the devices filesystem.
>
> Perhaps only specify .firmware_name = "adsp" and add a list of allowed extension
> it will try in a loop ?

Such loops can cause unnecessary delays if the
CONFIG_FW_LOADER_USER_HELPER is enabled.
Since it is not possible to use vendor's firmware partition as is (you
have to either bind-mount a subdir or use a plenty of symlinks) one
might as well symlink .mbn to .mdt file.
Another option is to explicitly specify something like `firmware-name
= "./adsp.mdt";'

But yes, this whole series is a balance of pros and cons, as it was
discussed last week.

-- 
With best wishes
Dmitry

