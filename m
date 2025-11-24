Return-Path: <devicetree+bounces-241558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5785C7FC9F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2A5C44E4BEE
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BCA2F616D;
	Mon, 24 Nov 2025 09:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z/C1yMWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3FF24B28
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763978334; cv=none; b=Vp639h00oRGWATcHFZINmB1e1D5zAckzztaDTbQnrVOeMyz0KOoFuJw2cVmppqXs5EzzEjWmjviHJG+UctbHqty0pqoGsRD3Xwub2rk7rAsUC2QW7VCLOBef2LVvJC+rKR8AASizzEJ0lwLfIL7F/+tySQ6DS/ElvJnjJW/Lw8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763978334; c=relaxed/simple;
	bh=HNavgysvBBd/Sxwv8hmnrJgIVGm2WOs/qwe1FAJB5AI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qJ88N039O9ke42F/ZP1BvBplRM3aZ6BPKT08+2Afa0MrcVfGXsUky2ctMxkfYMZTnGJ3WotUiVSKvutk88VAHpFRq7Y50UhP5SDOZkZ2GPHtWhj3nWXjgVzXbYvdO/3JcxfVFN2/fe5Z/GGy0ZTLxTBy8MS1ghUF9g07IgWtHJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z/C1yMWO; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47778b23f64so21185505e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763978331; x=1764583131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=StnX4Pm5rfx0J+FKrbJIz7Gg4AQJHV9UVznv4XZEdWU=;
        b=Z/C1yMWOe/q7yUXLIDEu7mhd0+7ZdshW9nGOOcJ/ag/J9aXslqmY7Cbuv8h/QUvQxX
         CUOLhMs8GxPovkFeBdoZAQaYwq2pabco/j+gjumiswcZJdZoUbwaaY1CJxOJt+CyKIbm
         yewZwmQIiFWWn9hc7MmNo4jhXhBLIqVrEYr+UrKnwyIrOQr+WTd+xeks02Bu2ZRcrgL7
         4vwV6MSM+TEn85FYpRFw9IaPpEMCQ2Ytw4K0Fwg4SP0bv7p3MOMaceXGFxz15a3SWEml
         ERevNRn9Y8HiYH/Vb6HiCFCriJuIChmZW+fPxxQH9GiiP/qJRn0dFrj8YxqHpKlRS22D
         UHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763978331; x=1764583131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=StnX4Pm5rfx0J+FKrbJIz7Gg4AQJHV9UVznv4XZEdWU=;
        b=atAjfvHkM15mCwAbzQcbENuZxdAOIaiSX4BPHHAIrb9EQl+HP4XqXqjVrFLeHFN3gN
         X/wfeAZKzDzWZ8waAPYDK9oUCtuXFJfO0tPoAOIvEZ8jQlhKzxaT9nzSSQjWAYrYl0GN
         ucLxw1EH3fWWVAJ3gEcRrY/BeqDcj3GdoMCE6IWv2TNmAJNyySVsMcLtTZsAwUhnjlIv
         rL+4Yxjj46tB+RAlQ5HLO3CnjMvgIT0RZMt0hQzHOKEUz3JfqsFCFcglfDDd7JY/ikIZ
         V8VZPVYGW3o3f+bqH/pbLmUYvwxPH4PACbgxhyl4l9ufWpXoNRQfCdpDes/cCCKuv//2
         bA0w==
X-Forwarded-Encrypted: i=1; AJvYcCVXMrYgUv0Af6A3VCZ++mVSE1DIanW/+0LxzoKHgfmJ35UFQa/t06PYZyoD2aCpxy+a+3op/xbQsVac@vger.kernel.org
X-Gm-Message-State: AOJu0Yx21zej9WXbduQ7DAyXPGBvTkChndNqvWbz3ySZ80+ax4eUx0Wa
	pQs5PpvK65gkqYswuq6VJvgzB4yHl4VJBfFrtBPM9iVxwos+jNFuQG7p3Ad3Ged7Trw=
X-Gm-Gg: ASbGnctitMWM9P36Cbel5QmHiDVczqn1fO9GX70iewI8HH0J6pbvtrjeznHAYJnfZK6
	XaFhzE/HNuaxNvUGsMnc6dNjwIjT3CAfmgE8J6En677dfLxPXoFMqOxdx775zQMV3OzlSWhmeGX
	pkK2DNvG7Gjhv6fJoJ9nmzgjt2FqPQAs6Da144jk/p19oyRFtqFga+CHCwflzzqcFTQ1NyonXWv
	+IuU8PabgVXjkHDv5+pUIMMX1d6oGFcfPMHEr9zTmgl9H1UZ9UOHYE/LpiqG2V9k7K4mbhQeqM8
	HUKKt565nJWQ37vzrGeLYhGd4avMMJZtPNbX1Zxjl2So902et+fpQCmC5K5aRSu756U4QtxnNrO
	7AWh46IgzD3ie553qFqWeEzoE74uVeg0TNBZYlIVIkWeta6pDHv5WrKh6sA/O/x4YAVF/LHakJF
	t5bGN2XWvCEsMVkVN5ZpRyqIgr9t4IObTlP9PV+u4DCg==
X-Google-Smtp-Source: AGHT+IGob8YBtobs0cZ6JHHYnC1RWGcF327uC/39s+XgiBw48PKNrpkNepBppOcnXYAOHrXO/pc1lg==
X-Received: by 2002:a05:600c:3543:b0:46e:1a5e:211 with SMTP id 5b1f17b1804b1-477c1143046mr93368805e9.21.1763978331169;
        Mon, 24 Nov 2025 01:58:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a97412e3sm143621875e9.5.2025.11.24.01.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:58:50 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Anand Moon <linux.amoon@gmail.com>,
	Guillaume La Roque <glaroque@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: amlogic: meson-g12b: Fix L2 cache reference for S922X CPUs
Date: Mon, 24 Nov 2025 10:58:48 +0100
Message-Id: <176397825606.3590190.10935817124468233062.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251123-fixkhadas-v1-1-045348f0a4c2@baylibre.com>
References: <20251123-fixkhadas-v1-1-045348f0a4c2@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Hi,

On Sun, 23 Nov 2025 18:14:10 +0100, Guillaume La Roque wrote:
> The original addition of cache information for the Amlogic S922X SoC
> used the wrong next-level cache node for CPU cores 100 and 101,
> incorrectly referencing `l2_cache_l`. These cores actually belong to
> the big cluster and should reference `l2_cache_b`. Update the device
> tree accordingly.
> 
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.19/arm64-dt)

[1/1] arm64: dts: amlogic: meson-g12b: Fix L2 cache reference for S922X CPUs
      https://git.kernel.org/amlogic/c/79482f3791c4760b9b0d8d9bfde9f1053ea3dd5e

These changes has been applied on the intermediate git tree [1].

The v6.19/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

