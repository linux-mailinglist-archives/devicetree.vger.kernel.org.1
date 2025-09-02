Return-Path: <devicetree+bounces-211584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D623B3F95C
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:00:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DFA23AA666
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC0E02EA147;
	Tue,  2 Sep 2025 09:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zkx/e+/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7B826A1B6
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756803637; cv=none; b=uWlsA0t3hkcChIQDVBI95ySlz6luBXRcx2b7VHq9t70tqSmJt+haWqLPxN7yQESfiCiic69c68L8fN0zzGnFu/Z1KlH/2cVY1drzVI5ew3wlgK5zxVeODpmA1Z8ZnB12BmrtTpljbOJRXdR2sC15I3GdruyNCrHTMuQ0mYhsoCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756803637; c=relaxed/simple;
	bh=KZG8o0WJ9Re/vKN3NPbu9QOtsOJJZv2uJocpkewtdKA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NbF1Qtb3ENqAUcIyahghq9nuNpwiK/fsVzyJoptt7e74vczVT6azJ1cio1vVOW7mdPnm2BPKvCOpA+GsQt4Rk/LUZv7nIhsOSONQzcWf28UpLLOQAd/sEJxQF5rkHnaxdJvKu/s0j/7XKrcxcqUyAMPgeUOnCIvBWE5dMT4dh4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zkx/e+/y; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3cf48ec9fa4so2697324f8f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756803634; x=1757408434; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NZJp+xAbTo2+0/zDtOg8BIzlYFDkHgZ1HyTvcor0XRg=;
        b=Zkx/e+/y4s+0g7iMYtKVllE8CDapui0TVlqn6QGD1eDK/jg830/RLP8gjp4ou9EEkc
         EGQ3qcnQV+nsjf/dcXKYHYHGzGPkuRiWlfKswahYEihk8TSa67crVCaDwglL2JqV9sb/
         zEUE7ibhFCP4/PbY/iOyL8IdTT0vttx9VxZUJADlSQMJenGXu4fRfi2Edw2CqzLiOdi/
         t2SMVBeC5TlKvbdwWMFsrY8useGtNVsTDmvmeKXBT44+So/+BCaKK0Wp9KCM4rIxZba5
         DZ3sBSFVyh2+pBfXr/Sl3jsvmat5ew+LodL/+JsMFWuw2leFBC93BZJEF7PbU55wqVJz
         W/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756803634; x=1757408434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZJp+xAbTo2+0/zDtOg8BIzlYFDkHgZ1HyTvcor0XRg=;
        b=cJKjRIPCnj9czxDr06m2XKZgEU5T3dtKECz4W283NNjmgtugLBJPEwaxiA+aloJpba
         T370z20hqK6KdGkYZuDwEclP5Es/WJe3kq/hPkqhahPIPXxcX1mky38oNcoayd0QZH8q
         otLs9ig8jlc25+WZuo+nV6ZEMMfXjWYev8NUOO/CcuqjP5chqSNR+Y3ZBFdVm97u0BSZ
         quPzMcjxGczBEjXUsOVBIranyPResufdCA8ERuSvdjkOxonIvnT7c7Ty9mnhWrieCjeV
         RwRu8q0A4GepZtugkPpm8NrA/rzCwt2/tDrTcmxYV8jwVDfcLrwx1ajjZuYlpxfpIIhn
         KJmA==
X-Forwarded-Encrypted: i=1; AJvYcCXAAhW0CVaMGQTm6QaXxilTlRguGpeJpnCzsOh0GfljQQ2ua59+Vkay70I3OQOmfiAGlxwOaIUG35gk@vger.kernel.org
X-Gm-Message-State: AOJu0YwV0N9snGTP5Hihnt8QiizLjJGuRVrpu1Nq1rpOHWZXRFel2us3
	lQTvpK9kYXeqAbzWyr1YfDNSF7ZDZsNZ0K6hdvryVpQhbAfngECzwKwdcRO6Qf2lAmI=
X-Gm-Gg: ASbGncvlcu4U4N5AouqEI5hOZyb6suq5v1pTJ9WPjoST1HVGNuurZCAuABT+rPK80pU
	CRys2gyNBss9acKiFf/FhEtSKovkL1hCgQ+ZUgapEE5zMhborcgMqgbWnAYl46/ETp5vaDHn3h1
	Iawve92VXLbcaCL0/N/ZkkWH6Hu/8bIxmJ61OszkWMg8eaXfiWZk8d6/XmEKrA2stgphMatKtvc
	LFrZmUTS69Uez2Mz1G2SKsBEEB6XIwEzqb2GqXUKYKoRyNp/ErtoKDhzZjbDNpGMLLTAPvcPI2+
	Fm9QuLOiuGdXnFPYFHfVfJe7u504r/FneuE/xGJedplkNkqXepmyYG2rWYgbK2BCKu+VLXiLc3i
	f+q3D0ktotUTLiLCuVGolaUnlga/m3HAY4TJJliApI2Q=
X-Google-Smtp-Source: AGHT+IHfb9W6Hc9fhkbvwOEzR7R4xuMQPNSMx9xL8H2MM97h3jF8v3/LInCLpQSqbnItnP4BCrQ1Ww==
X-Received: by 2002:a5d:5846:0:b0:3cb:62c0:1eea with SMTP id ffacd0b85a97d-3d1dcf57a13mr8399840f8f.25.1756803634361;
        Tue, 02 Sep 2025 02:00:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7271cd01sm261112045e9.23.2025.09.02.02.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:00:34 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 02 Sep 2025 11:00:28 +0200
Subject: [PATCH v2 1/5] dt-bindings: display: bridge: simple: document the
 Realtek RTD2171 DP-to-HDMI bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250902-topic-x1e80100-hdmi-v2-1-f4ccf0ef79ab@linaro.org>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=992;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=KZG8o0WJ9Re/vKN3NPbu9QOtsOJJZv2uJocpkewtdKA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotrIuFgDKkYXOkTv1ihPBQVWU3sfYnkAYl82ek1nL
 ewBnoz2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLayLgAKCRB33NvayMhJ0QzUD/
 9PMMy7AWl6efzDwVsG2jN0BEPfR1VI0fDO66I+6cU1tzE956HxCK+S5gajlWS4xawEEpMPGBP5WiEi
 e8LA1Qmnluy/AhBl4u9se3ZMQVXsordhS9sx/hpyzTNGoG5B2TfvYpp6tgiAkYwmqvspdegzKlv3Be
 Koo4hkRtxDo29dsV/wgyzdAcFk+uEIfVoEpfoCLzJqoywPYKLkfERA4y9X3i7ESZR4wPxN8UVamYlf
 fogG9RyGVGCOC5058UeQXY53LBoucMVj6D/edxlmBU1wrIhStDqk2WJpDuuf/fHUB/xL/WavDzW37k
 pGuj0424q4aflRUXcL6iBwQErUmovyP7Z+Pef8kznH4Pn6LXP/D9p4DgxyKLWq0E4bhBKkHQfyMLLz
 TMggt5ae3Z6coBtLcG6HhtXIQs+2oR6XU9RmvECIF2I00/CxPyiNQ0cZNVrOZKv9J1F9v0knlPkGM/
 TlHVG29OZd6o/n4C31kVQQI1O/gaYnt1lRDUM1GZSn/oNQvJ+De9DnSblO+6r9l0N4Yn2XYpCMCuKN
 46XiFIXtChk0WKr8c5de7O8RP2rSq6OLQkZu3qHiGflTCPpL4XXc+UCp4B2Quc7daok6pkRkq2PCGJ
 M+WMYwH8t0KsZF7SXtHzYkYLoe6GK8UuG/hYq4+j0AHSJtgi14XxcHSS8Z2g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The Realtek RTD2171 chipset is a transparent DisplayPort 1.4 to
HDMI 2.0 bridge.

This chipset is usually found in USB-C To HDMI Adapters and Docks,
or laptops to provide HDMI display output.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 43cf4df9811a5897843685727a49fd5a90096391..003a1c934f863864400d689cd784990cbc1de3de 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -28,6 +28,7 @@ properties:
       - enum:
           - adi,adv7123
           - dumb-vga-dac
+          - realtek,rtd2171
           - ti,opa362
           - ti,ths8134
           - ti,ths8135

-- 
2.34.1


