Return-Path: <devicetree+bounces-206690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F551B2D46E
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D04DB7AFFBE
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 07:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64BEF2D3755;
	Wed, 20 Aug 2025 07:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XMZCfzHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A91C2D3217
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755673378; cv=none; b=rVSrQF6gMCnvwDFHS/ktWZQKA6a+lwR26L1sjGE2DzdQwR417XonPnihnZxY96X5ragJ7UNMGsoetTINRB/CrGqUJWX3ECVCnRz5bMsJlrZiPWNwacmTLHuVMjbWQF5dQddFwYD0FDoLnMMdlpmZOa4wjnVXc96A9yLa2tw/iG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755673378; c=relaxed/simple;
	bh=AkV3VRQfJAkPuyGMV3zApyjndBmAsTYMa/X+l+hz0eY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HEzvGqHI9b/qAUYXUCpU4kjatBAZJO95E0sxL3jjiwkeyUEJxvtpKywTcI9oTAGM2CmOs+Lck3MGfI90IYVCNV3mdr4W3JX6eTF4aIo/65WKFiJ79B3amjBm9cV0NM1oske2F8OrTI/XorqkebIYLnKShIe124+C5wgzaPEXaHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XMZCfzHN; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-afcb736dc8cso79134666b.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 00:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755673375; x=1756278175; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYDyb1l+byMOiaJzKn+UnmmghGQhvpVn03tecEee7KM=;
        b=XMZCfzHNskL/FbJUIb4n1JeVmbNorbHHxgb6PEFDRs+qrsS2gOijhEBJjfKbw3cirV
         m9Ez5N0NbiVrjWEYNK7bS5W+9E4TwSH55zQaPpPLMQ8S3gREswQ9ViXV8i+HoIGwfX/F
         IFbbxECUj83P1IGUEZkR0C7iLzHzo1DFc75HK/XCYUOYGS81FKayUDVwimWdT7Eylmbe
         fumUApbwBW7Fs7nEZHX5kPe0Z5AsEm2Fk6bitPU5pdO3te0CeLCuMRwd3mu7h2wyxE0q
         KnRo+uyI+gZQP3cHUBXrp9ZSg3xYraWqTaw9HQhRyPbcwJJPsEjjBs+FiPDhwVUYLgip
         kXbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755673375; x=1756278175;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JYDyb1l+byMOiaJzKn+UnmmghGQhvpVn03tecEee7KM=;
        b=Otfhg47t7rXP0tc3R/jzp7tGg/2ro13zuR8jaYXJHie1qK0mQnxw4uWJl+3/tJvZte
         hJqg3CAZ14ePwG3ilu1aDKmxsfQ1WKabjWAJOJEKD2NGzrXD4W3F/rEQny4OVshDjken
         J4Y17ExY3/0RY9aWVxEiXzu5oB3OUaF2O0HUhZUycOH8xoz//U+w510ZEOQSkJu5U+ym
         H3ltMtKZeGVU63z2dlWjHR14J31gQZuTPMSpECGii2W1rwQE0Q9rreHKTNV0SgwohBbZ
         mZS3Uz/D/84Knb57RWS8DuZnRRhYNjz//mDE4yTM+7DfJdspYq3nWu4/uqfIu3s9qFy2
         Qt9w==
X-Forwarded-Encrypted: i=1; AJvYcCW4DZhOif5W0frk/I6jrUbUMkqbJ+p56MqOA/EABRgCxB9MikJ7vZdbPjeNtNJOM9A7n+81t/b8Rqqh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0fmSOtyB4UGOpU8r34ViVqJpatltsLsUSLZzLAsJtwykZlpna
	+JUOBRJhIw7blGekopLhW0I+zf3Oc6Jp8YZGnlyutYyqsWhS0/6YP7mG1BitwshvEYg=
X-Gm-Gg: ASbGncvGnUu0g9zXrEw/ymbaEQaAsMYREksaND1b0A7H5vh3d3qUO/rvmYXEECGapLg
	ULIW/sIFjjW2fRTjp26pfazt5gIfO0YGiXmvdEAcQ3UZ+kFab6Urqr97GmlhBN3MkFJjwzo75a8
	JGasj0FaN3rnee/Mwq6zOhHz1tXvsSlA7Rxh00bQpMwC8ZDFMUig7OD38jbZ1cnHTvGwoK9AXDV
	KvZ4NKLmBiJgRC1VJuxgjA2RLjV1Zx4jphcHo0vUi7RA0R5qpp4ZHIfUGCd/yUWYK/5Pj/CUGLw
	6wGIhW9h/yiImmd7jQlRNuSJmCTQsdtqT1y936ZJL2W9y2IezVLe68TQwYmuLZ/PBQsd3x2Bh1t
	EAnRLeELVdvbQYRwRGeLVdLMbsXPVio2jiberyGU=
X-Google-Smtp-Source: AGHT+IHJRyotiUitRQlmcmuPpwvWkmkIG5BFx79tKET0/ZCpVsB1kmI1FDM/O1dsctY74CZHdQJyWg==
X-Received: by 2002:a17:907:869e:b0:af9:8a71:e090 with SMTP id a640c23a62f3a-afdf0280436mr79978266b.9.1755673374003;
        Wed, 20 Aug 2025 00:02:54 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf6ff14f8sm37756466b.67.2025.08.20.00.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 00:02:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 20 Aug 2025 09:02:41 +0200
Subject: [PATCH 2/3] dt-bindings: display: ti,tdp158: Add missing reg
 constraint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-dt-bindings-display-v1-2-d5b2555df51f@linaro.org>
References: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
In-Reply-To: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=990;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=AkV3VRQfJAkPuyGMV3zApyjndBmAsTYMa/X+l+hz0eY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopXMW9wkV4htcYjEWNJWdk1zKtmlcN5CE41MJX
 1lvlVHNyB2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKVzFgAKCRDBN2bmhouD
 10A2D/9nQCtB+BeS3a1GcRicjBMuO4BkqDJ5fzrjdybep856QeJGH+n5b1OlnWduayCgJ6pf6Dl
 LypCyElXEf/lACJADLNxNjsYmPhmf1xM6Pcn8rUiaRjTWzL5kuaKrt8ebYHsWZLGMPLPjWAInos
 ehCcXGVg0K+9/wGg+Ktof4C42Apwde031SvjTDqRFovXzfZiMksOvKip8EqCLBP0Q7I2ATk/HMo
 YNb5TZuVXvQei+SPOlGiDyjSE/lrv2u6zX/8Cgs4bgm8+lgw2vhnoLu6FCSssgBpspHM8XdK4mi
 7RVZ7+AejZe9/NrCUiby/iwRcz7r9GZBpbYj4AgyEMwchWysCpt/DeGaKJl8wFIUvCVHtQlInvQ
 u/+ww52Wz5tbPFYypkn8DeAl8xTQvvBB+tdGFPq6HedhtRQpF5e3TI/f19j7CO7XbFvdc7L+Ij2
 AaU9Z2GXgTdcvBI7CQn68hNqcoGYQm8dmxaObXAHIRncTbasCU41dBaRlDqGBxwIpW+8mzxHOZ+
 mxP5i8qdMzLlDOb3upooTdHnHYdpxv+4rHyKsOa0BR3VtvCISQUHiIlfo44ZFT5KnxqQrJQPqXY
 QmdKI43hwtGaOR0OnRZzVR/elstxfWt1N+1ovS6R0pbZnNLTFD73gtuL9gYcz84OOUd1K4qOkvk
 Uj/DMPJ6az2a7Nw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device can be used over I2C bus, so it documents 'reg' property, however
it misses to constrain it to actual I2C address.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
index 1c522f72c4bae3313930b5c76dd04dde1aef5151..721da44054e19ff04fe9d8c1dc31a9168e8f79f5 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
@@ -17,6 +17,7 @@ properties:
 # The reg property is required if and only if the device is connected
 # to an I2C bus. In pin strap mode, reg must not be specified.
   reg:
+    maxItems: 1
     description: I2C address of the device
 
 # Pin 36 = Operation Enable / Reset Pin

-- 
2.48.1


