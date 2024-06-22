Return-Path: <devicetree+bounces-78674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1B6913115
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 02:07:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7FFF1B224F7
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 00:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C20A161;
	Sat, 22 Jun 2024 00:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="q4Xqf3sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8A38472
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 00:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719014808; cv=none; b=jGln8U0/mKIIdQF0YZoF7x4kZ9gzWfDRS6N8scV0s/lY5cotOCJyYkYvzKwP6LCLjNkmJ490QiIQ2eCbgkp6/djw62m8zxOlzgpoGuo2nkJnx/qGzldBDlg7+a9JwpMLENRqCQ7PFMb746l5x6MQk4oXRA36KBtXkKK2vSaFKJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719014808; c=relaxed/simple;
	bh=2iZCdobCesQIlaIFBjwhULiIkRQI8wcQ8QBqpcXuLO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=abbe2wv2NGqkk/XI8mn4a2MtAzwThSFwHrfyPF7hRbMye/s9hKUZHhkI/4nIxfdI3rSUmiHa56VHy+kjXEHAkzF5Koo7SmJ1QbR2EIGleKL9vM8U+bl9Aj3bIFl6gomyZOn0HLUF9fcCJ+DVRrrNsoioQuCbWpTpQYsFc4wd9d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=q4Xqf3sj; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1f70ec6ff8bso231005ad.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 17:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014806; x=1719619606; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=50aRBwML1alf49hO+1BmWw804OZfmi02o/xT006me7w=;
        b=q4Xqf3sjKt+6bs4X7412Tauxe8ZK75EWtXsyRXywJc65KD8yLHzAD7rS696c8rb2ww
         fyPIiIuPS40v5fDaJC98Dkj//vuZVAtv/DYXUUvHJH9XEexB9TPzCe17YW5hPGd8o/g1
         9DsxDex6z78ncsuRV8YQtbbVHaV78oGG0FZM/IlHW9NKX83lkjQ8cOfgh67UmXR561Gk
         g+ClmliAzy0lnmi8Fq4OwCWfrH4SVw3sFtDoMWwK8Bp8yrboM/pI3i1IWtIxcQK/W89H
         3FyuZDlJU83e03n6FFxZEEy6gncSesDECTyiIMc2+PKjFAV+rx1fs5d1vIR/txVIB026
         Qisw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014806; x=1719619606;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=50aRBwML1alf49hO+1BmWw804OZfmi02o/xT006me7w=;
        b=CP/ZEmpXJTkJpwTq2QUoD2l1ucaDa1SvkFVt4w3vru74XYUBGsB60y9tJ+uZdQpXWc
         DSZ8+OGXrVTBT2xZLw4jlAhKmhugzaHswTMTnJF7yZHxVsz3GW1TT+Q0y3RcmrI74WSy
         43htFQMvA4WXevv8VcHZiCoeyw2JYkPOqQ8RfhSk0ReVBs8dqGqfaLK57unGoKmLH3Xp
         D6Sh2e6FsAjRjuMoxcHSFwOQ5vrpsk0uHPPVbH+F9vA1fToqFS5hXj531P5CBnD89IyO
         zF9xEwE27dz8z8pJlMA3QtiGfz4zQygQUK1hDqzn2gRKPDABM8aQFaCIw3UMrkJXwYjh
         homw==
X-Forwarded-Encrypted: i=1; AJvYcCUWwGCdAR4lEtHXNkkKtFL0NuY1ac5eiUSu9c7uxwPZ/oxWXbl8mRXfoX7EOxSQwf8r8yahFxj+SEXKv4hsXnRPa8re2sMPFnbI3w==
X-Gm-Message-State: AOJu0Yy/U1JvdpR3urdOPuqIGkp1QXeYpy7Ic+mPPn0UQqyGTY20E5Lb
	At9w98BQqYy34T+mjdil85A/tM/jucoSXIa4a31rJkOqB2LlsOWYC//gnnNsBA==
X-Google-Smtp-Source: AGHT+IH2DpcqGgyH+HjMIKHYfMU0Aprz6jSxhq9kEXfnCX/pqvkRFp0LybPg6McZN0Dup2hfAWO3ng==
X-Received: by 2002:a17:902:7689:b0:1f9:bc99:d94a with SMTP id d9443c01a7336-1fa09ff2e18mr845625ad.5.1719014806175;
        Fri, 21 Jun 2024 17:06:46 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-706512d6088sm2058052b3a.175.2024.06.21.17.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:06:45 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:06:42 -0700
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 5/6] phy: exynos5-usbdrd: convert Vbus supplies to
 regulator_bulk
Message-ID: <ZnYVkmVjHiaOVJ9b@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-5-b66de9ae7424@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240617-usb-phy-gs101-v3-5-b66de9ae7424@linaro.org>

On 06/17/2024, Andr� Draszik wrote:
> Using the regulator_bulk APIs, the handling of power supplies becomes
> much simpler. There is no need anymore to check if regulators have been
> acquired or not, the bulk APIs will do all the work for us. We can also
> drop the various handles to the individual power supplies in the driver
> runtime data and instead simply treat them all as one thing. Error
> cleanup also becomes much simpler.
> 
> Converting to the regulator_bulk APIs also makes it easier to add
> support for those SoCs that have additional power supplies for the PHY.
> Google Tensor gs101 is one example of such a SoC. Otherwise we'd have
> to add all additional supplies individually via individual calls to
> regulator_get() and enable/disable handle them all individually,
> including complicated error handling. That doesn't scale and clutters
> the code.
> 
> Just update the code to use the regulator_bulk APIs.
> 
> Signed-off-by: Andr� Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

[...]

Thanks,
Will

