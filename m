Return-Path: <devicetree+bounces-152495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C2AA49360
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:24:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA0697A50CD
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9842244EB6;
	Fri, 28 Feb 2025 08:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N+nGMUUR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1B024336B
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740730963; cv=none; b=ghpMKamjIqRrJBPjl0S61ZaE96AFkDWFHfItZmkBXIksO6WhQKgJzftV6WaR0pkNZMjif392/wfskCuumP4DcNun+80VwHM800GBo6/1i29hLGyeVpGG0mHqja+bTOh5vW/D48uuUtk9+B5nYhmMDusfkZIYlzjZIM9u1t/71o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740730963; c=relaxed/simple;
	bh=Ei4jUH4UZc7x66tOrHfpI6mKDxIn8M6FEuQlF3nwXp8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LXI/rJjNXnQIsvWeAS6IZpMTjn0v1rZSXm8A/iJHTin+EXztCeg/L/Tn6T6MUaEn7KQg/sgVxbHt6Ux58N2B7SEoeHe3yP477zuk2mtNtHHJdaIRgTDFnj2TeCpcZDxpJK9FZPP7k0okVOw51RZDF2fRxE1ksrM48Z+puu7gPO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N+nGMUUR; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4398e839cd4so18306565e9.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740730960; x=1741335760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5mjk45jguiUNe+AcHQUbiNYsEpUBPM+3F/r+trzFvSE=;
        b=N+nGMUURT31NAiN4ymY6MzmgHoyQKaIw2xMWPJzpwtZQ0PKWUcbQSgzau20l7MY4oe
         +kyAtFeMEv8PohOxTLDkzgixaHyo4RMxoBvQP7w7XyjeFxHPD2A+ubCKoPMwZET6qV52
         eIuDO2eef38WeHzu1RXzdOyLh9PzqLLjlJ9yygxjbnuLZr3tJhfe0k6piDLMKKR7RNqy
         2nSxV8rT/ULgX7Cf1rM3DHFtlaaxU+3CWq3l0jQH+gVnBLx+e65ZGTK54OZCaNq7VLVM
         sEP/+yJQ3ruAxnF85aE5TPvcOl0D2VoTuMt2XvHBzjgJDUcPt12wwBYP9ZFH//jM14Fu
         fUFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740730960; x=1741335760;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5mjk45jguiUNe+AcHQUbiNYsEpUBPM+3F/r+trzFvSE=;
        b=BpBgefEARD2EaeSP7LeX/HDzeP4DzAxdm8C5yrxA2j3LUFvswfNjJA6GVpSMMW2udF
         lqYqgrxcdrE0zeN94ktA2yolBaGeIa5dQqIRMSDz+1O6QANPdqPkLjTHvQupQ5qdF3ND
         zAhh8Tu4HTV13jOwyscNE+TFqcqjgtDoqr6HLjR770S/uMlKmcSPUby1XpUUe9A9YXf1
         HNT72jv3kPqQkbVJEAG5RZyA3M+rcQhmHAaBwL7mD0yYnsYrZKimzKEpsQxOjbV8tb0f
         a9ZE3/cliA6/MPt42uwiL0QuGvoV2m9OosxtYDbNQuMz3PfN4CcK4+dNyf0Cd749a+/R
         6Lww==
X-Forwarded-Encrypted: i=1; AJvYcCUcmpYmsrUDg67mdvUvAJGwV1DVZh2evr5P2iK+jB2dHJ8aooAiJqZ4lXHT3DUDdD7itALiO6b7nmF9@vger.kernel.org
X-Gm-Message-State: AOJu0YwKghZMAWFx3npVmDt7hodJ5FB1dPErMlp00S5pU0cw2hwkTMdw
	36LJYb29Rnq5u3VPEumjf2m/Q69DWkzMtdOPcF3Ipx9EPUiY4mTVIkXB1pht1WI=
X-Gm-Gg: ASbGncswuuFrv7jA6JLjDORjyD2NODwxuI7/kuOERYe6/csBHV2eQW3/ImjgJzliqyX
	NfX21ZPJklz+QFz2MLf9NKkjP5LTcIf7wYOHHE4um+m3sBBq0eDkxFgRbwDf1m9q37hM51Y46ue
	+UxvH7BWS5TX2BWRJn8iee8Y3Z+RAh1yBLjSJEuT61+x1ebxLnrl0lodDdsTT3IPL41x0oYYBOp
	jWj/KKnsCDIlrEZyGz5B2sPrcgiAa/TfE2IiQXz9+sZ5DEn9dPOqycykTXwAnOsP/gSEbvrimuu
	Ri8QzL9W2nGGi6+VY+7Jj3pEJueXHHcT+b5952Oc+WT+UCo=
X-Google-Smtp-Source: AGHT+IH038oCeROvQ6tVC86akUZzZeoenUNBH2cva8eK5sDSrImvPU+Z4DWRdw7Bok77rrj1L+R8WQ==
X-Received: by 2002:a05:600c:4f51:b0:43b:4829:8067 with SMTP id 5b1f17b1804b1-43b4829817amr44075105e9.6.1740730960086;
        Fri, 28 Feb 2025 00:22:40 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b737074d8sm48750365e9.16.2025.02.28.00.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 00:22:39 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org
In-Reply-To: <20250212-amlogic-pinctrl-v5-0-282bc2516804@amlogic.com>
References: <20250212-amlogic-pinctrl-v5-0-282bc2516804@amlogic.com>
Subject: Re: (subset) [PATCH v5 0/5] Pinctrl: Add Amlogic pinctrl driver
Message-Id: <174073095934.1139542.13898190567088651391.b4-ty@linaro.org>
Date: Fri, 28 Feb 2025 09:22:39 +0100
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

On Wed, 12 Feb 2025 13:20:49 +0800, Xianwei Zhao wrote:
> Add pinctrl driver support for Amloigc SoCs
> 
> Base on the previous discussion,
> https://lore.kernel.org/r/20241113-a4_pinctrl-v6-0-35ba2401ee35@amlogic.com
> The existed meson driver failed to meet the requirement of the current dt-binding.
> So we start this new pinctrl driver to solve problem.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.15/arm64-dt)

[4/5] arm64: dts: amlogic: a4: add pinctrl node
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


