Return-Path: <devicetree+bounces-211725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E97E8B40573
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 15:53:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8844E560C75
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 13:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787553101A8;
	Tue,  2 Sep 2025 13:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="XoNBxnOh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4C9306486
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 13:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756820664; cv=none; b=akbhRTl0ObiB4/DT2L/KOB/7/0c8Wq8IzgAWmju0af75M+9xehktxjagYLrcDJ+I+P3RBLi33kJ4eiw4cr7WGyi9uXtE/rTEeJEeYW8Mgek/0y6rj70QvhQjYZzMULZ79jPffYYKFJEQu75xdVCqCL66mWM8nUx8sshHzjfTORU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756820664; c=relaxed/simple;
	bh=dE+y6IouNTFh5LnCQS36Be2cwV132cRumEEcY15HKHQ=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lw3Rt/2tDzA5Ze8PJIlRJaA9B4kwt+qJHzP1jzVNjDV32Ir6Ay8jLRSfV+3A5FWlmJ6jNvkHchyskE8abY9peAmfyvezENEBNiUmxX+0fu2P5y0Lpt1GAbQc2x3YD5iIJteDYopzGzWUWiRH8ciKoLwfjMplRYSTHN64tgS4V20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=XoNBxnOh; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55f68d7a98aso3745325e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 06:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756820661; x=1757425461; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=dE+y6IouNTFh5LnCQS36Be2cwV132cRumEEcY15HKHQ=;
        b=XoNBxnOh8QrOpBpvNFCZS+DMsi0beVbxQ24S0qadfabSE/2Wu7lACXOkros0dW75xY
         OTSCUMZNnyhRpryJOtNu/bamDG0jLlF9kFpaAKIFfyOm+MomKGfZv+dxi8OD8DE6ePF7
         dw2UesR2gKKRb70oEB+17vQ9kUFXe4tB/3uCCv40IlV1SWVuuu7pX/qY6yIJR94Y0KVc
         s8w0qJDHeLD4N/y4OaT94i0RsFe5Iqo5DnF8wko7lA+Dky26F/jPVmCDsUBNqDgeASVM
         mfbbuetiLu/vGneoL0T2/5Z/s15QmDfAuBocpES63U2RU4tWoONt9bJOMAnN4BMgqh6Z
         z4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756820661; x=1757425461;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dE+y6IouNTFh5LnCQS36Be2cwV132cRumEEcY15HKHQ=;
        b=MokQhRPe70XIfuSIa+e8A3GBW5Dq2++LjWv1hHYXqqFn4SvthDC0V2ZNVAKPHHp7Ww
         lM7NTQGy+zs7j6WYdUtcMUR86xLe72d9CFUIL7GTGSZKPGSOhbrPFioONaSmAJNYCq34
         QVtb94SAnJ1y6Yk6QvVR2H4UwkbsOn9u7HlSNCVYY8E9uVTCSl+xOJJLMt9vX+ak/7Ht
         y50IlxGqAdvRCsQzlHXqbx1m6AN6J7k6LkGsRcXCsnPszSFN/WarlVImDGTTc/Ml0Yzv
         xQX1rbHgRMvtKSGI1phj528VP22+kCUhHTuHUiQq0XlQJkalirua/PPyW40KYwrRQ39B
         0/aQ==
X-Forwarded-Encrypted: i=1; AJvYcCXC7MU0ic76tW7HnICI7siFsFvGWv73a0jewSpif9Ic/D5fLDUcv0/DWAoqurLHEl7eLoqci2u+zajp@vger.kernel.org
X-Gm-Message-State: AOJu0YwU12wO6GaTMuqJE73kMDytEeGPm+IugEpbIUb59P9OprU0h7cC
	1Mzlo03jpTCrJ3te/5uO2p39scdT76jOnp/qmF/Obd2mNLJ5OOLoWaVemkKcPaqQajpa8SK3y6j
	tjo+mFdzEk2kvDlo5A3eiKsTpQmRg0enjVWXD8HE0Yg==
X-Gm-Gg: ASbGncsKoJhRHUoP30/AEMr8NmnUmR4/hvg8jBQILmtUuyjaKj5Ir5LBeRwDnD2c2cg
	fEEUVbLtwkOUXpn6y2/GIcwVGsLh6nfMBKkjfcKeJ6zmTfiyOmj2VnSEF1GuEtH5n4rzMcXBDEL
	XqGdD3CpgL1xEBadZfjgZREc+Qr4ijYxrTDapFfA4drL0KgT8uZpKU4K/2hkmtMbDtgR0Nv/Ci3
	RBL2+dunWDt3Hzr3C7ZyxnL3jydxiXfd4HZMLs=
X-Google-Smtp-Source: AGHT+IFjWoO0id3PcP1NXpHfcbubOLclGZa+2gjsa6UEJt7qXSImOMZixhyJgYfyt1Hb98CHs/tfLZNBHaEkOWQql88=
X-Received: by 2002:a05:6512:3d10:b0:55f:4bf6:eff1 with SMTP id
 2adb3069b0e04-55f709482f9mr3675040e87.39.1756820659308; Tue, 02 Sep 2025
 06:44:19 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 2 Sep 2025 09:44:17 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 2 Sep 2025 09:44:17 -0400
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <c5788504a473625faeb9f99b08d3bca5e7135120.1756727747.git.christophe.leroy@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756727747.git.christophe.leroy@csgroup.eu> <c5788504a473625faeb9f99b08d3bca5e7135120.1756727747.git.christophe.leroy@csgroup.eu>
Date: Tue, 2 Sep 2025 09:44:17 -0400
X-Gm-Features: Ac12FXy_COZhtMDYkikD9QbVVClX9tOwpv2fAavRIrHRKcbOHQym28lIfpzYJKk
Message-ID: <CAMRc=MfwNr+B-gxkN4ApGX5-k-0=aH=03Aw==WHVSYydy+iHkg@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] soc: fsl: qe: Drop legacy-of-mm-gpiochip.h header
 from GPIO driver
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Qiang Zhao <qiang.zhao@nxp.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 1 Sep 2025 14:05:10 +0200, Christophe Leroy
<christophe.leroy@csgroup.eu> said:
> Remove legacy-of-mm-gpiochip.h header file. The above mentioned
> file provides an OF API that's deprecated. There is no agnostic
> alternatives to it and we have to open code the logic which was
> hidden behind of_mm_gpiochip_add_data(). Note, most of the GPIO
> drivers are using their own labeling schemas and resource retrieval
> that only a few may gain of the code deduplication, so whenever
> alternative is appear we can move drivers again to use that one.
>
> As a side effect this change fixes a potential memory leak on
> an error path, if of_mm_gpiochip_add_data() fails.
>
> [Text copied from commit 34064c8267a6 ("powerpc/8xx: Drop
> legacy-of-mm-gpiochip.h header")]
>
> Suggested-by: Bartosz Golaszewski <brgl@bgdev.pl>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

