Return-Path: <devicetree+bounces-10368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DED757D0E7D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:34:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1D6F282493
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD0419440;
	Fri, 20 Oct 2023 11:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pqrs.dk header.i=@pqrs.dk header.b="B5HxzUyX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9518DD51E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 11:34:30 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1D711A8
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:34:26 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9936b3d0286so111957866b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 04:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1697801665; x=1698406465; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o/lwy8WHjVXC6iZ/BJfjFekCT6EMOppAC3IWeHaAw3M=;
        b=B5HxzUyX0e7cUREKt4T5c16c+pnDkb2FQ7ELlc+pLDarGoIgrKrVQG6D31bm6cV00g
         bj3duNFg2cPrp68by4ThHBq1MxoJXfmbjBSl1agAy59Gguixj1fJxBy8dS0f1dF/NRro
         HM5TAGIq6+d6QckEOVsrmELVXnFa+rY+UZtCyfFtHStZdT52xaAycvyDSzfpr5lAqRFd
         0CSs1uEHnf68pmmGeVhtuJehicK4YQQ/A2JOypTE9hU8Td7wb+LWgcypzCMvoetWrOky
         9jLW8kKnoaTl6jxC39WIWsHPcS1Eg36yPcj1kU5OtBmbQ9TwLeiCsalP8RLJiq1MnLuI
         E0Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697801665; x=1698406465;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/lwy8WHjVXC6iZ/BJfjFekCT6EMOppAC3IWeHaAw3M=;
        b=UiogsFGrJXF6D3IOCuXhAqlph1B/ZDTPi1kRPDSIi+UV+daMm62NmT77OzT98dgp0o
         fJGaZKVF2t1h9JSpyLNeuj1IsDlEoYxIP677FynC4Cm3EwY4ktjYzWKjUxqAH6cilAkV
         d3BbgcrtVT/asERlukg0yGRS+KHOgwOfrYlKvWgOrvOEKo16wC/TPrT6pVcexc1CH1jV
         58GYcOp4CiEnwoSfBaPymsNFVWZuZKRTCMLFZdPs/MVlkE8PU2XNF4swFfXKrUfkPzAN
         nlnnYwdNetCDLpbN+E2ddsWxrVbyz8lM2pBFbjFc0zmHNsQ90DO0DUAyqt3sq1Hg0eyW
         qaBw==
X-Gm-Message-State: AOJu0YzKTcY0k8fPuSjtIdafkaKch3u/5+rQFrrB+4bLUzmChZjfV9V6
	oixATEghzUCytHGpQMJHbWaChA==
X-Google-Smtp-Source: AGHT+IEc8GT5EtFnLsJhmGBlj0etNMKoCfBRUju6KuKZeg3Dj2iO+BlaE7KYpMmCTiCevtHie4gT5g==
X-Received: by 2002:a17:907:d388:b0:9bf:4915:22ca with SMTP id vh8-20020a170907d38800b009bf491522camr1032497ejc.45.1697801664707;
        Fri, 20 Oct 2023 04:34:24 -0700 (PDT)
Received: from capella.localdomain ([193.89.194.60])
        by smtp.gmail.com with ESMTPSA id ce10-20020a170906b24a00b009b654751c14sm1300320ejb.47.2023.10.20.04.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 04:34:24 -0700 (PDT)
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Subject: [PATCH v5 0/3] clk: si5351: add option to adjust PLL without
 glitches
Date: Fri, 20 Oct 2023 13:34:13 +0200
Message-Id: <20231020-alvin-clk-si5351-no-pll-reset-v5-0-f0c1ba537f88@bang-olufsen.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIALVlMmUC/4WPyw7CIBBFf8WwdpqBMr5W/Q/jAulUiYRWUKIx/
 XdpdeHO5bnJPXfmJRJHx0nsFi8RObvk+lCAlgthzyacGFxbWChUtUSpwfjsAlh/geSoJgmhh8F
 7iJz4Bmw7Y9GsiNCK4hgid+4x+/eHwmeXbn18znNZTunXjBspZa10RRtFWwL5GWqGa0xVexFTO
 eufwt9TsgYEU9NqjUojrtvmWP6B3t+7xGF2juP4BqsNVZQBAQAA
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rabeeh Khoury <rabeeh@solid-run.com>, 
 Jacob Siverskog <jacob@teenage.engineering>, 
 Sergej Sawazki <sergej@taudac.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.12.3

This series intends to address a problem I had when using the Si5351A as
a runtime adjustable audio bit clock. The basic issue is that the driver
in its current form unconditionally resets the PLL whenever adjusting
its rate. But this reset causes an unwanted ~1.4 ms LOW signal glitch in
the clock output.

As a remedy, a new property is added to control the reset behaviour of
the PLLs more precisely. In the process I also converted the bindings to
YAML.

Changes:

v4 -> v5:
- address Rob's comments:
    - min/maxItems on top-level clocks:
    - remove unnecessary else:
    - remove spurious |

v3 -> v4:

- remove spurious | per Rob's suggestion
- simplify conditional clocks/clock-names per Rob's suggestion
- remove mention of clkout[0-7] still being admissible in the commit
  body of patch 1 - while the Linux driver still tolerates this, the
  new dt-bindings do not

v2 -> v3:

- address further comments from Rob:
  - drop unnecessary refs and minItems
  - simplify if conditions for chip variants
  - ignore his comment about dropping '|', as line would be >80 columns
  - move additionalProperties: false close to type: object
  - define clocks/clock-names at top-level
- drop patch to dove-cubox dts per Krzysztof's comment - will send
  separately
- collect Sebastian's Acked-by

v1 -> v2:

- address Rob's comments on the two dt-bindings patches
- new patch to correct the clock node names in the only upstream device
  tree using si5351

---
Alvin Šipraga (3):
      dt-bindings: clock: si5351: convert to yaml
      dt-bindings: clock: si5351: add PLL reset mode property
      clk: si5351: allow PLLs to be adjusted without reset

 .../devicetree/bindings/clock/silabs,si5351.txt    | 126 ----------
 .../devicetree/bindings/clock/silabs,si5351.yaml   | 265 +++++++++++++++++++++
 drivers/clk/clk-si5351.c                           |  47 +++-
 include/linux/platform_data/si5351.h               |   2 +
 4 files changed, 311 insertions(+), 129 deletions(-)
---
base-commit: f6abdcb2444f6ebe06e19cd9eee767c7c46612ae
change-id: 20231014-alvin-clk-si5351-no-pll-reset-ecfac0a6550c


