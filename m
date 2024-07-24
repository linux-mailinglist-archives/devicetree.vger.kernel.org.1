Return-Path: <devicetree+bounces-87748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B779893ADAF
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 10:01:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E56561C2245F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 08:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230431386C0;
	Wed, 24 Jul 2024 08:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZbPIqAAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597CA13C816
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 08:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721808009; cv=none; b=kO+DjipCoUxFksJ7/7q/GaGnsnXiqjt6JdlkRnHDSiLxorcCnzzOa8Y6KoI/ks4MkIbsTkwmG+hUz8OpShdy1yXdrlhJKRl6VEyht9R15PNzKOrvYv2PJVTmFp4MSQyHBuITgx6dE78c8i9/1YyF2WAKy2/+71l+U+B8Imw+zag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721808009; c=relaxed/simple;
	bh=jEKcah3lvEQDExDNNnTNdc1mQLHrgZ7Y9K+xT/H18/E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Tt+YOpMOFBL5K9FEu3bmZE3FtwD/M9rVTKaiYtzCUoN3Jo4tgnCZWrKlGp3kI9iA45ZI0aFztr2aCObecA4d02XlfpNU8+4gfpjRLz645Vd0eQW5JhW17/tit8cMKSXkCddbMaEJ6eA0WisNsgyq1mB2g8EgK+Hh9MtCJco338Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZbPIqAAt; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ef27bfd15bso43734271fa.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 01:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721808005; x=1722412805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=renq8SnFNGcgtGRRjEZ70Zi7VgeT79AsJsQAEIb2hJw=;
        b=ZbPIqAAtyQxgvbfWrI7QrEaJ9wsYFVLXyt0xNI134qqhSMgr24R3jyjqslADrA4gHU
         EAzMHwq2GPVdFphIlS0jthafqi8gW6whtK50yNG+GcylLrbrjQvGP8QB66PDLcllGKs+
         5l4dbcoYWl4KKhYm427+zhZrF0U6zt4sz6tSoD/5RYmiUxTVauPt8Mmgx0vXrBzbon+w
         ThPfN+1FijJah15v2azINz4OQfWKRORgp15K91IgVeFwel7g/NtuKkdftjFL92fbDo27
         fHkaWaLT3wWF7oNMWLHzKR8Y1PCHCD8a+m/qdRjUjaFKp/efdmrzOJVGnTuqOyxrSGw4
         8bog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721808005; x=1722412805;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=renq8SnFNGcgtGRRjEZ70Zi7VgeT79AsJsQAEIb2hJw=;
        b=WfbDNyGT8FRLpsXE6yu55y5FFs4aUyr8ndByuNJblnQo9V9tLxwxlQE7S4fzAR+lDZ
         Pq++x1GRHx6JHdcVPBR1/0L0zXLiPkr+UlvMHkruKjQehZElNB4OQAjaBrrF1FS1wtFn
         LoCeZhhF2mzuLM5Oo7IXyZKxBQbBVFs2E4kY6qXWuNRMHf1w6NrrRrhvhaBDkhYzcsfO
         MxqFGMHOPUZkb8LkrfmZ3xBT1J9QHMHNFs356zx4ypCPfY4BN8Q3uGdA/DbUy8L5mWqp
         OEuPTAdV2NhM8fx5DmcsmMpW+S7CuGjivCQg0UXo3hMEh1Rb79w9Z+asTLeJ0cksk5YW
         IouA==
X-Forwarded-Encrypted: i=1; AJvYcCWshL7KHyurDcUn4yzm7DoLPfJyo2iGN1PVmMx5GMuI0F5Kopk+K+JZp60TjtynjUT/XNsGy1IJ6ONXcjNFLeVlnVhv+fjDaKi1/w==
X-Gm-Message-State: AOJu0YwYnOiee6xLrAMh/oo5F4nE7kNEwaN6HoVKWnwSNVKRRZCLkoUb
	7UycTNMsAa/sXeZV4zICMc5eaqa6ixnEq1tmMNcWnxRRjvUgf5kBjO3GRSezzMg=
X-Google-Smtp-Source: AGHT+IFa22i6Jk+2hjtI8jnMqIJA7MFmqyU7o5ILqZrK5p9+YamOmkqBiQxhUbuPBuqJHpi1g/dV3w==
X-Received: by 2002:a2e:9214:0:b0:2ef:2c20:e061 with SMTP id 38308e7fff4ca-2ef2c20e213mr61203471fa.22.1721808005049;
        Wed, 24 Jul 2024 01:00:05 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f1f52b8dsm33884015e9.1.2024.07.24.01.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 01:00:04 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>
Cc: Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@gmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Michael Walle <mwalle@kernel.org>, 
 Rob Herring <robh@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 devicetree@vger.kernel.org
In-Reply-To: <20240724005700.196073-1-marex@denx.de>
References: <20240724005700.196073-1-marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Document Densitron
 DMT028VGHMCMI-1D TFT on ILI9806E DSI TCON
Message-Id: <172180800420.4044086.5272410290132063328.b4-ty@linaro.org>
Date: Wed, 24 Jul 2024 10:00:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0

Hi,

On Wed, 24 Jul 2024 02:55:52 +0200, Marek Vasut wrote:
> Document Densitron DMT028VGHMCMI-1D 480x640 TFT matrix 2.83 inch panel
> attached to Ilitek ILI9806E DSI TCON in the ILI9806E bindings.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Document Densitron DMT028VGHMCMI-1D TFT on ILI9806E DSI TCON
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/aa48c30f096bc10a583c2294d87713f2802986c2
[2/2] drm/panel/panel-ilitek-ili9806e: Add Densitron DMT028VGHMCMI-1D TFT to ILI9806E DSI TCON driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2108cdcee58b06460a8ecb106d15ab69f5bd49fc

-- 
Neil


