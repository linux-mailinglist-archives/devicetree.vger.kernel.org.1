Return-Path: <devicetree+bounces-173587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2472FAA8F31
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2203E1894F01
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ACFC1F4CB8;
	Mon,  5 May 2025 09:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tCzZm/7W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895AC34CF5
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 09:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746436605; cv=none; b=g6mBDI7hMIqTGf4S7R9UVjsh32cM07BxT7psPlLwli+CT0MYTle441OMVXv7wbEwJnMvrRPtaUuxp0kvpvQSyLt8Hc+UuI1oe31bFsYcIaNp/rqnRiAAVIsMq7g2Q0H8bXtqefdml4OiaduinR5lVfMmHaWkwR+1r43iaSCbTi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746436605; c=relaxed/simple;
	bh=GZsCEmxTNR3TybbFW4Uny89Ft6R2/iD9rzXjkRyHWNc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cUO0Z2yw0FzlZz8PpMgz1+ickLM2Rbsgl1XZSfWQEwFsqTLwXhT6qrfI4uukE3lFJM7hnmX7In0cyXV1Ofc2YOWJU4B++Nl7ShO6GQMFWy2AxHumA7gZj8QqYy0V17FB4Ra9H70swrmiQWfuTqXOt6mWeLLpXMLXdE/G0n+27t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tCzZm/7W; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cfe99f2a7so5113145e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 02:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746436602; x=1747041402; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+GvHgNN9nS8EKTq3WiT7gHOgXYtnHXDfWTIDwaJfrKc=;
        b=tCzZm/7WSPbaD4g2fTg0jgMkhrlUcK5JrWxOpjugREPmGlp0US0spCz0CH/GICo/df
         oCpaa7VJFRged0DDNk1J0Df14s7iKerYPAUX0kj0mI+kq4IW/jFvcE8BsnGgZVBZPT01
         z35rwjrm2Q7Ob63pyA92yilg/rKx5mKfxwx8o4wE63GATUs1IPUwAZ95RVEHhfjGFFpF
         poANMD31bISjcQRRaB+w2ukST4l77YbQq9SirOKlH3fEA2+shzRQAcE3zAI23DMOelnN
         hnQt93EmOjgrtM3dz0WKk/VOBQ7DN2xGKSMh7mWVnyTBImIh7gF1d4lZ1Ai5MGLFsWyv
         L3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746436602; x=1747041402;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+GvHgNN9nS8EKTq3WiT7gHOgXYtnHXDfWTIDwaJfrKc=;
        b=mcJz7DiL12WHvHlY70EGTw4UJDhAdMzJOmNmrI+J+7NRKBHDksvGXBKTZPtocCojAB
         Ugy630MIzLG18Hp1/Te/kDNK0b6gem+tRo0k6QbU6+rhu9ptErK6In4q5rqpiAIw10PI
         RCXT1vh1uZPFOjtKdEgms9KMcqUBFEQRKcKI0M1lzXbZ6mNOHYuBjcDln4gFklDHv76J
         TutX4njqIaxWbCYzkboQ40EbjiPe+vUWGt/W4sX2HX/mayCEl+gN7yu5XwOYuFETUEM+
         6uxCGeQQR8HAP1OqJ2mNYBvw8PO5hAMMS6L4Qh0dbEHL+RKH9Uvzrt+tLa3Sk2x7Y/Wi
         WtYw==
X-Forwarded-Encrypted: i=1; AJvYcCV7sv5jtEcFm/Ks4UC0voqsvHhkToN7SbeLYaODPjWspfVCUuwyjy0pe4FrWfHJnHCUczBDdc+cOabH@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ1erWRjdNkB0fA0wYVqIB4d0OyGtHVxb9BldMyxHa3jXilx6T
	/hYivbN4pX/LDcChP3U+3l2BQoPP/QU/2e8ie92ln6oy1LjRHo1L63qjOz4HdPU=
X-Gm-Gg: ASbGncvIQcsVmfpNsgC4qZpqCAR/ap6fRkV99fKu4fC9bQIbJbINjhp3THyrFJYDtzu
	zq29IQGfKI3XdV5LnGv1doMC6vVtbwkICldLgb3pIIPCcc/4HhsXXRt4lyKIBFrYv5MrbL7D5jM
	f6GGemx6WCQrGm1U4ZiVT4d/VR3XKsfsLHlpBt68gJqWwxOk6toJRLkrS4UVU7X8jgWxdW9kMZE
	eMJCo5yHEhF3vFm9iq1G2f6bOebZ5mnUMeHTUcgvxrfHySjP5NkmxKpxudrRPpwp5/gQih+oa/x
	eCJBBKc+xes8q1dOwY8hdLtvMn0B2PIWRheYJV/+PVwWQQhEMMQjFRt6D0E=
X-Google-Smtp-Source: AGHT+IHwXnx4n+J2n2EvRnaTe8Cay07NE0L065IdHInb8uYa78mM4hgMDYARnzzTlGxyuCFJBK6sLg==
X-Received: by 2002:a05:600c:3d90:b0:439:9a1f:d73d with SMTP id 5b1f17b1804b1-441bbf412c1mr36857365e9.8.1746436601809;
        Mon, 05 May 2025 02:16:41 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2aece0asm171784775e9.14.2025.05.05.02.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 02:16:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/2] drm/panel: Add Novatek NT37801 panel driver
Date: Mon, 05 May 2025 11:16:27 +0200
Message-Id: <20250505-sm8750-display-panel-v1-0-e5b5398482cc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOuBGGgC/zWNQQrDIBBFryKz7oCRaEuuUrJQM20HorFqS0rI3
 SsNXb4H//0NCmWmAoPYINObCy+xQXcS4B823gl5agxKKi171WMJl7OWOHFJs/1gspFmNM4Yb73
 TUnbQpinTjddf9joenOn5avV6SHC2EPolBK6DiLRW/D/AuO9fu/Y1OJcAAAA=
X-Change-ID: 20250424-sm8750-display-panel-6b66cacb5001
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=834;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=GZsCEmxTNR3TybbFW4Uny89Ft6R2/iD9rzXjkRyHWNc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoGIHzizxrcXFsC6PCqZV6EvICoj/THNgJz+p2o
 S1NAQqLbauJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBiB8wAKCRDBN2bmhouD
 16BzD/4j5M8/ZGKtM6q9xDxrPsNqRGsUFU3PUmkjiastBMMcmbfu/pd7AGm/e3Smkll9DKprXPA
 wsqp1VJpUW2N1Zz5g3rxVFL+TZct8/I2WDdjaAUKQsch+MOpYUYTA4cdz107YR9djRaGw6Bpqje
 GYBJY2uhxy+SsNU9Osc0CZaSUjWVXm877J2kdfTbB5SfkX7g1YdI/zw/sMqMGuXbLhS7CQ7W0Zr
 /rTmYZ0+q8yqt0JlcukZ1dRlwtDf+QVjYcxNW1OF+oNvdsdRpEO7A67HElVGZUXLS44MejYM/MF
 APJOxUM04ti/38Pub1UxYwcEhslQPX1JLncjLCa22/4TwgaowDyomylHRf/hN6OGZ9voz3P7vBM
 +gyjerlEIcp3MGHJnWg4MbULZKb7piogWRpMq/vzolJ0xjKqzhKlNP2qdG4yWuOiAQAzCuLq2J7
 1QcSza+NDl0SUNgZ60S2ut8snoj2EI+1Q17lNJz3/7S/4RSl6egc9OkhytcBfuYmhh8PXgNiw2u
 hSPoo/8Uajz28RKLJ9Kw7DdWf1ceSCL2zICaemRKfWggENmLhh5lJDHldMfltSyFtuOyjwMK7mJ
 LOz9PxPYAAhXe8sMGxFkDlD+yD+NR7nqVG1LXsrS3j0LgXuHfwKLV/JDgScrip8nPCCrIWH5hOp
 rapgL3H18LUdI1g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add driver for the Novatek NT37801 or NT37810 AMOLED DSI panel, used on
Qualcomm MTP8750 board (SM8750).

Best regards,
Krzysztof

---
Krzysztof Kozlowski (2):
      dt-bindings: display: panel: Add Novatek NT37801
      drm/panel: Add Novatek NT37801 panel driver

 .../bindings/display/panel/novatek,nt37801.yaml    |  69 +++++
 MAINTAINERS                                        |   6 +
 drivers/gpu/drm/panel/Kconfig                      |  10 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-novatek-nt37801.c      | 336 +++++++++++++++++++++
 5 files changed, 422 insertions(+)
---
base-commit: 0273d02b2f84f645e8b8ab317722931eb96f6130
change-id: 20250424-sm8750-display-panel-6b66cacb5001

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


