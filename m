Return-Path: <devicetree+bounces-134126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C35439FCC70
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 18:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 673EB1622A2
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 17:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576C512F375;
	Thu, 26 Dec 2024 17:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nUI/H2sb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA59182CD
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 17:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735234266; cv=none; b=iQwJbSweEWI2Fb3U5sKXvzKPoQ+sXjw4OlxozBIlrN/UunmmgQrkaoP0131J3cfViMKfFV7SiG1FN3aN504S9O5e9lFB/5okTvJJQpXe+4mMdET8BaAnM1mjSdgH+lFOnQKWK6HBZJKMbadZisj0yMJULGaoj3eqFhbSNR891JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735234266; c=relaxed/simple;
	bh=MQT//z2Wu44VlEXRV4yVNgPQ7JEgbiqZDnefWFzQiDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tvuYbDIdtLy8s8Fo1m78p8uCGQMngZUEL1wsmy5MsDBwU6Xyzf8sjQH9/bgJqF/btH5MHHkdq9rln38yETqukQaBFZn8w71gMKk48gjHakopZAEoB9iDSj24cS6QvHy+iclsDXZu+coBxSFb3Z7egof/ivQduM/TZEClZVLt/II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nUI/H2sb; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-216426b0865so75304675ad.0
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 09:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234264; x=1735839064; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xcUZWE3ppguCfT0Ghk6RY8lNJANWnC8EbI6p5AXiKeg=;
        b=nUI/H2sb1ht/SUn0+I+AZmHp+JXhR5+i8btbVjpEhjmuGrFVeKTRn4pnByQaQw9YfL
         Zms0hbpmMoJclnOZzWBUej3iQ7w3HafJu0ftx7e5Zz2XRBb0oaVp0yTUTkyrD0nYrB7f
         YDo0oWN66TftFRQwIZPrrWhouvkqleCol5csBA5dm9TnxtuuQLK5q0sDRJAOHFgOrFvW
         FE5iQ+/wcS7lgS9PtY3FIQq4/JzNM/h0KPFWI8VdRK2Wefo8C6dPVW3r2pWpgZa+TO5y
         RyhlZ9kkMHu2s0zmnscsKNRcTBjLUdyATnhZsGI/xbfZrq1T6hew4pvEi364mDUd9ksj
         bB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234264; x=1735839064;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xcUZWE3ppguCfT0Ghk6RY8lNJANWnC8EbI6p5AXiKeg=;
        b=SuyuETsf/0vrB0zYa4V3yHc6ipo4HmnvzK/a224qXgkwQu2d48poqEsGPm2ilF/w2j
         UBse9G2XOPgcz1QwQIWtZ6DTJ6yvuT5+AdpGY8rQJ651k4eD9BAshvVSH71GeNd4h4uc
         IOkDM3ceMOtegXMx6LpxFYw37yxViPzMA+BTOkP4EOXYeQALKyaD3dbo5tkhB49V+OIF
         StcFJ6uyyGfskiluf5MI0tJYdWCC6vkZo7mCTiNL+b7fEmCFO0MAWkfv3IoeJQr5RIM9
         TDW1XKnCgFI/z/Igdl4txvbcCdzkW5bBbW2OdXusy2cR7eE7XBSgRTrDwu+iyUuLOvwE
         yxvg==
X-Forwarded-Encrypted: i=1; AJvYcCXDxV2jrZELmyV6B6ixTADYAmt5Url28/gnACcomdZ/F2ijyWKabykoJmCM/qC3mhC4V4xcwzFuFRut@vger.kernel.org
X-Gm-Message-State: AOJu0YwlGUCQf7tU8/8G3dVqqn+6DOH+Dy2VrxB7lg3zc6MD6NzsuRXp
	yycgm5g60FqZAdgtUgi0pzeJNRq0wPvEyJKlwfjR3FXdrNz/0gJeKA18Z5wkOvjSP6PCoXoXB0j
	yTw==
X-Gm-Gg: ASbGncvW8djN2LZKPKfVUSxdKUMpT1K4Pn4wHuxtTqagKwaTU+ND6Jl0Nw/Rilhlzvc
	8+yOe9/djmse0n5DWEZcFZod89gQyFy//TkeqkABAKUHw0MKyostnYobcpUyIKi6I6NNXSkVKFm
	YtPeu/s9kOFBjHly/gFqdbu3ebOoF9caT9XhyGsAYzlxOzDo63aPBZhxqUOAkSEoZGSVGIiXYZV
	AeNZYpPx09GDSRy2cIvpnxwJAnc9ITsLvZn4DJybLu+Izb5y6ksPYUMn2uEuKHkubpR8MA92feK
	NiTl/bo8JQhaKVTDgh4dXHsK
X-Google-Smtp-Source: AGHT+IHAfn46MsITOFrPVZJ4vXZEH6EHEc/IQOmoCmQiapMunnWTNeZzpppaV467WwIqrvzfz6A1dA==
X-Received: by 2002:a05:6a00:414a:b0:725:96b1:d217 with SMTP id d2e1a72fcca58-72abdd7e0e5mr28935333b3a.9.1735234264082;
        Thu, 26 Dec 2024 09:31:04 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dbbf6sm13136269b3a.111.2024.12.26.09.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:31:03 -0800 (PST)
Date: Thu, 26 Dec 2024 09:31:00 -0800
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4 4/7] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
Message-ID: <Z22S1PPAQ4NKdrrY@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-4-f5961268b149@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-4-f5961268b149@linaro.org>

On 12/06/2024, André Draszik wrote:
> This code's intention is to configure lane0 and lane2 tunings, but for
> lane2 there is a typo and it ends up tuning something else.
> 
> Fix the typo, as it doesn't appear to make sense to apply different
> tunings for lane0 vs lane2.
> 
> The same typo appears to exist in the bootloader, hence we restore the
> original value in the typo'd registers as well. This can be removed
> once / if the bootloader is updated.
> 
> Note that this is incorrect in the downstream driver as well - the
> values had been copied from there.
> 
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Tested-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

Verified on my Pixel 6 Pro.

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

<snip>

