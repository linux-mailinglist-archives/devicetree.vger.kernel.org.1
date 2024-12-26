Return-Path: <devicetree+bounces-134129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DAE9FCC79
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 18:34:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99F2E162EB1
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 17:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C580142E7C;
	Thu, 26 Dec 2024 17:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rPYTwTLr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D296982D66
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 17:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735234460; cv=none; b=Fvq5YjmAuUCWxAvV9Gk/aBg39BhstsSgGm3ADQPUohRBa8GsnVlM3+g+UbIqWDFbU3lFU4VFNnPnnseU18j1lgfxtWOJ81TiQNSDTs5ut4W6jFj0bnSY7rmTwBayGBXw7DAauRjhDr+sK4ybTcQIATcjR/mOtr55evlYLZhWoFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735234460; c=relaxed/simple;
	bh=AMjPKQDZOGacb5Qu4MGAGPFWMyLkIElN8jRxwuWk12c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DnmLN2JWDNoav0Dm8eJ4ZTucnM4Tuu0/dZAmr2XAjZWSVQDntsWCO+7pN5NF9B23BiJrelTJAl4lDc3TsiUFNN3bZr5U7hkjDCtZf2RWCVN8imckb2l1bKldP7Cysjxtrq45Hb3F7zCXkjdsAJ8trQ+ZA1YW6lUzArkPqwrNqiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rPYTwTLr; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2ef6c56032eso5702521a91.2
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 09:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1735234458; x=1735839258; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UpfjO3nCfSKSU/F6ZQHVcOz1mCD2+D/yZzyTSXWn/XA=;
        b=rPYTwTLrrjFiiNdJgC8ViSAhN7XFKB405/sdbcQ//iUm216aqOogFFPTM1qcWQfKwd
         K7b6b5Akwd3dNQQrhspwhfZyUHYPjCd6X+zrnSmmtWpb+OK1MO/Dxzzk00eRrWwZI+Mp
         sSFeoZDC1178AheuI3R2uNiGUPIsUPJ9BtGV6osfNsGnbwt/zRwwoiSL1BESC3lFA26D
         SQ16EshbigzzVrQpD80MpZVp/hhXigbuJSMG7kofyYU8vDuj3U6lm4hWALI/4xl0mZ19
         hShGNySZ5PoC3oGnuR+5IajdvTbX6LgmENor7O5ryWOp47YOS+B3f9/1k7W12XeqK492
         aB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234458; x=1735839258;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UpfjO3nCfSKSU/F6ZQHVcOz1mCD2+D/yZzyTSXWn/XA=;
        b=PTJ7s5WgA9jk/AEpH0qzaxOFRsgg2eF5Z0JDICfQsC3Xntyx44AXIl2jlIOpXNtVWJ
         RTc+DY5SbUT86jzICiyZgTMiwOjWlegzBHuSDgNR+Mch87pmZGUQyNU4TM51T4nmXkqf
         8flSOQGlV3FSN0Dedf6oRIaKITv9ZCpeQID8szJ7wFLbJN0EGcaCUwEXZw7qtYZjI8+n
         AfnaEpIkgBRzdj9loCJu8kdWoTlYJWlmxSD6Bb7QliWNjBkHsX9z8cn1qSypfHY86qmI
         ccXdG5XfBflLP6PT4CRt6bwJWcsGrB0om4VxOiTOM55sDfDCCiFiKqRJXSw46XjGZi4q
         PJ+g==
X-Forwarded-Encrypted: i=1; AJvYcCULArreKYUjem1RABsLJwyn68JwysyMPOqaNOJFz6R5miquKhmUhxB3I7YbDh84/rKRvStUohEmiYZX@vger.kernel.org
X-Gm-Message-State: AOJu0YyqWk/IT0oZXLZUIJq7EATRg0bb0ZdbneQPxOjNqR5CW+Nk876F
	h0Ads+c7DLU4tZgNCuQob+JYPsJ8PeItRHFC248xZuegjnSBCUFxYGcIoBA0EA==
X-Gm-Gg: ASbGnctKkBBiUpdJdnK+TSLMEEiYVm8uJRBfnQoC6s6bGtN7s5bMe78RbOXG6KSXpuW
	UqQ4m4zjYBowxsz0kFWuOgCFpSM8Ruvqbb+oc9RRLkGZIZ/iWEly3Xou3Aj48I82ElhpPwPE9BH
	nfEuSN8zIHk4rcVI7cN0ig0wlKBrWqH5bUAAXwb9Edn6iYdAFhgZM04p7T4T5DFs1enfe5cQ9qA
	s0DZ4AEsjl+LQpNcAiOymFZn5y7pL08fLGm4jfljiqn0X4kj8fxYP74A9KtCTfKz8+jCZXbskW2
	IsXkFlREk4WBIcBZs2Rp/BgL
X-Google-Smtp-Source: AGHT+IEXR2tW0UBVoELj4Ujtb5xezOwJU19NdsTJFIlGuhV4cKpQboh3iQ1wj0Q6nDV1+6ZatyEKfA==
X-Received: by 2002:a17:90a:c2c8:b0:2ee:b2be:f390 with SMTP id 98e67ed59e1d1-2f452ec3780mr32597910a91.28.1735234457983;
        Thu, 26 Dec 2024 09:34:17 -0800 (PST)
Received: from google.com (123.65.230.35.bc.googleusercontent.com. [35.230.65.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4477c8542sm14223370a91.17.2024.12.26.09.34.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:34:17 -0800 (PST)
Date: Thu, 26 Dec 2024 09:34:14 -0800
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
Subject: Re: [PATCH v4 7/7] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
Message-ID: <Z22TljXrbBNazNwW@google.com>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
 <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>

On 12/06/2024, André Draszik wrote:
> To make USB runtime suspend work when a UDC has been bound, the phy
> needs to inform the USBDRD controller (DWC3) that Vbus and bvalid are
> gone, so that it can in turn raise the respective gadget interrupt with
> event == DWC3_DEVICE_EVENT_DISCONNECT, which will cause the USB stack
> to clean up, allowing DWC3 to enter runtime suspend.
> 
> On e850 and gs101 this isn't working, as the respective signals are not
> directly connected, and instead this driver uses override bits in the
> PHY IP to set those signals. It currently forcefully sets them to 'on',
> so the above mentioned interrupt will not be raised, preventing runtime
> suspend.
> 
> To detect that state, update this driver to act on the TCPC's
> orientation signal - when orientation == NONE, Vbus is gone and we can
> clear the respective bits. Similarly, for other orientation values we
> re-enable them.
> 
> This makes runtime suspend work on platforms with a TCPC (like Pixel6),
> while keeping compatibility with platforms without (e850-96).
> 
> With runtime suspend working, USB-C cable orientation detection now
> also fully works on such platforms, and the link comes up as Superspeed
> as expected irrespective of the cable orientation and whether UDC /
> gadget are configured and active.
> 
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

Verified on my Pixel 6 Pro.

Tested-by: Will McVicker <willmcvicker@google.com>

Thanks,
Will

<snip>

