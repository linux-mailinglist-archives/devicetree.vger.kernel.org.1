Return-Path: <devicetree+bounces-206902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6A2B2DF14
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 16:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78508A06908
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2D6267F59;
	Wed, 20 Aug 2025 14:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hsAThv74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832A418C031
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 14:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755699470; cv=none; b=adn4krL6jVlGhNC8XMgmD7DD8t44YD4aIaSI0b28wIt9Dq6G2tMTn+oX2ZPu+t3g3pkwPcIegxZb8RyzOSphnAzFm+vQtPOm0OGEV/CqtWu67si9bn4awQ1efiyiamUnyMbQySCgmrmRncWDTuUXnSA1xU4B5HPRYDBsvyuimGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755699470; c=relaxed/simple;
	bh=oB8dIVv772U3FjyT8hwtDeOa1n4Kz8C5WHwIQxNF56Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PH3GZPh6sYKtfcU/5VQdJg3v6abGvOB3KC5+iWv/0Br1zCwVqmgwpa+9vDIfLp4TKZmNilJM6Y6qu1Xf6xDm9cditKdoktIS++gUZoxDou5TIUizwJa2qwWIuUH413zZm9+gKoXYq7rfYGS0wpK1ddxs1ywvnhI9oBwlnZyBH4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hsAThv74; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afdf393978eso9654266b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755699467; x=1756304267; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=idm/KKu2Ca8SRF7L+P8XLw2Sm8cV7IELEUwwZ+skCzo=;
        b=hsAThv74iLNW1O2zDCyChBYltTPaIuQkoVHKbQDDlOT18m4xfQ1nqb5m2utqurr0tv
         3MSwEg5NJYMcWqcbF65VE/ESgbOLCJzZYr7e+xDaKq5r3z51VbbB6vdUOwu3V8XAyXgf
         IVKDCigPy+00W6cZbO5hTXNfJYvGOdyqh5aAIyVI2/t3Gl7ccng79x8kArHYabW6MJo9
         Wv+pPi1OUB/Urmm3sTroniPTuCfayQ5v1yo09sfkFigjsd/xcD3i7kJWPlk9J4H8Sc0s
         +n2G7NaXFqZ5i0YF9WhJwMTZ2ED4M4KQOtmh2h5/3+fsgVKrLyFyoSWKmIEVhiqDRPpj
         YapQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755699467; x=1756304267;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=idm/KKu2Ca8SRF7L+P8XLw2Sm8cV7IELEUwwZ+skCzo=;
        b=Rzz/kZ4dac9bkcdpnaH31goaUnESck1IuFhLQP2o4g/er9+KnwMhG1Yd+rO5aABt6G
         ncaaqJ5OAlYVLL4mfMhJVRZQtKpr6u1v6MoX67K4eiPT2U/q7NhEozKk6gMNy2p9KJZg
         rPp16fskFvcl7t7s4CBPVd55bgHnEvAckEilGqxnBcbK5wAsTwQR8VysUCbsHdtcgwnQ
         gwDbv5LEUeh+/1Wla57Z7tWmNsH/yH7kQVosYKkGED0bAkbuxZIZV5woTh2KxhxTPsud
         CLN7nyCk+WD7bGWCbDOMtziKUpTLWQeAIjsPtCs6QxdjoYAqPHQu6cEm1B74MQrsTXRO
         T9ZA==
X-Forwarded-Encrypted: i=1; AJvYcCWaFUcNc2+LWxVXVxKHJDYrAEE6iRUDkbk32D8CtUg/wOjuXAdC7O61l83iNY6cKaOvXxsceN8eDL5b@vger.kernel.org
X-Gm-Message-State: AOJu0Yxekq0LYIdeJCNoZSN4P3QnsJDJVbKL1vkAhn6wtliIedC5sNmn
	NlssjVm92r/hVRebNvRc4geLOXZEvljgPePOGJbrDV83T9Wt7+GmN3cTuH1j99gdyq8=
X-Gm-Gg: ASbGncut4VU7UYY7buv1fnW8NsA+yxlNd/F5ZMysFguPQINsXxgA+nGP6SZXiDx4QWK
	kCvz2D9w3Cd3qFHf7hOrR4zpMwjQhvJUk7Ehzu95yQx7lSsO1791Rh9loBIcoq2e+/nhC0qzTkR
	lTeLlVcUBAzp/wttbwRCETfFuz4ETRL8PdzI96YnLTCOSXj2LIWIdZ5GTXmXvfQZtHxOZ2SSBQ+
	5zZUyhtTzdD2F6+qoPkojYuqlGGSRgdbOizxGnOcBWnRx1vwdlJtDRESz5255Rh1niyzP3ECVnq
	aV0rcyLDq9oQBK+wrLMPOd8WZsFL6N3IzB+JB4qD3KKqfj3W3JcoJHwX40rLWLyFKIyhFmo0EcR
	sMTWAkIzlzfBgWQt49jo537J4RIEwSq5IKeidORTqcCVkH54TOw==
X-Google-Smtp-Source: AGHT+IHaPUVFcc04OVpsf0ZuU3+RTTx10mue8NcUtiq8d0XqEJtDgxMexyu56RdMDeLF78O4BSmLNw==
X-Received: by 2002:a17:907:6d0b:b0:af9:6666:4acb with SMTP id a640c23a62f3a-afdf0284f7amr121034966b.10.1755699466673;
        Wed, 20 Aug 2025 07:17:46 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded4796f3sm186541066b.61.2025.08.20.07.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 07:17:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/3] dt-bindings: display: Few cleanups
Date: Wed, 20 Aug 2025 16:17:35 +0200
Message-Id: <20250820-dt-bindings-display-v2-0-91e2ccba3d4e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP/YpWgC/32NQQ6DIBREr2L+ujRAi9GuvEfjAv2APzFgwJAaw
 91LPUCXbybz5oRkIpkEr+aEaDIlCr6CvDUwL9o7wwgrg+RS8U5yhjubyCN5lxhS2lZ9sL5vtXg
 +5q7VCHW5RWPpc1nfY+WF0h7icZ1k8Uv/+7JgtVCTVEqhVcIOK3kdwz1EB2Mp5QummM8ktwAAA
 A==
X-Change-ID: 20250820-dt-bindings-display-996a143c86ad
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "H. Nikolaus Schaller" <hns@goldelico.com>, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1018;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=oB8dIVv772U3FjyT8hwtDeOa1n4Kz8C5WHwIQxNF56Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopdkFFX9cVJd6R5kRcdJyWNeW8phvfrUFyZvky
 c7O0B46Z76JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKXZBQAKCRDBN2bmhouD
 14V/EACaWKZnwFKpJN9lLx5+T8AvWwAzgkOcpXvf56f5kFn2bPSGrQBlnke++fV4S4LaZeLKD+j
 RNS/SKkb1UrH8ApcexnLjnJ8wXNsFb2ezwUx4ZfPNNq9xTrexoH0ucdW7PxWO3+fEUi1VI+Merk
 V513f1Bq0galRpDcsLCVjiT4vxTjtQmBfUayw2FIijw11JgpNq8l75sepw9rO3UdUjR8uidIwxd
 90FazyGUdtQA7oSWKaH4p0OchouEApC24D8fHRo1SSR66d7aiKNfty5gFEqWc3seDnsG+CbdSv0
 OCRm8NY3QuvoYiGGQCLb944NQYv+A5Jf9mMUhz1yTRbIyzus7gaywh5xCEJbhu1N1Qv6LmsOESi
 pCoGYnFfrWEszEexkxl45XNeqd7gtkvVUQAfD+m/It/RfHE1GsQw4IT9mz9PSVOqtmGKpVMCkgE
 DAQ+mM3bahogaj2Zjcnj7RUOeOTc2BfLl9Dq4B161jRwKsSZEJcdIqM/U+Nsk7AFfIQ9+tXQbcv
 q6fmAeAu1Sq03EjLmTdsPokNT+wkTBob4sDeg08VO1xDDBWZ9iPDQbzp8EnlGkkdn1Trm1g5W4j
 nyvYDMDoiXYNg6W5c9auHrqzpiD/RLXXOE1SbDLRk2WSab6M+LNAVxCZDiR+/e8Oud6RLdMu24P
 Btij8qdVePtogvw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Changes in v2:
- See individual changelogs
- Link to v1: https://lore.kernel.org/r/20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org

Few minor issues fixed.
Rob, can you take them directly? Display bindings are pretty often not
picked up.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: display: ingenic,jz4780-hdmi: Add missing clock-names
      dt-bindings: display: ti,tdp158: Add missing reg constraint
      dt-bindings: display: rockchip,dw-mipi-dsi: Narrow clocks for rockchip,rk3288-mipi-dsi

 .../devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml        | 3 +++
 Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml        | 1 +
 .../devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 2 ++
 3 files changed, 6 insertions(+)
---
base-commit: d5b9a4f227e7d13a60f7704cc0d8e16be4bed157
change-id: 20250820-dt-bindings-display-996a143c86ad

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


