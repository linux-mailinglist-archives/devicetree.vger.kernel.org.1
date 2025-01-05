Return-Path: <devicetree+bounces-135702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CE5A01C20
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 23:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A2081617CD
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 22:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843F41D461B;
	Sun,  5 Jan 2025 22:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PqCJs8gT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28EC36B
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 22:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736116013; cv=none; b=SKvvGBYQ5nl3mu1Urwx29p29MTKJW8IznsbdStI7LPXwBo2nTkdNri8jyuwjKC0QOka74V27669WgltHuNW/gSt729F9v8MKkLXfRbTXxbS/hyTDEx3+PugcaRMooJryLLuOUsY2VYYU9Ef1k0mDy4y4N5lzIvIlDp0GBKcWKd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736116013; c=relaxed/simple;
	bh=sneoKYbk2+BCZOEsHOlNEalt5Vr1F2uXYyBlsT1UmA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WBkPW+evD8R+tfPzWI9Ci/IjvvybirCo1evh8va8tjRKniWm6kpSo/V6KKk3mmLiAlQo/JDfDXHhEIg5xjvhNxur6BVTpyAtQXIhXQLzVyCGQ8DuaMgH4DaFjM7j4tY7Vwm8gi58C3y/WgSoNqYLj9i6bJ7cklej0TqBGD/Jcn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PqCJs8gT; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71e1b1767b3so7473027a34.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 14:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736116011; x=1736720811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=PqCJs8gTF27PEvb/EsXU/i0eNmZOIJmG28h0aNWp5o2ZVsztclqx2RrLZEk/2cjNml
         SdzPj1RhHQEp5IR/W0MGNLf48zkfjYoosiXuqNXboAuBbG2P/7+9NGcc0GXNm41KCK8X
         1Q1PRpwfYV9yoNhdZQZlKzvWlIpXTgrGACYakLDVmawRfFPYKc2ieQ2crmdGQM+hMHIj
         2N5ZwE9dAEwWqMSZBmlijs+6yROKhdQOLD9c/Swwr+t74HE/I0Rb0PwG9NiA3ZQ3Eva9
         lYFqu39EkvomdlXO+UE0h7Id1MnJoR3eAogrC1AVakno3KNrz0WhV4GS249fSx7rOhl2
         C0XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736116011; x=1736720811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zcYlsUzO0vGDNcLCnF4KdwOB7P4WtjzUTN//CHxhAU=;
        b=RzAIaXz/pg1EZnW0/sRnzexMK9E+TNoeWrifVyXdwYM+R/KpilFN0Np6znXeTa+ybz
         kzaH36yKGnrC6TwtzReQKXc9d+yH0PMV3SoAF4P4gqjyW9cRrpoOXxAqQN/rdYE4+S45
         us/2nkn78BQ9XB10xCO2dUFibKTnlytmMlTzrOtRL11VHF+UG2GMQP+0mBj75iw0FrSy
         CNWRRvUMGvYs4SsVoGz5+EWm2FhBjxouEX4E5YylNjN/LdOfKJphfO2Bcrmg+2YN+LEP
         eARK2zZkUwmPZw3gqzDdvPcRYlf3ALcDuhx81F35l2mX+hxY6tBV2ZXOh9io7iRsnBaN
         bCeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpbUdkvKdtbriZcIRMI3qSL+Xh6n/thP9Zr7UpnheM+bdOZPH7NfG3yqmxjoJfvK3wT0Kmd7/eQLUk@vger.kernel.org
X-Gm-Message-State: AOJu0YzC8PuxSowUnro7nQkYFTuM7KT4R71ssOkfYVCIv9TJJ0c2EdkU
	Lp0D2/FaOGvbG+NTH/XEFY6kXZyT3GcczW5BAtqSmPbRCynUDqgz
X-Gm-Gg: ASbGncvKLmjLKspj8YzIVsFB9Z1C2p9bsoPzozq/VeoWuS159rQl29NTrPquq19u/1N
	kDyPEqv8YNxFTdHzAxzY3a9XW64tVid9ra7D6ahhTLB/UbREmOhfjTeC/QQqm5cz/dUO/xXK4K/
	Es9d4KisQP+O0UXl6thbQ9dKzottG93GsY6AfLgxdWZZyHjZPWHsLcekc6iDxzjRuSitP+1jbd0
	MVKNxN/EFnantiRw+BYYdi5V7WXXuRi6JuNO0Uwety1XINgTqPCpNakdZj+r00Qmw==
X-Google-Smtp-Source: AGHT+IGRCrhiq0dHp3DK/7CzhcGH01DOb1UH8Ca8QvgkX+Al9ucnxcacMAvFntA0Hxco9Zey04paHw==
X-Received: by 2002:a05:6830:374a:b0:71d:eee3:fd26 with SMTP id 46e09a7af769-720ff685707mr36138120a34.4.1736116011013;
        Sun, 05 Jan 2025 14:26:51 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b377:72ce:54b5:bddf])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc980a9e8sm9555227a34.43.2025.01.05.14.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 14:26:50 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 2/4] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Sun,  5 Jan 2025 16:26:11 -0600
Message-ID: <20250105222614.2359-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250105222614.2359-1-honyuenkwun@gmail.com>
References: <20250105222614.2359-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588 similar to the Orange Pi 5 Plus.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2a141d99c533 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1075,9 +1075,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Plus
+      - description: Xunlong Orange Pi 5 Max/Plus
         items:
-          - const: xunlong,orangepi-5-plus
+          - enum:
+              - xunlong,orangepi-5-max
+              - xunlong,orangepi-5-plus
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.47.1


