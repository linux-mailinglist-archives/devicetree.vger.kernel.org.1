Return-Path: <devicetree+bounces-232864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93448C1C703
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:29:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 283744E06B6
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 022F834F246;
	Wed, 29 Oct 2025 17:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LVKg42lR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12185347FF5
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 17:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761758828; cv=none; b=dO7WkEwQdzCRWHtkHy17hnVvGTHxE6/8dcJrdsN6eryKvaJohihKDpxUk23PNnMKfS4sUfGP9jsubJ89ZQ7+FOTupjH++8S4dt38dyXkvsbWK/Ne7qJcQj4TBFfP6tDasgFVT6+S2qQRN0/NmWyAeVTxifNQunKW05B64L3Ho9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761758828; c=relaxed/simple;
	bh=nLdcEjD73TqcZhQfAF/K1QDbrMu5fdY4HoqJfW/B97g=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=o5WfgOai8CqSXsq3es07BbZdB9+IHIZdwaCIpsqgmm2KP0JX6e4+0zsYm4WYsd3D6xnzEMX8nddDcXi/9bOQO05tY9CqtGB042Z7CA+spmMwjWLR9D1uK6xgTO/AzD52eSM/cHrVeJ3C9wL5S5KV0Mx51nckBTyuKPOeESTLqlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LVKg42lR; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42421b1514fso61680f8f.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761758825; x=1762363625; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PTLxD8/PeCN5+lbcjiqLAGIYiVKi49LLzCBzMkykXbA=;
        b=LVKg42lRVIA1MOjv32eEmpHSEGBRoNnRNaC0FCfNt+co6z89p1xh3KIlRrNCy5CGE4
         WSlokCvga6h+N6HS55cDA0DhdDQQ60fkRS7Fzj3oCwu77TnzGppaUy6odeZ9YzmXK10j
         sOfUHj/PBDkpTkDXq0Z3gQTlg781nn5ktX+O5pTREHV0h0uI4Kgdlon/c8Vaaw4rBX/G
         bMsMMLfTp9tQQ5cJd6Y3dMi4mnfwZKAAhtxTw1M8AtF7AnRmVQWKYv1jxn+UmkMAJjHH
         gRazyjhn0IaKo+69o1BvUZRyklYmgaiQiRQoihTPKQkViSqGNgo/PrbeihmpbZqP0MB1
         Znvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761758825; x=1762363625;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PTLxD8/PeCN5+lbcjiqLAGIYiVKi49LLzCBzMkykXbA=;
        b=gXFyQ9Ygnol++tD1iisuvwqtZLJtDZM/1vPJ+KmMi8NFDgBTieD2JEYDHuW/nnk2r9
         vt6LwsYTFp7Q29iKPHdhMXaI2vtfY0e2Ukd7CoNnnGHSFGgIQgOrGZlrHD0bFqpVTohk
         +Z3o4FLOEeqZcHY8tvdc1ZWY1kGwksjdFQL2U11ZyForGm7vZ3QFP44efX8VEMwgXalL
         4q3Y2rq75E+pqt3iJn8VKY+FpqPLXcT8e83bGUlAysFJqHkpThtzLhi2hvqGlEZA/lon
         1uXqfyrhFec2BGgXVFS/IRv56hn2u5TiIVKjgP9YclLMz64fNa3fqGZOROoCKXivXVfG
         HXSw==
X-Forwarded-Encrypted: i=1; AJvYcCV+XR3M28TXnM1OLQQBfIh0Jz3aD8q+jNMplrJr1dvoU00spSgFJz1K5uWJyOkr86zcuC/Y3tnA3vRt@vger.kernel.org
X-Gm-Message-State: AOJu0YwDJmlT/PFW9Pfwa7T+PL5m0GndIQ5L1/AgU9nfMTOQr2pKRyIf
	2EKedXQo7t713OM05rMHyu7aJlk3SFrwwKzTJ84ZZe/yVuPzpTHLWaq8cImmTm8+GjY=
X-Gm-Gg: ASbGncuicO7ZJ0y8XZxH/bvFvAkbG45J2/uqMCRt801W4yGSsPPaTD2cOVJuJESgv+d
	X05o8vmcqC3+u03zo/HBsqx5xZNMtvISyniqnAFhkUEkIl35KDuOWrb3kME36CHy6hgSZQe8wDN
	aZwiTaX/kk5nWTHriHoWNA4cX63QZK4z+2hbmFohE5EnhYm5zR5eedeGfMvcPXyY4SJqrMSOahU
	U2sWMECv6rT3u+P+sMLReswsL97taglgJW1OZKBVp0MFtRyC5xatq0KIj1ApyOtmIyble/oTgnI
	EoKtLi4nwkbfKXV1QRghf5tvG+TiMXY8I9PcU5LJYRFVPtclGKveJYLi981RxpNbNqS94erQoOZ
	bFioL2AD31PYdKp/yIT0SMKsSxLYIbw2xaKjroEAZv2dKQ+KP/Je/yZicXbPUb2Sokv4/vgdmUi
	IfVOuBehDJfdt+lILM
X-Google-Smtp-Source: AGHT+IGrGTlJHnWW0SL55uNuRZuTPbaR18fj1P8buI5Z3DCiqzFLCxkZpjc9Q+yRSyDaqaUQ+bJ/OA==
X-Received: by 2002:a05:6000:220f:b0:429:8cda:dd4e with SMTP id ffacd0b85a97d-429aefbbd70mr2829627f8f.32.1761758825168;
        Wed, 29 Oct 2025 10:27:05 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-429952d5c9dsm28545855f8f.26.2025.10.29.10.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 10:27:04 -0700 (PDT)
Date: Wed, 29 Oct 2025 20:27:00 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Lee Jones <lee@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 0/2] mfd: syscon: introduce no-auto-mmio DT property
Message-ID: <cover.1761753288.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Most syscons are accessed via MMMIO and created automatically.  But one
example of a syscon that isn't is in drivers/soc/samsung/exynos-pmu.c
where the syscon can only be accessed via the secure partition.  We are
looking at upstreaming a different driver where the syscon will be
accessed via SCMI.

Normally, syscons are accessed by doing something like
syscon_regmap_lookup_by_phandle_args() but that function will
automatically create an MMIO syscon if one hasn't been registered.  So
the ordering becomes a problem.  The exynos-pmu.c driver solves this
but it's a bit awkward and it would be even trickier if there were
several drivers accessing the same syscon.

Dan Carpenter (2):
  dt-bindings: mfd: syscon: introduce no-auto-mmio property for syscons
  mfd: syscon: Don't auto create "no-auto-mmio" syscons

 Documentation/devicetree/bindings/mfd/syscon.yaml |  4 ++++
 drivers/mfd/syscon.c                              | 10 ++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

-- 
2.51.0


