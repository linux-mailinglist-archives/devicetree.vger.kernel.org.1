Return-Path: <devicetree+bounces-17286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA127F1EC7
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79FD81F26331
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2817738DE2;
	Mon, 20 Nov 2023 21:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t0+feOf1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84CF8113
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:16 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40806e4106dso13895395e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 13:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700515275; x=1701120075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NsnumtnbKszDWmEuPJ5XUAgIpj0ZFdzasox3xFNKr0=;
        b=t0+feOf1744F8D+mICOZXx5LZsPsEZKVlDpJqQWsiiN6tCubU5i9orU2FY6Wynm/zA
         YpDY6vFRL3I89MKxQlJ/qpaCQTTP3jHCb3U6HgSKEKuzBzmAKW01oESufxOXYAuzS5Cm
         Ns4I2HqlfxEf/XtnvGH8jGF62FTKYdxhuZTvjDMqu3Zs36pgXDKuIZhPQvoBpKo9nLe+
         1mv/skouUWTFbcZZ47ms5kNXFz+6XV2mN3Qd2FhF+hQUpxMycu8Ttl6GlTuUwkOd6aKE
         afr60q1U+dWKTq30pNIwB8CedG+oXAayANGDXjd/u8bJkCTQc4y6dqLPCvekb46qUVPn
         YoWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700515275; x=1701120075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9NsnumtnbKszDWmEuPJ5XUAgIpj0ZFdzasox3xFNKr0=;
        b=HTJPSc/Pk6KeQhaQRn6yJRbI1o8VDY5XV4si5h2wp3OplhP+Ye1J4vD38LwgZk3Nyt
         Xq+R7bSfa03+RJzF+2irNELYVhQBYPa85rRft7RC2XQa3GqG3LqPENDFybiwj0iKCwgk
         lzSTOb+hOB2McDuiQjmfp9FZgmu1bgpykx6WaWOt+chmR0e2hVhvGKOOBoTWf2lHK4OJ
         w9JytDc2IH6K3RX9cq7o8zk7IiU8IYtldJuiT9zYYtIpOOdwxFXDoG2kwM1sr7M6e1QC
         aVmLxk8WBkiSxvlanFlMJ2Mq2jPIdlL2iVuaJZm4+2pEHSFCC5YU1f0ziSINJf/UZigj
         KE0g==
X-Gm-Message-State: AOJu0Yz91VH+EDn3E7BtVGOVL37uQVflwlook9LlZrOmKV3o4glDc1uN
	2CF3H3m1FIEezgV9OWizectNZg==
X-Google-Smtp-Source: AGHT+IG5ZwJvWcYcJc/wTZ1l5RXXLGRwNPXG44HsXn19tlQN9POBjwgDY072AatSXGa6s25Knq1luA==
X-Received: by 2002:a1c:7902:0:b0:405:3ab3:e640 with SMTP id l2-20020a1c7902000000b004053ab3e640mr518638wme.20.1700515274997;
        Mon, 20 Nov 2023 13:21:14 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id je14-20020a05600c1f8e00b0040596352951sm19518451wmb.5.2023.11.20.13.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 13:21:14 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v4 06/19] dt-bindings: pinctrl: samsung: add google,gs101-pinctrl compatible
Date: Mon, 20 Nov 2023 21:20:24 +0000
Message-ID: <20231120212037.911774-7-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc1.413.gea7ed67945-goog
In-Reply-To: <20231120212037.911774-1-peter.griffin@linaro.org>
References: <20231120212037.911774-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the "google,gs101-pinctrl" compatible to the dt-schema bindings
documentation.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
index 9f04a0c76403..118549c25976 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
@@ -35,6 +35,7 @@ properties:
 
   compatible:
     enum:
+      - google,gs101-pinctrl
       - samsung,s3c2412-pinctrl
       - samsung,s3c2416-pinctrl
       - samsung,s3c2440-pinctrl
-- 
2.43.0.rc1.413.gea7ed67945-goog


