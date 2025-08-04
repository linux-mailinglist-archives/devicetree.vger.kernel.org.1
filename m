Return-Path: <devicetree+bounces-201719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5C1B1A607
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 17:33:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 610571886899
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 15:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7809221A94F;
	Mon,  4 Aug 2025 15:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pbZvo176"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE9D214814
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 15:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754321581; cv=none; b=Y58ziXvyQ5mrpBeh6jEuJpZYKkp1KG/CuK5gXwhDfumq3CZZdVMj3Fy30Yuscu3Xb1NcmsvhnOWE/nKJXZ5HEMflvJVj8QV84/CBrZpU9K9woDX58PIfSPsMQk/a6LybmhLpOWtj9BfW36mxUL04kOAYgnZ84a8uRHnmawgyipY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754321581; c=relaxed/simple;
	bh=RFpbv95nwoE/OgfX00G2Z9nHDsrVsIc1VrUxA6CC7ZE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=C+RbsO9ulMMjaUFSbODMyORhpSD8cBnwZgbaucmgWHoTPKFWQVu7Xe1ACbYiskFho6nGdw8FcLZSwhM9Lwr5VaGLJZyvTy/ORU9UvHaVw3IXh17ysJkxSWr+DsIhSjCxuB33FX9sC2Yk3Tve1xhiFBKivAdECJM4WIxT7A2b5oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pbZvo176; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3b79bddd604so2980876f8f.0
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 08:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754321578; x=1754926378; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+wO1zoAKHaQSzcjVJ3GnxsXBacl0eggix/R4YBPDlPI=;
        b=pbZvo176y2q6W2mB+w869bVgYCbi3MbF82xd8FzharBZurx6YxVlZNm8NocQw9M9MA
         5Y/L0O+YA9t7/Drswd5tYwmZ8025hHKL2K2LeuMg6epEnJp6k0cwhBhKZPXPvAbMCn3o
         2mmGdzvu/sP4glZlvsqGehW2YZbK3zRoViGSneyf7zFiY3H3pIinPFOfK750qAzkco9j
         NrTRx+xLRntnM99lBCD4glx7BjWc2VexVzVClEZUwm0uZgX4+ZdUlxMDumt/EtzKoeuP
         ZGnvOjl8Y9spaPCL8HKgHx6cBrqtUKnO8HMtKINHZseH5f7qqiNLaUMmXHLpcBdJPlB+
         GkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754321578; x=1754926378;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+wO1zoAKHaQSzcjVJ3GnxsXBacl0eggix/R4YBPDlPI=;
        b=OAuJp1/3VPjaSaVszJxt1+w1aB2s9VK+qxqly+fS832ncD6SuiI7nL9SB0pJvttlUj
         qDbR/Cv0NzTsAVsbx7ZLNMiHSzAa+ONGY8mIPl9KjJ8AqIz79LSmWlkobE9J4Agp4dLy
         v7fH9ZJi4MveMxugoERuaGrz475iXMCDCNe0Tfa+BhhXfraPb0V190jws/vZDfMjogTe
         WTZuCDeg7T3xPoWcJ1GGYBDackWAwHA382vaklccHh8owUwqq29Yaef8Ray/12JWn1sv
         2WpGhBTwwQi71pyC8bxxYmtGtJkchNcXmobJk1kB9Z9ZPh49A8Bq8OTJkJDI0IPkPJBt
         fRog==
X-Forwarded-Encrypted: i=1; AJvYcCX8OS0iy/CvYaAfp7xRNGxqPcwsNhPs5xSvYbQV388ueeNduWphrqPa6WzMXPADlZhx9qquGd65ZuPt@vger.kernel.org
X-Gm-Message-State: AOJu0YwwU5UW8XH8GcfG+koKl6W2wttTSgPU2RQQC0oJtyvlRmr7d/jc
	JsDJVbVJZ4QCdJV48w0d1HplI3jv+wfMRfjO+4IABZOhyy1ZQ0MqXOpXAXvItAA0oxRy6wXdp7H
	XfFQtPN4=
X-Gm-Gg: ASbGncu1dB2AxnFsUFats8FhKdDZdzKs+0jDpeC+Gr/EeAYkTWzO1+YSVhXiGHS/uTB
	ncrbUsJJjFMlckGEbwLoD1BNSzOcEnIQNFHMOPQ49LgxtxiCPdnYyEXekKaYYYmJ/XnEKM1Qtb7
	+PZunsIwiQyohOESRG5rUXpfpuT6yXcmKW0gb7GZJ4le07SimvIa6WZiLYbNNXC0zkm6QcZ33JK
	8bZ+lmOHWRzSeFXb20zeY/yP62nTPfv6+TbYNJZYL9UH6G4DmQs9ptSuIbwD1x0f5fBf+ZR/Eik
	hendDlIfLzU9q2XyUQ/yaeKWLaJRmpDHambi7GHYLoYxdKNu6xGlDwZ+piOw52Znij2GAlarVqk
	S2Rct5jjPQfs5bHxeHpvE83nCOptQo6q5oxEPbB7widQ=
X-Google-Smtp-Source: AGHT+IGzYJXMN+QHfXX3SrTuT/OBzGP+W/AdGblgpQIkiy+BxQ+LG4rjRGI4C2pPJoNlunoLVYq/Aw==
X-Received: by 2002:a05:6000:2c11:b0:3b7:78c8:937f with SMTP id ffacd0b85a97d-3b8d94720d1mr7189113f8f.20.1754321577802;
        Mon, 04 Aug 2025 08:32:57 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c47ca5fsm15664010f8f.63.2025.08.04.08.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 08:32:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Paul Kocialkowski <paulk@sys-base.io>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
In-Reply-To: <20250702082230.1291953-1-paulk@sys-base.io>
References: <20250702082230.1291953-1-paulk@sys-base.io>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add Olimex
 LCD-OLinuXino-5CTS
Message-Id: <175432157672.3671011.14707033702603455664.b4-ty@linaro.org>
Date: Mon, 04 Aug 2025 17:32:56 +0200
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

On Wed, 02 Jul 2025 10:22:29 +0200, Paul Kocialkowski wrote:
> Add the Olimex LCD-OLinuXino-5CTS, a 5-inch TFT LCD panel.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add Olimex LCD-OLinuXino-5CTS
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1da71a08080bb5cf5601f237e94c3dd5cede446b
[2/2] drm/panel: simple: Add Olimex LCD-OLinuXino-5CTS support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/26232780077b3e6147fabb6111afd0bd9a60f973

-- 
Neil


