Return-Path: <devicetree+bounces-83435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3149285E9
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 11:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9A461F21472
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E400156F48;
	Fri,  5 Jul 2024 09:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pf86Wqf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D1815532A
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 09:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720173140; cv=none; b=J69Oft7ygV/scEWKZhlLdwMuZfysFxlG2Gcy3NKatxhnWfHjFmeB7vkzs+Ac2UhUV4ObrIuaiS6dE4OB76jyQ33JczaFS2++oq4AysrvFdxEihqCSDPSadsJEFxnjA37flxmz0G1hbwvkNfObUK5JjCPgsizfAoaM8qxdIw6vIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720173140; c=relaxed/simple;
	bh=PhqeVWb5AhUZ+TVjiuEbVKHXnMtFrrz3lDWQEgW3GKk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TcjUwa0NQsXd9ZLCbViwDuzv2SUImTvcovitUrNgX+NC4i5O7u0+GniUOmGyzSsKcCgNtS2NCPkDiSJl3Q/Hb2Q6WUcR6cWzhwCENf8qeXzyDPc+XUKmh7b3kMs9/nYnf5YMHpWA8BNhwC67HE4T7tP1UJCQHVz0voSaBhIilBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pf86Wqf5; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42573d3f7e4so9750045e9.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 02:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173136; x=1720777936; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BKqtRkIKZziWtjCTznIKCd63AloZp1nyjQT6Dz4Kf10=;
        b=Pf86Wqf5hs9aC5LFToMR0ifRV5FTEc9IBoI4buFraPt2R8C0p8GoJhZ1PP/A8Hx5rW
         kIccP4GOVC2V8rhMUT9qtoqj6OZLG2yNLH0hgREtZsCv8J2yxTiD/XsTGSt9IRBtopV5
         UfaX/FgXChIfIOAXiUFlRg33/bBGvX/L1GYtQKhVthF0z77dCTAOdn75fDfL0QjDTxHp
         w5P/eHZcqFTeeWgQqHLT9GtRe6t7144MR1iZ+H4iJNXMSCFD1KijXJdcich6UkHyGRYC
         pcZDlo4XGamSx1T800YubsIHYOkC8OQKtqZ5vNhsjloNJUhqtJOhUGlDQOdNBOaL56mk
         XAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173136; x=1720777936;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BKqtRkIKZziWtjCTznIKCd63AloZp1nyjQT6Dz4Kf10=;
        b=q/U7dzO/5LSuo4IjtJcqyKEDBStYXCLPrUBkdK2xLbDS4kYE33W2tuTTxWlz06TlEH
         rUdzDVsVPr4BlG9pedgKu3rJQ+zBk9BmQR43rI9+BXaOlQSmYTvqVjM6MaAF3El9opCK
         OxnSwqUBUrhZHq4YciSRZFj7k1N/6Ntls8LBq5LGdD6+dDuKQr5aiBuVtNRdEsm8og7r
         4PqbFK6MIeqaWwhL8lo5p6B7Uv04w27hjdNaJo/zCTjWXGqxTi/nUoD1W2W7CfSeFmSW
         AgH9hyv3HY2YQm7TuYeALKi+WQiQw5qn7VGdWTuK3q7sZpctvfIk8bD2+pzdYbUgqfZO
         JvrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkBJKuin/mDnd3292gFFB1cJxRUEgSZGAlSMI7NYhN0PItTH6nWkeLptUJzdbBrz9MH4ZiGsYGNFe5hxYkNUqZOgUV85f1VPLYww==
X-Gm-Message-State: AOJu0Yy9OFEA5R7W2KlYrFWxZDgbFusdKXkEBrD/3EdsWEiQJ6IZnHuf
	M2UzrSvsm2kTsqCgUAuDGtxxBOXCsouQ0to7A4o7qwYZD6HyYHww5P3M+q5hw5M=
X-Google-Smtp-Source: AGHT+IG2nfyfOFODsINFapnK4EjwRmiLFuS6mdyQ2tPZgE4KKTOjRXzWDUhHtaXzjuKiXh1Thk8Mag==
X-Received: by 2002:a7b:cb42:0:b0:425:8bc2:d01e with SMTP id 5b1f17b1804b1-4264a48cf6amr29090245e9.39.1720173136370;
        Fri, 05 Jul 2024 02:52:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:31 +0200
Subject: [PATCH RESEND 12/22] dt-bindings: thermal: qoriq: reference
 thermal-sensor schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-dt-bindings-thermal-allof-v1-12-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1188;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=PhqeVWb5AhUZ+TVjiuEbVKHXnMtFrrz3lDWQEgW3GKk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8IuHb0/nwwqjF9F3MLHILARJPYIbjhma9l0l
 qDg56q1paGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCLgAKCRDBN2bmhouD
 15TJD/0aeAqus9TFN3iLADtrOOXAjfXurNxC8IOzekRzSUrjGIPfmsTBEN+H2ihJJ8nb5gIB2b/
 aoxTJtTjZGW4gzOnPRjnNXeLmAvN5KJpIX/SIFjbEmKWGtfvpe8X+iU+fh6GBgOU9wxBWJoTUEB
 njWiPmqXoXKEkLWgDQ0G6je56VfUdhZ6Q2ir/rtc1isLlmbK9z7S7pMZfqHc8MhXZpXP6b0nihF
 cuEvZZ8ij3zH9au1OAAyzfFLyXuEJqz2u1984v7ZEFBHNzRbVDazlcyJ0mHLhpZoBWbv2NB6tLv
 HG2DN8HbbZcF3sQm9rMbjBnhfrq0XbUtXCOKaNnhhdHy+RpCOGf0l3SgjMqr++Z3aeQScUaY+MO
 JPXotMYhRzvNIZHqajFeQdD/5wODGrtCOKdmh6jEJ7Xo0zn9nAZq4AEV2ylawLSB5C+MmizlPcI
 iGcEPpNONXWbXjamNLpB3WeXfUa3uUm7++dSr8su4E+CrdTfyu/4EWXVuIEv9fzSdgtr4XaoChp
 2xIiIjUWtPDi40cVNTNx4/mHKT5WzTvcMGgUaUwmFB7G8t39blPh9yP0EbPw5bFmE14HM2+cILi
 Kx0UQLsvY77pmwpZ8Jpn0+vkZlAprB7MgOoOunxeRs/Qu4WOmnouk0/PJr7FZ2NRByZt8pw5hwU
 p5UjlqLismlHSRw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qoriq-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/qoriq-thermal.yaml b/Documentation/devicetree/bindings/thermal/qoriq-thermal.yaml
index 66c4972d5072..aa756dae512a 100644
--- a/Documentation/devicetree/bindings/thermal/qoriq-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/qoriq-thermal.yaml
@@ -11,6 +11,8 @@ maintainers:
   - Sascha Hauer <s.hauer@pengutronix.de>
   - Fabio Estevam <festevam@gmail.com>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     description: |
@@ -70,9 +72,8 @@ required:
   - interrupts
   - fsl,tmu-range
   - fsl,tmu-calibration
-  - '#thermal-sensor-cells'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


