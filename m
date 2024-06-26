Return-Path: <devicetree+bounces-80393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9B19187CB
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:46:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A07B81C211FF
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5065E19005F;
	Wed, 26 Jun 2024 16:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rCrnr7/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A5B18FC84
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719420334; cv=none; b=K13MGNZF7wuchSOVBCFeIUWXPlnhFMVwFonZoHvVR6bp0/flufK01t1rEmKHkXKEvcB7ab7GPe+iehndiMVPH7mSj5AC6r56WNdPi1HvyUWbvk6yotTlik/1VX6Fd27CrDaQ8AnN7AYuqDOmz38jDi6moB8CQSB7TTQvEqjiZpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719420334; c=relaxed/simple;
	bh=ZPNT7OG2mW/9pvHmz2sQtLlVN8m1tuuNdy6sfBuHWUA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Jm0k8DjL5i9II51jFMfu+CWfO0VtU914pCK7f04oVICLz8jT65M5mdeTgwrf6xZ98tMxeRlQuRu3dF33GkcG9G40Q88Zuxv/YFqjQUjQhxiooNPUGCgbTug2pt90uw3adu6ph9zmTUSULB4BpDPUfmbTseYyfqx0NCYsfSWWTcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rCrnr7/z; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ec1620a956so83254921fa.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 09:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719420329; x=1720025129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lz0cNwBgLN/q1pisbwzHSTSwITTngcdDir0qSu+izhw=;
        b=rCrnr7/zd406IBSeFR/ILKqr4ONq6f8WLiu1u7J74wOoMeqdR4qm1eb9838HOEWf1+
         xGvJucETxsnXo6f3KEPvXox96s/0LMQ+pnoFDTMHRzeuyCHFpGl/4RGh7Q4tVNvmSeRC
         TTCaKp9qGm4xmjwo4HrI2BDWJ/VcTOF6bmw06Bpb3VPSXwO6hnEgCYx6VpEPLadsrShg
         T63IlSQKsfCajYQkK5h7xQVgYeqnL/arIfxJf3lH3vB29wlFQWAMRK0JX45x9pS6kwSi
         0jTBi50AAqEj6egcpAb4DjFUwcjIZKqrfbZU6vr8zPHGswWvfAJzUaSBtpHkpHVVR2r7
         shtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719420329; x=1720025129;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lz0cNwBgLN/q1pisbwzHSTSwITTngcdDir0qSu+izhw=;
        b=j6Q669vkYaaTVomgLrZetx9yIOkDG4dY9SX8BqoeOURas0sQZn7/8ZAXf2HES08L65
         6AhLfbfCj6OU+funv+0Kqpxe7zAOemr5h/RvPCQOfcMVa2I06rfSi98rThVRfeWvqsvM
         59zdd8HEqABAaiLPNqCOxH2km8FL9SQE9lVxaQDWqvuR6YQHb1pVGHq7QqWH+bKTam+Y
         XdyiGnkkuFtfOt/7mXfdtPEFBWp4RkR7iri+c+VwsDPKGHfLE/RHiAJ1SgRn2LMEbchG
         V3jJyoqLMh8TBLFy/+39RrT2GkKrLrSStj/NfW+LI3WehMjWtCuVdf5GyhWHSqPYpLSQ
         Pkyw==
X-Forwarded-Encrypted: i=1; AJvYcCUZkHlau1SpTyjEmIg57TDKANTdDE//zcZ/Xhn3dWUSLNnmCxJCJMJe9jBHDNjcmBPKdb+lm9dJx6liaijErVJp0mwO4cEDrDfWOg==
X-Gm-Message-State: AOJu0Yx/zeAAFqI1YQ/YsIkYuZVbdtdnMw0CxRzAmJEvyToPIgqW2EyN
	46G7yBQpo0rVUudEKYnVuExrwarJK2pm2O6UWYOpbgU1+vodNCapxAMMdrvnH3dlZvSD7oQWGw6
	88C8=
X-Google-Smtp-Source: AGHT+IHZkdTYNY9XjPg8vTYUIU2x/RrHKqAmZArKRjfj6RPD4xbNZZAz/zyjT5CN9xjWCBkBDvABhw==
X-Received: by 2002:a05:651c:1991:b0:2ec:5bb2:c236 with SMTP id 38308e7fff4ca-2ec5bb2c276mr86596561fa.33.1719420328949;
        Wed, 26 Jun 2024 09:45:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c825f752sm31945865e9.20.2024.06.26.09.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 09:45:28 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Michael Walle <mwalle@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Gunnar Dibbern <gunnar.dibbern@lht.dlh.de>
In-Reply-To: <20240626144433.3097793-1-mwalle@kernel.org>
References: <20240626144433.3097793-1-mwalle@kernel.org>
Subject: Re: [PATCH v2 0/2] drm/panel: initial support for the Ortustech
 COM35H3P70ULC
Message-Id: <171942032809.3067283.16387497426069805586.b4-ty@linaro.org>
Date: Wed, 26 Jun 2024 18:45:28 +0200
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

On Wed, 26 Jun 2024 16:44:31 +0200, Michael Walle wrote:
> Add initial support for the 480x640 DSI panel from Ortustech. The
> panel uses an Ilitek ILI9806E panel driver IC.
> 
> v2:
>  - use drm_connector_helper_get_modes_fixed(), thanks Dmitry.
>  - slight header files cleanup
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: add Ilitek ili9806e panel controller
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b7a0c0e9d80756da52d5c88f24b5253a08108724
[2/2] drm/panel: add Ilitek ILI9806E panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/baf272bac637d3275bb83c17ac849b44a4590655

-- 
Neil


