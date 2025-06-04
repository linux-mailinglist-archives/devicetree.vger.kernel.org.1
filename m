Return-Path: <devicetree+bounces-182794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9EEACE127
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 17:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C6203A8737
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82E4A1957FF;
	Wed,  4 Jun 2025 15:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qI8omZnY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D0A18A6DF
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 15:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749050748; cv=none; b=KumdSZvCekuqctU7xZn3D5X3XClmCLmG3SGtAoSsZACeOhPA9P81L1VjfylHSajtLR91PL6EfWLfIJBwMng3a4MB30Epnh9syb2I2ZVEVvqm/ymRCI2jaoDrSsV5QcAhbG6nS4GLiRvepx5mlw/o4c3GmcG9Vtn32E8DPx4Tq48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749050748; c=relaxed/simple;
	bh=/zu0WY1mTLJkmQKe0QzKVdlleBAaRvg5u4/DVEDJoYs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qri1V1PaNRJeHSmjs+a4X4gyMDZ8KNcIS0fBXJ/Kt+7O4yucm/ftNMEOCg+KVFOPtMDC9A2tiuw2RHCTtKymUy8v321ebatDWabw9CCo8KQCdC5iqOt9NU4vW0cnK2xKenvrfzCXSPku3GEV9HfbLL7oqlRYICgqSLkyRREioeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qI8omZnY; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so13854116a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 08:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749050745; x=1749655545; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tj36HcfLXbrHMi0m60w9d5+4mHUGkz0YH63xXCl7mlk=;
        b=qI8omZnYK63Gb3gfqVrMQYrcAeOkEb7jdjavka/WAWHIxL/QL5ypm1bm5xzQsrx2DV
         ljun/e+RnC0KerzAN1vGJ07NRXgwlz+wbzV+WsH3g8pzg3UrZfamdIySsqhV9aWnzXrB
         V3vbLMhg9JfSP/rSmTuu6iYGxwXw6KW5pT9DaJ1TBTqs583OYDJ+blmh80W9BZvWb6dE
         mEDCsvZuY0zj7+rwBxMs05Le9ZmeX9pY4At4EzMURjgqoo18iXr7m5Ztkgd5WE1pV9W6
         mR0QY7S4KwByWpvk92AiVpT4jS9MUKHA/2jHtwD1S4UTYUagd/Txp563a9yt3lzQDSGf
         5VoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749050745; x=1749655545;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tj36HcfLXbrHMi0m60w9d5+4mHUGkz0YH63xXCl7mlk=;
        b=LcvUnxzZgWHqnAsA57KT1sWF5FtHiTOFCzHctODXxD65+xI0EP7xOr3h2D4CkyKNA7
         0Hb7YyTYZXCdioii6BRN1HszLHwWXQOGa3PeaXYWbpXd73ecnEFVoUZNKQjLBNAtv+Gm
         1j7wWcc9kNvchSjbKTPeO2zyoF9gGgFD8D8mmJkQAMP2ZL7fuLpdk5lBNl1gjdbScTK+
         tZeWw1Wu3Ev2RBNLj3wy8sa84pk3sd+P+uw1cTUPsSiG5CoDSDm0wkicEOnkHdRa5u8a
         M7oftD+3NSo4JQklr95K/UfYeXcWiiGbTvmZK2WSpSf2wC0e25BP2Mzyl2bV5/Z69bA/
         L1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKqjehMLa56uUvAnvKvAHQi73EDFhi29Z1ixNhlC7J6c0eiRrIHifwJbfOpgXr6LaYRh+N0PZ0hSMc@vger.kernel.org
X-Gm-Message-State: AOJu0YyiYMQ4gV8FrB+qDHuPxfymupA6mEevj9Vi4gKpFcTQoEsvFaVO
	QOfwnr8lcCk94dSVw3IfilCRZTcx9AcuWYE873EFxM4LCiCY3FVSfQ/jo31HTPaVIU4=
X-Gm-Gg: ASbGnctM+6X7vAqwEl/aiJe+FjHLXcnrLEzocFi0ddtc8vWreY7aaV/LXlX1uiuRj3O
	3jBW0FWuZiRA5Dw1OsBvQ9eMuP8bIbOyMGU5cInZLMxvFKA89axMK+pc9PpcPQuBTC4fvD1Mcl/
	R811I+PR2Xc3ZpZRdJGcAvV4UrhjaZJzs65bSB4S/uRJpM0CFARL4pESiiGl2Vgj/H0kFuQeFDF
	Kni68bKhuoctF4vgRrN4AOep0lkMRwQhkV3qk1THu5HQtDhAJZhlKfs7FSsu07aXUjzFV7R7zT9
	qA4UOV9097PNcRR/zhtuPe29j0KCbyf1qrnydOj0UEi+uMVAL/5JgcLIOr0lsF9rp09Fo9yJt8r
	NM7pH1g8w56GapC5vtXJx4YOMgBIQYkFhe3AEkCGp9IhcfA==
X-Google-Smtp-Source: AGHT+IHDbl+PPXNilHwRHoApPiua2emH1u8FPEEM6gtKEx+PJ/5CtghVWo7/Vf4dwmLj4wdHx4mOIQ==
X-Received: by 2002:a05:6402:510a:b0:602:120c:f8d8 with SMTP id 4fb4d7f45d1cf-606ea179fb9mr3445618a12.18.1749050744799;
        Wed, 04 Jun 2025 08:25:44 -0700 (PDT)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-606ed984f63sm1051640a12.58.2025.06.04.08.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 08:25:44 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 04 Jun 2025 16:25:40 +0100
Subject: [PATCH 01/17] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250604-s2mpg1x-regulators-v1-1-6038740f49ae@linaro.org>
References: <20250604-s2mpg1x-regulators-v1-0-6038740f49ae@linaro.org>
In-Reply-To: <20250604-s2mpg1x-regulators-v1-0-6038740f49ae@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Using lowercase for the buck and ldo nodenames is preferred, as
evidenced e.g. in [1].

Convert the example here to lowercase before we add any bindings
describing the s2mpg1x regulators that will enforce the spelling.

Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-e5bcbf@krzk-bin/ [1]
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index 9785aac3b5f34955bbfe2718eec48581d050954f..62a3a7dac5bd250a7f216c72f3315cd9632d93e1 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -64,7 +64,7 @@ examples:
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
             regulators {
-                LDO1 {
+                ldo1m {
                     regulator-name = "vdd_ldo1";
                     regulator-min-microvolt = <700000>;
                     regulator-max-microvolt = <1300000>;
@@ -73,7 +73,7 @@ examples:
 
                 // ...
 
-                BUCK1 {
+                buck8m {
                     regulator-name = "vdd_mif";
                     regulator-min-microvolt = <450000>;
                     regulator-max-microvolt = <1300000>;

-- 
2.49.0.1204.g71687c7c1d-goog


