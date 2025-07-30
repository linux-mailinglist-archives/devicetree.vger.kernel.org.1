Return-Path: <devicetree+bounces-200866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3C4B1663E
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 20:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2CBD1AA74B9
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 18:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB8782E174C;
	Wed, 30 Jul 2025 18:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OUHEnhZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BE12E1737
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 18:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753900205; cv=none; b=uxqLX5TBBBJY77rB1oNbH2Qa5Lf4yE9XkvQksbhtdepgP8pC+huuv+l/KgyiDPwrUDYTR4oGOFB2uwPmT3efhbs/J6keGplwZm1aNH9AJOnKVpGbn/ldgP4DH0AQnCvybS/mhLfEBb0Gt3SIPU/RIY/26y986HLnIR8cNXLumMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753900205; c=relaxed/simple;
	bh=+IlnsvCqZpWI1irANdU7vC/52xTZuuB1B7d87Am81c4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OOgjclZauDJwdbvAyIT5OnxWjBo3gYEupC+VdK5oonOjuPiggh++HvYspVXxShqXfDRf+bfmClscnfZTwP8uKKqqLDcpGbOc3OlHnrhR1NVb/1HIflSe066bp1BTL5gcW8RnjejrHnfeG5SMuYBLXA3JoU1n9TlmPx0t9eWRmNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OUHEnhZN; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-61543b05b7cso1826a12.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753900202; x=1754505002; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7NIbM6q1x218b7Li1UvxruEIMKkwKF1Zyv43mPS1uqY=;
        b=OUHEnhZN94w5azEkzVDqwNxQbrmR0zEibAM/XasVXnXVjGL0j7E7BmSRNc+bAz7S4Q
         53OPHMTJ8fiBPfeF/8akZnLWWqMP0oSwW/rPr6lwyix61oSq2QbHVphJihJovHmqTBDy
         SLaEN/tShBtJW/9eexd+z/Ov+KVtC7ty5Btf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753900202; x=1754505002;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7NIbM6q1x218b7Li1UvxruEIMKkwKF1Zyv43mPS1uqY=;
        b=C3cCr+seezWct2Y8jSfqO3csCQ+/golUBdisA3iGBqX+Fh6O/1vvqXABSv4tiitxsb
         6zeQMNbY98Abi8mwm4T9IgLyCqOch/cnTgyrS8wrsm6l8uwvmFAsmxxOIIML5p40slWx
         7/tvekYOlWwFf0ZF7vsz+Z8qIiy/gqK20seHnhWqmYf7paqYfvYBjHL+DKNEGN2BxQHt
         EHa8lQmRAjhpSawLXCPxX1ck3y6Zibf66pODqs/6tay4cvG6SiJuh4ZSmj4NEdJm9rga
         rTAYcAXMTvZcyt+j7bTSMIjVsXz3QrpO/SEYzXnWWpO+5YYxS73nPHYAw40BIwOfwN4c
         xQsA==
X-Forwarded-Encrypted: i=1; AJvYcCUPIpuNKl9b9x6uglSdRjymAYVv3mab18EpeURuLVibb1bT5IdTDINMvgCBkap+nI4smtCs/Q5Wn2tT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6ebC4aLoOpYKDbv186MxFRLlZtcZYwtlfElRTyaeewmLHWyvD
	xStPMDsmOn57lfT7QyZ8D28pM0uagNwD94qghUAZykd6raoZLQ+99x4CqC2TYQK1OBLRCMzo+jH
	a2dgD/Da/j0ma9ztwu8yxFm7kCZMb3WgAHILIaGtQ
X-Gm-Gg: ASbGncsVgKE2N+jA3z/arBPB3hyEBA1CoIoQRPZYF9pI2IjcGaPmp/tLilZ8u84q0zq
	nLn5YDvoEOQxwT6wV1cZPWAilaIRHFsCr3umNFOtgkFNeRlL2GXymh+kqUeJXFHouwd4aWRU8zv
	b6P4bX3QdcCycLs0C/R2dKU3F/e+yA9T0K2+YnhwkqHeeV/kD9tL8kT0jZQ5k0Ve5xkwGDO8NQU
	IvgBWo=
X-Google-Smtp-Source: AGHT+IFbbK/ul5EAl+qpurW8QCD6MUFcOByL7/YGvDuMq5A8bS06QIOt2f3QRAN6xuePrLmBIsEPhHn7xYqFra8YQrM=
X-Received: by 2002:a05:6402:d50:b0:607:d206:7657 with SMTP id
 4fb4d7f45d1cf-615a5f03c3amr15582a12.2.1753900202156; Wed, 30 Jul 2025
 11:30:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250728-ddrperfm-upstream-v5-0-03f1be8ad396@foss.st.com> <20250728-ddrperfm-upstream-v5-6-03f1be8ad396@foss.st.com>
In-Reply-To: <20250728-ddrperfm-upstream-v5-6-03f1be8ad396@foss.st.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 30 Jul 2025 11:29:49 -0700
X-Gm-Features: Ac12FXzJRbNK4O4rQzoS61E9llbPlM-a0El1zXFqw746Wesi6zAN_YlMACvZJkI
Message-ID: <CAODwPW8ZXfMdFL2=6ht+BvQq5_LQkwHhQJT5j9DcseEx9naXxg@mail.gmail.com>
Subject: Re: [PATCH v5 06/20] dt-bindings: memory: introduce DDR4
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Cc: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, 
	Gatien Chevallier <gatien.chevallier@foss.st.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Gabriel Fernandez <gabriel.fernandez@foss.st.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Le Goffic <legoffic.clement@gmail.com>, 
	Julius Werner <jwerner@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> +title: DDR3 SDRAM compliant to JEDEC JESD79-4D

Should this say DDR4?

> +examples:
> +  - |
> +    ddr {
> +        compatible = "ddr4-ff,f", "jedec,ddr4";

This is not a valid example for the way you're defining it now anymore.

