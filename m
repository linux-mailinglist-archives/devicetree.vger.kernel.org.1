Return-Path: <devicetree+bounces-78675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 166F4913118
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 02:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C027728152B
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 00:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25315387;
	Sat, 22 Jun 2024 00:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jzgBglPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA8F37C
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 00:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719014871; cv=none; b=q9cS2KJ5NRUVt94cyjQvI6F7HJZWH9U0utgO3fU+VcJl9wj0sdHhiJ1I735t4HFpuciJpbkD8nN+n41OB3EEPTbpCU+DfrhI1s5nLIE3FC3xwyBBXPHWJI0sUi/Vnp57wrJBxqsvSEnmzvIVoqeR1iZ2WK4yaglJXKcrEIIEqFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719014871; c=relaxed/simple;
	bh=DyHbBj9ueXncHw3F9NWgAosV2bXx6WUyn8kWbVonih4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HsfLmNgH3f5588uZRrPlyTgIkcktj5eHpZPMVnZ5PjpfhJJ0czmQoasdQk/cMuzy2mmXu14k4KivZpn/T8rnEQSXe0hilAMS0kiJZ31bhdHKdsbV0KVIp/QBN5/tSawYYatc+pS/gAMdb+SaSi9kQ0Q809BUNeM1Ft0boATQ8nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jzgBglPf; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1ee5f3123d8so260805ad.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 17:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014869; x=1719619669; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AVh4f6aDFggCQxeACj/Y+2csLoIHzjIutTBKzrEmvec=;
        b=jzgBglPfRRMWSuoRkGuxX+taWSsFfKXre0Oz0ZzBkrs4Zv3OpUEG5hyTWf3nsLfWRA
         pVoWQoOfs1Yw3p4nZvvnuJIYiSHPjg91yxWQ5+efFGGF35uOs3KDFpaPVaZ8YoWcK86x
         LK5V+VAsw2yzYCgPiD73ZdSm7nQNZqojEs6LEXbjFuA5NAa9EUoBvDhH+63cg+gME4yM
         0FsrzpKSEHtFy7+NkLyiH2CU5i+XLrCvnK+B0RRioN6HDN6DjsVmFKjUqlmY9mPu5cmx
         MQf7D1I9ABEWr+sRP1yXSjhA9GhbHlZMa73ogQyRHRYOgaPJxPFV0f7vNR04HtvJxkPO
         0N3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014869; x=1719619669;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AVh4f6aDFggCQxeACj/Y+2csLoIHzjIutTBKzrEmvec=;
        b=wVfYVObe0Y7VUsiRqGxT5At6wWMOsf0N+OuGtAXj3kthUqLZODaoxb91F1rA9Jj6Nj
         dDAPlMhmaORNRPHvKV3N4FiWhGienRlxM38pR+BXM8Mqp9lt+yCc8dCIGfGgruOrJYxr
         CuG/EbItulxnbm+Tt+2RtOmP9WJ5fh7jc/RqUrjHhRNyQ+vV80IMhkkGoQdlzbOyH76K
         6zvXmp4GCm1yDRxx7JQPnsb/ABd61XaA946RqNMGqHV0IddCBbn/DoxTg2CC+wvONx73
         +CwEPPrXLVz+EiVGVw3Q9ch/WgupbdAAG+hVH9a4ksde5tlkCtsMXRPNTovP2ghpb/eF
         kipg==
X-Forwarded-Encrypted: i=1; AJvYcCXbNPMnUjOjEkGGnrOxa97E+lNIVQnKCK868iId9wgyGTfTAcuEHk6eP0uagHlZMujs3STG+4eXx2xNpjYdQMdETJ8VlosEdvExuw==
X-Gm-Message-State: AOJu0Yxw1lYbbM/0eUX5QvCHtmXwQ+wLXytxzY5ids4nksb9Wdw+9Jzy
	jl3YX8MlCrO95p2hFSttXQPay+07pfRwUWwYDT4YJ5EWr8D0Wz4S6w3XCYnDas3c23polja1c+f
	Mpgz7
X-Google-Smtp-Source: AGHT+IFZzkoPglStXTsiSGxKm5UGD1YXcN6j2iZrwpJmR5uQr6OjhCrwqZMmcCE7BXkKaphhRz+WDw==
X-Received: by 2002:a17:902:a989:b0:1f4:7db0:afbd with SMTP id d9443c01a7336-1fa0a2319bdmr811465ad.28.1719014868736;
        Fri, 21 Jun 2024 17:07:48 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065124dd1bsm1989696b3a.108.2024.06.21.17.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:07:48 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:07:44 -0700
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
Subject: Re: [PATCH v3 6/6] phy: exynos5-usbdrd: support Exynos USBDRD 3.1
 combo phy (HS & SS)
Message-ID: <ZnYV0MfjLyyI5uqQ@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240617-usb-phy-gs101-v3-6-b66de9ae7424@linaro.org>

On 06/17/2024, Andr� Draszik wrote:
> Add support for the Exynos USB 3.1 DRD combo phy, as found in Exynos 9
> SoCs like Google GS101. It supports USB SS, HS and DisplayPort.
> 
> In terms of UTMI+, this is very similar to the existing Exynos850
> support in this driver. The difference is that this combo phy supports
> both UTMI+ (HS) and PIPE3 (SS). It also supports DP alt mode.
> 
> The number of ports for UTMI+ and PIPE3 can be determined using the
> LINKPORT register (which also exists on Exynos E850).
> 
> For SuperSpeed (SS) a new SS phy is in use and its PIPE3 interface is
> new compared to Exynos E850, and also very different from the existing
> support for older Exynos SoCs in this driver.
> 
> The SS phy needs a bit more configuration work and register tuning for
> signal quality to work reliably, presumably due to the higher
> frequency, e.g. to account for different board layouts. Additionally,
> power needs to be enabled before writing to the SS phy registers.
> 
> This commit adds the necessary changes for USB HS and SS to work.
> DisplayPort is out of scope in this commit.
> 
> Notes:
> * For the register tuning, exynos5_usbdrd_apply_phy_tunes() has been
>   added with the appropriate data structures to support tuning at
>   various stages during initialisation. Since these are hardware
>   specific, the platform data is supposed to be populated accordingly.
>   The implementation is loosely modelled after the Samsung UFS PHY
>   driver.
> 
>   There is one tuning state for UTMI+, PTS_UTMI_POSTINIT, to execute
>   after init and generally intended for HS signal tuning, as done in
>   this commit.
> 
>   PTS_PIPE3_PREINIT PTS_PIPE3_INIT PTS_PIPE3_POSTINIT
>   PTS_PIPE3_POSTLOCK are tuning states for PIPE3. In the downstream
>   driver, preinit differs by Exynos SoC, and postinit and postlock
>   are different per board. The latter haven't been implemented for
>   gs101 here, because downstream doesn't use them on gs101 either.
> 
> * Signal lock acquisition for SS depends on the orientation of the
>   USB-C plug. Since there currently is no infrastructure to chain
>   connector events to both the USB DWC3 driver and this phy driver, a
>   work-around has been added in
>   exynos5_usbdrd_usbdp_g2_v4_pma_check_cdr_lock() to check both
>   registers if it failed in one of the orientations.
> 
> * Equally, we can only establish SS speed in one of the connector
>   orientations due to programming differences when selecting the lane
>   mux in exynos5_usbdrd_usbdp_g2_v4_pma_lane_mux_sel(), which really
>   needs to be dynamic, based on the orientation of the connector.
> 
> * As is, we can establish a HS link using any cable, and an SS link in
>   one orientation of the plug, falling back to HS if the orientation is
>   reversed to the expectation.
> 
> Signed-off-by: Andr� Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

[...]

Thanks,
Will

