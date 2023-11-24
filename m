Return-Path: <devicetree+bounces-18676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E47B07F7A46
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 18:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F8951C20A39
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 17:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 378A0364CC;
	Fri, 24 Nov 2023 17:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="e8z7WlIn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B27871733
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 09:20:00 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40b27b498c3so15974625e9.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 09:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700846399; x=1701451199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2d1leqtXuRjh3vDQD1vENVeJ67TD/CQIGzFzr3jZ/Rw=;
        b=e8z7WlInALi26lTFnVyEdD4XPSgTi+7R4sktHk5KQ6OOaAiDLr/hVDMz77d7A3uyB9
         qMIZZF9fnlw6dKHWi/2iB9nlkBUmLBM0g5eZH5qITaR8m7HnieRR6YiTcGhypMrRVnQw
         D8yYKP/68QBQPhHlhFJQ8ogpCcS2+2CgjBhHBpcs3orvqWYf6H9ay61Vnzer/9sAd710
         f4yBQJTo32R3iansQKw4aC7jXKmQFIv0xwqcoa45+k8GAlzYDFmpRBiOe/0UZpRQ7hqt
         0scuwRfgBhGHt642452YAn+HmJPOyZcjpuiUvexMGDXU3xAbB1MHIR52E8s4hAVAhAi0
         mTZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700846399; x=1701451199;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2d1leqtXuRjh3vDQD1vENVeJ67TD/CQIGzFzr3jZ/Rw=;
        b=HFJqMjXfhoZ3oxorArOsYb5XL4eP6Pda/rGX+rN230by1gkrfchzi/SKEgPIiQippv
         xKFL/KohwQ981f6YrbNSbEXUpDAts1g0EoslkNaI80R4yPTku9wx2mSatUGL6h8lu4TE
         S712ctLahEfLxqMn4c8FIuefkuZCrg70+9jWZ6ZB0QFZkFy3JTnHvDSJ0fmtCv15r/cp
         Qd/D6Xon3y/HDmAOYFgNxsjpNUi/d2v/wW6wYf6fWXsLHCsVDvJgJbbPOavOvSxoOEqj
         cxy34CDeYuADxXkNvXOy1mj01YKPkK4xWrvaT0PgjEsOBfshBoS5EkYTiFBmMeAP/Dg8
         uO2A==
X-Gm-Message-State: AOJu0YxAJzHMd7CcKEmZF3HH8MHJ3OxrrMc5GkSopcgtjICC6aHZFs6s
	RTEyqaoas4PolV8z3BD35aZOAw==
X-Google-Smtp-Source: AGHT+IGof/O1OGnHaLOZnn6ikBllpdYsJKE4lZGWZe1M6TLjaYOYsj7vsLD/q57/Kn0PjoMIKgomtQ==
X-Received: by 2002:a05:600c:450b:b0:408:3f61:cb4f with SMTP id t11-20020a05600c450b00b004083f61cb4fmr2927268wmo.23.1700846399037;
        Fri, 24 Nov 2023 09:19:59 -0800 (PST)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:1243:6910:fe68:2de5])
        by smtp.googlemail.com with ESMTPSA id o18-20020adf8b92000000b00332e8dd713fsm2547663wra.74.2023.11.24.09.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 09:19:58 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Daniel Scally <dan.scally@ideasonboard.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20231114-topic-amlogic-upstream-isp-clocks-v1-0-223958791501@linaro.org>
References: <20231114-topic-amlogic-upstream-isp-clocks-v1-0-223958791501@linaro.org>
Subject: Re: [PATCH 0/3] clk: meson: add MIPI ISP & CSI PHY clocks
Message-Id: <170084639792.2638113.9821910765744986123.b4-ty@baylibre.com>
Date: Fri, 24 Nov 2023 18:19:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Applied to clk-meson (v6.8/drivers), thanks!

[1/3] dt-bindings: clock: g12a-clkc: add MIPI ISP & CSI PHY clock ids
      https://github.com/BayLibre/clk-meson/commit/439d3404addf
[2/3] clk: meson: g12a: add MIPI ISP clocks
      https://github.com/BayLibre/clk-meson/commit/773e4e987308
[3/3] clk: meson: g12a: add CSI & ISP gates clocks
      https://github.com/BayLibre/clk-meson/commit/5205628ab0bf

Best regards,
--
Jerome


