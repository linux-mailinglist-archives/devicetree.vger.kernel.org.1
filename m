Return-Path: <devicetree+bounces-191710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA67AF02C0
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 20:21:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1BD617A9748
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 18:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957E2280337;
	Tue,  1 Jul 2025 18:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mE9+G5p1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2920127D77D
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 18:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751394111; cv=none; b=r01T6ZQP8024DaWVuUaKLboNdhQMBUt0V3auu2Hx4FAI9qZxLRAkAeU80/yLwORXyKwCB7baq2RS5n34BuVBDyya5MHL9rMmHJVIDyhA0GHBKNhBm1QXIqrtiPqm58s7BlY5G4DrpXSq64Ge64REycuG1X6oTu3M66BbQjkil3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751394111; c=relaxed/simple;
	bh=/0iJBVR02jp37VuAafJ7AuWu4zYV4ay0z9SBj/41vLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MTsL9A4dOLkiy55QBduJlN1xLPt+iuIZVrGPfqQSEoGiA0gevnEEeSdkScsqItsyr+zkF3vRaMK6azUab49zRwiAguJatkI0nXcgyUdKAOso9OxfISYL8lOBRGjRfI3VE/JSO/IC9d4QkNTBUNxYztHC6HO4mrh4OaJRbZ8xRUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=mE9+G5p1; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7426c44e014so6183693b3a.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 11:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1751394109; x=1751998909; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5QHb5QMnCyf1ixMGPEq1YYVlFE4mdK/TuEdnUZ7pL8k=;
        b=mE9+G5p1V3qKpkKKo/MkHwQmLdwW5CbUu0EwpgarGgURXhTUBGiQ7QTNW4a6AkfFdl
         /zsaLq+aG1182QuFEAVOCVgpVKfq1g/yDce2HlfZ+CQT/0CxGtvEh+HbPTSxxWFY2vyy
         OO8hWkOUxKBp0pfsKYn0IQF6ZKFLcHHSGPx8XkC2qgFT95Ty4ZgkLEnyj1tOAliCIJDm
         yGWa7PHiLnD4jT1zohGoIuvCFs6SbwPR5k+YYfAeo8yetwxG4Zy59JoZkadLteOT1bO8
         NiToHN77IVQu+P2wz/MQCVCdB6I41lN3CPTniQbZuZ4nvay42Ml5HseMb77R4ZyoatkB
         AZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751394109; x=1751998909;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QHb5QMnCyf1ixMGPEq1YYVlFE4mdK/TuEdnUZ7pL8k=;
        b=lGDZ7zRxNvVB2luFUfOP6KWXlzVnxDd27wFisxKUBfyuXId8ARxomsWvwYnqeyoLkb
         JzEZcvP4dws0YBOb3VA3z1PYzGleE4khV6iYp8OGh3bajDdchE8WEx2tej2IAgZIGEKv
         DY4Q7Y2bNvtawOAwOO892kwyLi62Als2JHO6ATtUBQtKdD9vBdqI0DoHNx5xB2fAcOao
         3JAbj8oWf98Rni/RYLZq94JH62/hm3jVHI4ike/e/KIGFmRO8GvkHr5YZYjbHH+Trggb
         xN0nvf7sDUsTwyvgNra/uWgoYJPqDA3EH6msTWastLwRx+Gxg+4CjpqT6LdX+CjDjxtO
         0bIA==
X-Forwarded-Encrypted: i=1; AJvYcCV+gEkr2RqD9SUoquVp/K8ONtRHmcDIgwTHiB5pbA0QqwQSwSyzHD4BQ7LdvmrwMQplTSLYkXOcSGIO@vger.kernel.org
X-Gm-Message-State: AOJu0YzYfTxm7QFBGfygHxdkdx2ExvGcdQccjJNAtOaa8aoI95Ax5Fto
	0+dgyHbGy6B5zKWjd8AoJt+V5Y1ldlrYmentMn/YknAQTBmZpUeiSukqEpx0rOhRbA==
X-Gm-Gg: ASbGncvodTBT9bw+CgX9bgCO9pq8u9FBDktcTYOI08CE7cpzcjnZ0cBK4Do4DuSFg6e
	/mbHkyCOo/sZCMYfULm2X38pGD4lztB2y5Aa1EPQ0Rq4WLyGj02GAlOKMdkBVE7oV0aYx2xIiF8
	EBhoIwpas15OCJlolefvmqjvCQocfilcNxKiRca4Q6oR0BEgAGbmK/d+WEJjXq5jTkKo5dtlScm
	Sj1JAbAxwTlrIy87buJNKWXr3j514TYuxLa84nmuobAu7mTXhpA+Jog0fvqhPLlX9JrhdrLCfVp
	OGKkyqGRYq6ae7EWcrYfSDlyJbOq6yuYLCRlaOGUQYcvw5fWiZ3zLX5dOCquXgw/LmOsRxVXwCK
	6UYNwurKsV0ppzF89k0nIw6btxQI=
X-Google-Smtp-Source: AGHT+IFT0hH3Zk3DfXjOeWqqGBpHUpAxwE5lOf7WjFh0UeT7y+ZsuOyfA7fRcSglkCBF0+s+7klyww==
X-Received: by 2002:a05:6a00:464f:b0:740:b394:3ebd with SMTP id d2e1a72fcca58-74af6e791dfmr26589635b3a.7.1751394108946;
        Tue, 01 Jul 2025 11:21:48 -0700 (PDT)
Received: from google.com (96.41.145.34.bc.googleusercontent.com. [34.145.41.96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af557460fsm13133161b3a.93.2025.07.01.11.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 11:21:48 -0700 (PDT)
Date: Tue, 1 Jul 2025 11:21:44 -0700
From: William McVicker <willmcvicker@google.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lorenzo.pieralisi@linaro.org>,
	Hans de Goede <hansg@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	John Stultz <jstultz@google.com>, Stephen Boyd <sboyd@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC] timer: of: Create a platform_device before the
 framework is initialized
Message-ID: <aGQnOMDyBckks78k@google.com>
References: <20250625085715.889837-1-daniel.lezcano@linaro.org>
 <aGMjfxIvbCkyR5rw@google.com>
 <27644998-b089-44ae-ae5f-95f4d7cbe756@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27644998-b089-44ae-ae5f-95f4d7cbe756@app.fastmail.com>

On 07/01/2025, Arnd Bergmann wrote:
> On Tue, Jul 1, 2025, at 01:53, William McVicker wrote:
> >> @@ -1550,6 +1553,8 @@ typedef void (*of_init_fn_1)(struct device_node *);
> >>  		_OF_DECLARE(table, name, compat, fn, of_init_fn_1_ret)
> >>  #define OF_DECLARE_2(table, name, compat, fn) \
> >>  		_OF_DECLARE(table, name, compat, fn, of_init_fn_2)
> >> +#define OF_DECLARE_PDEV(table, name, compat, fn) \
> >> +		_OF_DECLARE(table, name, compat, fn, of_init_fn_pdev)
> >
> > To support auto-module loading you'll need to also define the
> > MODULE_DEVICE_TABLE() as part of TIMER_OF_DECLARE_PDEV().
> >
> > I haven't tested the patch yet, but aside from my comment above it LGTM.
> 
> The patch doesn't actually have a module_platform_driver_probe()
> yet either, so loading the module wouldn't actually do anything.

Probing with TIMER_OF_DECLARE() just consists of running the match table's data
function pointer. So that is covered by Daniel's patch AFAICT. However, it's
not clear if this implementation allows you to load the kernel module after the
device boots? For example, will the Exynos MCT timer probe if I load the
exynos_mct driver after the device boots? My guess is you'd need to register
the device as a platform device with a dedicated probe function to handle that.

--Will

<snip>

