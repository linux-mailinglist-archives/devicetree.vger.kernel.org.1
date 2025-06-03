Return-Path: <devicetree+bounces-182486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 861B8ACC7BE
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 15:27:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 26A107A9799
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 13:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E35230D1E;
	Tue,  3 Jun 2025 13:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Vd0kow07"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC325230BD4
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 13:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748957227; cv=none; b=tezafF8NoDm9gOsz03bsWu+f56zjc8QgAyQC5oKhuHAMteMV64zyORFCfDFVrkLKte2w1JUT/XRvFZBSm5Z8YO8F7FeaT33tnjD4jyNdY+0DT7fXS99Sl7Hxq4Os82bmw/etF1Csv+SodK4B7rp8PWgr4lO8m7aVERRryXhehFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748957227; c=relaxed/simple;
	bh=oCJK7p/BlKZRpWnLoHe83P+kE08K+tutSYOVgN67ERM=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JYVs5VLPJ4Qy5XBL72n2HGSXhb8LS5RArFiUw8SEUoclhH0xGM+5LlL6/IVflHJLhiMhEGsmqpGy1EtRwHi4ccxFQp4YnJi5DYf6wpqX/m2JayIIQOQMag/wgmrC3NIPodXnksh+eyVIabGfhc3ZzCH9rSsuc+rRQqiVnV93k6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Vd0kow07; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-450cb2ddd46so35920305e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748957224; x=1749562024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oihVtB+1SEPxR6wMy6kxrIZOmkj3G4LorB9xvDbO3Qs=;
        b=Vd0kow07jWpWm9OrR+kOmMj4JwX6c2asw2TIz+rKMkV8ihKiTEPxhhqKXZBXeqLj/5
         gsDlZnXnXWjm4uj/r7J35vDyqvTi+qHx8MVspblIbQcGNj4CaZIoDVNAOUe26YyX/O4T
         0jNoe23/nnSv50e8bF9NZLKNPPio063iH0QRrZsRKo9DuMuH+vMl3FIAAqClbXQzrf9f
         6wyqEm5wIQIw+snLkO7ioRIWuCl0ZbOpwIS0MBsQjlS1E9PSKHnNQYJFvq+6Fq2zP/Je
         qQ2a8ug2lKuV2usMvbprGiiEo/2i/OxT/COhnWQp8hdv8D+CutXhF7YXgxBE+2TfIi8Q
         mj3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748957224; x=1749562024;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oihVtB+1SEPxR6wMy6kxrIZOmkj3G4LorB9xvDbO3Qs=;
        b=mXXYB3FX//ekOLPyaeRAYlzm1iWj37MEILrkoRTzJ5Nx0lXeVOZWfDxK9rD7EPozLd
         vtYYkqP2U+ugY++ydM5taQJhv/7ZX2g6or7qK3z2DcBB47f1rBpxxSz92YLBoL6ozG1c
         QFD4dO2+mpOa0cry80RqC2ti13uI7S11yDktFVbKtOyuCc211U6xRl7U8ShNeySGPmbD
         W01n9gI66uMJixu/O5COox4C/FnH9Gm6E/4fGGLFaVzVkM+XvGSb0YYSofR2KbV0nq5c
         sQbTDVvoPqipOhm0NeOTaecNwsggnzByQoThsMF+uz0R6G5W9+EfijD7PVf5mX1q+pwj
         Tzmw==
X-Forwarded-Encrypted: i=1; AJvYcCVG9Nm8p4vnt+K+8pzYfKUInQDaOrhzXxMS2BWHjuGibsZCRkRdlR6OR0pJ9i/zIuWOYHhguzdKJnkD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2KCKDKEg1RjZVZJdY16vRE1iiYQ+c5w4yD2Nc+AyPN8OgUZhz
	OBcSVXmeXcZrkas0Cbi8DKeiFKSuOAbDy0ZGKGmS5LC3hAhAbSOKrI8EqKSqqc2xI/w=
X-Gm-Gg: ASbGnctcEUlBa3YzGpjmjvn0EqRiroks8C9y1AXbvhGivtfBfPzSqFaX31Z6LpIcJo/
	P2Oadpc+Mm5S/V0Iy5nF/2GL9opxBO4U7W6LHxN/xE85Ba6EhSMW8ZSIsF3HLhp1+ohYKPT6IP6
	GAw39Ea7rca4ZeVu3OhBCMH3MMbcTJETZ1+GAGa04Q/zejV+HJpXblZGDWiFlF3nRtU1CaDQ2Y8
	lvBS+dqvgBFUUH4SSriNctVNVvmftvrwBgmwWCVGaTAN3b93R2FwRqVPMAr8rskVT9lcZdODZvz
	3du129b4jROB83j2olXCYXK+XdHZWxOUqZDUUL+jaq1Uyp+eMP42H8D+IFUVouwHLmj973tEXLa
	Me6do/YI=
X-Google-Smtp-Source: AGHT+IGa7mbwcZXtdjmxN4fEKLTzriqSJh2XpWZKE/sUSl2iqQEeeTppliDDInLxLyB5zAkgBnX6bQ==
X-Received: by 2002:a05:600c:4e0b:b0:442:f4d4:53a with SMTP id 5b1f17b1804b1-450d64c322amr189283025e9.2.1748957224078;
        Tue, 03 Jun 2025 06:27:04 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d8000d8csm161701305e9.24.2025.06.03.06.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 06:27:03 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250424084721.105113-1-krzysztof.kozlowski@linaro.org>
References: <20250424084721.105113-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: Align wifi node name with
 bindings
Message-Id: <174895722336.2922018.7146209463305009352.b4-ty@linaro.org>
Date: Tue, 03 Jun 2025 15:27:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Thu, 24 Apr 2025 10:47:21 +0200, Krzysztof Kozlowski wrote:
> Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
> wireless-controller.yaml schema"), bindings expect 'wifi' as node name:
> 
>   meson-gxm-rbox-pro.dtb: brcmf@1: $nodename:0: 'brcmf@1' does not match '^wifi(@.*)?$'
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.17/arm64-dt)

[1/1] arm64: dts: amlogic: Align wifi node name with bindings
      https://git.kernel.org/amlogic/c/117993fc40d96ee3a7697d916a2a0424467e9dcf

These changes has been applied on the intermediate git tree [1].

The v6.17/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


