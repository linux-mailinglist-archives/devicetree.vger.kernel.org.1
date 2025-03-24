Return-Path: <devicetree+bounces-160148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 64331A6DA54
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:52:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFB2B18908DB
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A3725F7B1;
	Mon, 24 Mar 2025 12:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h0UJEf2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B447225EFA6
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820703; cv=none; b=NicyWP/j1aSuSQ3v/7eeEtjPcOGUaQ7iBgJsR37u/RtbF8dj3AX14WKuyIbNXrwJ5xy+zLzfpj5OjrjsCCUbtBMbpH/8KG+CuwDMGQf11zjmcHIeoKHtOjkoDfEYjwclu6KbaeSpldx3U1gQtwr8xWuv+j6BfU9rq84oY2fJjiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820703; c=relaxed/simple;
	bh=7kIvTq8/90tuJI0ossbD6JrK6jg28QkHXDUN+Mt1w5Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YrubqiMOAjzcGyhfNNH1QCzBg1wB+0NAAnJ9eCY8xKmMEhEJLZJBV5y3yVSmLJOE4IEslK+ZkxZmsaiH5h61mmCE/9wOYfVHjt06h1a8WpALbvzMM74/20gSGn7fxZirS55zuvUwr107IzsfvAp2D1pic1Vv/iZlRTjk/aBHtok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h0UJEf2i; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf825f46bso1727175e9.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820699; x=1743425499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HH2nVWiRSh3C8d+9des+5Ue4QF8h0ddGAB6W0heB+v0=;
        b=h0UJEf2inqoLg6VnD/svxPMEEL/6IX9rXkQ/wTS0rTLrzXlJWWCe4IqgDj/7wMyCMO
         VYHz87KNc6xZ2DzqUfYUOyqDPlwKBOWPqrzFUIIUDohxw74H4t+iwMjeaIdYls/f+CTn
         Tj6sLYhG8zewhMlQC794vUC38IS1+WCVPdwqKE1oMCVcUHu33XNuuYsUFbxr6b7CSHxJ
         DSnCbJHUpG4gEogMEgBR8WE0LsJXWNROADfsihlI38TyAsp6LyOol9GIGUSj/2ldFukp
         BWp+1fClEJHIafOtfI6lcAoKAcnLkp0S8mbxc9poL8h4EL3U4to1X2bdJRS2MijjBh2Y
         xYug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820699; x=1743425499;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HH2nVWiRSh3C8d+9des+5Ue4QF8h0ddGAB6W0heB+v0=;
        b=BN30D4UYO3xW+0YFqos3gHt03oORHV6JIWXELtWX3Sk+PPgFIQqqmCdOjr2ngt6rom
         I2IL0yZCn3Xrk1Lg5qYSC/i50DWQFPPlTfIgQZOFRV8GLSVToOkaWwD6TIYlVMO2k1RW
         15l0krUshb1by3dQ9aAhH1svWmr5DPfgtOaRwvS3TZJo+R8J2FYO4y3I+C8KPNsxTkfS
         cYdmh6SUaJ3wsJACITSmzSoXh+V3mnHTiMKR1o43YYlvFCgas9RiKHim1+wG4RzKYSI9
         Lr9RHgOyZy7R9VSHJ5l+JzrVluiolnMMuE38orTIrmeWt6mpNKSF3R784Ww7cRpyzldA
         4BVw==
X-Forwarded-Encrypted: i=1; AJvYcCVrz28rGB9trEFCHgS+KlyaXJQb5BinPJcl9Ott+8eREt0k1LNY+Mt6ek9nMvXhSpjs0GLMKqCdeTzz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2xgXyJk/gHy0R8qIuCNhhlHojb7z9DEdNO/8yD3aj31OHONCd
	dB9DIz1FJacAV1bSv4jFfoI9leX7YaZx8jT050dZSBP1Nj2HfyYGpTUtim5o3ls=
X-Gm-Gg: ASbGnct7nnyvOq661Jc0HO1aMs55ZlvWUZG9PKgNZKg59MIOMilFZDYKOeQoeiTAdzd
	AYbo+9pD6qjFS0bWxEaEj3prh5gVIzgWcymKstGqGmwZ8TbsU+BNxK7ROs5vE84JmUXU6/Z9p8g
	Em3kv++XJtKaYBGZuKGjwV6vm3rSmmLgCIhfCI/n4uYPIUXUx6pXB9jvIuW4c6qy2ame43P00oT
	buhuJqDgSz4EhOy/nRMhXqk4qFPdJm8kdu2AGVpgwZjox6CD3i9vE5MXE5WPAbdsj0h6VCFsEE1
	rXkWWwGDM50XTp+D2mbmoNSP0aj7v8v9E6vwTxdCThGDqvY9sRupftiG5A==
X-Google-Smtp-Source: AGHT+IET4L7ay6BiqJ5c/HRaROSkcjTOjOcbxJ1/qWXG9QvpA45PLADqwGvdOQ4N9AD2IEKf1fUd2w==
X-Received: by 2002:a05:600c:3494:b0:43b:c825:6cde with SMTP id 5b1f17b1804b1-43d50a1d20bmr45138235e9.3.1742820699040;
        Mon, 24 Mar 2025 05:51:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d43f32fb3sm171222655e9.2.2025.03.24.05.51.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:51:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ryan Lee <ryans.lee@maximintegrated.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: maxim,max98925: Fix include placement in DTS example
Date: Mon, 24 Mar 2025 13:51:31 +0100
Message-ID: <20250324125131.81867-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Coding style and common logic dictates that headers should not be
included in device nodes.  No functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/maxim,max98925.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/maxim,max98925.yaml b/Documentation/devicetree/bindings/sound/maxim,max98925.yaml
index 32fd86204a7a..121e8d2d44da 100644
--- a/Documentation/devicetree/bindings/sound/maxim,max98925.yaml
+++ b/Documentation/devicetree/bindings/sound/maxim,max98925.yaml
@@ -77,11 +77,11 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
 
-        #include <dt-bindings/gpio/gpio.h>
         audio-codec@3a {
             compatible = "maxim,max98927";
             reg = <0x3a>;
-- 
2.43.0


