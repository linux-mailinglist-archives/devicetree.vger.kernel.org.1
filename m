Return-Path: <devicetree+bounces-81201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F5891B98B
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:12:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 292AFB21284
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80671459EF;
	Fri, 28 Jun 2024 08:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lc+D3vwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A17779F2
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719562334; cv=none; b=M3f4dg6V3GjTZ3pSK4FJ3tnMOqTSQ5IeTbWX1LavIiViQN09FZ9OzMwlebdNOKmhQYZh4XbPbGR+gbfbrhLbORz7Rcf0T5ayR6NsNVvNzuinAKXWMcwMAmgdwxQYATxZSEYWj955Y8lZHnJ/SNRBIadEgMLoIMB4NMN7W5mCbj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719562334; c=relaxed/simple;
	bh=VfMZ3EyZOT/+Dlgo+TPCcRfEdLOwVwZ6yf9Azc6a5no=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QIOV+mZWKNQQclXc0ZHtlq0Xz8mG0Wnm7gr5WNVMMHqyKzRfeRyNTqGGSWYGWXREC98HweyVpkPd/XnmOtAE468nqmz226Zr4m54WVtfDXKRd820yIEAi7nliRS1bdHcz0ZToZEhiLz4h2tcgo+7F0zXmNjhctqgHW1XClQz2dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lc+D3vwQ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-421f4d1c057so2603925e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719562331; x=1720167131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Za8GJzSQvEWguBnhsVgMgbxpdx2OWPVe0QVMP4Zex7M=;
        b=Lc+D3vwQEKwwhXXBSCHzQImzDMqy0Fei/UstJEGLOw0wJkUgcQCS6IcrDs77WOv6sh
         E7cXy8JBzF2B3awvqkjuvcrBNpNvcEesPGhoegfEBs24I6VK3JNQz4WNzhoL2XC1Rtqg
         RLmrH/h57bfNAF5f3L34wo4ndM+4BWXd+dAhCGclUAc9V1XeDCAkk7cqYc5monBlyN+D
         j1dOEnpICyzWz/q7p0fnhkBEUR5NSglFYnUKUFFPzJEGafWGgW14L1tXuseOmKh/Ce+I
         JgOjvSP0y/JACynIim6Bi84AlPcKMN897HzTY2ZLeLYbNDd92hLANX7XT63LkKWHJcWt
         7tcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719562331; x=1720167131;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Za8GJzSQvEWguBnhsVgMgbxpdx2OWPVe0QVMP4Zex7M=;
        b=IsrZjjt7GFcT2OKxRnGxWS/2cgSmYxuXd8nBh14kSVRXkEdHBq0HqCSvMWDOPZXtKM
         vygaPqaCDCRfJBvmhGPV99okCtp/5gGgj7QQv68K6yHe82NMEz5LXHywBnTM+enDx8W7
         acqa7oaVByaSjMFVA1iQUIUEzIPocKNwjXX9eDumshaIv7kmNdpnm9XrWPovOzUMt9qq
         ik1Q9JJpwhALhxoxwz8OyKa0xLNBbyaQytKtxOyj2BgeXiySZSVbPonutbaGqcGnAXoN
         pEMirrOgqJfk3gw5lNJXM+LyLYiG8yGcC75HC136W0OTlyJNJMWIJQyCMot+TLGwDUsv
         flWw==
X-Forwarded-Encrypted: i=1; AJvYcCWrwCgsGCgC6cAHsYt5o0deGRnC0vQoR8XkcjvgX0COs2MfQLiExvQaR/zIZda9RjfUbf2MCMmZihRYr0f0/6QuC8+HJbcbKnmG6g==
X-Gm-Message-State: AOJu0Yyxhw0CxmhqJnmyanU2drkVrM34+ZGK89EXrVc54bemVMaCb0OZ
	dlhOK5tm3MyAoqbMzOBr9pPlnN29nXkLYXc2QcGV9nBJPUWJD4Nx+7vCMgr71P8=
X-Google-Smtp-Source: AGHT+IH1Ga8ve4A/0au2rmwtSixHp2ho56UaJ52/y9SYN40XIU8gYHAdzQXzwMD6SK6QXmXie5tssQ==
X-Received: by 2002:a05:600c:56cc:b0:421:7bed:5274 with SMTP id 5b1f17b1804b1-4248b95d0edmr124015215e9.10.1719562331060;
        Fri, 28 Jun 2024 01:12:11 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256d664052sm12589185e9.27.2024.06.28.01.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 01:12:10 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240626152733.1350376-1-jbrunet@baylibre.com>
References: <20240626152733.1350376-1-jbrunet@baylibre.com>
Subject: Re: [PATCH 0/2] arm64: dts: amlogic: handle hdmi system clock
Message-Id: <171956233006.862799.7789348204436390137.b4-ty@linaro.org>
Date: Fri, 28 Jun 2024 10:12:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Wed, 26 Jun 2024 17:27:29 +0200, Jerome Brunet wrote:
> This patchset adds the setup of the HDMI system clock for HDMI Tx.
> 
> This is another step in cleaning HDMI Tx and its direct usage of HHI
> register space. Eventually, this will help remove component usage from
> the Amlogic display drivers.
> 
> Jerome Brunet (2):
>   arm64: dts: amlogic: gx: correct hdmi clocks
>   arm64: dts: amlogic: setup hdmi system clock
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/2] arm64: dts: amlogic: gx: correct hdmi clocks
      https://git.kernel.org/amlogic/c/0602ba0dcd0e76067a0b7543e92b2de3fb231073
[2/2] arm64: dts: amlogic: setup hdmi system clock
      https://git.kernel.org/amlogic/c/1443b6ea806dfcdcee6c894784332c9c947ac319

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


