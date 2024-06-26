Return-Path: <devicetree+bounces-80007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD77D9179B9
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 09:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC56CB24353
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB9914A4EB;
	Wed, 26 Jun 2024 07:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZtpRRaFf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2663929414
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719387065; cv=none; b=NdV0bM1AtxBKuiGx1nwNfb1L1fvVm0Y3YMkBPaMiZGV1xXxB9LZ/pdMfntwagjRB1H3iWT73gCLI4DNTALXisnJ0FFxKZ2d3I5fwLiMEmk66yYOHYvK/36Yb+EreGcyzbCB8Fn5aXTVEwAJTT3JoYBSIsVybihjYBtiTLrAFnVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719387065; c=relaxed/simple;
	bh=ohq5Z9TLleNSD1GmaVnLIAOighvbVZgOycmmlvM4mBY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZALDH10tRqM3tCzJFfUUaM6EUFc1M6KHX5nC/YunwPsTXPWhV+KJPvk4o1du2duwjcqzBAqlrZ0iE7W4tMo3fY6/WpKip5zacdR9N4Hafx5jsJaODK/q/SUWtzuyPN5pjQ4c5SzLFZ0sOr51bTmlgKO/j4oJs9gx33G4fLTXMC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZtpRRaFf; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-364b2f92388so4495585f8f.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 00:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719387060; x=1719991860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tv9djtWEOzxTaL6lh9T+uBzCSiUjvyz1rjw0jY3cUB8=;
        b=ZtpRRaFfsSbD68BjRfTwaVCWwq7V5G+QpKnwSW4WnCEWe/wKKeBKmgfTRz2qh+tE18
         W5VYGzWK1K9UkPp4SjpJmYxAwHS7xhZnKAwErCrOrPArG1HzKqYnbGgjiRcoqKCfPgj5
         WyB0qSLMin9ZkgEuNwSE75cnFb2KqIiwewSQP6OA5uzXjOKLOfmiM04nrlVq2/6Xskka
         I+DVk6h1VprrFViZt7fBSIqECoaeoui42YbvrlxqfDq8+bTInnA8veSwk1GrsTIyYjOG
         xTQzo3JsCvIXHwBVlvsnG0yFM1hlbAWd2I1wJ+ixsnBMY+AYI8dUwKk48aWX47rDj1Py
         jdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719387060; x=1719991860;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tv9djtWEOzxTaL6lh9T+uBzCSiUjvyz1rjw0jY3cUB8=;
        b=bvFWbpK3a27FiElHL5PhrvG8Mw1L16GThrR7ofZkUunCGAnd1DbLDqGBSm9OR5DsS5
         KgokSm+KKP4usEVJ0ix9UzFMWHeooFiXclfPLYVQ5VAUgnvv/fK9zX5i/R9TC5YkyweY
         5G8u+TU0bkPeIpTMssp/LNOi6PtHhBjO19GHYiG2L9Hvzlu6am6ulA6c9vzMSVkSdw4h
         EwZJFQAI3Z0HY1HPZQXzeDu8tEeOZoqcCVsdkz47A+RNG3/UI+GSpMRwsgxwAU06nf5Y
         gR0CZUq5KudaXz7ceOF2S0SP9tspvWw1yqn8shkW92GA7vp1BkE8gRuRtc9lRWxGB2IW
         k8ow==
X-Forwarded-Encrypted: i=1; AJvYcCUX5eeHDcSE/+rmIoHLAnDgjTDbM29/HjLwvka+HtZUJSblAWgtca+Igj6MExj/Y7BgDZ23MS+mRHSiWM9Yj/duOjJ/yd0B5TA4QA==
X-Gm-Message-State: AOJu0YzxxdscwsweECKKCCs1Og/cUJDv+jpwOsbAFoANwR3EpwJ0w3PO
	0J9X+pXXBr6DkmIrZSG8sCcVlakkFVm8dyuCNBtWxnG31ynCukJlCNUuPS6ryo4=
X-Google-Smtp-Source: AGHT+IFBXULLdxfeEky/0MesQJ9m6VVrSGMEmCaQc90xJfwO02ZaFbxqLfpmYopxto8Z2nDrU6fdNQ==
X-Received: by 2002:a5d:44c8:0:b0:362:4dc7:dc7b with SMTP id ffacd0b85a97d-366e965298amr5956254f8f.58.1719387059782;
        Wed, 26 Jun 2024 00:30:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-366383f6769sm15081665f8f.5.2024.06.26.00.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 00:30:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org
In-Reply-To: <20240625145017.1003346-1-jbrunet@baylibre.com>
References: <20240625145017.1003346-1-jbrunet@baylibre.com>
Subject: Re: (subset) [PATCH 0/2] arm64: dts: amlogic: add power domain to
 hdmitx
Message-Id: <171938705880.1642577.605500417615578025.b4-ty@linaro.org>
Date: Wed, 26 Jun 2024 09:30:58 +0200
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

On Tue, 25 Jun 2024 16:50:13 +0200, Jerome Brunet wrote:
> This patchset add the bindings for the power domain of the HDMI Tx
> on Amlogic SoC.
> 
> This is a 1st step in cleaning HDMI Tx and its direct usage of HHI
> register space. Eventually, this will help remove component usage from
> the Amlogic display drivers.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: meson-dw-hdmi: add missing power-domain
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/c19f15b1e056a1ab896d54909f75febf70d98be6

-- 
Neil


