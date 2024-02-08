Return-Path: <devicetree+bounces-39680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F251984DEE4
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF40E1C22DB5
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F537A738;
	Thu,  8 Feb 2024 10:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LdzTlN1h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667556F061
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389615; cv=none; b=dp5vXaPE3av1xTAw1FiwLx6OXj+w9ul7q+Vl/KtY6LJ02dxvjqirMQB4Ck0uAOM1JQL05ZhiNtr5kx21DYpNW+f8Yn0ny9pMKcAfMCa9vDMqf0xtDlaxA6FA7Ug2Ef+s8g/X8F2IWgkmu+zL8ypdnIcUE2JQpnifcmuy7pZj7eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389615; c=relaxed/simple;
	bh=Yak4cFjMHPZmLSpzj5mNffL7x3y3cDltdS0WVHZOEzk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Yy1sTKq7PDwNrB2sNY19vhOnTAVdtjGJG1xk7zBa2Mz8+ZPT/gOVZB+vVYZzTwmFaWpVmSbXKXqGBkY7o/+kSj8ryyvdwk5uBT4DR76jk6qK6i4mP9GnxOAuOi0jEUJ9ohhxDYdIUSeC5GqnPyeHwXD/131cTGhj9izQIPCaxFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LdzTlN1h; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d0b4ea773eso17027281fa.0
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389610; x=1707994410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jPbaHNpdgRM2voFhkmhteYkFLuMSfGggj9pZ2tYQahA=;
        b=LdzTlN1hUIqHqT5L5/jBEJc1wkIZL5hW0kTD/69px5dENE823nf4WSe6vThq0Fk40d
         AHtsR0TLyUmrs2ISVd+4wUExhz687XALkZZWi+a1y9JmbaeE4hfrU2CvzqYPTlrv+wKo
         i2GsYyTDlOZPc5ZHHC37lWuwoklOfyFKRyH+9qW3hjOaK2Z9mLxT7nI1ZnNpTSF9J2Mb
         +VttzGA8v3aYYNeUAxk8nuNjVWkOwe+Qu2xQywGwEnPGQnxY55C7/wG6/Jq1yIf8rTjR
         lLugGaZ/j+dlV7tEDJVRobhJbcjSKzYXNfDWRezL0txK3xWY6fr+xruJ28FarU5eA9CM
         M92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389610; x=1707994410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jPbaHNpdgRM2voFhkmhteYkFLuMSfGggj9pZ2tYQahA=;
        b=vDG/djvnLpwl/cHn8pqIqJmcGDD6wTIEmVy7RoRMkJT28TZ28fjYCLqwug7GiXM78R
         BuASlJRBwuBrRTer8Wvsvok1OLl/AtTcivi6JK8ezG87tt6A8jnLtn8ir6AX2uchOgud
         ziQo/L9czXX9cRYv2K+p/gD3UjwtHWo4th1mC0f7BMwsM28uLyXfN+vyHKXgdvzYnBb4
         3qbfKO9S3jGUy1fy8WQKUuLu03iO2dtppYtNB+1JnXQEof5ON0EoiDNEHMaX+IzpDvFk
         CN7dX5pyeHleRQvLDMd5zCKmU6zxROtgg0lnmly2X1LFtsSl4jSgeeqVUwm2n0yDMKnw
         Y4pw==
X-Gm-Message-State: AOJu0YwethUEq8j2vhfKVOLfyDGv/cwXcT+mdzrw1/M26n43tjpixgob
	MxBlXeak2CYjmY+gOYqS08TbCHKDJRrBohg0E/ebHaAy9OUFK1E2EFdSU07PAaYSP5+AMgafPzn
	R
X-Google-Smtp-Source: AGHT+IE6hoYZwYD0dWVmAGmKkSd9PFPDghU6N/6PiAFFxP0tnFnQHDz4xtisHPCpPSjEHYZbbvqINw==
X-Received: by 2002:ac2:5de5:0:b0:511:5036:8e9f with SMTP id z5-20020ac25de5000000b0051150368e9fmr5870212lfq.12.1707389610461;
        Thu, 08 Feb 2024 02:53:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUMWuVQrY8stnoRFivkfykW9gfoU0KgAA0ARDUMH41jJObwrwK24UxqnmtnhIh7HuLi36zZF47bUqwTj5/iDe3BgX1D+neH/suGK98ikRsEayZc3frc75Ba8Fxkvlxze2U+vEhHXd0WNHXHobVIL9WGPZ32vWOGgb74yaRruhPZaMWSy0grEws+eImfbxq9E/IMa3BchtzPwYKvf8l3jQV01BoqDCezhbd+Er+vqIHG24dehg7PE3abjSYP8VaJmFPYTI8/Z5BrQzpNQ3Y82uFMdOsTBTIGbKjvn1FwpEiyVWOg1nCTaNswIbhAmOluIBlJQQWrlV0Dq1ssIxvVDMVrqaumY4iiDn2qfZ66Mg0Z05CkG5TRxnQIV09wt/fnmEX2tsDu+/oLfQj66YG6B53ePfamdT9eQ2ykHOnWBFlsxhRcoL4HblQcp5YM7e28N9NoAwISAhmmb3C/TVIvLfKIkTnEAabzfUsgyU5j3t0MPH3NbpJM4MshCNBQsY9uKkBuLUkZV9wV6n3BL5Itk1ZWJpSJH+sqWohItBFunGc=
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id s10-20020a05600c044a00b004100b3c41absm1212129wmb.30.2024.02.08.02.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:53:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Benjamin Bara <benjamin.bara@skidata.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: use capital "OR" for multiple licenses in SPDX
Date: Thu,  8 Feb 2024 11:53:27 +0100
Message-Id: <20240208105327.129159-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Documentation/process/license-rules.rst and checkpatch expect the SPDX
identifier syntax for multiple licenses to use capital "OR".  Correct it
to keep consistent format and avoid copy-paste issues.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/visionox,r66451.yaml      | 2 +-
 Documentation/devicetree/bindings/usb/cypress,hx3.yaml          | 2 +-
 include/dt-bindings/power/amlogic,c3-pwrc.h                     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml b/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml
index 6ba323683921..187840bb76c7 100644
--- a/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml
+++ b/Documentation/devicetree/bindings/display/panel/visionox,r66451.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/display/panel/visionox,r66451.yaml#
diff --git a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
index 47add0d85fb8..28096619a882 100644
--- a/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
+++ b/Documentation/devicetree/bindings/usb/cypress,hx3.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/usb/cypress,hx3.yaml#
diff --git a/include/dt-bindings/power/amlogic,c3-pwrc.h b/include/dt-bindings/power/amlogic,c3-pwrc.h
index 1d98a25b08a4..61759df4b2e7 100644
--- a/include/dt-bindings/power/amlogic,c3-pwrc.h
+++ b/include/dt-bindings/power/amlogic,c3-pwrc.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: (GPL-2.0+ or MIT) */
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
 /*
  * Copyright (c) 2023 Amlogic, Inc.
  * Author: hongyu chen1 <hongyu.chen1@amlogic.com>
-- 
2.34.1


