Return-Path: <devicetree+bounces-194829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96491AFFAFA
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 744193B6B1A
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 07:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311D728936C;
	Thu, 10 Jul 2025 07:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EGCtWr6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BAF28751F
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 07:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752132903; cv=none; b=K15OQzjTlSYYkcaSscCNSI8w/6QW2MtfXqRrRr9NGQTrnwmiSpM4hlsn76dIhJsy7XV0xrfrwleBdsGJlj9CJ5T8XdnoSkPd/kWJ99DkyfSzpC2kj1IrsTczzgxZMn96kXwnvk56pLCD5CEtoOdwh+JSKsSTtOkZnIbrrhcNOfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752132903; c=relaxed/simple;
	bh=d39nBvEBYdC3uHEcBXf7x3j1kWB+ksaAnGiURALeQcc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qLJ3ueWd9LF/CGYD42Va9MwGV0F8Tjm9p9wVexp4Dpf1UJVYiMLcLCjQGcYiTAhPMslHCSuPelitb2xdtqs42KYabcdU4KuRqbNxvFlOYfZI1Y2OBdFdXfkjuhG/8mk/I3C0K5u9yWZFuF3SotJlNCxEgsPNxwvtP7e2YaprTZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EGCtWr6F; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-454ad911425so196255e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 00:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752132899; x=1752737699; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eKH+aO2rjY7GmUAztpIfNiK4qIgC0rzf6T7b5auiuAo=;
        b=EGCtWr6FR0wUEJsfGnkfdT3y+Fa2R0ZliRYN7dZf6OEN6+Jn1DGuIOqPZYsnv1Pjx7
         YLDZk/NY/nkerSMvxGGSh0FExzUwms7oX7VACfT/xVxOEw3txcfQY6S7Xp2UoDj5RnCw
         u0uC+O26WPdzLnAV86/YLqk0lnG1oJ31o8HDmMFB4NOWqMI7eh9m3K1GA/9liKshfFnm
         dpWTaRpxwYvuHn6XEmVYLvyQ7HuQknDGDZaI6haOyirxSqeYKEQDY72ErgWZNFIgDnaq
         S4cn7Qh5s+NJHvKMXFVUtL9a0JKAvMFYWVVnSdIKPQU12TTmrXwkiYTkKdqhVKc5HsaH
         Vr2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752132899; x=1752737699;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eKH+aO2rjY7GmUAztpIfNiK4qIgC0rzf6T7b5auiuAo=;
        b=WFfhsnkAklFq3tFU7536SHw1GRZl1eNV+I4AW1BTjNvMDyQ3RDAYJeDyIKyjfLlhZ8
         lqQ+VtLBtT8Wklk3XRSmo0J2q0CPacDVBlRFo+Om0ToXErbe+zql6H8ArpUQGdjxgVPP
         64TpRBpTKIq2Np79aiSUbwJKeOeMwJoGOxLR5+rxYtj/eR7beTH4rmO/t1CrBNVcR1H0
         dl+fJD7sF/Zl9+/p2Vp4YppY7RPSxMSQOmEGHPGEfQsNbQjIFbNLdOuJY2v4GXPvB7UB
         P63bhGZXVzjlxfVq4RtpA2tp1v4EKJTLYzxqMK9CwV8eGva5DbCgBXrfYU00kF9RJzuY
         ubJA==
X-Forwarded-Encrypted: i=1; AJvYcCWP5jzfPsN3AjHrMgUGH6dfNqqGSobsxREAq0u6RIskM7iaEqP0oPlqCpCKQDXg8McFEZoQyX2l+eXC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2OwGlJI6lQ0X2khPhFuJSwCMiV+ZoiDpfSQWXOgYV8MG8B8TQ
	JNELrXlwER//8z1yFCBm9E1MSRz36IucB6VWjuKx8L1of6GwoWgD8HSHhCc3kKoCiJA=
X-Gm-Gg: ASbGncsq38Zist2PixWFB3miAjenvGhzForoX8nzjVu3u2Cyz2ZSBQ2G5K61S1Bi6ae
	BcflyKZKiwLlyfwgkLotbf4l88HAoCeBweYFrWMtdEH2/PxyjSmCDZDS8lndVnkS4kBhEiPFJl0
	htuK1ZENyjNEopTSp9GKejYAclZdk8bQePzSIJJ//Km//maKopKWB1YS30v1j70TTDQRy3Kr4kk
	8d8UMg3x6CmaggriWJgLmt/6mchhoxO18sRsJNFWsUr4JyEqd4dB3eVi/xcn27oC8AmRkbGBH1G
	pVTyVC03qG4WHq0B3bq0WbkkhBqkktisfkcd0XLGZF4udkIORey0TBsqeD0kC6djOm2Z83ltaqo
	=
X-Google-Smtp-Source: AGHT+IEABgTHpJuOVHfeR0LW6JPSlCNNGz0kLe9NhwWkBaf3MGsAU8IXDfncPgdRLsTmveiPVUe0Kw==
X-Received: by 2002:a05:600c:4503:b0:451:df07:cd00 with SMTP id 5b1f17b1804b1-454d54022a5mr18146195e9.7.1752132899555;
        Thu, 10 Jul 2025 00:34:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd466154sm10826555e9.12.2025.07.10.00.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 00:34:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: tesla/google: MAINTAINERS: Reference "SoC clean" maintainer profile
Date: Thu, 10 Jul 2025 09:34:44 +0200
Message-ID: <20250710073443.13788-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1538; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=d39nBvEBYdC3uHEcBXf7x3j1kWB+ksaAnGiURALeQcc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBob20TKRivgecVWAUhUenDgNDULB4gEgAPU26Mz
 5fZljgJzDeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaG9tEwAKCRDBN2bmhouD
 10KdD/0aQJmtgD0v956KA9gKqa8XetCl7cuwD54IaMQfP1htmD57xwa2jvS8tZdCHn7HLEBj+tK
 MpkP2fLJMyLrSMrKHi1NG/5AlVFrnOyAwsXaMXm+m4r7vyREzl+B9ta1AmqbDUQIqwWJNwym/u0
 +Y/zAIXcNAl7zoI1/Iv+a1WSlMQpopcv7FU2HHlvQq7P9vT6GUzfZDWdL937RaC/e+x3k2Y75IY
 XO+oS4rRB5fREV8x50kbsSWcvTXUK2r8W8N3ozpCUtgYo2n+SVMTKfknG5zlLyzntbcShhtip+7
 3X5cEwDCwoFvPIS1Y2rYEj7kru9V5pbLCi2/fzD5WEcDafEXHcAr/IxLYJ5kNGVH8gAiqGlOA9s
 wEtTLSiy12iadzaj7wUr0PYydrId/41LlgSyIKe/KBIl/bBqxr4FFDPUsDiYyk/qjhrtE7sgvhT
 tcn332YxguO9xtOYJyAmw9qA62ioQTJ/bT7a0d+FOfDFIpMm3RUI0KNrfjIjTgfPii2M+c2BGao
 xmQaJnZOMstXfwTYVZMYeAidtlltrahVqY+aWe6++rXM+9i6aQkoH37HLsqt6ou4rMRokUyxJ4m
 UTjduzAq0FxJNxJE3UDy5AP0I1VrIl+WpqStqgE0nZX0lE+NL/eaLkFhA3APnjbbPg2ek0+xIDx oH0QHIARAWGWjLQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Effectively all Tesla FSD and Google GS101 DTS patches go via Samsung
SoC maintainer, who applies the same rules as for Samsung SoC: DTS must
be fully DT bindings compliant (`dtbs_check W=1`).  Existing sources
already are compliant, so just document that implicit rule by mentioning
respective maintainer profile in their entries.

Cc: Peter Griffin <peter.griffin@linaro.org>
Cc: André Draszik <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index efba8922744a..4073f7ac978f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3392,6 +3392,7 @@ M:	linux-fsd@tesla.com
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
+P:	Documentation/process/maintainer-soc-clean-dts.rst
 F:	arch/arm64/boot/dts/tesla/
 
 ARM/TEXAS INSTRUMENT AEMIF/EMIF DRIVERS
@@ -10317,6 +10318,7 @@ R:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
+P:	Documentation/process/maintainer-soc-clean-dts.rst
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
-- 
2.43.0


