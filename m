Return-Path: <devicetree+bounces-190475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E89AEBD5E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 18:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CF9E563BEA
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1C12EA73A;
	Fri, 27 Jun 2025 16:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XzXmYOkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B4A02E9EB5
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041699; cv=none; b=h51fMbLvxhn1or3mgrHA/ZlVGu9sS/n9PmLMWb053xnHl6YHnoZkCJC094X2kWI/e2ogbVJKuUMpcdcO3UAgPBgbWa9LM7cor5Xdkv1336gCrtyxQx1PLF9snkK7pkKI9x/7iQzzQ3Nnq6kQzXMw7P9AzncNIJl5m1UWBdNKBrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041699; c=relaxed/simple;
	bh=9FA9bMKxVeb5yQVsUVm+jp/IZZQX6CQBPJL+CqLfVAg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m3nhcWETQIrbNJDL9kFfjoqhQ0/qTiBRbEQ28zb7Q8QyxPlijnhTF+bwuN4QmW01W0WEFHZ+7KTZzGEj7dz6wm4q+KmkgpmJFa8CKqZsYfARJeh7BUFvhoSWhKDgQcvXeFMa+49Q9EVN3lQD/OqAoM+NoY/6Bla7Azy00EgtlEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XzXmYOkR; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-40a8013d961so773747b6e.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 09:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751041696; x=1751646496; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9FA9bMKxVeb5yQVsUVm+jp/IZZQX6CQBPJL+CqLfVAg=;
        b=XzXmYOkRJ409bBDin9CGpXNXJ/Rguok2syKgwL0r1XCkF0tzEEAz2jX1AHHcuDIi+d
         LeXiRWftzPsqNigFV4oEP5JWkqyiPK/Xro0o8uGqA3/2fegb9dqc+Uq2T/ESbE9o9brF
         lU8UPeuPu2nT4u1TkGszLmuGqV7KQea/xJW9wsJ3EXTLWGAFpBpIBEJY/fSAzlZR1Elu
         uUdpjsfI/OMYt0WpiPt19Zm/qlGGPLAU/t880gHT7dwScVPk4XbS3gR7dRib6frY6iWU
         X6P5sLE3lnjW39LkE+u/EQ6jtfZ0Rr6LevvTbeAZ4+Tw/CtYd9jIJhKOmdMQiMavDOlE
         NRJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751041696; x=1751646496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FA9bMKxVeb5yQVsUVm+jp/IZZQX6CQBPJL+CqLfVAg=;
        b=Ul5HEliy/hJ5Ilu+PLHfeXJM9/Bce/BtlnuxIvM+RuxO+j+2qGz3KVpRTjvyjbOzg6
         EPSHTbcctRtqTqFd261WhSUOruNa1AXFAbG56/9ZzYfTbG+jOdxh6VAU09YMX5D4wLvA
         fyPsbBalY+XK9C25OXfQlFgMY3NwXLgpUq+HnQddC4/oHZKnudxDtvKvO7MFjfoc5COC
         gXIFAjVGVH+2BvE0DujhIa7tytaNPqDv3fK4p1MwSSE346apyC9cDJ7kj1wpLTAKA3Ov
         Xjwst0rKOiZm1JN6yS2WF8fl4nOLppJHdCJj9PqeqOztM0UxU7sR6b0JH3I1cvZsv+8/
         KRVA==
X-Forwarded-Encrypted: i=1; AJvYcCXLuxUccPMciW9HdbrPhzxj0uc3sg6TnKentiCVW5feUuD3lvshUQQA0qoR1x7iVXOSmO4o6HtPwGrq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8IWvdArs+mmANi5nVXkdGICVTPa44o2XWffmt1F3r0DDBJHmR
	b4eYl7sHjAzQFOHql9/utfJwXmbS/GV3EikQuW5tE07inXx4y+scbkc+lXK+C6BiMx0HqabFW2R
	thInmdjg8S3GwTvneOhb93HmjM1B2AAFZImtsOrBL3UM9FSU0JURL
X-Gm-Gg: ASbGncsFSZtpN8fFMZCIaqNmdmdW4UZoyYES/TP6RQFQKVOAt1JJW+dlUsGx0Pgtz87
	9a+KiuuCUUxdGX+t8oLrlU0XU2s9Ah5mCjNHJDfcEo4AB838E+CYoTDHQwe8bS3eDqPGCzNLxyF
	FNWolgiYq+Cu8xvtisZGyloYg7JytmM1b6QAH7HrwBMQbn
X-Google-Smtp-Source: AGHT+IHG27gv9karbj1NOogatAO2BrlEvYrLEtmFNeu9XKhGpRsgm/m1RTB+hY9Q08ptcJZaTLUxxE8Xd6aHQ2a8Oic=
X-Received: by 2002:a05:6871:588a:b0:2d9:45b7:8ffc with SMTP id
 586e51a60fabf-2efed430597mr2254424fac.3.1751041696545; Fri, 27 Jun 2025
 09:28:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250314-ufs-dma-coherent-v1-0-bdf9f9be2919@linaro.org> <20250314-ufs-dma-coherent-v1-1-bdf9f9be2919@linaro.org>
In-Reply-To: <20250314-ufs-dma-coherent-v1-1-bdf9f9be2919@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 27 Jun 2025 17:28:05 +0100
X-Gm-Features: Ac12FXykTIPEyZRenrTTVdLWukedtCGjmkjr6e-4BGSc71M9daw1mwCSL7G-obU
Message-ID: <CADrjBPqdr1NEd+W4ATJ-6Xi36y8Gi_=81LsFNtY_s2-pBPagFA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: exynos: gs101: ufs: add dma-coherent property
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	kernel-team@android.com, willmcvicker@google.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Fri, 14 Mar 2025 at 15:38, Peter Griffin <peter.griffin@linaro.org> wrote:
>
> ufs-exynos driver configures the sysreg shareability as
> cacheable for gs101 so we need to set the dma-coherent
> property so the descriptors are also allocated cacheable.
>
> This fixes the UFS stability issues we have seen with
> the upstream UFS driver on gs101.
>
> Fixes: 4c65d7054b4c ("arm64: dts: exynos: gs101: Add ufs and ufs-phy dt nodes")
> Cc: stable@vger.kernel.org
> Suggested-by: Will McVicker <willmcvicker@google.com>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Friendly ping about this patch :)

Peter

