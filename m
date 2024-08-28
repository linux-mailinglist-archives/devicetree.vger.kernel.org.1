Return-Path: <devicetree+bounces-97602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00946962C05
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 17:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B31B62881DB
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 15:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C88319E83D;
	Wed, 28 Aug 2024 15:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JtPlOvWw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B182713C3D5
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724858395; cv=none; b=KsraStNEz9rVkAZMJ/FT0yRjfoNvtB1GVx1SPa2bgIWKHwcZOvMgzX1OMobtxutDrkiX80T1joKsf9bbBPY8Gl4vyvGqppwmKvSLXN37bIGrE6oWDQ2gTO1lybn5U6FZX19v8ulF0qlyoiI4WQlEtB2Ce28PC5xPIhXJ6/IV/+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724858395; c=relaxed/simple;
	bh=7aD+AzCSeMsuiftPJ5aRODAeiInYCsCGaJyDmBjqgEI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KdppSRbVUZWlDyxKXV69Nog+avybt1dhUSwVfRgUyHxV8BqF62Z4XcSbvpwNhmki3IDOWlVBECgN9kFAmlw9odT/lv/n/Wh0ddctSTW0xcjI0XovYmlz7RkapwYrYdmhN20/TiO1pucG/l6/nNe2b3iE6LCNHe/E2mWjb+kLAkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JtPlOvWw; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-429e29933aaso57955875e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 08:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724858392; x=1725463192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CpCSPrvHbvgoQAYP88DpEJGLj5yIDmGzU0Kjzww6IQQ=;
        b=JtPlOvWwoph2yJcyWkgGw05FhcEecRvvFjvHCExnZIDA1IDVGagOOGE6XqKSs8AQWq
         aKfuzY2WRNwAA3QfOVaCRjm6Jpx62WmSOmm7VlSNuZKBjSrTHXv091Pwbx4XBz7sDOBY
         OITmRCuWB+JzCkBvviYHpcU/ffR047AOee1uwx8fF6f6H68dVf2xZ9Rlsg2iSqAXz7hJ
         QCNuemwtttr7lR7gutWRyNrNKFcL46NXS7GtKQV1F6mKBekX9w3FIDBlOgIyB4/3e16t
         07rnkrDw7DztzkGzBFYTOBxiX+5DFvq2KtRdDodak8ARiQRc9p0MNvH3Jq74s2cLIlLd
         1FKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724858392; x=1725463192;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CpCSPrvHbvgoQAYP88DpEJGLj5yIDmGzU0Kjzww6IQQ=;
        b=db/Y3Vo0NBHiL+ZICnqiwUIHcmpp6BR07Q0MtVa4sgiDscWL3MCXqr23cDfFgu+RKD
         2yM3phP6D5syBNWMkuJwnxJVx0tU+b280xBkyNw3jjH5CWmxqGI5n0d99QjkBBXTkUoq
         VbL6vI6B2b8QXRs78Xg+ivNsLbzhuX/v5ASK6lIvLC8G/OoacjPJXnH824sln0qqbgmo
         vnXQc4fgCwSndvtvL+w8DdCU9qfsxt7dlrPgN+5DEQ6cyLm/2X7sY8T57W18TLuX+zrX
         JkXCnZa4nAn46QYnVJ/eKxhCiyEduk7FbiA/e37O1I53jq0TCa4kzH3kesCiaxz6Hong
         HdYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQ9bnvL/bxamDGdAFJZjf2J0f+CdYmcBVseAyalVz1H9UmALN9enM3vMFdrPqis2mVksvZz3QW7+/R@vger.kernel.org
X-Gm-Message-State: AOJu0YxtOXq2NVKwBz78WR5h7Hz/eKxm/jnNhaZI0hLVl3I4+bfg8uQZ
	iTQ8dh84ywMq/n0q1W17nYkhBjpbeNFvvdrLpRcMfMHAAOIdYvhsAP1TK/FhT/g=
X-Google-Smtp-Source: AGHT+IEGSU/UwPVBHorEXHqFGG8jxUW916b7N6C+V6g9017AC5VrtKCvylicZ/00xhSSsodhFPWXdg==
X-Received: by 2002:a05:600c:4f47:b0:426:629f:1556 with SMTP id 5b1f17b1804b1-42acd5e2150mr117558075e9.31.1724858391632;
        Wed, 28 Aug 2024 08:19:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba6425a77sm24631045e9.45.2024.08.28.08.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 08:19:51 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Doug Anderson <dianders@chromium.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20240828-topic-sdm450-upstream-tbx605f-panel-v3-0-b792f93e1d6b@linaro.org>
References: <20240828-topic-sdm450-upstream-tbx605f-panel-v3-0-b792f93e1d6b@linaro.org>
Subject: Re: [PATCH v3 0/2] drm/panel: add support for the BOE TV101WUM-LL2
 DSI Display Panel
Message-Id: <172485839079.3445878.15332347279646667687.b4-ty@linaro.org>
Date: Wed, 28 Aug 2024 17:19:50 +0200
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

On Wed, 28 Aug 2024 17:04:18 +0200, Neil Armstrong wrote:
> Document and add support for the 1200x1920 BOE TV101WUM-LL2 DSI
> Display Panel found in the Lenovo Smart Tab M10 tablet.
> The controller powering the panel is unknown.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: document BOE TV101WUM-LL2 DSI Display Panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1da04eac69197032813940426b73fff6f0a84c64
[2/2] drm/panel: add BOE tv101wum-ll2 panel driver
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/aec8485f226c36eb4eea1d489772cd6f2c40144d

-- 
Neil


