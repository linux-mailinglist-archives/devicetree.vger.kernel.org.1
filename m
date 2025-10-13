Return-Path: <devicetree+bounces-226229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9333BD6427
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:52:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF7863E8233
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D80822F3611;
	Mon, 13 Oct 2025 20:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kfCuGwN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE8C2F1FCB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760388710; cv=none; b=PHjNkjijkxvfmeEzGko+dBjxq2kUUT5BIaFZHbjEWulNyxkN7LHOUvYWuyzlLCVwDbtXDGQMCV7Kk7dXeGv4ZE2Jn0VWvbUuQ6z6KUp6t7RXXvGlfuNxIDoYVUiIfEHYbA6lscxdjrUAhCQd1x0JX/xUOGrjxujzSFR/lC08eWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760388710; c=relaxed/simple;
	bh=giCCGOBlBChq6Ynpd6wXM0B4ZyryNCFfzlLAUn2NwOM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BUUKszcIZPMYjzoLg8RpnANrz1mXO6XaRlZzVVWTCRAT8fZhgZ5sEZ50rEbWefjcJzTFmB8mBywd4Ls9ox6UKQ4yDAiwvg32eEbOv9WTDqIPpQVO/XXNLkus72zspTWe0cIlQyNrgXCuZKF6yS0av0W+4ILlOWeHWaB1CsCcJXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kfCuGwN2; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e4f2696bdso47536645e9.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760388706; x=1760993506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDipr+4PTExpx4Pus/pkesGLE+hZroTGsdhAMvKlEJ8=;
        b=kfCuGwN2LqbEoYfWMztaz42qfLSsC/22EBQ3C+GQ3raYBP6D6EbLLNAS0KNp40NBFQ
         UhmD0+BqaWk4Bxhkgiz41sQ8Dxxg84SzVlDISAIJEM6GCTK3/94km4RAxDpKNczzQ57Y
         QHDuA+DqxZ92+vWW/1rgP/ucik3lTBkQtkAhEbVmafXifZytQIbhhfq1YNKUlebX1PU4
         WblZ/QDh3ooPQPgUKz2hetX5B019jzknz+HEn6EqzeOmhO3Y9C3UFc2z/6YiIedgsbdp
         zzhJX/23e08yEiwWDXFjaBvFPpopcyGTze4i5p0z2F7XkI2A6REgBpxC3ghq3YWs6bMq
         H+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760388706; x=1760993506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DDipr+4PTExpx4Pus/pkesGLE+hZroTGsdhAMvKlEJ8=;
        b=lUPcbRmeiS2Z1yRpw2EloenRQ1kzNwLL0LE8xTRh8DmESzjkUQ7Ty6ycQA2gczylzK
         /69nuf4cRK+ko1BpLnveKZ7VPpfqF5inpkj1X9ZvEj0oWVpDPio33HwvbL7NzYweyksK
         2HMqJW5dpuBi5/5+Q9hJKwETUD4t9ifqFztAynGryTWswb0ny3r2+oEMr0/vbMYsEI1E
         UWv6xwwPfXjBnCOeqnqturJnMZdl+WqlyRyNuN0ZPCiXa+yBAKCfr9YDlnwpHtdW2+73
         9i9hQ14kAX1D1yZMzoWOhRqVHQPRZx8+4pBleFjwX1EXIFU5t+tloxLqEpS1oO130Lzj
         udQA==
X-Forwarded-Encrypted: i=1; AJvYcCXIT8js3x1nP6FQhp7jOnyLh2EKMVExtg3CrImpspoAhDVB9kztrefM+1ObRgOj9yFK9vo8tJOzllNi@vger.kernel.org
X-Gm-Message-State: AOJu0YylGtjfzdECFBt2UavBDZUJ/uObYZMEaVcQTbS0PUH4m+5TxbZv
	sJnSmHyIczKV52hW7Y0DiHkSOt2Mteus1d352OOZiCRv4b6beYuWf93TwTvBEuFQCKs=
X-Gm-Gg: ASbGncsidYO6raUdDFGojy6xs/RNO7WYij+9asIieyezPgm31N1/v+P8GLD0tvuDN2k
	abRys4s4ExTxPo22jchasI1XyCNcfqW89fKdnaM/15j/4SppkpQfEpQFEeosVVIAAqjguQvoAl7
	bd68iUXUvv1Qq+5CmSFEMdaLQoh5FLHpa0Xx3OU0MmQ/mKQ/DgP78+os2ocPADl+j/yUMgKDNl+
	vRWMvLXcs2Px08f4s6PiWQB+D1cPkaEd4C6OxyK8HXMD9EekB7RHlkeTbp8lI13NJrmASosi4io
	7NAYvw9ERNthSaW7KZ793RzTDg5yXv2qSfgSbmN7QoKTOCmaV3RL2rn58j6EeQUdGUSrFZCIPH4
	EV9I0shR2r6/xfeAvNJUzFEua6eXA4Ew6NAfcx628zO2jLgfylYYfWRhW5uOt1WwTHo6B7LwQtI
	oQ0ZwwTy+HHA==
X-Google-Smtp-Source: AGHT+IHUTh+o+vvqt5ApZzeaETGYqZ/dYn4CYlZfPFo7NmH3AG3xdBAc5oRb1zg/wq6RL1rLN8M4Vw==
X-Received: by 2002:a05:600c:1990:b0:46e:1b89:77f1 with SMTP id 5b1f17b1804b1-46fa9aa1c74mr143864665e9.9.1760388706278;
        Mon, 13 Oct 2025 13:51:46 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.67.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab3e3206sm133512615e9.4.2025.10.13.13.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:51:45 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 13 Oct 2025 21:51:31 +0100
Subject: [PATCH 2/9] dt-bindings: clock: google,gs101-clock: add
 samsung,sysreg property as required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-automatic-clocks-v1-2-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
In-Reply-To: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1827;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=giCCGOBlBChq6Ynpd6wXM0B4ZyryNCFfzlLAUn2NwOM=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBo7WZXhdIsp2MxanlYhqND7ug7W/PmVbZa8LP19
 rjZ/5sTC9KJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaO1mVwAKCRDO6LjWAjRy
 ugIyEACaZbMs7e+zhFPqcpuN5R75PYl3O9TDmu+YtFIJuzesPfmdW6mjJ+pRYDuqG8vNpAPLfLp
 HAaBp+R/VWQZgUeFhHLauLlJwp55XQVmkp2SDzcAssMfI4IRc9HcVz1ZkfnUNGbA1J+2W5wfyDs
 VaLjZbo4dyfbjinCsne58VzgnUmfTeDEDs9l1pZyQp/8r0LYamyk1xJsSjdkc2VQd+A+Lsu6rvz
 1c6HO84D1MEdY53PWfG3e2zkfg2rQxk/M1Q38TeTzdo6KqK9knJz9f5JtEIC3x/evu28VVlqfOR
 vmdhtv89j66zSiujb+9R3ADOXr+xiGlBKfI/S+JkODT/54ux18FIfEyyPFxjf/ixPP3HpSvT0vV
 pnTA/1Kp2SNFJKsoM1sAgJBGKKtlK6AAITJEc+e8AuEUw9orw3BvGcCn8e482IWSE1dJ7it3c9C
 NAJ8oHudoYuF7yuzqgJeGJT0AF43Bzfv1q6Tr7tJCRCRoiftfTCzcD/gvvHItNMTk5q2lsHSkku
 SfG4DYzxyi9EKzjf38aW8OlIhtJhAmhu41QyD+xnmoaFdSstsuRrcMAUMra9QCapyciJgobJh8W
 2TTErWidX0cU4VwL6MPVNBNLss7ZB7dNa/uxvrolbp8dFyPlQxDD8KUWUNPDzV1esTP2yVJUUc6
 g6L5JBsu9IYNUXg==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Update the bindings documentation so that all CMUs (with the exception of
gs101-cmu-top) have samsung,sysreg as a required property.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/clock/google,gs101-clock.yaml         | 23 +++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index caf442ead24bda57e531420d8a7d8de8713032ae..5cfe98d9ba895d5207fffc82f3fd55b602b4a2bb 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -49,6 +49,11 @@ properties:
   reg:
     maxItems: 1
 
+  samsung,sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to system registers interface.
+
 required:
   - compatible
   - "#clock-cells"
@@ -163,6 +168,22 @@ allOf:
             - const: bus
             - const: ip
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,gs101-cmu-apm
+              - google,gs101-cmu-misc
+              - google,gs101-hsi0
+              - google,gs101-cmu-hsi2
+              - google,gs101-cmu-peric0
+              - google,gs101-cmu-peric1
+
+    then:
+      required:
+        - samsung,sysreg
+
 additionalProperties: false
 
 examples:
@@ -172,7 +193,7 @@ examples:
 
     cmu_top: clock-controller@1e080000 {
         compatible = "google,gs101-cmu-top";
-        reg = <0x1e080000 0x8000>;
+        reg = <0x1e080000 0x10000>;
         #clock-cells = <1>;
         clocks = <&ext_24_5m>;
         clock-names = "oscclk";

-- 
2.51.0.760.g7b8bcc2412-goog


