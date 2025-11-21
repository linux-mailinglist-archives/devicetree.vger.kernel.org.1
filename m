Return-Path: <devicetree+bounces-241153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 640E9C7A662
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3BBAD4F2407
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A71832C0F93;
	Fri, 21 Nov 2025 14:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nsYWpq+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F53829ACE5
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737076; cv=none; b=ocqTiMi69G2z25g057Xrhb9gYfU1/xSGywolhsbhw1Q8snlEJ+1fSRQS6QB9oHk4O8Y6Ps2EQVKsFeHf0J+o/S4ApqjtH/9Lifrj4FyqfPwyU5P1OSrtDK+JUZXB/gaeIXQ63bNRCFZMy4enOJXzhluDVV3ywpodmT6uWEDGjTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737076; c=relaxed/simple;
	bh=GexnKlA0YgFy7w6qLf9EOJChpUqtHF9jKu9bbfwY66E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=JUNfsZqlfiP6xfjOr0hp3sZF60LKrjmV3yKQCLd3OMfe/zfGmTqt5LWD4P+mFKjR/aSaW/y+o4R7q8n0KFb17c6B6QMmq2Pw7FRQcSehX2xdrWA2j9/jrkFHRxfjiZ/7fVMNJm1kgfktWOiQvjmXhlHfXMHVW8Yt8v7eoYAIB+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nsYWpq+k; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b3ad51fecso1741839f8f.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763737072; x=1764341872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AtUE9VgWDT0up5b20u2z4HmowMp+K68a0eApx09UJwo=;
        b=nsYWpq+kuiJuHSZHecLXmqqVmrA68a/c53i8jxH9mgqq1NvAoOd/I4Bcc1ZHc32zfZ
         +kS+QvQ+thxyrKH7jTdhXBio6TXsyX+es1CY4UpXohjXBgnT212o5laG2exdj0DN0TEB
         XvoESl9ukMfFM+5mn0EQB2e5GgXslnyeIQ1//SLYrnFqOYQ/116VErGZ72VYc3ATNaTo
         Ta+6p9QX2vYR5IQPLy8vazgGMTmQoPKR2+zJJJZSniuFD08Zr2I+GCziS4L+Ds/OBqnQ
         NxNchhDfKi3JYs0u1qIOADuo/PwytHCSWk6QrIoMUpwa8g5LIA7jltNs9IFlnFPXtcZf
         6oKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737072; x=1764341872;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AtUE9VgWDT0up5b20u2z4HmowMp+K68a0eApx09UJwo=;
        b=Yap0AJ2WqcaRyvXjaauYTr4vJrHs6AkzfMRsr6AkQWcBpaonaI5fakQ7kHNKu8dApq
         qNVricHLTKGNtk8ZQi5kxxFz5Ika9BMepgP7d7RAUew0Hrh+4Mk1+6iy7eYROFtPEPeH
         K6MXVdeelcrTfb44F+oZSYRTrdQ7l8+3Y6B7WLoQ/pMsDcgurLI6dCjh3QEhsa3FN5ym
         W9LEzhowcfKQyKwE5oMZ8YDN0XRVtI+XQ8Uj0s5GDsGhPbYcN0Nc8UN+5LurO+RDGSKt
         8zJqaIUGNd5pahO7tofiE7CV/XI0PjEgPG0CpbSvlrTAeJhf09KW7HeBc15nZl0YD5Pr
         7iFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+ml5yjEqATo4TbIdEH2OQK+P/9ysHQbkzFWLrRfYw82sQfzZ5lTRKqCcnJnVXTyTuPoUyNcSdEPY8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5UweDZOGlxWM9Bx6TRjGYLCw+jVTL/LmwPlk/3MPeXUqkJHjl
	F7XzfJ+tPdex4D6mTPhpOd3tmR61MTZWsD2JheMiFHzTNp9GeRwYQQIVcKrTb0OqVWo=
X-Gm-Gg: ASbGncswubqIozPEygU9URyU4CcQdOVnFsTjuep2dusr4UdnyQkIejUCWgdR+ma+wKN
	ikpYgJY8aim0WvDvuMEfP5msPFwhLk12HJt8xeKDNAddM4IiGG0V9usKeab/9ixEB7oN8Dp+s5i
	8Wl5OS9fr7zmLHgS8M2px4YyDTcnQQi6YW1dNSv7pNKTxVVKZ4BY2RBbXFhZXBf34GdkaWqdqBd
	oShbWlCe2v3Y/1mNEXaEtXrwAqeI+YdkuLvH2h+BkVQS44dIfxpOxoe5w+DGJi9mqkFMunRkdtY
	p05LfoaIxoh59+ypxXbGuJijpoeEAfcjN5H7/Q6fuj69kOOxOp2cTuWqJgZcHaypDa2Gc8aXcHN
	aQguFqa9alv4xDUKuTKwt8/nMih4qHVkLovaFSzThWY0snNq3OL2enRLSkTAim/3dnH94axrqw3
	U/qVKSLySsC5KUaSzAAqHEPFaSywvwZ80=
X-Google-Smtp-Source: AGHT+IGGsc+G9i/U16taUPkam+Wa9Fw+qY9LD/Z4a3vJZqhgcrN9boVVP9pk9VKrZ9axd0FyosPCIA==
X-Received: by 2002:a5d:64e6:0:b0:42b:3ccc:91ec with SMTP id ffacd0b85a97d-42cc1ce482fmr2961149f8f.22.1763737071868;
        Fri, 21 Nov 2025 06:57:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7ec454csm10875217f8f.0.2025.11.21.06.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 06:57:51 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Simona Vetter <simona@ffwll.ch>, David Airlie <airlied@gmail.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Robert Foss <rfoss@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Phong LE <ple@baylibre.com>, Dmitry <dmitry.baryshkov@oss.qualcomm.com>, 
 Nishanth Menon <nm@ti.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, Robert Nelson <robertcnelson@gmail.com>, 
 Jason Kridner <jkridner@beagleboard.org>, Andrew Davis <afd@ti.com>, 
 Tomi V <tomi.valkeinen@ideasonboard.com>, Devarsh <devarsht@ti.com>
In-Reply-To: <20251029150636.3118628-1-nm@ti.com>
References: <20251029150636.3118628-1-nm@ti.com>
Subject: Re: [PATCH V6 0/5] drm/bridge: it66121: Add initial it66122
 support
Message-Id: <176373707090.380945.5826140184462252866.b4-ty@linaro.org>
Date: Fri, 21 Nov 2025 15:57:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Wed, 29 Oct 2025 10:06:31 -0500, Nishanth Menon wrote:
> Add initial support for IT66122, which seems to be compatible to it66121
> but probably has additional functionality.
> 
> BeagleY-AI uses this it66122 as the old part is no longer in production
> as far as I understand.
> 
> Now, BeaglePlay uses it66121 at the moment, but at some point, it might
> end up flipping over to the new part. Additionally, it also looks like
> Revision D of BeagleBone Black switched over to it66122 as well.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/5] dt-bindings: display: bridge: it66121: Add compatible string for IT66122
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/e902d2c38a2797aa78c1e08fc1419490bb8c63dd
[2/5] drm/bridge: it66121: Drop ftrace like dev_dbg() prints
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/1ba36afa667bf14820a9862e18b5d55ee47a67e4
[3/5] drm/bridge: it66121: Sort the compatibles
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a1df28b5f4d30467b8dabe861f1da324e00313fd
[4/5] drm/bridge: it66121: Use vid/pid to detect the type of chip
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/a8811c0bb79c60bf2464e939c8e040b5d6f532ef
[5/5] drm/bridge: it66121: Add minimal it66122 support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/715cbb21c6fe2fe5760ea05e873f12473aa5884e

-- 
Neil


