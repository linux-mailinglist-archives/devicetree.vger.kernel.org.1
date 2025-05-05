Return-Path: <devicetree+bounces-173655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CBBAA9352
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 041921894D52
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F3425178A;
	Mon,  5 May 2025 12:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mqdVu7EM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8B224C669
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746448600; cv=none; b=eCLsvq+uT9KWx/WChLn8Sw6Zvcx0QmQMcXpJ7/Oo7PTsmkQPgbfIaKNeTsi6DluwYc6+JbeFTFH2FQctSU1E8147es7I9sKAP36csgXtGOtbgfTq8LnoNnqOBdTmPPwKUOZvNnBTsGqJwzEf0wRTY0wjjLZTVP3JnlDoxeCfx0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746448600; c=relaxed/simple;
	bh=JQDK5mEQSWgeOlkUAKNOWCkunwEuxlBFXlqCyDRLeXc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lrBYLW4gYcr7FZtKmIealaF/SUDgtoeZOm/KTRV0M/y4E5+sEYwfdEqQ/EgJxmP7sELqabqRx/kqmMWhZZA1OJIOMb+4BTrm4iseVZWJJQrh+lUM8Bl2Ba15jl7hVOBE2oq6EOoFG7aaYM44rSCUTy1w0q8BFR7J/Zp260F696U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mqdVu7EM; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43d0618746bso28812815e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746448597; x=1747053397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJalLmswOZQ1+I3caNB5vdR1vqtjSyhFatNldwOqsTo=;
        b=mqdVu7EMbM5BXK/gYaTl9Y28GRpvzPSDOBr2inz4QK/CNyHBV5PQbHTQwHoWi6YiSq
         dJv3hFNS+avCYSgk9ZWsBhFCqbwQ2ljXBgFqhciHhe+4evviAnZPQCUcwOHPFKKB05L7
         6BX2iW5Grhvv50hWgLevUlIB/ldv52jQ66wstClYKfVsepUrWboHtuRzPxBPKi1L2s1W
         tTV9GFOJfczDSPLH5fVvd8tHWcpGe87wwo0q2TEAyfGEq9hIHXuHtp5JCmOODs7GmV8L
         umCIELH/Rbzg24bFGisCaFX7n/EEfqKag8XTMFVRogafLASQbDJ+FGPZTFFf2P73Tm/u
         MUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746448597; x=1747053397;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iJalLmswOZQ1+I3caNB5vdR1vqtjSyhFatNldwOqsTo=;
        b=mOVFU47WhfBRfUynbw5OMO+vSzdoB0My9GP6V58aihTQCQDfxtxlnP+JB9XoryRR5Z
         7bdY0H8jwApPe+1ec7vnTIQio8E7n+hF81agDFPUEGxTYL1OXY0ZVNqJN410ZGBHGUvj
         RMwxew5JmRbBXwd8JOJW9ANSRhRAJRNb10M36CWVbKeCnl1cz+fmR8jSIYmnbH/yvTv0
         YkMpEeph8i04zK1iq6p/PHPYCJd9D7RCG+UTs+OprCAiuCYYDMCSSTu6BMIjFKqzZGNc
         t02VB1FT9hks2XVxIRgzjGK+tR3tgKWdGVQgjaWLaZIzzuUkHy9kCagUiGqqhteogaE9
         IXDA==
X-Gm-Message-State: AOJu0YxTdMmIjXGznlOSoGjLY5Ai3kLzrOBGTtQympRC8OKgNq+l70Up
	ed4aPFmrcnX79dMvGiNWgAsLTx/Hircapsy7I3Q37ko/tgUDRkQyfGKJvmvk7YU=
X-Gm-Gg: ASbGncv9gKufEfLmQgBeVXktzvAiepsp3T6+EfvUA4gbaKjdOupBHTKp4Nw5EcLbBuk
	VyXCNPU1kDt7lH/y/PbS+BoYyu6K7eO8fBfYrNV5jshfs9qlTw8dSsPI1yzjXZRqQyfk2Jp4FE5
	SCCXnX/r4Dclh4BFnab4JjONpsb5e8alTtpiro36243A5IC+dnuMer5O9LuRjLkjxlNB2zy54dB
	ygB/1/BWNMqm/5yLQHaTJ2mpLrz7fFrBV27d5xLJbgATCY3Wn4IMa2a4mxPd4birUcj/TTVv/kX
	0ToHsyrggAqNOXgga7FYMb2aLk/dNheBpzsI+L5jvs9CqZ37rLoV5Jg+lI6pXWXOk1Xl4fl5
X-Google-Smtp-Source: AGHT+IGrYbfIV/5LAwd8x3Ag4BU1h2NQrpJczDWD3n86c2dPS4oVyLjVkTxVfPE08xsZ/bSn/VTNWw==
X-Received: by 2002:a05:600c:3545:b0:43d:9d5:474d with SMTP id 5b1f17b1804b1-441c47d3cbamr52857685e9.0.1746448597366;
        Mon, 05 May 2025 05:36:37 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b8a286c4sm131072725e9.25.2025.05.05.05.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:36:36 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 Ferass El Hafidi <funderscore@postmarketos.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250502-aquaman-v6-0-f1af347d9709@postmarketos.org>
References: <20250502-aquaman-v6-0-f1af347d9709@postmarketos.org>
Subject: Re: [PATCH v6 0/2] Add support for Xiaomi Mi TV Stick
Message-Id: <174644859616.1377721.12603834364011282059.b4-ty@linaro.org>
Date: Mon, 05 May 2025 14:36:36 +0200
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

On Fri, 02 May 2025 18:56:04 +0000, Ferass El Hafidi wrote:
> This patch series aims to add initial support for the Xiaomi Mi TV
> Stick.
> 
> Xiaomi Mi TV Stick is a small Amlogic-based Android TV stick released in
> 2020, and known as `xiaomi-aquaman` internally (in the downstream kernel,
> u-boot, ...)
> Its specifications are as follows:
>  * Amlogic S805Y SoC (believed to be mostly identical to S805X)
>  * 8 GB eMMC
>  * 1 GB of RAM
>  * Wi-Fi + Bluetooth
>  * Android TV 9, upgradable to Android TV 10
>  * Google-certified
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add S805Y and Mi TV Stick
      https://git.kernel.org/amlogic/c/4954ec9300cfe7ab6f1de1c93c56c236ac0a07e5
[2/2] arm64: dts: amlogic: add support for xiaomi-aquaman/Mi TV Stick
      https://git.kernel.org/amlogic/c/f5d4227c6dcab047579cca7b8e31a476ecdebf7b

These changes has been applied on the intermediate git tree [1].

The v6.16/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


