Return-Path: <devicetree+bounces-150864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36046A43BB4
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2E3819C322C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A78266B5E;
	Tue, 25 Feb 2025 10:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RI+dYilK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA84C4414
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740479141; cv=none; b=mL4/QZRHDNAXnKCWQS5S0fd/J/BacvJ8FT9KBpxG9sva0PpY9yRml/NC0Zia8C8oiGT2KcF2D4yWht1TXhR7SO5w4RU+li5lif9CCrJ3KKDDv2bIl29V3gosdMyWVpT4uQGdTHKkbaBBDWhhVWi5qbUr1uKaZPPAG2emNU6fg6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740479141; c=relaxed/simple;
	bh=lVx9GsbZg/PJKvZT/5kfAUjQoKKgydq0Aadd3S0x4mM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=RnrAbkskS24a3I0do6FCIPMowG+9/OfX8ao0b6q6QxPEtmYHZtO8ubCf3TNAC9tg8qVK4duLf0frIZxXEeitpedDNkFhwuloe6cVuAbWYS7eSCfICwNcjB8wOMvbeRl/Ki5b+h7TZPF6wNNt3w918yrO7CdjMsyKr8hPduI4JNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RI+dYilK; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38f3ee8a119so2648880f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 02:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740479138; x=1741083938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFoF7QyNRZ9r7+RHzos7assjg+PgG+3CLatxaRnVuRs=;
        b=RI+dYilKe70TAxJ7lv+0jkXs5FlrUBWtvGJFrUcxPXxB1Eapp/iSa86yd1FN12qPcS
         YqooWOeGBgGCKjTU0BL90YCRUo864EEmnL9glJjOt/e4WH2/cMoovvWcisRGud7Gr2RV
         qMOylFUxSpOKz4BoyrDguvQPpTYUr7Pa157Zum2Jk9SRTAhFoBpqENWs4nCKgvTfLoUm
         STGKPlgLAu48ElHQhntwc9JWOdMf2OfqX2rnyPjnZKeYRgemgXaNpkxw62wjAHbMo52c
         MVuFou+GvWvtl/v9MgjRTFxC5D059+YplXji/WcYN915tu6D9ogs/2tw0lKMpuFhIpjy
         lGZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740479138; x=1741083938;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFoF7QyNRZ9r7+RHzos7assjg+PgG+3CLatxaRnVuRs=;
        b=wcFESIpK7VM7Nx6CZZSmVFpL2yH2UcY2aThA2rTwAaliy/pfve/2oJeG8LVQ3VLkqs
         9X/FjVK4vOZCKZCyNygY7sNN/dLbKycK6YktWn3SxkwQcwDfNz5WhKwp1dPekYi/VHMX
         vJMxqWOuiwwlKRAN0JF21hXlJugurkxnwK6XLoEwGxCgbeoTb1j9IYFiQDn1hFM671w5
         sE26MzZx2DDrw4EixVv6x0jFbUoZJIu5vhrxxw5dQUI2J9qIxpUayDn0NajF3MBuqoUo
         UEKkCX18yXGhWB7TyTmuU1kjzZFOnydEK4Wqh6j0JErUcC9tNdr40f1NSL0dJXopqje6
         fgqw==
X-Forwarded-Encrypted: i=1; AJvYcCV4aiaCn6vQPZtW3vi/pgL0klFRn8pkgdG7gzPbQtynmAO1sCMgsdYm9NVncsC06DF/vLO6n0i5GV1q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Czi0F9kKJD3twzKtsVcYS3heTpYGNtidL/51MWgrhnxKXI2j
	OoFT90BZB43CzEiSBGIQZbrBWRtPSq8DfWEO/agJK4J8eoi2hKSDim/djFEkmKA=
X-Gm-Gg: ASbGncsIMUCgya+oVzpfpGXE4T+uFfXQUsS7+wxKkyx8VaB8mfhoUk6OuBDf51KuMx+
	mgbK7CAr3aJ4T2ebnX6oDC+H7S+VdyQU5yhWUitBiJ8JD/r/uSRjPTA0eScAIHL2In/HFKHb9KT
	4Dp4hSA9L5naN28Uhl/gTvMPgvQLT5wSLHxJWOETBI0zLB4Uq/jSkrJPhK4i+lZm6YBtKo+jtkr
	9+g8GeAlcM+URKTpsC7Y0phbqDbk3WFnjQNCJsHEpH3GcH/qJS8Ha96Qk+ZKibd8bHXDrtluXt3
	m4fPCjv80fOKeoZ8mCHJ9NJACO303tAM5VEA7MGfBd64TfU=
X-Google-Smtp-Source: AGHT+IF0UNTzcIoMzLzKcwrilDWc3geeDLz1AHdSa0/z4fJP99oSE9XrnUuGZC+x8acSBmNx8F633Q==
X-Received: by 2002:a5d:6dae:0:b0:38f:4b2c:2464 with SMTP id ffacd0b85a97d-38f708626c6mr12904963f8f.55.1740479138118;
        Tue, 25 Feb 2025 02:25:38 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd86707asm1764378f8f.5.2025.02.25.02.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:25:37 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Liu Ying <victor.liu@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Maud Spierings <maudspierings@gocontroll.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250224-initial_display-v1-0-5ccbbf613543@gocontroll.com>
References: <20250224-initial_display-v1-0-5ccbbf613543@gocontroll.com>
Subject: Re: (subset) [PATCH 00/14] arm64: dts: freescale: Add support for
 the GOcontroll Moduline Display
Message-Id: <174047913731.2131221.16812340325511859962.b4-ty@linaro.org>
Date: Tue, 25 Feb 2025 11:25:37 +0100
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

On Mon, 24 Feb 2025 14:50:50 +0100, Maud Spierings wrote:
> Add inital support for 2 variants of the Moduline Display controller.
> This system is powered by the Ka-Ro Electronics tx8p-ml81 COM, which
> features an imx8mp SoC.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[01/14] dt-bindings: display: simple: add BOE AV101HDT-A10 panel
        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/761992a4b4deacb519f4a6089936b7fd22b4aa0a
[02/14] dt-bindings: display: simple: Add BOE AV123Z7M-N17 panel
        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1a4d1d9f068506f4f334c03514d2e93e21830f19
[07/14] drm/panel: simple: add BOE AV101HDT-A10 panel
        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b554c009da1c3c6cb8c4b5da2ac2f37fb527e927
[08/14] drm/panel: simple: Add BOE AV123Z7M-N17 panel
        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d34bd3c7cb84425dd6146a8d07af597b93ad4c4d

-- 
Neil


