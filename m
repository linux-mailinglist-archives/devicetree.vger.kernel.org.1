Return-Path: <devicetree+bounces-190950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8437CAED50C
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 08:57:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AAE587A9669
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 06:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE0221D3E9;
	Mon, 30 Jun 2025 06:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQp/z05V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A1A21B8F8
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 06:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751266610; cv=none; b=Tb5jfn5Dqwas4GvCtmrBMGOOhPI8CPgrR0O/6H2+SQ6d1GMFKoLVZxHzzbTapbTe6mAx5KgJVWqqAac36WCZp/hl0u2a+TcEBbaJPVcWycSnSsgAbDMY9SukcMYcgdPJpcAu6AXx+3WmknPBMY5asIRB2IM4faOLCfvfSa8x4X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751266610; c=relaxed/simple;
	bh=3GZO51OqhqQitI3oHgtKlOXr+ILR5fUdWrXFS8jMvJ0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=J8ADVwnMjf5adq1RqjUh9teIsZP1MyjZl1FNHzNtYQ2eWC6npTA9NdBqwf1JeaE+gkB/8NqeT0AT788Ig3FJckf3iDYkwvwdGNUo+pXN/Bm3a1wUsH0Rnhqf/G9x1WdZ9HzcXPyVw6rnSkhyvNCEAqr2Ukypd0zLK/c63iJXpmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQp/z05V; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-608964359f9so768775a12.1
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 23:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751266607; x=1751871407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lc6iefw8pUoUSjRoTB5D4vYyXImo4vsIqT1vRaRB9XI=;
        b=zQp/z05VUBPME7cO+VlD3arY9DbFtVYxeOVERqdH3rOR+M7sIVnUE3zc3wNBXergs7
         gfc+eEkDqc+eI8HFVyceVVO4raAWMs3Vv+FiEiktJvWiJ5r/rTxEwboPVO0izdHB/O3f
         cepeolYyRtRUul+DYghFJ1EWMaJd35+BEQdFrq+oSGw/k71qIP3diADDkR6r+JSQauW9
         ylefNZnQgq6IIw15n9N1wNOpzOt3EGoKlyqhRiBNSUcoyYBliCOBQxkHfsrqankUFLOC
         L+taWztB3/QlkUNUDAu3klxyLUOAmJ8319Y29wsRiytTqGmpDuj7iT0BJrfdtKQnuPdR
         WWhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751266607; x=1751871407;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lc6iefw8pUoUSjRoTB5D4vYyXImo4vsIqT1vRaRB9XI=;
        b=WJWs4jncXLTLBmVFS9xpVSWqeQpcq3df89JkDpuDCVHEZPHdkLHD/GefLvsWOlSxrh
         DStHKsnBiqpE6cRdoDDtHWUBVWPfbGqlcDMgAh4+ZHTAIQ+af6cbjGFoc5qM6+Dvbg+P
         gqQ2Mm0CSrnOId6kjbjidwYRJw7BECtu76c0uZfKDVoATcfBkgYvSs349z2EsraSS6/G
         ITIiR5YZYtQAKUHw59ipVRuMNU0OKJmoPGoSKCklUNKdXRylQZIWvkr1Y+CeA/9As1oI
         LUlwRLqERc0eucA50iiWUVFpRonqlJRgjfv32Wu9s/O9ESI98ZJZLRnpQXLBh9Tcpqug
         i9Vw==
X-Forwarded-Encrypted: i=1; AJvYcCVxGN4acnqw3bFO1Wh0SQEuvrgmLsVnQImjae/Vr7XU3LXdXmBhB8GxXOY3qyN63ASMbXJgUny94YVM@vger.kernel.org
X-Gm-Message-State: AOJu0YzEIa1BBnzpZ5rQXX8NO1iqp4DDZkEs4alm2pgv4ye2EuYjVxsb
	N1FJtoeUKDGCJuNo1B5opEe7c2bLFwf/UMRTJPnAa56L4OR5FH+FYT/4EyL3pjGhxK8MkdMj55d
	CTMWk8JI=
X-Gm-Gg: ASbGncvj9QQR1QQOU2IlKPDbPvQkl+MVjea7NSuIB8hYGaLgoMHZK4qsmIfNi+9+SIB
	6ijvLfd6uFYDNuNA9VI0hFFWj50ZFRUnlcdW1ROIgLQdgYISIElFRC7EQyhOmaH4nzXGR4eFLJi
	BfRt0mCvUejObkZsJTxFUCwATrHrnhbIB07lUBzSX9Izkm5F0JCXbJULr3S7C/+MuELdhgrQCRT
	nh/hO5L5A1Kcxi5eWa8/BejyRsP6MWqnZ5mGaCF9fffJrbgxiJywvT/Mk17c+DCNzWcEht8pX0l
	m+GKhfB5xHNoYwUMcqYqJuxGo6GtOyfj9AOVicB4BcXH4X8iYUOhJ/k9fqRhDhc60qrORfesI+6
	8
X-Google-Smtp-Source: AGHT+IFRCVhe/kspNVlut14SQley3OnRV5rGZELGrH7CUMn0nRN1b59EAqYyXIds6psRg7O45zezyg==
X-Received: by 2002:a05:6402:2743:b0:607:6f27:507a with SMTP id 4fb4d7f45d1cf-60ca3e23d93mr2392792a12.11.1751266606742;
        Sun, 29 Jun 2025 23:56:46 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c828bb118sm5368960a12.2.2025.06.29.23.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jun 2025 23:56:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20250627-gs101-reboot3-v1-3-c3ae49657b1f@linaro.org>
References: <20250627-gs101-reboot3-v1-0-c3ae49657b1f@linaro.org>
 <20250627-gs101-reboot3-v1-3-c3ae49657b1f@linaro.org>
Subject: Re: (subset) [PATCH 3/3] arm64: dts: exynos: gs101: switch to
 gs101 specific reboot
Message-Id: <175126660525.23797.4623645601712442349.b4-ty@linaro.org>
Date: Mon, 30 Jun 2025 08:56:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Fri, 27 Jun 2025 14:29:32 +0100, André Draszik wrote:
> gs101 (Google Pixel 6 and Pixel 6 Pro) supports cold- and warm-reboot.
> Cold-reset is useful because it is more secure, e.g. wiping all RAM
> contents, while the warm-reboot allows RAM contents to be retained
> across the reboot, e.g. to collect potential crash information.
> 
> Add the required DT changes to switch to the gs101-specific reboot
> method, which knows how to issue either reset as requested by the OS.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: exynos: gs101: switch to gs101 specific reboot
      https://git.kernel.org/krzk/linux/c/98be2d60fdb70b53e29a04c807ee62e06fb9c08f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


