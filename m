Return-Path: <devicetree+bounces-138896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90119A12D95
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D748B188A0A3
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095381DB943;
	Wed, 15 Jan 2025 21:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FwxMUUmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300AE1D9A42
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 21:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736975881; cv=none; b=baOhCEsiAOOep9YkQ5DS2wb7tYucTYcVAALZv+6Q5jiAwpKx6+PkUXX/yWV80zyORIwuMZroeKYBYOxWdZeaBwc+hJFQlPQkP7OrEI2FvC/B4Jy0h2e9Yz0yS2NsHH0nDlpAfsGjOJFsRMbZZxphPu9pWDMlm9q2nwcqb5Pi+x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736975881; c=relaxed/simple;
	bh=yDa0Qe46Jzwv1wq36DpTjz7+V6202a1+5RibOpikIik=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=glguWGq2+PLnSUY4PHGhorE2+SDEFVwSOP5ku2tcalaBF3XcTS+l5vE36QDWIlEkO31xj7PpiSt3jvn0SKM77XwSvfkHBni1HbGd50ZVkBlgcjl6ja2Ow9K1adDrzlEihSLcTCEJOgg+5biGPfPl2kexQoAvmlHGMosJopUVMCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FwxMUUmB; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43616bf3358so172695e9.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736975878; x=1737580678; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9qHKVl8g8d6O1jTs6lYX8V6Xx1+0T2EHi+qxmLZOjZM=;
        b=FwxMUUmBeQJOHuOs3yfM8p57TtmSzGRwaUOBFohV+zXBhCKEPpImZnRl2Zo7+UBYgj
         XCt7/F1yRZqrkWO1XRGGl+PSncH1uh54/TpPQEWZmDgXVEsGSCEap6EAbtlEZ7XhgI98
         aaJr9Ua+B8WjhxgsHKnjznrAuOrLGH/0UP+0bMBx5nvm2b4esc3VkxHur0mZVx4wERka
         qxRSLbAWWJGRZWJSpU95WjXvR32IxGvO7F8whPR0OAjWEKXZWlD8l54QPPGQq17rSGwi
         IZunzOJsMpcaUqBLBvxwfTR+9Vd4cdEa0YYj+jGOxfbb//ViWLQtLXSU4kq/MwqvovJ6
         VsrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736975878; x=1737580678;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9qHKVl8g8d6O1jTs6lYX8V6Xx1+0T2EHi+qxmLZOjZM=;
        b=kO5xcNOS95o8NaNLhnB+4F+mWR/ZQKl3RSuDOYawT2OWeh0N5UBuI1aWe+AJgS/QGj
         xQj2KXJW2GsoxLwdaib2hquWF0urN0O1/DHsmobad5qaiEqBrKPznI28ux8BKYF4xNqh
         FOan+7pFzTPnzk+9BBYdTh+Ouz0Hz5ii8vEdDMn8iKnVCy3rIg5UnYvFgGo6Qq2TRS55
         FawnDCmMYkkSBG+ZemldR2DkJK06JcjCxQN9pRHgPXJKMMwJVn/4kxfO4jyntlYmkHwG
         x4iRjR9IFOGXElqSIPvx0de0sUvHo9HvY5KreS1b7Uu66jmwAPFaS1AOac5vuOpCUNs6
         fEzw==
X-Forwarded-Encrypted: i=1; AJvYcCWXh/lMYgFUoqSexMfn6Ks6PnyYprQmiyGxjC2wKvE9qGDL99SMPKsXJM7D5XIUuM/qgDB9xhn1XVJD@vger.kernel.org
X-Gm-Message-State: AOJu0YxGw+AxKtsenRcxqvzUBzB8mtxvS8qrkX8hPR8Jwvq6KBEZvJmL
	d78amKrD6b1cCj7OoQXF3ZxYHkox2NkIvS/jgTuA15loS3m4LWpn0fjE/yRyjbs=
X-Gm-Gg: ASbGncubYeRhpcz522sz9JGMMruPOkcE0GzzpU9TcYEje353W+73DoUGSsaSEyIJtqs
	g/p0pmmssU+zVnGKKG8G6dojtBBkzC8hnVBXutTLwB6n3VXUCJgHErzMeC1WgcCsGHJ/bt381d4
	fb/vPf+NowSa3PO6ov6AZPXYfdZVe15wyCJIFk+DVLqoXgqDTEH7xzKG6iTpDXL5Y58omue4juU
	CWEVEjeg96CqaotBHwEXgWaJX14zN6C5H3doUBCxZRWmJTzMGiDpekWDDhUINoKxaug7QM=
X-Google-Smtp-Source: AGHT+IEFvnu8OXXeqoDb6YWSdPhGF83v3PJsG+NWti4ab2PS4rU3HwnG9ln5bcto94xmLR+2mM5RYQ==
X-Received: by 2002:a05:600c:3554:b0:430:52ec:1e2a with SMTP id 5b1f17b1804b1-436e26ffdecmr121126635e9.7.1736975878544;
        Wed, 15 Jan 2025 13:17:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74c4f85sm36623335e9.18.2025.01.15.13.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 13:17:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: renesas: r8a77970: Align GPIO hog name with bindings
Date: Wed, 15 Jan 2025 22:17:55 +0100
Message-ID: <20250115211755.194219-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect GPIO hog names to end with 'hog' suffix, so correct it
to fix dtbs_check warning:

  r8a77970-eagle-function-expansion.dtb: gpio@27: 'vin0_adv7612_en' does not match any of the regexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/renesas/r8a77970-eagle-function-expansion.dtso     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso b/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso
index 9450d8ac94cb..0c005660d8dd 100644
--- a/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso
+++ b/arch/arm64/boot/dts/renesas/r8a77970-eagle-function-expansion.dtso
@@ -70,7 +70,7 @@ gpio@27 {
 		gpio-controller;
 		#gpio-cells = <2>;
 
-		vin0_adv7612_en {
+		vin0-adv7612-en-hog {
 			gpio-hog;
 			gpios = <3 GPIO_ACTIVE_LOW>;
 			output-high;
-- 
2.43.0


