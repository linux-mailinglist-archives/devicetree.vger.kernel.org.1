Return-Path: <devicetree+bounces-64468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D78E8B9715
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:03:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6E761F213C0
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEB7051C45;
	Thu,  2 May 2024 09:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QFFgRJJk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B531320B3E
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 09:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714640620; cv=none; b=fXx2+phnXaycg6FlsDNHXkMBRZqFzozujd7WGvzRh0wFQR7yAq85iHO1RD8lFrMHsewBmVTWn2/K6ltIgrIq5X/09z5lKUvwO/g9zzLxjixSa9IRMquizgRTu0Je+41Qw5ZjVWGdPGyLXNkD4mdfNGLZ0ejBzc/ib/TRVRrnsKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714640620; c=relaxed/simple;
	bh=Jglfs2pABPclxQGT7zvsJ9j6EY5ovQg0Zvjn16T8gxU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=S67j5osCZ2I9STEEb4/TzpWwZGJZTv5/HelyRUZkCubgMx21/jQrVx90l/RlSrdXc6d/aYrf3TNDbsqYDIIvPDZQO6SUfLdo2iWRMP2vqX1AHLsDsVcmHZ/U0itoJBhr4/0Bv5TxzLvxl6Ysuf52HlZrSD+7s36zgGVcd/GcB78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QFFgRJJk; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1ec5387aed9so22520375ad.3
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 02:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714640618; x=1715245418; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f4N8GU+d1mV2wTgjb+Tth4J8cXkQOLnlslwrqaEwJL4=;
        b=QFFgRJJkdpLiP3RVHcGXvHk9QNuYI4he1m9nc8qUwlb2+uNEEaLXgjakYIUJNFIEOW
         DWGTcNbvxWbN5LYTZXyKS0KgkWn21E1WYzZmihSKWZjM8CYc5nnKcHfRtJVpDbMw7ZIV
         VY9TrsZlVe1DYxQ3UIBTb3/rDSG8uY4bCYJgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714640618; x=1715245418;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f4N8GU+d1mV2wTgjb+Tth4J8cXkQOLnlslwrqaEwJL4=;
        b=t5wTZZezJiZK3jfjrDH48lvfuW6w7pPc/BC6tNQS8fCvNXA7DNFfY83aUUn9zUKNr2
         NjLVUmpiIjebL4psT3+u6LVr4iQKQQ9h7lVB7FDggs6gL/uXY5SEmexALcXZmEIe2wOo
         /uz7KKEQHGOOa4U1yL3pbBCaCt2oi8ffCqxoyf2ReDMMbSmIOwHPc5YADtJZnAu1w/f0
         12CZrfyReHWc0W1/6A/ZbRdFo8zbYb8MWtCBeu8tmLJ3QgSzK1m/z2NHu5KBJptCjDGd
         aiDZZrt/9cg6fqwvs5U5eWASQ0LVf1bAAb9Gi48NA7d1shFq3BEWlFD5IeJYB0EWhwBR
         d9pg==
X-Forwarded-Encrypted: i=1; AJvYcCVyyxSHWD4kOquMTiK7pb4CjSTlgRmoSARve82SXwjGS2uNSJSq9Suy55Q6VKx9RDkHgjHSXe1by3gtkbSFWvZjlUysoHSkpdvvwg==
X-Gm-Message-State: AOJu0YzkfZIuCIS0yJgJm6GAbNV0+hIp2jOQR3EgaK1M19W4FjIh/rpk
	DV2PbTsyF75Lovo8qPCmQu+l/lI8yEClfuvVsLKK0Jm1im5L1H8t3389pv64yA==
X-Google-Smtp-Source: AGHT+IFRnWDNjDH+SOdNczIrPriuznm+C9bqK1WVko8EGJDcbadaa3IFubaLd6ulXbchx0tVQ9aiWQ==
X-Received: by 2002:a17:902:e551:b0:1dd:bf6a:2b97 with SMTP id n17-20020a170902e55100b001ddbf6a2b97mr5140711plf.60.1714640618092;
        Thu, 02 May 2024 02:03:38 -0700 (PDT)
Received: from yuanhsinte1.c.googlers.com (150.221.124.34.bc.googleusercontent.com. [34.124.221.150])
        by smtp.gmail.com with ESMTPSA id c17-20020a170902d49100b001ebd73f61fcsm764983plg.121.2024.05.02.02.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 02:03:37 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH 0/2] Add TDM setting support
Date: Thu, 02 May 2024 09:03:30 +0000
Message-Id: <20240502-anx-tdm-v1-0-894a9f634f44@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOJWM2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDE2MD3cS8Ct2SlFxd8+RUE8NEg0RLA8MUJaDqgqLUtMwKsEnRsbW1AER
 23e1ZAAAA
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.12.4

The anx7625 supports two different TDM settings, which determine whether
or not the first audio data bit should be shifted. This series adds the
support for configuring TDM setting through a property in the device
tree.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Hsin-Te Yuan (2):
      dt-bindings: drm/bridge: anx7625: Add a perporty to change TDM setting
      drm/bridge: anx7625: Change TDM setting accroding to dt property

 .../devicetree/bindings/display/bridge/analogix,anx7625.yaml      | 4 ++++
 drivers/gpu/drm/bridge/analogix/anx7625.c                         | 8 ++++++++
 drivers/gpu/drm/bridge/analogix/anx7625.h                         | 1 +
 3 files changed, 13 insertions(+)
---
base-commit: 90d35da658da8cff0d4ecbb5113f5fac9d00eb72
change-id: 20240430-anx-tdm-7ce41a0a901d

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


