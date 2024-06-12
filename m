Return-Path: <devicetree+bounces-74978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C8E9051B1
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 13:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32A34287CB5
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED7FE16F0FE;
	Wed, 12 Jun 2024 11:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y29JYbjm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9DA16D9B1
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 11:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718193368; cv=none; b=ZKD8YZPEyvOTGzwdVBlV0BlawV54Gxy/lADC5Dzg4s/sUGNm8wsCQbJ8kf7MI+9Z5a8G/lUemkQNCjnayc4KuRMHbD2Hvj0ieNSqRLa5tGEo6bh2HErw2lwnkX1jR6xCK6DrZfvQaiBPawq4ovm2uiVpHsfuYQD66a0R0KzQdvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718193368; c=relaxed/simple;
	bh=uOR+xIsHDbWSbhrnfmd8+ZJ/VQdwPuFOjpN0peY3rVw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GBAKdcqfOQH2ZLHAHJuerly0xiHA7mXTFUm/Ls9oRsVR1bMNbSILp9hl4QAd1VDiwvMlfo4EBOnaJesZxkH+9ozSSui47b9Qy76lzcpclf2YhhPvAm213KCg03rsIxTUwOmwWP9P8Bf7Wv2SEOwM69St7Es4s2YkaXA66v/oZno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y29JYbjm; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a6f3efa1cc7so141215566b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 04:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718193365; x=1718798165; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oxtqnkllneU5FSN1j1eKyCGRpnLNazDSvubINnfxoJQ=;
        b=y29JYbjmJgpQM1HK6rR0gChdDpGzwzIIxZFAqummvuY+To3yWcbv/K0v8ngocAzqxK
         3rpgpXWK0d3NXRrseUxV0k27MGLrwyDTXSPMmXEPPx07isgeGsY1A+JPHaEwg0K37w+q
         frCJowKc+HILnZRdfXUo8Wo/JmDW0oDEvB1pKPRgsCiqHR6YVG4jL1KtVE8sfBxS2tGG
         8wIL4mdTHX92wM5hGCO1Uw8oO9WG9YitLMe4kycy8abnxiRwnQZB9glAQ+aEo0+mlwqo
         88slYNpaIACEtt9hbYbkMcfswufAFQGd52S5IbA+UsS+IUXECVkZETX2Yin4BAbeY2XN
         dskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718193365; x=1718798165;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oxtqnkllneU5FSN1j1eKyCGRpnLNazDSvubINnfxoJQ=;
        b=W/cJ0SSTbKZz6TtIOM58kBmoU0nd1tIBNsttJC2Uw4oCIPD6H1koqVPSpnZynPu2z8
         RTF3DgKXXDHypKoMUIPM0V/PaFBoHXr7pHgjTpbpZOTLz3dyOIgs0dwYoOxTgLck1HZQ
         z/tQkXmb1TEygsgUOsoQ0RooFLuXzM4tq0MvFDl/q2lkj9YBzqOX4RT2s8bmtY9pWLVd
         yxx2rPabXXXytpN47MMOdl+FoeZ4mhx1JMQC4RPWPwbps+FMxqw3xzCj3+L/5DnulJA1
         q4v3E4HEv2bfRAeQiDkF9HkhPKK+L8n1yxSbGSyjgvsff/SzAQArh7xxd0hift8zlp5L
         Av7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdSsz7xNSDEqBk3/ThcWLRIjDtU36hCn1jsm3exzedL9MobMMs56hk0q3WMpOiXvJRapItZtPGdQwVg+6HrVeJNln7L1YjtXk+YA==
X-Gm-Message-State: AOJu0YyIvzBLkWXAPAx6haVCo+/4UsI6Bc0evEKjAAorxy2MR49YWQ0b
	GIkg/0Mc23soMoczAt5736plb/IIMMmlPuGRilErth+BwwoG4TwQgq4HapYWVWg=
X-Google-Smtp-Source: AGHT+IFXFTqJEnGgm3nlv3r4tBxyWKOMcONwHoYdXFVZPX7J06kPvPoo0NWR2HZ1krnwdNU1FMiNoA==
X-Received: by 2002:a17:906:2790:b0:a6e:fecb:6baa with SMTP id a640c23a62f3a-a6f34ddcccbmr358983466b.34.1718193365502;
        Wed, 12 Jun 2024 04:56:05 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f2f8bd62esm275762266b.141.2024.06.12.04.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 04:56:05 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/2] pinctrl: qcom: add sm4250 lpi pinctrl
Date: Wed, 12 Jun 2024 12:55:43 +0100
Message-Id: <20240612-sm4250-lpi-v1-0-f19c33e1cc6e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL+MaWYC/x2NQQqDQAwAvyI5G8im6qFfKR42NtWA3UoCUhD/3
 rXHGRjmgFA3Dbg3B7juFvYpFVLbwLTkMivaszIwcUdDYox3xz3huhlKysKD3IR6ghpIDkXxXKb
 lSlz4spvry77/xQN2hvE8f68Um1Z2AAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=883;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=uOR+xIsHDbWSbhrnfmd8+ZJ/VQdwPuFOjpN0peY3rVw=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmaYzUVFtwMT4tcW19q5T3WlgZ1W6TtznpCplbP
 OPB8c+bsr+JATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZmmM1AAKCRB6of1ZxzRV
 N6HXB/9POskOO91hQ3rIbwW6dGB0gGSXNe/DbmuevbjSoY9jsS7Qu5PqXVapI//nbeRTdBOtFlK
 QAVVpuCh4Mt0HHECWuHaR9yvQblUTwYXKMjwv25AYJaKa59mcvXpDcukG5vBVusH/H98KIW9S5g
 za/ZQflcL+/Gou8KgoG2tLjPtVGhtoyll02siVTWN12J9ofy6YQ2GeP59zV0TiIpBaJMbjBb7NL
 baPE1uqS2Zot4bd8e3R/3rQ4+ontFeprfQtoVSqHeRMBniPXyT185WS904Q/2SdLDOQXX0y1ft4
 g8xf7cwhzJGYUuTNUFlnuUjO34oDlWy2fmJkEhtwjvH5eRwe
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Add support for sm4250 lpi pinctrl.

changes since v1:
- updated dt bindings with suggestions from Krzysztof
- removed duplicate function name.
- added all the lpi pins

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
Srinivas Kandagatla (2):
      dt-bindings: pinctrl: qcom: Add SM4250 pinctrl
      pinctrl: qcom: Introduce SM4250 LPI pinctrl driver

 .../pinctrl/qcom,sm4250-lpass-lpi-pinctrl.yaml     | 119 +++++++++++
 drivers/pinctrl/qcom/Kconfig                       |   9 +
 drivers/pinctrl/qcom/Makefile                      |   1 +
 drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c    | 236 +++++++++++++++++++++
 4 files changed, 365 insertions(+)
---
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
change-id: 20240612-sm4250-lpi-b1ab26b3b050

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


