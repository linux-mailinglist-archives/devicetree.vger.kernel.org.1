Return-Path: <devicetree+bounces-233098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CA4C1F1FD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C52771A2180F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB5D339702;
	Thu, 30 Oct 2025 08:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CMK0oWWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B2A339B38
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814196; cv=none; b=tkzBWq4MqyA6yTBMJmQR0LkhZhOOBP1oq4epXc82A0WZz+hWrGBkHSqYCt6aUlEfKdk/R1rOZsBppPGq08+r6fWOZ3BBzPk8MuU4+QTNZv7kGBVwwO+N3cDngmH+K4Bs8BVOKf7VC7uLC2uQLFaxsn0lFlPEYQCeBDXauDirXu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814196; c=relaxed/simple;
	bh=O9ngAMdN0iTdd2CKDUPBhw8xtCsVQMnRHStMJzuytoU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u2clyO7oGtVg1mKcdqp+tKmKpjc3UFv30/G23KzTPb5rxVCSv2FEthbXE3AlivvpP6nwJiOGIZu3SbVb+OMaSJgsm7aqPgX12Ji2yww1Gy1xlg8rhn9FgFPYe9z18DKBJQUvZh8/R0R0C71ZVEv51/KCEgJh4QkRkqpxAkxIggc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CMK0oWWO; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4770c34ca8eso6606695e9.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761814192; x=1762418992; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xYu8V4ijzaBLkm1tRJJh4KdGR5evloyxFTS8Kfx70Dc=;
        b=CMK0oWWOdZh4a07RZCx35M4x9dTvs5yfBVPG6eM3XbN7Slg8LzRk3ZnXy8kNiPCty9
         j3pyJZgmxCGBDDLPXqbKROKa8b8Ahk/Ugl0nCGfGKD7EwETnRs+TA8vP6QoqEkHCJ6hu
         Fi8QwoAGMdekKLrkiwd9q6XkDCwj7P0HPsLx2rPwlMVjZ2hngs5CTsxE4msEFRKCLgHL
         7FpWJHBPoaPXBqEuJ3z4/VrkEyxUl6xbzhHuovR4fEGaOc0Num6GrcPyFbvMuTzSCJPa
         SFXhq/Z59VkcYMHuO14jBGsxS7chXxLwrzBlMR08ckbGAUKDTPyldoIZhxlrhiPMz8TU
         lxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814192; x=1762418992;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYu8V4ijzaBLkm1tRJJh4KdGR5evloyxFTS8Kfx70Dc=;
        b=HV2eUWWted3sMQP1HPBhgqZnxQB4misDQd0nV2L1lUWv6ogyZQzUdBvZyRRKNGJBMd
         pYE6Fh37XwsfqsJ97faBS1ySVm4HXadhRKZXfMMPzVm19YtXfz490Srv4q9ZL3udLnYJ
         8OSUuLDit3/hIHU9mNxuzF28O0dA5l0q6VmamIs/vKRLcYORkZoyD6ukcYwbw7F+/leH
         0bLlQwLzKeGyVC+tjaO9NvptWwJfZxURiSGwT7OU/ewm3axxuZu8EOcZz95eOIqmQ6zc
         DyuqdvaJ/l5X8gbwdd7s2K9Mhiij6/RG0ZbJZI0QlNivRG1NVRrSwc0z2iAFbhPN9OnH
         5KSw==
X-Forwarded-Encrypted: i=1; AJvYcCXgXg+O0QzlykKjYxWFvc9mOCmdYSedSVh5V8ZbND5nozFfsLasVZ37vjuAfAUseObw/tKvRnpu13zV@vger.kernel.org
X-Gm-Message-State: AOJu0YxSpCDXY6Dz0mPceBk/9Rl05p/1EHwRfWt9LjltIc2ppG27zSS2
	b15o27FozQo+Q8/UoQpzjjVeQm1SDtoj7jYjLXTNYXy7XR7jUep40wo5mSzoKUGct/U=
X-Gm-Gg: ASbGncui4EC7pQnoOlTKshFbHtAR8/+mH0cP27hLI+PwrYZ7pM/TAlPI5is0WWupCS5
	Y8nVZj3FsMLINT6CpzQ5AzTVavXuKxa0gqLQnfQ0GdQa3X+FaSCVkA3db0FeVjGz3gSwbcGzgro
	B4KHV9AeBkYPxUyKGXMH4UcKl9VYRtjaDrYQpNUCc39k1I/u0RJys+NrDsg4wAdwZ44NKRvkRMJ
	8VzPCqw1cYfC6s9p3k8K+E7DhuB0n2Zp7HpJzHsFGGzXhTmmWnPs4LtjhJNsTtg0PIE8RdHC5cu
	waZ2xPjnc+xuZbEqA8IKlBpB9igSvAz1g/0EZd/DMiEWajuaffW37CPzj5BjRnIT7Yr1GnlfZfG
	iFHII6EmHQkF50gXyU0DUrhqPrE8WF4hlH2c5FmjYXmvyNB4QMcHo0Q4etKC0hdvNIPGd5nlXzv
	maC5OMUw==
X-Google-Smtp-Source: AGHT+IG2MfttSdDfp2WgKT04t7ubtuMHZor2LLT/p8YgLwBgQBYgELcrb63n/2vm8P+PHynnkpP+mQ==
X-Received: by 2002:a05:600c:3f0d:b0:468:86e0:de40 with SMTP id 5b1f17b1804b1-4771e32f67amr48670315e9.4.1761814192284;
        Thu, 30 Oct 2025 01:49:52 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4771832f372sm63063835e9.0.2025.10.30.01.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 01:49:51 -0700 (PDT)
Date: Thu, 30 Oct 2025 11:49:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>
Subject: Re: [PATCH 0/2] mfd: syscon: introduce no-auto-mmio DT property
Message-ID: <aQMmq4BfsNzAEY78@stanley.mountain>
References: <cover.1761753288.git.dan.carpenter@linaro.org>
 <3fd4beba-0d0b-4a20-b6ed-4e00df109b66@app.fastmail.com>
 <aQMUu08phVPqfgEB@stanley.mountain>
 <dbd5558a-90d9-404c-ae98-a8c04cdad08a@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dbd5558a-90d9-404c-ae98-a8c04cdad08a@app.fastmail.com>

On Thu, Oct 30, 2025 at 09:33:39AM +0100, Arnd Bergmann wrote:
> On Thu, Oct 30, 2025, at 08:33, Dan Carpenter wrote:
> > On Wed, Oct 29, 2025 at 08:43:33PM +0100, Arnd Bergmann wrote:
> >> On Wed, Oct 29, 2025, at 18:27, Dan Carpenter wrote:
> >> > Most syscons are accessed via MMMIO and created automatically.  But one
> >> > example of a syscon that isn't is in drivers/soc/samsung/exynos-pmu.c
> >> > where the syscon can only be accessed via the secure partition.  We are
> >> > looking at upstreaming a different driver where the syscon will be
> >> > accessed via SCMI.
> >> >
> >> > Normally, syscons are accessed by doing something like
> >> > syscon_regmap_lookup_by_phandle_args() but that function will
> >> > automatically create an MMIO syscon if one hasn't been registered.  So
> >> > the ordering becomes a problem.  The exynos-pmu.c driver solves this
> >> > but it's a bit awkward and it would be even trickier if there were
> >> > several drivers accessing the same syscon.
> >> 
> >> What would happen on the current exynos platform if we just take away
> >> the 'regs' property? I would hope that we can avoid encoding what
> >> is essentially operating system policy in that driver and instead
> >> just describe it as a device that expects to be implemented by
> >> firmware and doesn't need registers?
> >
> > Exynos solves this because they only have one phandle so when they parse
> > it, that's when then they create the syscon.  If you had multiple drivers
> > accessing the same syscon then that doesn't work.
> 
> I'm not following the logic here.  Do you mean that they avoid the
> issue today by ensuring that the regmap is always probed before
> its only user, or do you mean something else?

Yes.  That's what I mean.

regards,
dan carpenter


