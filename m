Return-Path: <devicetree+bounces-101965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 787DD974F7E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:20:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D76C1C2211A
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A12185B48;
	Wed, 11 Sep 2024 10:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="seAxEXQj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD25617C9B4
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726049995; cv=none; b=fXHh1dqRM4WjQF0aYt7JQWKMPGUdJKZ+so8jB8mGR43HBLKY3N+FHRqlx8698Yr4RroKMR57ef/vMrHIe3WNwtHP8nFcK3B6mpLdXPQoknvPNUcQjWlSboqO20+QZGWzetlyZRkIgSU7ladl083k15WIC/ElGZWqGRuYRD9CIbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726049995; c=relaxed/simple;
	bh=/2vnnsIqoXR4kLDR4lD5f7Rp0h0KrZ6Snh9OaBx6MNA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t8EptH9/5opV4PLcXn8EVtevJM+SMAjQF1bR+uPn+F9dL8CKID5lJqS8/5rmgvR9Zc5KryJLuy+iuDasOuEG/m3bKvrhY6ZxDffZZhuJ5D13ucym8/F+AwL00SBzQNm4Oj+PtnY9SqFgMcQdOio3wFbgmjP9KJ8+TlFUr8WUbKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=seAxEXQj; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42ca573fd5aso46458595e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726049992; x=1726654792; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBgjfArNf+tQB+Y+xGC4IVMaqVJgesZk0uQdlU6G5BU=;
        b=seAxEXQjPI8FRec+EyYxlNjATDmJMPDG374PQAwdP/FN1s2zDTHiDoaS0SgZ6sCWp+
         lX4uYUamLUtgY/yG5WtiJb5nygTp+mEATqbbk1PpBQAT4wFBROjDncQOuDMQh9+o4fD/
         0AMmvND8kX4NZETNbSMJ9T6pWb1PVEILCZoIJEr1XWSQQGUu5Hu6iWGNUMqGorihjWNo
         XEKVSv0/bh+xH5R7YvKVrVP7ySYNksfu5KuMLQFUzBK5V5U9g8roipUkVElytBAYAqz8
         5oxAsrn7ZasiRoZ694Rhw8OYeDZHs73LGicAAo6BgiSYGufZacWQJmcqBY9V6mkfebsz
         BsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726049992; x=1726654792;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBgjfArNf+tQB+Y+xGC4IVMaqVJgesZk0uQdlU6G5BU=;
        b=ijNs9lrbsE3S3nKXk1V6JS9xHf6xdEIbHJSGTO/8pqqTm1IOfwgszn1cDPpawQO+It
         Lo5KbVtVSu3kqekax9RnRx5e+E2mSP4InA8L++OMI4o4GCkM8GZLF/EfwOHXk39z2Bdp
         yJnU6gvPXUbfC0SgabLYdkS/T0Y6UmiaLWivL0PMAa8ePFxifGr6xjFPGEreNR4b6qwt
         gyZ0l1JFvRwZHLWNYoWUWhZHgRWUApWyT09oadk/E1Sk/+fR/uSgRScNOym68tGWzGiK
         hUyhHBRkV1p+6yQ909rLFmXhny3GEk6RFGUQ8ZgQtmWmJkS/UEaOfgBoHkd7Hp37A9+D
         K93w==
X-Gm-Message-State: AOJu0YzcmbhoUI38ACdFUuLboxIFiDX9nd304PgP5htoo7C6P+KTzcBw
	xeDwizBCiGSHmU4BZhU+bqSAqboeOcpMO/hjyqY9N8kdzyPoFBKo8ZssfZiXaSzQy9cHx+qmjKU
	+
X-Google-Smtp-Source: AGHT+IFYI8jlKZGzuY9u0CzpCYUOu0Q2y8gcsagmmfBF8UnzIwxzWy4tYxCAqseqj8eP2N/gabzuoA==
X-Received: by 2002:a05:600c:b59:b0:42c:a574:636b with SMTP id 5b1f17b1804b1-42ca57465b7mr101265895e9.35.1726049991854;
        Wed, 11 Sep 2024 03:19:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42caeb21a4esm139349125e9.7.2024.09.11.03.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:19:51 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Sep 2024 12:19:41 +0200
Subject: [PATCH 2/7] ARM: dts: amlogic: meson8: fix soc thermal-zone node
 name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-2-feaabb45916b@linaro.org>
References: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-0-feaabb45916b@linaro.org>
In-Reply-To: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-0-feaabb45916b@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1398;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=/2vnnsIqoXR4kLDR4lD5f7Rp0h0KrZ6Snh9OaBx6MNA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm4W7CHzdAvd2vsCT27hxXjR9CtXlSV33H6GDjtIHv
 AoJv+bmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZuFuwgAKCRB33NvayMhJ0fRaEA
 CK2wLy7M6gYdXygENp7KDfVBUAT6UCoKjtUO+zkWFOnyYd4p0drrjlhZ3KrcBC12El9rKp9/9fWA0u
 M5XjCcBLj3EXh5s9q10wieofIaodBR8EyPcBu7oxNqyS4aPWSHIKjq8xBoPt83v0Xlc4R6VUj5bd5S
 3ctS7jltV6ve8VuMVv+K+5Mt7759MRQudjRhdcAC4dGzkdwQe7127eLCiKyP5u++6tNmBs1kRtQUL6
 YOR4Qc5omv46SwwRFfpo02ELLlTcZEmHnPYgPWVjbYLxJbS43m7Fssgy8+e6PpG7YhneHLLpedytUN
 OOtkF0HQHKZtgO/wggaSLH86RhT4dzpBD8mJWxETYTsIv5jodtlrThwpLda4d2Fv6sjv7Fas6JFwB9
 twjBHmYuVA+OWZKLgfvnG1PcqMmLkP7lFyJ5kaPb8X1JDayLPBr4cMo4pmRqgAXNd48H4fyFgoKyno
 W2QK7EM5HA0oenY7vIrndXRmvb9Oh1yZARIIufVv/YHJu00QwGUw7RsBWzaKHTexSIQaUWuQjkJf9t
 pgVh6ixmzEYw64EHtv+wn28nKJtygaRSwsDoDexcBY/p+v83o3dP9CrHCn9JgGEqm9eCeQ2LBlYsxr
 NospTK3tgudXbmRL/6XORdu0d6hi5szAlw2cyoXfgj7bcdHdZ7lRcnzm1lmw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Use proper name for the soc thermal, fixing:
thermal-zones: 'soc' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/thermal/thermal-zones.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/amlogic/meson8.dtsi  | 2 +-
 arch/arm/boot/dts/amlogic/meson8b.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8.dtsi b/arch/arm/boot/dts/amlogic/meson8.dtsi
index f57be9ae150f..06174d8df789 100644
--- a/arch/arm/boot/dts/amlogic/meson8.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8.dtsi
@@ -196,7 +196,7 @@ power-firmware@4f00000 {
 	};
 
 	thermal-zones {
-		soc {
+		soc-thermal {
 			polling-delay-passive = <250>; /* milliseconds */
 			polling-delay = <1000>; /* milliseconds */
 			thermal-sensors = <&thermal_sensor>;
diff --git a/arch/arm/boot/dts/amlogic/meson8b.dtsi b/arch/arm/boot/dts/amlogic/meson8b.dtsi
index 2d9d24d3a95d..a3669025d8da 100644
--- a/arch/arm/boot/dts/amlogic/meson8b.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8b.dtsi
@@ -173,7 +173,7 @@ hwrom@0 {
 	};
 
 	thermal-zones {
-		soc {
+		soc-thermal {
 			polling-delay-passive = <250>; /* milliseconds */
 			polling-delay = <1000>; /* milliseconds */
 			thermal-sensors = <&thermal_sensor>;

-- 
2.34.1


