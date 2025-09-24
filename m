Return-Path: <devicetree+bounces-220805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C764B9A8B2
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:15:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A966162282
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3036030DEAE;
	Wed, 24 Sep 2025 15:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lsD1Rgpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC033064B1
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726923; cv=none; b=n0FhQ8TI/UU95PeulqSAIoF1L/lXb4u126ebWb6NlDfPzECZAuen/lofMhDmCebmRkVuUj/0UvVhEvxGwYRaUujH8aSz6i418rz1cZ7glze8a8gCTZSPFrgM3bdchiQz9c/g3GhKP8hWLqpXKd5LFDvmZpNEUzzi5EEYGtBUtEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726923; c=relaxed/simple;
	bh=bhWNtW8YfXRFrgAGBa8Pe/LU7bIl4qECaoks+lgJxd0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=E95pjLPpJHln6leuyibIV4w6t3gehEZE6IJlQ3auM9887FybRMYJrdSCWsK+KNRKda6RG7noOUqaRzJ4p1rP+vKFE1SCveP9zHi+ZdXNW/2yHq/fQ9eEwpRv4MAd11UCenmATp4tAerNDZvzxT93RiB2QBclU8K0z8rWa1s+kEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lsD1Rgpv; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45df0cde41bso49202875e9.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758726919; x=1759331719; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jbpj7od+TV+IzXBxJrvElPKTl19Mzk+byoMNx/6qPFM=;
        b=lsD1RgpvMFBFmOlTEyl6hqss7riCamUOvBcy/dPjP2+DQz9m1RYmH2ELBdy+SDItk7
         1ASs7hRVHTsTcrElD4JBVNIbg+lO4CcgmcyGnLmA76+uZfBDxDAyX+cOBqkUsJ8fSyfr
         m6xPz6wX90WZ4wQ4Lw8sBdjTDNzcnVTEKP+CW9B/mwr/AXsHTtes5j0Ag3hSAk3I+rBN
         EpaejPkl9y2ojckh+TFDLFWRJIPVWBUhacH8Ca282IAkLGgmUCOiN8XQd/XhEDmNGSwK
         4TNgdfyw6PHjITvJcrp1TaJwG8Gl6HFT6dbHaOshntonNGQXEgvj/2SOWci9EFctw1IY
         /S9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758726919; x=1759331719;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jbpj7od+TV+IzXBxJrvElPKTl19Mzk+byoMNx/6qPFM=;
        b=wSpzu4D1mkwUuIPwC6oITbMnl5o5Y73oOigOVHOp9as7z/5cWVZsnBWcoC2V7RPRRD
         uZyOJDjkncc3XQM7NLjROBMPBeYisIavX7tnk48BiEWpln6ubcD4JLJHUBDru3V7mdRC
         dkSOqgxpllpXQbyGQTf3YxYFFl5xtR+BrXN+uVwnnAgZkQ8oM7at48DAyBkDRC/gRoa2
         9WxGN4p8sLQ6lD472gl2JaYx+7OQV8nuWhWAnyQEKGOBH+f84epigHCy1aNRIRU2Mm6K
         c25BQWRL6INGYxMpRHtk/pHVPClnR/AKwnFqNqHofkS0NIvgyD80aDBc2C12lS8/Ovwy
         caiA==
X-Forwarded-Encrypted: i=1; AJvYcCWGgyL2ObH6Fj85gFPjYRROCXpluEJcDoaDqJXtC4HoHDiocYe1lVOeCxyzgpcPtqlJEXfSSvSijCWc@vger.kernel.org
X-Gm-Message-State: AOJu0YxmRtH8Z17KEMRO4HnTwDbggA/5KhVKrUt8Hz7GVvfaYhBtC3CJ
	PfXW7EP1dUel5K2vU/m6Ij+kvWI4Jcv+wN0hw7+NEVIP71JC7nF80y8EyHdCql8ABXc=
X-Gm-Gg: ASbGncuCmHXhaPKd1DB8KEugOgpObALYdpbJNqikPg+dOshL+XBRTmm6aQMZ/KO/80J
	TfpOFOiOs7O/CrdkvVPs16YbopDtxGrGlXXTY+QYGLvpJhoZLEFWZyOuhyWdJZr1rYniSBd+1qF
	Pn0UsZp2Fx/IwuMQUto69+YWVaESyjCpMDoWKKFhBBB7JSOQO/Ql3kY8A7kCvJxO+nW50ugmmsl
	HAaRSHwh/q7k8AGeuLVTZaEtDOFuLCrhQgE026EY7rDJM1k/FQ9fVhZkPN0g8hpzb/X3lC8+SfW
	gH9HUkgnYY8rqSX9DVUE2Z8zFARWcO5SGfDI6JdcdTDeqOhx7FYF7F9bseEQgM1ShnvX3v9RldY
	G/lNMq6rIKsIOgnWvdYGfS/To9cl6KPAswkLxHpMK7PXyTs2wPT+COzR5LeZ3EwgaAMfaL4v0GV
	g=
X-Google-Smtp-Source: AGHT+IEIcfDqKrBiciMrBL2BnTBcgOSqblrqMr6nWvMZe5xfLOYpgYG9knlnJMKE7RPGTu6ZiHxPvw==
X-Received: by 2002:a05:600c:a43:b0:46d:d949:daba with SMTP id 5b1f17b1804b1-46e329a7fe3mr2802315e9.4.1758726919462;
        Wed, 24 Sep 2025 08:15:19 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996bf1sm36541855e9.1.2025.09.24.08.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:15:18 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v4 0/3] arm64: dts: exynos: gs101: add cpufreq support
Date: Wed, 24 Sep 2025 15:14:40 +0000
Message-Id: <20250924-acpm-dvfs-dt-v4-0-3106d49e03f5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOAK1GgC/3XMTQ7CIBhF0a0YxmL4teDIfRgHBb62JFoaaIim6
 d6lnag1Dt9Lzp1QgughodNuQhGyTz70ZYj9Dtmu7lvA3pWNGGGSKKpxbYc7drlJ2I2YHI2ttDD
 OWocKGSI0/rHmLteyO5/GEJ9rPdPl/RPKFBMsgCujpSDKivPN93UMhxBbtJQy+9Cs2mhWNFDHl
 CaOMvOr+VtrwjeaF90wQaQGaZ2WX3qe5xd3S12JJQEAAA==
X-Change-ID: 20250819-acpm-dvfs-dt-06bc794bdccd
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758726918; l=1425;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=bhWNtW8YfXRFrgAGBa8Pe/LU7bIl4qECaoks+lgJxd0=;
 b=nc/cwrihP0XJJ/99OHcjZsa0WdK1sLevklpPI/Gmh2co9jIBvtLyBkmkIkXMC9i0kAKCg/GHU
 eBlAnjokIYaCeA9SWUwuE0fuigcuV8LgtunmknD2H4uHaDlwYnqSkpe
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Define the CPU clocks and OPPs.

Patch #2 has a dependency on the ACPM clock bindings sent at:
https://lore.kernel.org/linux-samsung-soc/20250924-acpm-clk-v5-1-4cca1fadd00d@linaro.org/T/#u

Thanks,
ta

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v4:
- update clock-latency-ns from 5ms to 500us (recent downstream change)
- collect Peter's R-b and T-b tags
- Link to v3: https://lore.kernel.org/r/20250903-acpm-dvfs-dt-v3-0-f24059e5cd95@linaro.org

Changes in v3:
- the ACPM clock bindings were moved to their own file, update the
  references accordingly.
- Link to v2: https://lore.kernel.org/r/20250827-acpm-dvfs-dt-v2-0-e1d2890d12b4@linaro.org

Changes in v2:
- acpm node becomes a clock provider.
- reword commit message, extend cover letter with info about dependency
  on a bindings patch.
- Link to v1: https://lore.kernel.org/r/20250819-acpm-dvfs-dt-v1-0-4e38b95408c4@linaro.org

---
Tudor Ambarus (3):
      arm64: dts: exynos: gs101: add #clock-cells to the ACPM protocol node
      arm64: dts: exynos: gs101: add CPU clocks
      arm64: dts: exynos: gs101: add OPPs

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 285 +++++++++++++++++++++++++++
 1 file changed, 285 insertions(+)
---
base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
change-id: 20250819-acpm-dvfs-dt-06bc794bdccd

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


