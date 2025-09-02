Return-Path: <devicetree+bounces-211608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D544AB3FA75
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:32:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA1904E1C2E
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C02382EB5CE;
	Tue,  2 Sep 2025 09:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wSkGuW7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C4C2EB5B3
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756805523; cv=none; b=hOJs5LqR2YjM3qIWpN1/bDEiVXvVdWMcGKt42unfbB72Vy3i0vrq/C5l4/K5iR9hh6VOSSpJyVRvkP0RgcTSGpAJPozuFSmOc1TQKt/f6BSwfKUaVVycNk+7IO9FaRtXwk7V3qjLT47zo1zmk9nyIc67pf47iMT+c4kz20nLzkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756805523; c=relaxed/simple;
	bh=aLV5q272r3B8QkMTmOza7YKUzvB4FtaoeC/BZBqbhAo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=djvCcJw6VI5AhlY2dlRruiU/NQJ4aPIAVDJ2HDN7BVqdH1TzbvQHwT2BsT8tUEGg95pg+qk6LpGeP6M7m4BrC3YB4HpukRqsAwYpGQPsUMWRXJVHbgbbFSW/260rD5lFdkirNBTZaei7hURQRerrLO27eJkRI2CitZFnd4fmL4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wSkGuW7m; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45b76a30584so768315e9.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756805520; x=1757410320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eh6pXHDb7czykJvkZSECzHtYEJIhB8sIOeQx2+V0+0Q=;
        b=wSkGuW7mkvn9WJC0H8ezXeIdlUW96o1eJVApqILsyLCx8Zj+z1lVkBvPza0EQrESze
         FyR5AnOBNa6xzP2plvpEWzYo1NhyxqQn7hXqrgnchbH149Hvs1WOI5dI+G62OwL/LIgS
         e8OZo/OSNgni0eNTQyCnikzCQT0sVHgxTWQaoMcOPU1pLhAC/VKZ4t43WFDOX4W3LW9x
         1puriBLsjH2M+I4nDeueAkbxupzevtVhrYUzmg9+upRFYHWCsPkQ9hqcAXadp3LPaOjK
         OCxKb//1QtixR+fd0hoA94/DMfQX7OZcSmpKegf2FfS5D8IZMVNpse78ZnuSAuVpcLWw
         okkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805520; x=1757410320;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eh6pXHDb7czykJvkZSECzHtYEJIhB8sIOeQx2+V0+0Q=;
        b=LmSMYbEtvPwtWp13uWu3XzdYQpWtxdkpZbtXAdw2y9jPDvHDzGdRiLYo6IZdqt3WAc
         pjbWkXRdu1d/G7h18YGVcZcnVsJpoSh/IUcGVl6QvOYx6eFCMNicQIDfctJM50pgSOEe
         /JZ6oa5A2b7gF9+WaFh2Xh9GuGr47npxo/jaVpDRbNR3dJcVJDgzJkVybFluT7B741e/
         lt7P1dRl240Vc9Kev87nYgTRd0J2xuvORcc70Vdz7rmBK6FfJdPAvHtDaYMthCXPgQfi
         npiM1O0vo2ccubC1rlAYaWakeRZqKwMqHtgdqGRhRoy31R9U65erQgUyNfo9IIX/xKi6
         Wm0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWK2LH2vr5eJgnnurqVYfqCmcKoo81SrjWh9RX8d2Nmpu9XrDfLGHFlKi3tIdaE3WpdZwTkQlkY2aLJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyvLxBXqjDMd+TbvB09tmtq0YEkqNp6jHZRouvcqOSANWeQ0gLb
	wGhwmJD8yR6GBFE09B2n3x5xU40/tQQZVdSpybL/SkTY9tooElcLwNNifz73rvgIF90=
X-Gm-Gg: ASbGncvVD/SlrLDP3IQECSSfGwQ7A3reXTfd/LGk4/juoc+W31MZ8/R7FOM9RKaG5mg
	IxYl5pRJP4mVRTaSVPZx0/Jmk4PvfruMxwZrUUOVb6GsiOw7DkZEVQbB3JQvKfCK5R53Lv96qWN
	r4Qgj0FtrnMG4kPwHlmKhjYB3wEnF6fwUF93JI9oW2w8IGQEj0mo7mwu13wXMhwfTkumd1Fk/pU
	Q+yFQmAsbi/VI4XVCLxxOP1AFiJVrOEPUv20JyD3f22/vPtexL9M1mgr3eEsoccrr35tkG8UlXB
	QLo957MaPEsYutMZ4bS1/Z2z9FqPwiV3mH60uF+yE2z6YS9ROGqbDvXNOaz7wc/CgyE7EAENw6I
	pHgtoQkvVZaQAIYnUbi6KgHR7RAUJkf1Gdtmh6fPFvVDI5FyMog==
X-Google-Smtp-Source: AGHT+IE5jYdHUbUS3l29jFR/Jwe1LDiKUmJNFIigz6TfN/+SC34Z3RyjNu1csb1trH6mfuj+fpgVhg==
X-Received: by 2002:a05:600c:444f:b0:459:d7c4:9e14 with SMTP id 5b1f17b1804b1-45b800cecd5mr66503255e9.0.1756805520238;
        Tue, 02 Sep 2025 02:32:00 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b72c55c1bsm281314925e9.10.2025.09.02.02.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:31:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250830113253.131974-2-krzysztof.kozlowski@linaro.org>
References: <20250830113253.131974-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: arm: samsung: Drop S3C2416
Message-Id: <175680551873.122080.16462297851841792228.b4-ty@linaro.org>
Date: Tue, 02 Sep 2025 11:31:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 30 Aug 2025 13:32:54 +0200, Krzysztof Kozlowski wrote:
> Samsung S3C24xx family of SoCs was removed from the Linux kernel in the
> commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
> 2023.  There are no in-kernel users of remaining S3C24xx compatibles.
> 
> 

Applied, thanks!

[1/1] dt-bindings: arm: samsung: Drop S3C2416
      https://git.kernel.org/krzk/linux/c/1557c2eb023d9cdf97b4686fd206048c070d4e70

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


