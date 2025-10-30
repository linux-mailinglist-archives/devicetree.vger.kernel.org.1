Return-Path: <devicetree+bounces-233310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C85C20ED1
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 16:28:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 757694052EE
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 15:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9458D364487;
	Thu, 30 Oct 2025 15:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ykS5ibOb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9135D363BAE
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 15:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761838090; cv=none; b=OjdEgMJM8W9lw5DxBhcCdlgnwz0ctyu3rfCOKrtsXsmNpUeMYZuIe2eHlLL/jnqBoRpG3CYerZy7Rq9FRzndQ3wlr37o5rpIHZQAh1F2ZvvMsVskT4VlyTrSzaSajLfTs8p8diSTyiuOHH0k7wAqNexNx073tNFW9IPDMgLLQWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761838090; c=relaxed/simple;
	bh=XB11xGL63R2dsjBDo1xzLACnAhYwocbX+tplDz8muzc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sVOsE01LCZJyKJhDK6+JzNUweoAdSCwJpOE83/qTm5YpOwx7ysSl5KmJYFde5At2POGpdH34skfGvLxeZCHts6h5eZetlfQWtiHh3VUQjG78CHyDS8TQaFx4RZdqWRwlQ1DGhamAX+DxRCLG4RZe01neI1axHC1LDi6ns5Ya/Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ykS5ibOb; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-7861978aca2so18228877b3.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761838086; x=1762442886; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2ycPp8pZgEFoeQMpyGYzVQ4IFRsCoJ2aRuKd6SDWpxA=;
        b=ykS5ibObCHGvrPxm47c2x4Tgtx5sQC4UoKIvNO7OMDUehzP4BnEMVQkpkKQMHyJfMu
         OJguViaGuEn09tgLRmkfhc+UopKSJnmrEQQI9hmX53/HR/IOrVjZAQhrC9L3EQSA86r8
         3hDhQqcV6BACvSEomev/mTYOydrmgFfwbIJ/rp9IUw9fqWUf+pxzl53H+UbcbZRhQhGh
         6dqkMnOW181DaQSjDzc29KuBoUrAYGRBC58kIZ/CvFaTokkA6qdm9qVJHGHRKapoAWif
         0hWj/hnjCn21GUuBPdm5CF6vPWO7QzbCoIxj+gUGzFyQAqTsKRBP8sqRUwvUHwehcVsP
         nCNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761838086; x=1762442886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ycPp8pZgEFoeQMpyGYzVQ4IFRsCoJ2aRuKd6SDWpxA=;
        b=bhyuzYrWyCSo0ahhFQO6XJrwNURX4r/DV51++UimoFFcwqDSvIMUqbhUouA7oT5SsZ
         9vVUlF1UeIRke6yMplZyWBvvAtCUYphvN6Ff3GsXh6AlQI5SpP2VdOPf5qd4x6G2+VgM
         3bFYEbVW98Glwuyc7wDTFXgfzFse7tXidLqrG0ZrViu73JeA4O6bgjrfeswzW5wwVvQW
         5I/0eMPxsMFd4OxU9q3lM+NXZ+1YVE4y0Rj2uYW8tfbqXqyEJoG3BuTlXIsHvYgv2Ncr
         meRnbcNEd2C2d49UButJhd/H6Y9P9pc4Dl0veq6M7V1qEZ8wxzo/lNRKvUgl+vXQS5L9
         9Rxg==
X-Forwarded-Encrypted: i=1; AJvYcCUXRZrrZYaeSrD5jGnvhMyq3+0hL7u00yjs/97wiEpb3+BJKPgbq4kkXI/V2/RPPrLUNkQV1kE2WbEY@vger.kernel.org
X-Gm-Message-State: AOJu0YxMe7RQ7jBhXMmN+ZTb6hMNdUoLJxnus00soVwY7Splr4/7UI9I
	IxJFf3Enb45q2glWsRLq/yogXzijtLSwhGtUBSklo/MTJRJ0JzqbILW/JRJ/DkIgWWFNqHhxByQ
	NGiS9tRORyjg6q1ZbLE9GbhAXa7vL6g/ILJGlBEsclw==
X-Gm-Gg: ASbGncuwQlgVjlTDJee/h2AowHTciFJB3pnL3v9Gw37k88fQRFPn4klNL/FGz/MSSEh
	8pOpQLmCPyy8yQK07aCtexY1p27nb6nAFtmjsBU/caE2CMktDWKH0/xIwq8ztotmPHHENFgN1lo
	5Gr57pL1u/MPiDsF4BWZbduhujBbKia268jGflef5BOzuwi0kK+RD0avHw+tsCCsR9UeKzpb13I
	3EaLawUsr7mIFQ3ztnNvoZTma1KcK6C+fXu8exNvfm7wjd3Uif+2EmxqTuA+w==
X-Google-Smtp-Source: AGHT+IE7cHjINSkLMQTgzs6w+5tGJD0Nm4hSDWwJhVubSFRkYHz6tUwfvq/JjfaEUpptZLodo7e/iRO8bn4zeLZcNk8=
X-Received: by 2002:a05:690c:c34a:b0:730:8858:827 with SMTP id
 00721157ae682-78638e15c6cmr28491297b3.19.1761838086224; Thu, 30 Oct 2025
 08:28:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917063233.1270-1-svarbanov@suse.de> <CAPDyKFpus05RAkYAoG7zjyvgAJiuXwRt3=z-JB5Kb7mo0AK4vw@mail.gmail.com>
 <c379087c-1702-44b7-a890-beb5b77d794b@broadcom.com>
In-Reply-To: <c379087c-1702-44b7-a890-beb5b77d794b@broadcom.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 30 Oct 2025 16:27:30 +0100
X-Gm-Features: AWmQ_bnaXJddKoSJGHltKVC2FCgxq7fO5V7a69ZXCIkr6_3dvFmm3LKqD_YY314
Message-ID: <CAPDyKFowo7+-C4YLLw4XoWz4fU3ykEP1UVEEneCJXBuDjGTStw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add watchdog support for bcm2712
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-pm@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Lee Jones <lee@kernel.org>, 
	Willow Cunningham <willow.e.cunningham@gmail.com>, Stefan Wahren <wahrenst@gmx.net>, 
	Saenz Julienne <nsaenz@kernel.org>, Andrea della Porta <andrea.porta@suse.com>, 
	Phil Elwell <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, 26 Oct 2025 at 21:23, Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
>
>
>
> On 10/13/2025 4:08 AM, Ulf Hansson wrote:
> > On Wed, 17 Sept 2025 at 08:33, Stanimir Varbanov <svarbanov@suse.de> wrote:
> >>
> >> Hello,
> >>
> >> The following patch-set aims to:
> >>
> >>   * allow probe of bcm2835-wdt watchdog driver for bcm2712.
> >>   * prepare bcm2835-power driver for enabling of v3d for bcm2712.
> >>
> >>   - patch 1/4 is preparing bcm2835-power driver to be able to
> >> control GRAFX_V3D pm-domain. This is a prerequisite for the follow-up
> >> patch-set which will add a v3d DT node for bcm2712 (RPi5).
> >>
> >>   - patches 2/4 and 3/4 are adding bcm2712-pm compatible in MFD driver
> >> and update the dt-bindings accordingly.
> >>
> >>   - patch 4/4 is adding a watchdog DT node for bcm2712.
> >>
> >> Comments are welcome!
> >
> > This looks good to me!
>
> How do you want to proceed with merging those patches? I would assume
> you would take patches 1-3 and I would take patch 4.

Yep, that works for me. Awaiting a new version of the series to get
the comments on DT patch addressed.

Kind regards
Uffe

