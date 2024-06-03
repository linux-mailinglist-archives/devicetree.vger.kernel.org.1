Return-Path: <devicetree+bounces-71758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E64BD8D7DC1
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 10:47:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22C621C22626
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 08:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A80EA4D5AB;
	Mon,  3 Jun 2024 08:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KwTAIS58"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC1F78C63
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 08:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717404381; cv=none; b=aQQCWb+ZqaCPJUJ8j1E1ozeLxSo5wB5bU3wAXEtrFuJKd/lQU7Kzjgjn2LUhyAUPz7sgAUryyRfp9ZN9SH2W6Qy2Udbj2fftZtWugtcNyQoVmIjLECWRQnzB3Z6oIWTQZsVeMQ1q/akeJvQpZk9TxqW53KlCY7a2VjkHsFPtfNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717404381; c=relaxed/simple;
	bh=Gg6J+xqi5ho5Orc35EIF7ln8eEBv1RCMC9LEm7u9oRY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Om9Dcjq1houN6UdQw87fGhMMxbkOG38leWTg3+TY9RdV/oZjGjyrcB/XsQ+HbM0rfLQkaNdipqJ1zbvxABtkJmic8YnZ15XvkBIUGHQpLoKRoZ7/Yg76O1avEqmeC8vlB4a417S+PZM3VavQnua+Udm0NL+ZE8h6CzNdmMirhLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KwTAIS58; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42108856c33so23397475e9.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 01:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717404378; x=1718009178; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q1ljPf81ph/W2qxW2onCfyshEo5iYLRHonj3GjJrQNA=;
        b=KwTAIS58ArRZ4NRCiSkkW2L+TMv3osqIWcy/4WHMBsmL7sEU7s6aysdy1SypBMurRl
         kIjDznUYtYxIfkf+qcb+tv/XtB4svYKq6vke5LaTT2lk2Rh3YnEW8OKauu5vNqa669bs
         rmJhIc/gqnUW/CkNIKRFJwUUI1cCXwpu1ENKxXO3cKoglZ4uXv99EGe6AwGeLq6OQ7ZY
         Oq8G3XV9AwVLaEVHHKLTpYBxSay024KyBNmP9acaSVbLwXHMLKnltTyuhugZH9jSX5os
         ec4rT0tAQUksJZE6pBm8LplTUvonbMUvWcqNb4rBy4hqDm1JBdcg68KP1vkpDnDcPAfg
         ChqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717404378; x=1718009178;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q1ljPf81ph/W2qxW2onCfyshEo5iYLRHonj3GjJrQNA=;
        b=WC45tcCC0xVG9j8A6vAlXCpTMsZi9acNS3HKtXM49zyEmAUIURZqPRXIuhn5noRiFX
         jWdC+yrDb+nMdOfg5uYBjZYEvOZuJkD+eIlZlSngr1sNDAshbTfpdmfF3HaYOsuDh5eg
         bxes3cuGD37DQi/p5UHVWVq/NozI5UUCmAcrwUhFzavhbPn3FtU4Wkj7QlczjcrTszGx
         nvFi/hMLKKfLRPEyTFqFqukOWjAggUFWyrgEVQkAu2lykG/anixESCWOzUuMpkLVEF7q
         Cdq94M20T1E/qX9VQL4OLsxxQ00oVOMinwrSQaHhUQIZIAZVrqxGpCcSnKo5iL/r9O+X
         GPew==
X-Forwarded-Encrypted: i=1; AJvYcCUfFXII1a56PHmL2c2ER54MgqBu2F28DOLTQe18fYE4xjKog4+i0Ltp798NzOVPpWD+K0XPFbZzpL48n7HRZtibTBguygVYWGCeMA==
X-Gm-Message-State: AOJu0Yw8GpUa/wUch8OxC2JBzSEUMkPqnX3RVbQX5c8WibE+uzAgsk3F
	/CTpAKZmf3jKQ0CyOzNMelvQpKHAlIrxvNsLKOFdndnCFTEIH6WbGdJVe7X6vq4=
X-Google-Smtp-Source: AGHT+IFo417hBZRSwsii+or/d9cHPAd7DacIhAnSF4J8FsbSLQbe4tV7OhSfQWo8c6wzbnIOXzFoTQ==
X-Received: by 2002:a05:600c:1c11:b0:421:2a54:2f22 with SMTP id 5b1f17b1804b1-4212a543232mr85968895e9.9.1717404378173;
        Mon, 03 Jun 2024 01:46:18 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4213eca8a51sm16117655e9.14.2024.06.03.01.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 01:46:17 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Ryan Walklin <ryan@testtoast.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>, 
 Chris Morgan <macroalpha82@gmail.com>, 
 Andre Przywara <andre.przywara@arm.com>, John Watts <contact@jookia.org>
In-Reply-To: <20240530211415.44201-1-ryan@testtoast.com>
References: <20240530211415.44201-1-ryan@testtoast.com>
Subject: Re: [PATCH v3 0/2] Add WL-355608-A8 panel
Message-Id: <171740437725.4156184.17662886246928360602.b4-ty@linaro.org>
Date: Mon, 03 Jun 2024 10:46:17 +0200
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

On Fri, 31 May 2024 09:12:12 +1200, Ryan Walklin wrote:
> V3 of this patch with further cleanup to DT binding example code and whitespace fixes in driver code. No functional change from V2.
> 
> Original cover below.
> --
> 
> The WL_355608_A8 panel is a VGA LCD display with an NV3052C-compatible driver IC, used in a number of Anbernic handheld gaming devices. This patch adds a device tree binding, and support for the display timings and init sequence to the NV3052C SPI/RGB driver.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/45b888a8980ae9a09fbf2f50b0ffb7505a834533
[2/2] drm: panel: nv3052c: Add WL-355608-A8 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/62ea2eeba7bf11f4b04e080475de93c2f8ee0f92

-- 
Neil


