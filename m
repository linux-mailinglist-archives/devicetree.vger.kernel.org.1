Return-Path: <devicetree+bounces-78921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A965913A80
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46E04281E5A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2EF3181BAF;
	Sun, 23 Jun 2024 12:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QgVXt2Fl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19449181B93
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145359; cv=none; b=VE5lSdKbyKUc5TZQUux0O8v3byeQA7ITjiMwkn8KKQGZkPF2TEstzJCiOwRVOycFkcbZy/19CY4FOmcnwnkYw43R+BWZQG487q16div+Omj4FhZZ3Z7nfIAy02ll9QvmYwHBRPX8MhABDxOp4YyMgOH2W/RhSZcI3mLGmB6ftRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145359; c=relaxed/simple;
	bh=FxobNQZ1rgagg+Z4n3N3HpyDOXldnHwRiIUn7j/PwNU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fzK8249LX38nhmXJavGFrggnGuTvAGh+/GQ4uLwIjDAORgzLnnYdQXZld+VA2NmSMz8stfg82vqf7c7vx5PdKSHcDuZnVCB5zC7g0Cg2y8OLbIkPwDrSa6E19RrSoJFonTOBBfmrGDr1krzYoVHBvKQRWAogz12mL9/UWBBbt0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QgVXt2Fl; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42490f21bd9so560055e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719145356; x=1719750156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mhAh+jvGCqAD93XQACw6Y1mGR3kGi5n7lZXBozkXoCw=;
        b=QgVXt2FlJFq6oAEJTu7dOgkDop5I9TYw3yvh2WfPGEIVnkTVWKbuTKXlyZWJvMu1rY
         LTBmoHnHl86AMWm8C1RConoW7GriUvWrcOfz7oaOKo4vSruMU6m8Sw+xhx1WlzHXgoey
         UDld0K52KvQDjcRNwduME4pMkb0SOuy35aLB09N5MstMawrV0eNLI8TzOjQGZuvveDHJ
         nAheKG+6Sju20WxD56J7cXF2717KmKBo/3prVs7EaUee0rzLa7rZWNxotYcDO5CEX6Jz
         1HF/7mEdaNOo1rhgc1eW+PxB/Vmv56HZFDMCtfT9CzYHvKaNB5pbeNM5/90n0IsOT1gg
         AX0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719145356; x=1719750156;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mhAh+jvGCqAD93XQACw6Y1mGR3kGi5n7lZXBozkXoCw=;
        b=wdzuOMOYV4JqLGKKmD9o1ksRpVuYOTWtX6ntpjTC5bJ66yoNLVlb/fNu31f9TnDdDi
         8RTDHSPJdU2krTjvpXkW2367Ofb6eLZbNtc83t42s720aKwg/xLmd17yKcZQZ2ycFwXk
         pO6sTpi/6RiBQ/Ru6tX/tocDkhepAwH7FKdFGoZ1X9ASv8uYH1RA2A4h66wa6RpsVHYe
         lvK+2wUUotl4hrYfRiZYSYyo3jag9hbQFiAYXs/z9zsY6mmrwx5+Z7S+a2Bci4qij12r
         +hAwRDcebbbuUYrR1QMw61p7ptpFeCYSia5jm5hzeJJeEmKv65kwGWpXdJ+VPwqFfP6h
         sCmw==
X-Forwarded-Encrypted: i=1; AJvYcCVzWLYBE1HJSI1Cir4xKA9ruhEa37E/omZmm7/st0xd+jJ61wcUiUSEMFyYUfIx7eVsJCumR0SjtRxeNC/P3cn1nxBzj7AUjUipCw==
X-Gm-Message-State: AOJu0Yx5Eu2GRKq6XXBuR0QX3KTYY+pZ+mcDLxWEwDOBx86Ke/YWgCz0
	UXsOA16+v6ls6BBR0NXfdZXLmc/suTshQxrLYpp2v6t1Eph0Uu+j8NLHED8xZdY=
X-Google-Smtp-Source: AGHT+IH9P7vvvq+k1dMT2QWLUAqW8tu5zQt3wDV0Jg7WyRsocyvjDdZyVe/Xx8B2afoTTWYf/Rt8yA==
X-Received: by 2002:a05:600c:458f:b0:424:8d36:4a45 with SMTP id 5b1f17b1804b1-4248d364bc1mr13903465e9.2.1719145356377;
        Sun, 23 Jun 2024 05:22:36 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0be841sm136955455e9.20.2024.06.23.05.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:22:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Daniel Tang <dt.tangr@gmail.com>, Andrew Davis <afd@ti.com>
In-Reply-To: <20240612141740.8470-1-krzysztof.kozlowski@linaro.org>
References: <20240612141740.8470-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: ARM: nspire: add Krzysztof Kozlowski as
 maintainer
Message-Id: <171914535504.46985.10566250151315469912.b4-ty@linaro.org>
Date: Sun, 23 Jun 2024 14:22:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Wed, 12 Jun 2024 16:17:40 +0200, Krzysztof Kozlowski wrote:
> Apparently there was never a maintainers entry for the ARM Texas
> Instruments Nspire SoC, thus patches end up nowhere.  Add such entry,
> because even if platform is orphaned and on its way out of the kernel,
> it is nice to take patches if someone sends something.
> 
> I do not plan to actively support/maintain Nspire platform but I can
> take odd fixes now and then.
> 
> [...]

Applied, thanks!

[1/1] MAINTAINERS: ARM: nspire: add Krzysztof Kozlowski as maintainer
      https://git.kernel.org/krzk/linux-dt/c/997148228410f8e2fda78b848ae16fdc525158e9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


