Return-Path: <devicetree+bounces-78671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 595B2913109
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 02:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1247E282499
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 00:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D8F385;
	Sat, 22 Jun 2024 00:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="BzE4dRlw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBF028F5
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 00:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719014714; cv=none; b=KGzw2rUiYtcGY3q9y77jzapT/vI/+xYLGYybO5bnJ8ad3kreZiXvSEtwv+Lzb8a5cQFsflHj+d5zsB+SkfbZ87Ot0hGZkqtk1HIxW3NQyz8BPlYLDNyqweMe5Yw8Rh7bCMix2ndss02gUHvpx9+szsJASTPrHC3guZbrU01cCJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719014714; c=relaxed/simple;
	bh=mtLzfIy7druKeAfdg+1CJtW/70Bo9KaqxrNxgShLw3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O310vnTc3XIpmY6sBnNDzTAAYFllG/8e0KR2Rj+7WFSRQXiPbfqxJ5jMIa+QuR+kANcs7zlY56fCR0PB7EyvPrbBX78O0aMXp4T4yHEtRaC4sqD3txUnwYReUidMGlfeU5oYN+NUrPx8PPlwAXLEd5hHXIJ0eD8iV+IFPMA59zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=BzE4dRlw; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f70fdc9645so222605ad.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 17:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014713; x=1719619513; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2NFHVTARxY6oz0ND/xOG9DTefTphGU25EZtwr7kbv4k=;
        b=BzE4dRlwfoYK0FZktszkKgAdIQ1cQgU6LoyhmD+YNNPxqbDmZNPUgH1tdNbIVysD2l
         mapzQjSckbO4SGLf43k6mN3gq9kZq+uLJPHVwjWLqSpcD0KgGhRmlDnup8zsKdxetmiG
         8eBp8JTkRDPINttX52ZUYwVp/ReE18e0RA7cQAJrpDkaDTZYUJWGHhbmmVoBkrzcRzg8
         /ipDXtVs3UMJNErgDEDs9/uT3vAunSifZJ/7IhxmMcJR6yLj3H+cgqgCIoAvxDJbmxKY
         hpchcCc4F5dRtx9rQkjkXLHtpWgnak59WuaE2mpcnGPEl1zPm/2u3sSEb2Lx+kmjovbH
         22kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014713; x=1719619513;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2NFHVTARxY6oz0ND/xOG9DTefTphGU25EZtwr7kbv4k=;
        b=cdr3cluo2WPWqU3TMEVyo0Qyw76diP7ecp1ZXqFdS5qO/nvfYPsgCSK3d9vIalFyI2
         dHR0p04t1D8EX5Qh0sC/tpDIA9TLqF96iIFQTUnJqVVo3MYqAxhbRVulO2mqZwK3ieid
         dCsbI3IqiGpXRXHqHFqhCsjD+ZJgQUfSTa8vKOW8DKKcKCNTZkGA3VwzVSVg2G1t8+/1
         QdlfOjVB/vt0874x7XOsqe4TykOfuZgblan7/B+r0WZU5VBRZKAxE6wAjiNQlNo2IW10
         121cRUqE49lioVDO3IHdomALlwfbThGSe8xpOLfBoBYTjnRflqYMc41zAY2+36VPrSZx
         1GYA==
X-Forwarded-Encrypted: i=1; AJvYcCUXzlKlVCDGGfRGly+6Rr9bluwKojJtSKg1bdMyzda28Xw5Og6Bg+75azruH1/m5IdqoxYyk8pO45Pqnv67YC9AmMqseUc/VPYIsQ==
X-Gm-Message-State: AOJu0YxNh43RdmEq48cnIOl9IPZ1jPAlkAPbl3OTicfMxxOfKkSSp3uj
	Ffnpkz6PnACtvMhtleQIZ6ytPXQsGtjg0MRBUld3Gb/k+Zx8wbYIPIbko8dxwA==
X-Google-Smtp-Source: AGHT+IGDqe+3EUcAreiXyt9Qnv6KoLaGftjNkz08Y2Ium1Q4hAkVCIpw2uQMNCaRjKkz1QhQFpj8/g==
X-Received: by 2002:a17:903:33cf:b0:1f2:fee2:82ea with SMTP id d9443c01a7336-1fa09ffb017mr842335ad.11.1719014712177;
        Fri, 21 Jun 2024 17:05:12 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-706512ad7b5sm1982244b3a.165.2024.06.21.17.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:05:11 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:05:08 -0700
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
Subject: Re: [PATCH v3 3/6] phy: exynos5-usbdrd: convert core clocks to
 clk_bulk
Message-ID: <ZnYVNLkAmUGU6ZVN@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-3-b66de9ae7424@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240617-usb-phy-gs101-v3-3-b66de9ae7424@linaro.org>

On 06/17/2024, André Draszik wrote:
> Using the clk_bulk APIs, the clock handling for the core clocks becomes
> much simpler. No need to check any flags whether or not certain clocks
> exist or not. Further, we can drop the various handles to the
> individual clocks in the driver data and instead simply treat them all
> as one thing.
> 
> So far, this driver assumes that all platforms have a clock "ref". It
> also assumes that the clocks "phy_pipe", "phy_utmi", and "itp" exist if
> the platform data "has_common_clk_gate" is set to true. It then goes
> and individually tries to acquire and enable and disable all the
> individual clocks one by one. Rather than relying on these implicit
> clocks and open-coding the clock handling, we can just explicitly spell
> out the clock names in the different device data and use that
> information to populate clk_bulk_data, allowing us to use the clk_bulk
> APIs for managing the clocks.
> 
> As a side-effect, this change highlighted the fact that
> exynos5_usbdrd_phy_power_on() forgot to check the result of the clock
> enable calls. Using the clk_bulk APIs, the compiler now warns when
> return values are not checked - therefore add the necessary check
> instead of silently ignoring failures and continuing as if all is OK
> when it isn't.
> 
> For consistency, also change a related dev_err() to dev_err_probe() in
> exynos5_usbdrd_phy_clk_handle() to get consistent error message
> formatting.
> 
> Finally, exynos5_usbdrd_phy_clk_handle() prints an error message in all
> cases as necessary (except for -ENOMEM). There is no need to print
> another message in its caller (the probe() function), and printing
> errors during OOM conditions is usually discouraged. Drop the
> duplicated message in exynos5_usbdrd_phy_probe().
> 
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

[...]

Thanks,
Will

