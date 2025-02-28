Return-Path: <devicetree+bounces-152494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED3AA49355
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AE35170AAD
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8AA824291E;
	Fri, 28 Feb 2025 08:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GxbPKU9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9E124291C
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740730962; cv=none; b=p9gA+v0ZfA51usvGvklD0ZpsSmuFcR8xnsPH6OyzCGlPfgV35DTHDlruvx9xXFttrH03QDyQ03UL4Thme11t5hhaBYT8iSeaIrSLcLuAdQAoLOCfX5TwrPFxIhrb9YABWhkNiRYIecx+CJrklEKdRQBBVYwlwJTlDMKf/nZahJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740730962; c=relaxed/simple;
	bh=qY4oRNEHrOsAJ8xWqz1Vs/rayvoY+PfxlLB1/jphBv0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eZBz6NcdBNAOIu1Ybw6f+TVAc0BOqdeI3GSYQI79aQ+1FVFKt8wZ2COxfR2/8mG1VDuPHN7q0cCdwZbOQAr7heWbiGLZvwqeTqurGW8zmQMZrvLjHI0c+lUvaqIIEZ1IQFlu1BGALBYUz1Mjnfgx0/ASoaBjObECOGruUYCh3EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GxbPKU9/; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43996e95114so12573075e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740730959; x=1741335759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jHgNhNb80DQy4X7ezcT4lUUrnZzt8BAUNO4RPQLnr14=;
        b=GxbPKU9/9TyW2Ioh7icrBo1J2JA3F0Ela3D8fx8qyS6YzxmfVA0q9fctAKpB1GRo6c
         K6Mz5gOcxmS+T5FwEBJb4QP/hI6VuCvMgcPeZCIRiWVQ6XljcR22F6wu9qeACrQAxaeT
         +btXqd1OXWx+1x4BNb23WMbDeTGbKNVxP1GXpax5EBOjTbxmdLqJxusKPWpEnYLXwDhy
         h4Ko1gLWHVX08cu7+Ocn4xhkCZzO5cmdY+9eFZYKgKMyvveNGwaokr+z3mclXt1gI/cE
         N9EAR8uPYi0n6HB1ec7jeQ0nFB3sg+qzuMzDwzeZSciz80f8IzTt/VBgw/wxCJ1iDwXp
         oO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740730959; x=1741335759;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jHgNhNb80DQy4X7ezcT4lUUrnZzt8BAUNO4RPQLnr14=;
        b=DiAMoV1QF8Hej8SpiW88SR0ozNg1fBEsevOHQOM56TrWEFiA7fFWoT+xAoVe6VFUrN
         +vlAnMTALV64/GJlFmg5RpdVGb2xR1TyRbFc6hXjtrocWBFW3/dIOHIXklf1/jRj0osu
         j0pc3yTZnNiEQ9hbiq5/yRzry6LqENpJaAyY8JsNBB6FtTXrpMi3XW1Rul9sbnB71dQE
         GD/8dsd8sTv9SJFWTZDhRYg1KtkI5p7ZGCNGLXNoGBVeCskAIJpExMueKbamr9JdlAiJ
         sFxtBvaTHdMzDVp1QUxZga28xt16sHxit2IQ2GspPWvUsuj2aeJOdXRSHv1CTOKsuoUX
         zGoA==
X-Forwarded-Encrypted: i=1; AJvYcCUKMXySKvNiS7j+M9rlF99GdabO/y6LntRXdKxuhVVA+VacPVF0PBN+Skt/CZIYvGEyxSegsoUrQhs4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrcipe9lMs8bAUCDWEJh3IOZWkSVmFex+ZxCaweA4gw8g2aPav
	Hh7A8qzu5dFAprazkyKiEP2CkrVr5qMZAcPrRi5bOlC5+WzD3pkNY6JW0PfILmo=
X-Gm-Gg: ASbGncvPfxQG3THnjRWxXCX9viTAK+qbsWRe5/QvQFJIk/3GQ6w7qhzQgg+Wv5sumWZ
	UlvqLsTZgOCPowX7SjFug4XbMkjxXkSteHnMMncs8bOeegc16GpGeBaAQ44xyu96wti0eh3kV9b
	dpi3CzCIaXzZDfqIKdCvRulCr36UBIexSvc/+tzH8helUoFkkANCztKBaAyAL9T1R60PRSBETAy
	HBZxGtgrRjjt8zsHy1PpuT0F/rtJbWHxlFXD/VS1nBf6rCzEoMpDb1SBuL143Mv2/c8vb5P5Eut
	9QUhn+OVzA3HpzkHV9nbhK2c19RZpVA47Hpam0jCZP59wao=
X-Google-Smtp-Source: AGHT+IFh9o/6ArnjhiUzlNBx86ioNJTlHz7etf9q2i/1fT39QQaodFUpScWDIhXR/Ov2pOocchf/qQ==
X-Received: by 2002:a05:600c:1384:b0:439:9f42:8652 with SMTP id 5b1f17b1804b1-43ba6704748mr20910835e9.17.1740730959239;
        Fri, 28 Feb 2025 00:22:39 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b737074d8sm48750365e9.16.2025.02.28.00.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 00:22:38 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241113-a4_pinctrl-v7-0-0546a20c1c22@amlogic.com>
References: <20241113-a4_pinctrl-v7-0-0546a20c1c22@amlogic.com>
Subject: Re: [PATCH v7 0/5] Pinctrl: A4: Add pinctrl driver
Message-Id: <174073095841.1139542.4947939584999923520.b4-ty@linaro.org>
Date: Fri, 28 Feb 2025 09:22:38 +0100
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

On Wed, 13 Nov 2024 17:37:27 +0800, Xianwei Zhao wrote:
> Add pinctrl driver support for Amloigc A4 SoC
> 
> All of Amogic SoCs GPIO device requirement is met here by
> adding GPIO bank definition instead of the pin definition.
> Binding header files will no longer be added to future
> SoCs's pin devices.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/arm64-dt)

[1/5] dt-bindings: pinctrl: move gpio-cells and gpio-controller property
      (no commit info)
[2/5] dt-bindings: pinctrl: Add support for Amlogic A4 SoCs
      (no commit info)
[3/5] pinctrl: meson: add interface of of_xlate
      (no commit info)
[4/5] pinctrl: meson: Add driver support for Amlogic A4 SoCs
      (no commit info)
[5/5] arm64: dts: amlogic: a4: add pinctrl node
      https://git.kernel.org/amlogic/c/ce78f679e08cc4f90db1ad8e61ba9f85530c701e

These changes has been applied on the intermediate git tree [1].

The v6.15/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


