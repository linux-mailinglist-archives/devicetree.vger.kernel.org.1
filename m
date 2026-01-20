Return-Path: <devicetree+bounces-257232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D19D3C2D8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:02:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 92C834C1710
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D9D3B95ED;
	Tue, 20 Jan 2026 08:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sEXwzqv6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D701EE7C6
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768899186; cv=none; b=IgU0zYxvMN+LOIJEWRdASxeGOwTpaJ00IiPowOA/Vi7JUHqnY7yXHUW/cLmQQLoU1UeuasUxsu0qnhlfu0UhjHTWOojtU4/dpw2/ilfyoUW5zBJQ6qFttT0R/Z6pjpk7y7puBQ6EEiwXAhlkkfj5dkuH945PfFgLYpwKU9P/qYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768899186; c=relaxed/simple;
	bh=tn/DC8IcKtm0rwSX4r4eT67oYdx2oETYPnh48Ak1qQA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=SrhFJrghUJ8HbMSzDPkKL3ZvGXWmhwPU+DxRiregWWKlMUg3+RJrPvG76p3FcSZRJJtG67gy/omJ75XXZ2WBoO8iu6cJjneNQJK+JZzf/bIq9zj85q0MPOmOB2J65e8DcZfSqNXmMXU48W2oLNxI9feTO57eDATqzrbyN0qyrIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sEXwzqv6; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47ee9817a35so28276865e9.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 00:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768899183; x=1769503983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B+Mpn+b7S8kX43PRVWBWsEkr3ZlV8vDSFyyH8rqi02k=;
        b=sEXwzqv6kBFIm1OHhXnveHjpE+Y2PY0JCsqbhpDJ61g1fNr6Tsz/eTKcy07zC15ghN
         8qyl6rwBd85D6KszoOT5SuJXfRfjvYAMPyRoQaM3qgHpVkeFq2PEiKd8qB5PFhUL5t2p
         ESQu7WG7BNie94/PyjQZofIddGeyG/GwHBaK3wykl5cgZz6bi5DUHUPzdsoVCvHKjNti
         aS5quyfHAiubU014ICj1ngq6DQHQ6zoXlWkaBWhkWduyBAMJ2BO2EceHa3TBqXFnaoKb
         P1yBqqWCFaINFn2uWCsMK74+QbzPJaOCNTYo250U0JAUF7rKn9SuoOC3Xmt0bgjhW4oV
         V0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768899183; x=1769503983;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B+Mpn+b7S8kX43PRVWBWsEkr3ZlV8vDSFyyH8rqi02k=;
        b=gFl5s4pidPTxgDAVlMlfvDiy8Xh71c1m3F9SamSMKGyFvoVy+TQWZ2PK4oFj8ZF64d
         Ny9RBnBS+lmjyYDcOgUtX4lnV1crndAXQSUuPxA5/dazT5WwOUSmgyWKQcAyDZZUQjok
         wQq1RdCDhok2epcul3aTQtlzkE4WoGIAPK+Xe4nvnGSsxHVIJpbpGcN1JcUu2SpTcwyL
         73vvqYINoIH9W8TjGYBc1/GigG2mXRDVn+1EfmKrLk1juInkHOb77BzdoNblF1jdETcF
         FYcC1NCgotUVeSii/yo3yBGN7eEbYgHh9CT/Frtwqhu66iocBPDWH7AWTrktQekmZJch
         Evfw==
X-Gm-Message-State: AOJu0Yyo7XXT3wAAXWe+XSdVGFYhXWZsmbomHwPx46Qc2fBDL1ZxI7eW
	x0vx/i/DyUwLRSXJgvLfmtp8qIddcTRQjghnymiR6yx18odfmeQ0UXV0pv5OY3v/6Ek=
X-Gm-Gg: AY/fxX4lHutExHXxzoHEMUumnt1qtT0emY9+dXXSNvRK3e54KtycRuqvG5gaZx3HOe3
	xHsNS9jXRWKY8MyC1mvTG1co0vpxTkjHUPmdn43KJqksFf7VEdtAqrgSbSYPDDZItPROisTqkMk
	WvQ3/8VdP8NxeaoEm69hoE8eT3PE+UCzpVnNu6O/5wnFgIY61VIRMfWEEOPNLKfHlwfveVKN22l
	imhkhvzvuNru/MaXexvhsx2BMmrFMlDex/fIQuU25Bn/oSLfupD//Osx3n6YJRngALXNtodGfWR
	mBxz4QWr31/umXsiQ8cgT4bodBcQKXHYpxLPH7yaxgx06q/kHNp+kz8MoiO81FccsoOiKELPLAH
	VdYrVX7bwUB3mhODoiN/HnUfd99CeRSuNDcMgLllhMfTUuo5hkAbQqhUHdbPiahNgNyv+yQCj0L
	gTClujavy7Tq3leUv3CFNkLqCnS5ZLcEc=
X-Received: by 2002:a05:600c:34d1:b0:45d:d97c:236c with SMTP id 5b1f17b1804b1-4803e7e8562mr15375225e9.21.1768899183012;
        Tue, 20 Jan 2026 00:53:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569926ffcsm27597335f8f.18.2026.01.20.00.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 00:53:02 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Eric Neulight <Eric.Neulight@linuxdev.slmail.me>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
References: <20260116-odroid-hc4-dts-v1-1-459b601cd5cf@linuxdev.slmail.me>
Subject: Re: [PATCH] Eliminate Odroid HC4 power glitches during boot.
Message-Id: <176889918237.1477585.6813293385956996088.b4-ty@linaro.org>
Date: Tue, 20 Jan 2026 09:53:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Fri, 16 Jan 2026 23:02:20 -0500, Eric Neulight wrote:
> Fix issue with Odroid HC4 (and all meson-sm1-odroid) DTS that causes
> regulator power to momentarily glitch OFF-ON during boot.  Add
> regulator-boot-on to all regulator-fixed and regulator-gpio entries
> that (1) define a gpio AND (2) define regulator-always-on.
> 
> U-boot powers on devices necessary for boot then hands off the DTB to
> the kernel.  During probe, linux drivers/regulator/fixed.c and
> gpio-regulator.c both first set the regulator control gpio (that U-boot
> already turned ON) to default OFF before then setting it to the defined
> (ON) state. This glitches the power to the affected devices, unless
> regulator-boot-on is specified with it.  In fact, U-boot has the same
> behavior.  So, during reboot, a power glitch can actually happen twice:
> once when U-boot reads the DTB and probes the gpio and again when the
> kernel reads the DTB and probes the gpio.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/1] Eliminate Odroid HC4 power glitches during boot.
      https://git.kernel.org/amlogic/c/436418ef5baa024b7b15dd730c36d651c6aaaf47

These changes has been applied on the intermediate git tree [1].

The v6.20/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


