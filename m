Return-Path: <devicetree+bounces-255442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF82D23005
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:06:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0216B300CCF1
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF9F32E134;
	Thu, 15 Jan 2026 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V9jiEIr5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97A22DC781
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768464383; cv=none; b=rdHEIhLDpy6iLoNnBGbM7oo76GcCR5WXgwb5wC2VMJigBHofJVn2FobF9o6PA5pb4KyH1/I5mhId4laoV5dPHyckiBlD0rlJfTm4sf44eQ5QQleoFYcWnam+CUFdZogcQTEARnlcqBSKlxHN149XGAhoNYjk1nyonrlanfavjEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768464383; c=relaxed/simple;
	bh=qJzQ61JRHErcMhLPWr6rvvyP8/2JSG8mzInHAX+kXqc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=AeOhb6+KFtd42sVc1vzGBZrK5Y7P1rrtFnwRhgNEkTPoDwmqvCIm72F73/xQfrrnrIwxZrr4710gYjft9HiJHSKT5HFWmE3Oji0TCQZHR0l/8WK39G77F4dD0f4mq81ukUKuxIaiJr05dVRACAg4B8Ubc3m6HCdEDNixbfp79Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V9jiEIr5; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so7653195e9.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768464380; x=1769069180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5whZZY0NFTuaVPJTKC+j24tM3a2qyIAuO69Q21m6x8s=;
        b=V9jiEIr5GVsbBqufhzDn2yB+iNBWIcJD1OKLphupB5tGNZz8S21yPTmpgCbcReH8Np
         yQa/9IIBGo3OseEyfGkJ0Go9CTPWlJlwgTf2BuU6Bb7AKMYXn0BKAfGNEsoxttSTmee+
         45pR9JMDOb4Eix5oo0a2kGe8TIJYnjn2jNiaXLGfazSV2XB+KhMs8im0rNp8ic6AZW6q
         xwX/4MhnHqJbONSl+eS5LMj+jABFBObltULr9bu5n+p4bu67x8qlXeMdYU0Lu7J3GsqK
         vSeEgi1kpt31j+vNhf8GTLw1BGb63AzhsG4k75fUmmGXPdCZ85XcdMLhZ6obp0RC0dQz
         T4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768464380; x=1769069180;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5whZZY0NFTuaVPJTKC+j24tM3a2qyIAuO69Q21m6x8s=;
        b=ENOOpkU508VPcffV6r7dQlmLw3A1x7NZLfw1bArUrKm0VBD75Oovb2Dh7oizBzo8rS
         8XM2tw4vS/6ov8d2CMmXM6gBpVRn1ti9V7GFBTrlUGCpLSRgJBboSx1xdk6Q++Q2V32+
         oNZKwqAlPproz8Cnvwss/laoII/ooy3mqOkDEE7MoM/XGIZLUOub+rAqYeGVh8hDynvA
         OMKb2d1X3YyYG1Vr1sYvsDfQGDpJ+H+FRZ7JQmx16alyM3j3kC/kkkBZLtOE3KoHOdaw
         5wvBnoN4iergJwfRkecHP5H3rDhIhy9orqH4FlSNfK/+aqK43nbuBdgiKlsJM305/K7e
         0LZQ==
X-Gm-Message-State: AOJu0YxdAPQrvpa8NMRaEFYNSo2KQE/yoa1fbjexnNgcbUw9DUdR6MIp
	4qjosD+U8k2M4j/4cSw8NUYik366izc3UL4hSspxdzCZ2Q0e0zxTMHLxbV6ahMgiPb4=
X-Gm-Gg: AY/fxX6Up4QgFWcArlBBnJG7BVzXTrnS9XW8XUtxW6vb0RURteR6qvER89DVDNokXnG
	B48usmpGLGzxbpKEzcvgr005PFqpm55W3SKPe2ZTmC674S68ottD0KkwVhadK4ukk6NNJwuK7m8
	MNjama7CNDvAl37uCMbPIHS3M5v9iWWLBE2/YSrGhE/nz3LHOr7HTFuwtvroBBGaN3WsnkfLswa
	mLg0A5dkvUvnFQf+5+HgpwTyiQHfe8ateA4LoxCGnVz9Jlrt6hMdWR9h/qagRqT1xyxJqd87Uw3
	dMJ22iFtc5YNcCbVvKkMeZEUFhy1Iu9Bd76d+7We+VdsffUcxMydqM9jpxvg0/zLLYO0KSRXrr0
	2dLp5Vmq8yDTPxo+gEaxB9McveTQspvC9Sg2qfTFGld++62WWJc7P/hxl2yrQraalugatZr8L2D
	Ml3m6FIYlm09i9LPTmNi1ZWFnoAtHa8D/2zmvyWgs5IQ==
X-Received: by 2002:a05:600c:314f:b0:477:7991:5d1e with SMTP id 5b1f17b1804b1-47ee335fb15mr57018655e9.25.1768464380292;
        Thu, 15 Jan 2026 00:06:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4289b789sm32875245e9.1.2026.01.15.00.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 00:06:19 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Ricardo Pardini <ricardo@pardini.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
Subject: Re: [PATCH 0/2] NPU and i2c3 + FUSB302 addition for Radxa Zero 2
Message-Id: <176846437964.1204537.11505642254935473121.b4-ty@linaro.org>
Date: Thu, 15 Jan 2026 09:06:19 +0100
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

On Wed, 14 Jan 2026 23:48:35 +0100, Ricardo Pardini wrote:
> This series adds a few things missing from the Radxa Zero 2:
> 
> 1) NPU (etnaviv), just enable the node, similar to what was done for VIM3
> 2) i2c3 (also exposed on the 40-pin header) and the FUSB302 at 0x22
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/2] arm64: dts: amlogic: Enable the npu node on Radxa Zero 2
      https://git.kernel.org/amlogic/c/29deec49146162d06b17739c627d062191e03814
[2/2] arm64: dts: amlogic: add the type-c controller on Radxa Zero 2
      https://git.kernel.org/amlogic/c/8f5aa8d444d1d200715c36a8f072054a49bfb410

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


