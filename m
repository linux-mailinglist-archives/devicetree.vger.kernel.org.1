Return-Path: <devicetree+bounces-20816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85592800F34
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 17:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B69141C209C4
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F363C4C63A;
	Fri,  1 Dec 2023 16:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rrK06ncd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3FB610FE
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 08:11:00 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50bba815f30so3169656e87.2
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 08:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701447059; x=1702051859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBRJfAevU+LCcxJ2mAbE/NfYBIkHJdmy5yUy9RNkIsA=;
        b=rrK06ncdDaRn2eUM+oZO1naXgn5h3N/E9U17PpuX2q7KqFiPWJR/03g5J4atmpNbyy
         1XESS7VlagCd/bj840Cs8lRa7QUtAVEH0ndmQEZFRdJwj9F5T2cMZNlyr5HuJS/48MOl
         7R/O7YSn/eHqe+ZZCS2tRKG+I6o4ogNDNP3h3O+HJNNHN6Y6a9yeeliTA3q410Wx3KLi
         FzAZhRDMGKPYRjF8bg6htz58+AAUAG33kukrDsty4Wzz9RYWbtLQWRbiQgrIZhgZu2ZP
         2ZanCj+Y43Nks9IEj80GVYNMjM9FK1FhEKdC7KL+95m6/6pEeHmJioW1FLvL5+KYaRfw
         yOcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701447059; x=1702051859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oBRJfAevU+LCcxJ2mAbE/NfYBIkHJdmy5yUy9RNkIsA=;
        b=Aq+fgfupN7xdQJPRaqeNMr4x9BvQMMQJCJIFRJTMtmA3JO4VowZx1eCOUA59J0KgYV
         zxoNbXc9bV6/zjOzsDg4LwhsCLAGHaVeiO3uponpVWZIOY76+6wOVsoGhtVXn9uRSIfA
         c7ctpMwtcyMb4LDw9vCIb2h42hXKhSSrRhnqz8IFZF79zsQSvyamFjnDY2/U5lSGmF/V
         hUw9D24PSIE0mfo6E5x9Z9/1YGpBxtDVNyo4H3Pa8rAnsw/zGO1QafglIR/m9ZfaSTxR
         B7GC7CsfYXRGfhwNqVoxHm4Reg4W8ToW/n9oIQ2CIDxzlDDsmVwubL7OqGxdSWcAPonu
         WtoA==
X-Gm-Message-State: AOJu0Yzov0IjGuENwQMAE6QdTX68FjY5VTtXP8mZqyc9s2Ha+8rIMdFM
	oIXIU0tZDOSQnVzQa5t89vioUA==
X-Google-Smtp-Source: AGHT+IG/WFRvP9MxpMHrpVaQSz7ZF+XEsCatpRGxusYrMlLEz1tqbPvkKxUnz1D00VC4ZUyx/hKrEw==
X-Received: by 2002:a05:6512:3487:b0:50b:d944:bfd5 with SMTP id v7-20020a056512348700b0050bd944bfd5mr410395lfr.151.1701447058930;
        Fri, 01 Dec 2023 08:10:58 -0800 (PST)
Received: from gpeter-l.lan (host-92-29-24-243.as13285.net. [92.29.24.243])
        by smtp.gmail.com with ESMTPSA id cg16-20020a5d5cd0000000b003332656cd73sm3907386wrb.105.2023.12.01.08.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 08:10:58 -0800 (PST)
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
Subject: [PATCH v5 07/20] dt-bindings: pinctrl: samsung: add gs101-wakeup-eint compatible
Date: Fri,  1 Dec 2023 16:09:12 +0000
Message-ID: <20231201160925.3136868-8-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231201160925.3136868-1-peter.griffin@linaro.org>
References: <20231201160925.3136868-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

gs101 is similar to newer Exynos SoCs like Exynos850 and ExynosAutov9
where more than one pin controller can do external wake-up interrupt.
So add a dedicated compatible for it.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
index 2bafa867aea2..de2209f8ba00 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml
@@ -44,6 +44,7 @@ properties:
           - const: samsung,exynos7-wakeup-eint
       - items:
           - enum:
+              - google,gs101-wakeup-eint
               - samsung,exynosautov9-wakeup-eint
               - samsung,exynosautov920-wakeup-eint
           - const: samsung,exynos850-wakeup-eint
@@ -111,6 +112,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - google,gs101-wakeup-eint
               - samsung,exynos850-wakeup-eint
     then:
       properties:
-- 
2.43.0.rc2.451.g8631bc7472-goog


