Return-Path: <devicetree+bounces-28967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4AE8202EA
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 01:05:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEEB01F22DB5
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 00:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72D6580C;
	Sat, 30 Dec 2023 00:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z2qfqXKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA12B7F
	for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 00:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a277339dcf4so168182766b.2
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 16:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703894706; x=1704499506; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N5GQ4lEdN9DwNLKuqGguw5oyIOnWfTXUWjk0i1Y3v/8=;
        b=Z2qfqXKYFj/T05auyzw9PbJ9h3r0pBsTBqlxlxR3tC2SfhRQkstZOJcU9c96UAMt/N
         V0EbDHYeDovOVr2z1qtOMqDkFpg37bDZxTSbsqcjxD03eW5779/TaJOYY742l+sGtwjH
         5PQZHRhfjsocVBzDXdajBnPWiPDokp8EHiLYIFVeb93BtIcQDNdQFYVFgElnG7pwpyeR
         W8N0xJKVSfIgv8Ujdp0JSXpIOIWx7bsWv3a1+Qa5nVLkBPDQENPC63ahjCAuDXfSFnJ8
         CwHu8Af0TRD2yF8KiiLnp3+RVAtDgf1C2PlADoeRYjrAB4xc8xiGsnVANCnLpZkZArRJ
         q3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703894706; x=1704499506;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N5GQ4lEdN9DwNLKuqGguw5oyIOnWfTXUWjk0i1Y3v/8=;
        b=qoHE/UDNTuxZTyjeMJDffX/n1zQYszvRuqEtXm4rrFrns/BXsYUgc/5qlQLaNql5Em
         dey5LJtwdE1M8g/yE/e+NqSAf/N+8Hfl65USsQNFR4ZAtZpM3d3wWY6tCbeKWPH1OCVi
         dAgjVgoV/nJfH/PaH82oSwwVQG02qSxHICnFHsQwcSaiY05J1KMg4NawnRpG6K0DXFa3
         0ju7Q1zQQjMHu4lZNIw63N1X5MNIHJMYDLlT1DRCj+IMIn2mn1/3r4HOxwrQ4FJrrQYA
         nLyOoZCt8Df24/GtXh0ZqbIVAc5T+JgXkfMcFYiwuuMLScW7bbyBKRJu0tgqW3n6SH+z
         vJUw==
X-Gm-Message-State: AOJu0YwfxCjNIIB30WUqA/MnuAlyXYnkcU6oC8OscbNPHtJ8SGtyekim
	c1tAUp550gEcx8I6iIOthD0a8A9ixpGbMw==
X-Google-Smtp-Source: AGHT+IHCMcmpofdli8WcdSQfiZV5Lod9lF9eLGUu5VGDQDPsnvVgcettmTUO4hQwWqmdONfFCh0WKA==
X-Received: by 2002:a17:907:36c6:b0:a27:6d9c:816c with SMTP id bj6-20020a17090736c600b00a276d9c816cmr2346578ejc.25.1703894706028;
        Fri, 29 Dec 2023 16:05:06 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id wj6-20020a170907050600b00a26a0145c5esm8609623ejb.116.2023.12.29.16.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 16:05:05 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 00/10] More 8180x dts fixes
Date: Sat, 30 Dec 2023 01:05:01 +0100
Message-Id: <20231230-topic-8180_more_fixes-v1-0-93b5c107ed43@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK1ej2UC/4WNWwqDMBBFtyL5bkoeWEO/uo8iEtNRB2wiEystk
 r136gb6eQ73cHeRgRCyuFa7INgwY4oM+lSJMPk4gsQHszDKWG2skmtaMEinneqeiaAb8A2ZOQw
 2OG8uthHc9j6D7MnHMHEdX/PMciE41mzuLfOEeU30Ob43/bP/bjYtlQxQGweDqXvb3GaMntI50
 SjaUsoXpEFJk9AAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703894704; l=1262;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ix3Tb8eliufejahIgJHedyMxZtF0hqPj0BvrRSjOYOs=;
 b=SAe6+wtkqRw1VP0/jceIZXULNqTUFVk8hrYAEmpitkecxNceoITlA47g8gzCwL8p5Xqz2hT2V
 Dg9bIZ9/7VsB9JF1rosN2giXEiW+Fg6ZmBhGXJhmNUjR/cV4h9D4Ex+
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

SC8180X has got various random power plumbing issues, this series tries
to address that, and introduces RPMh sleep stats.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (10):
      dt-bindings: clock: gcc-sc8180x: Add the missing CX power domain
      arm64: dts: qcom: sc8180x: Hook up VDD_CX as GCC parent domain
      arm64: dts: qcom: sc8180x: Fix up big CPU idle state entry latency
      arm64: dts: qcom: sc8180x: Add missing CPU off state
      arm64: dts: qcom: sc8180x: Fix eDP PHY power-domains
      arm64: dts: qcom: sc8180x: Don't hold MDP core clock at FMAX
      arm64: dts: qcom: sc8180x: Require LOW_SVS vote for MMCX if DISPCC is on
      arm64: dts: qcom: sc8180x: Add missing CPU<->MDP_CFG path
      arm64: dts: qcom: sc8180x: Shrink aoss_qmp register space size
      arm64: dts: qcom: sc8180x: Add RPMh sleep stats

 .../bindings/clock/qcom,gcc-sc8180x.yaml           |  7 ++++
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              | 43 ++++++++++++++++------
 2 files changed, 38 insertions(+), 12 deletions(-)
---
base-commit: 39676dfe52331dba909c617f213fdb21015c8d10
change-id: 20231230-topic-8180_more_fixes-81cf3c8a2637

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


