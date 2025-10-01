Return-Path: <devicetree+bounces-222913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4CCBAF5E0
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB914189BE8D
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B9C26E6F8;
	Wed,  1 Oct 2025 07:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e5vJaUba"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A626B75F
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759302877; cv=none; b=C1hKmP/1+nfAI4c4FrZ9Fo4s0VHyjxVfyuoaDMT/0pYIKYvzapwtXWOhOF1BfyQ5ytDkemJpifBwKOyBFT5yhoGTrk1zQLRPUZqPCqOLhxFqnTECmLZaZN8c+EMX8MJIIdSXB9RtkroRiRfO+Y+m4/qNvdtDnKeqr0y7FKbGPdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759302877; c=relaxed/simple;
	bh=SOSNthDQ8EtFJ9H2g60zSiqKEmfmR4BHtXlNS/cnOZk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=F9uM4sHY3GpysNh0B2YMGosqkz21t8LZn+4K9AfTdvo45slm3w+1lqdY1jwVsjA9totw0v64hse9fpsavXDfbhYLz5VCSj2Svjh+I/bwYQl6GyIHz43IkWqxqLsEAzRXOrt3PMT0bNXhDBb20kqgpZRL4QvuEuuEoLYcCvB16Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e5vJaUba; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e542196c7so3468085e9.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759302874; x=1759907674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CnrCm82N9RDCdUhU0ThMIOx/wxR6eW+Zxx59nq/+ZhU=;
        b=e5vJaUbaPgta33RBv8FZVGL/kr6mZ1E5raUchujAHoD+UNXYZOnaJgUqVzwYRNQZGm
         OoBzegBxW+qFCNpw+PmEtNdFzHxO/H3AkL7VvWfU4e5dT2zbEBncQlt3i6JjgcE4P23f
         UYn0JrMgex4YNCFVWugjX5uXEtNK61Jmdu5WCj9B0Cnt3RE0//aud13gxudVhj8yYheA
         6CKua/ExpbBbINEH48NhHrUgz4oBykPUXxcPW6z3w1Y+8RUlPZxOWw3D8dawVxfLGKaf
         LZpeIa0zbml/s7q14vplPf6tp6jwxhujFs8bCyalZZgC9P9WE9GfRSaf+o7lD1vNLKm7
         ykfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759302874; x=1759907674;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CnrCm82N9RDCdUhU0ThMIOx/wxR6eW+Zxx59nq/+ZhU=;
        b=JV/QwRE2BDb3sLHIN7hZInpavOxV5E8jSIbmfjhlmBICCAPR3lWX8bZ9n/sFX5yyt4
         rkBYax+25TwDUrcPU7ha09jAlGjSJbXrh2deSu2cSiWR5Sk0wxPWzQ5Ob54HaQUdU5Qh
         0Knz1rpKvIRA11k4jvcfiMpgMeeiWczjath/Uua9TA96pV3BvIBbK9WFSmVWqkXxXISj
         64vP3KeplTljVapU678ID30C9TH7BlneoaOSJNQfPyaSFgG81K4A9GUWh4qnwJIfG+tO
         bRFpSKRLYiTSeD6m8EOjZOhIQb+fuFmgT13eXUIbfXPLMvRenblTAgOlzl6Z+kXyLjbl
         eo8w==
X-Forwarded-Encrypted: i=1; AJvYcCVv+v1JLJpjMXSnXj8LaPiFHKOJLq5zIVetde5oIkXV5ubnj/WIoaryXk93u1AEcui1OGE9wtbDnFV7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2I4o2domfFVGVb37nwaOhW01qmPTD8PzUcorm//Avn/Ff1GH+
	uW6UrrvMcUMmNmQGOPnMJPDKcQUlPpx1v9oBKxMlSqfKLqTKUVdS6AoVw0TY+LsRDZk=
X-Gm-Gg: ASbGnctgNinuOLl+hSu8xTVzcIOc4q3QjsLE/HdINiZGMy8i7saZ/mX91OXWDa3vSgw
	DWRM+e3DrCDH511iyfeeawULNDNLyXxpOjtoFKVVKeaQvrDvgmTF0SzatCPf4QLJAVHCKdEF7fe
	J4ADlYuCVNE8zsuwltmGSQvBkDhrrD4+NpA2i9pBfCQiwnwHWB71FmV5NkjzYu+s+iyzTUUmktM
	gAIv9oAdL+KHIBoAQ7Bzmn6bxGRWE0D7hGUY0lnQo8moLVTXfUG+TKkhjcysZZWq3hjW4VYmzvD
	RFfM4R9yrrV1JUW9wYNsNc69r8KdDjoXCRBKoUDcsxsca/W4aDt3QknC84MgwsrSIJnEUDBNitG
	9BYuEOoc2kX6XzZegG4Br9VngKyic1E/lc/EDDfDc9ArgHQrZcior2eJgI20WxqBz2GM=
X-Google-Smtp-Source: AGHT+IEPMG4C8VjwA3pQsA24NLtsLy61u5i8hAOBeHwnCJP8qh3051WTzyVCw5X1oRCuGh22oxkRXA==
X-Received: by 2002:a05:600c:c117:b0:46e:6339:79c5 with SMTP id 5b1f17b1804b1-46e63397a8bmr7307155e9.5.1759302873435;
        Wed, 01 Oct 2025 00:14:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e619b7e37sm25185825e9.1.2025.10.01.00.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 00:14:33 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, 
 Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 David Airlie <airlied@gmail.com>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, 
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20250904205743.186177-1-marek.vasut+renesas@mailbox.org>
References: <20250904205743.186177-1-marek.vasut+renesas@mailbox.org>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: ili9881c: Document 5"
 Raspberry Pi 720x1280
Message-Id: <175930287261.425863.7680841770624369049.b4-ty@linaro.org>
Date: Wed, 01 Oct 2025 09:14:32 +0200
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

On Thu, 04 Sep 2025 22:56:56 +0200, Marek Vasut wrote:
> Document the 5" Raspberry Pi 720x1280 DSI panel based on ili9881.
> 
> 

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: ili9881c: Document 5" Raspberry Pi 720x1280
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/86769c7df4ce2f58ebe67c08aae3f52090727f7c
[2/2] drm/panel: ilitek-ili9881c: Add configuration for 5" Raspberry Pi 720x1280
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/97f0d2ed0c6849e24c43a1836ab5ac122f80fe9d

-- 
Neil


