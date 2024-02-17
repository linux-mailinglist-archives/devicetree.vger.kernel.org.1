Return-Path: <devicetree+bounces-43058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AE0859127
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 17:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B0F12825A6
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 16:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B66147CF1E;
	Sat, 17 Feb 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EHmDLqTw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF667D3F4
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 16:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708188353; cv=none; b=Hyz3rpWrxEHAbRCw97tadM+TdabHXalKP4pjs8YJtIOadxFPG6MYyBiEvh1IJGHHEUpLErh2KK29d8xR8SzREclj6TbgFGIANjp7srINcOCka3kkXA9icaUxZ6a/K63e8EpbPXJUieRU3H19GHTUW3Rd0ASL92RJgaql0tfZrhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708188353; c=relaxed/simple;
	bh=jnNx/uqfu3MLSSg6puGANl2kdnhsWwqi8IjbRuM06nA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gl/TQ7R7qYpuX3B4xAGh9CcVJ2QHmwSngCKV4knmpXogQxJgNAghQeJxP2mqPKPtGXDQ/Drst1cXJTxM5ac/0eha1Mv3AuYgDGW2NUbyCU9yvXn8I+6mNw1fxEKZ+he/9ZYCzjL5SlEScBD+ZBsYB2TiqPBgYhPO281jB0wBz0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EHmDLqTw; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dcc71031680so1662976276.2
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 08:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708188351; x=1708793151; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8b4mZDPM8eGHJ9kfKGWzDwm7bcatVceDQyS3pKcfyeA=;
        b=EHmDLqTwYTX8oymXtAWA4HPpYtFTeD4plFX+mf3NEG17EgoGsCArVnmFpkE/LbPqZ8
         6edlP36Hs5Z1588riiAocj6r89AmQcrLBzReJoiVHGTxsNX+lafl0R70MfTZLFJwk9v6
         6e7vetaZfN+q8ICXViNr5jS3O1C6largIluLL/KsauPKUfxqYk5ALNsMdJaiYT7a5PnG
         HWe56IJcQEFZeoUp5noFBnkIIH8HxKMZKReOiEl8szLuiOvhiWwbYx66OF9oDU9Eywer
         0Skr/GWU6qKR/Q+8FeGuFXck1cKPJkEFu0hRs6Z6r1TElPI0z0w3z9cW7ZwGN2+X1zIh
         IQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708188351; x=1708793151;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8b4mZDPM8eGHJ9kfKGWzDwm7bcatVceDQyS3pKcfyeA=;
        b=j3vFX7zdVsh4FoVudivASCqbeUGBe1tS8nQ/KeC96UL8KsSEI8DaWPxL738obHTBWw
         8ndD++eXKW9k3OBKjz/qW1M81XKrtZMDrKvbPEN+N4Uj4zLAKucCKa4CRHihVf4K6r6k
         DOpU2ibZMF7GVEOkRA+scjui9ilWVSovtathgMSZ9+cjNRQrFTvkOWtvxQ4YIFS35pQV
         VCppjRc7yIiLStX1kDxDo6UaPPpaNqz6MN0evctQHuzKMwRunApuaBWjRS4iAz4S+t9Z
         7H1L6J2PMWlb6RL94nkI2QpNMNeSIUk6YxNjq5WKyzHl4T5tTWvvWPvmjCy6OCeV9KWl
         6v7w==
X-Forwarded-Encrypted: i=1; AJvYcCVN5sMJufULY9RbJWyO7h7zPWrbZ6sZXDhktGpBBCy/3SzOQNKfKUBDk5SomYz5GVfbP7NibRQ9RHQtKcfSZcqwodO8ItQltVW0oQ==
X-Gm-Message-State: AOJu0Yx+XxV4fELO0zuoWPoRGgYJemuoSm1Rqo86eVyHjo6qp2Ors8ZW
	3taSPSiIP1SyVREDGx0kl/R50yTiACux9l0muoEeoGmViYW7Je0fmAi1A6BZiGnZ0HNcuEqqJtY
	rl+y1nfjFYQqVzrjtUpWcxxRELclTj2RS25IRfzWj1Lpdgu8P
X-Google-Smtp-Source: AGHT+IEqILzoK/VmX6sfUGgYoxs+Kj6m9usmVnKhsv0jSGQKkMhWk4CcrhNvGz0Qw6T1QZh9IOG6jFOhIBdsPvVlWDI=
X-Received: by 2002:a5b:18d:0:b0:dc6:d093:8622 with SMTP id
 r13-20020a5b018d000000b00dc6d0938622mr7622931ybl.15.1708188351064; Sat, 17
 Feb 2024 08:45:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122-ipq5332-nsscc-v4-0-19fa30019770@quicinc.com>
 <20240122-ipq5332-nsscc-v4-2-19fa30019770@quicinc.com> <7a69a68d-44c2-4589-b286-466d2f2a0809@lunn.ch>
 <11fda059-3d8d-4030-922a-8fef16349a65@quicinc.com> <17e2400e-6881-4e9e-90c2-9c4f77a0d41d@lunn.ch>
 <8c9ee34c-a97b-4acf-a093-9ac2afc28d0e@quicinc.com> <CAA8EJppe6aNf2WJ5BvaX8SPTbuaEwzRm74F8QKyFtbmnGQt=1w@mail.gmail.com>
 <74f585c2-d220-4324-96eb-1a945fef9608@quicinc.com>
In-Reply-To: <74f585c2-d220-4324-96eb-1a945fef9608@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 17 Feb 2024 18:45:40 +0200
Message-ID: <CAA8EJppuNRB9fhjimg4SUR2PydX7-KLWSb9H-nC-oSMYVOME-Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/8] clk: qcom: ipq5332: enable few nssnoc clocks in
 driver probe
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 17 Feb 2024 at 17:45, Kathiravan Thirumoorthy
<quic_kathirav@quicinc.com> wrote:
>
>
> <snip>
>
> >> Reason being, to access the NSSCC clocks, these GCC clocks
> >> (gcc_snoc_nssnoc_clk, gcc_snoc_nssnoc_1_clk, gcc_nssnoc_nsscc_clk)
> >> should be turned ON. But CCF disables these clocks as well due to the
> >> lack of consumer.
> >
> > This means that NSSCC is also a consumer of those clocks. Please fix
> > both DT and nsscc driver to handle NSSNOC clocks.
>
>
> Thanks Dmitry. I shall include these clocks in the NSSCC DT node and
> enable the same in the NSSCC driver probe.

Or use them through pm_clk. This might be better, as the system
doesn't need these clocks if NSSCC is suspended.

>
> >
> >>> Once you have actual drivers, this should solve itself, the drivers
> >>> will consume the clocks.
> >>
> >>
> >> Given that, NSSCC is being built as module, there is no issue in booting
> >> the kernel. But if you do insmod of the nsscc-ipq5332.ko, system will
> >> reset.
> >>
> >> Without the networking drivers, there is no need to install this module.
> >> And as you stated, once the drivers are available, there will be no issues.
> >>
> >> So can I explain the shortcomings of installing this module without the
> >> networking drivers in cover letter and drop this patch all together?
> >
> > No. Using allyesconfig or allmodconfig and installing the full modules
> > set should work.
> >
>
>
> Okay, Got it. Thanks for the information.
>
> <snip>



-- 
With best wishes
Dmitry

