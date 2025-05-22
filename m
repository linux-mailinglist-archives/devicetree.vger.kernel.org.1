Return-Path: <devicetree+bounces-179673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE063AC124F
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 19:41:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 293ED7B52EE
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D603819D884;
	Thu, 22 May 2025 17:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rOe4Hinx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B10519D8B2
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 17:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747935658; cv=none; b=Uqjbvj0KgpKSCGZz9rKcZWZ6gUAl2DUSJYktpdQ7DKqKvvb1hJqb/IjeRY+6C0dmWd85ILRVJMHu1T39sBBmxHOuaQqrXelcV/laX0K4bVB4qI7TRAi0wp7mA0Yr0WIX37F0rVoJekXKmyKTo99Z62VOw5zJpUnz1oVjbfklpxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747935658; c=relaxed/simple;
	bh=Gx8rat0F5gGYg4tYeBd9EDyzRXpBbhu3rhNTcZhiZH0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OFItlZKXh5gggyqlDopVBTSe4GOI3bdX17ul4svRYs5ZIPjpA8M6ObKTkVpwq4aITt566YEdHyYfvfGQ+uZGF8jBrH2G4ACGZXBdZOJKlWzqqKSd2/igEa0yEvtJrjRxfI7hbR409NrhRcT+NSsZs2dY8QB/7vmty4L7oS0tuC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rOe4Hinx; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-441d437cfaaso52299855e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747935654; x=1748540454; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7NPUIJScbl2wo5u3vE+t7s0/ylzAg/M0wI+ubRZFTc8=;
        b=rOe4HinxoTlFgGf5eDTyYcj/Zuzhla5daG70e3i2i+QZ0KOUt65ainVzvnAEyAr57l
         /CO8JRKS7MBZwQARq4iT3IySEJ1ZqyLq/xGhAm6HPTKjx/u2ZpuXVMb6vVNQ13M1dnDi
         Cowk2iTizfOC7e7UVGXvxj764kH0wqvXNLLarjzsnZOr/RX5uDkhA26VYCM/DgVo9X+8
         LspNm4zF2mS4kd1li+F545nX9ZUBvCoacCxcPWxYH1gtdFv9yCQc0s6ZwYolHCZsK9b8
         A7M+uZqTpmBfggPXXDRa7hRKhjEvTUwDq33clwvWIXiVyNpmRnF5pqjIwqgNLPR1ZR9m
         HkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747935654; x=1748540454;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7NPUIJScbl2wo5u3vE+t7s0/ylzAg/M0wI+ubRZFTc8=;
        b=Nd42psH2XujYSTdC/h73k7R/h8zV8rODZDHxrYrLLLJfaQajrz7GHCRMnsJbJZNJsS
         K4mZJ/PR1oQ76EgatDOHxI7OksDahe1jroHaHKIT49RVXdZtBzEehitpDaWSYQALx0zs
         UqBvsaKrYHNyDmtSeqIC4MjteOhevI1VD6vckt6Ql0+f2J6saIIW+rjbMHvL5dgXngFl
         01hxcbCjY+V42DUtzefzW1f9W7LhXunoAS9IExBL9D7RlIvqj9vCzFjSvW45VuWgCsNt
         V8rstx/21tMTWkThtbAKSuCBgeEjwnb/YM4KaK9FWA8aB7pMYmr2K2bO40yvBFLsnC0i
         HEEQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/YffQaGbl6PgI8KqRKSZ7T9Ym4alfUKI9WJLVm9sOSZyYhZPAzjdBejdC8o5gPOBmHbGrYBXfx9NK@vger.kernel.org
X-Gm-Message-State: AOJu0YzDKqX7ndLJd3IA9tyqJxTAEAio2Rnhxhjig9KJe16Mld3rHN+t
	4BEMaLZFoIX76GS3Vr+2rWUutHtQfkArxSc8s/te2ZmmZnSbK2uTSR45PIDM3L6SWmcCxBasht1
	0L2UZ
X-Gm-Gg: ASbGnctv4BdRHWi2V4MGy54smWfB1BixtBp8t01c1wnng7cQ83KfcFlVWjNmQ6mkxeY
	7Mdh6ETiap0jGDKpzSCQlTUzFVcrkkJBL2t2BCKdTq0JKwkFg7B+fpEvy/lJcgq5QtBh1tSMxxG
	PTfg05I3qBGfxeRfTZAf5Fnt7mxU2AsQ//B8bLgyPoiULSwq11Tp0WpLa3DNGn4UifVW6OhGTXc
	gZv6vFoQlMcPjRruV0Qcdn9zjOPCJc9J0LQDPuAo0sixMZ3B4XbSPp0cvkwg9P45VQ/i4GxEYr2
	1xYnFaSxFdN1Ke6D4HAkDa7OaISvioX/12SJumqIKkqlFeSVS5jGwdpwknM=
X-Google-Smtp-Source: AGHT+IGGhVpRpV0KK+9csxjRQAa7427Mshc5zMSpLcRZ9lrj8a5WqdPgOzbFmkpOpGEFcPdmgHYleQ==
X-Received: by 2002:a05:600c:c8c:b0:442:f4a3:b5ec with SMTP id 5b1f17b1804b1-442fefd5f8dmr271581325e9.4.1747935654432;
        Thu, 22 May 2025 10:40:54 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7213:c700:6c33:c245:91e5:a9f4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7bae847sm109563195e9.36.2025.05.22.10.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 10:40:53 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Subject: [PATCH v3 00/12] qrb4210-rb2: add wsa audio playback and capture
 support
Date: Thu, 22 May 2025 18:40:50 +0100
Message-Id: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKJhL2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDI1MDUyMj3aIko/jE0pTM/PgyY920tERDo5TkZDNDEwsloJaCotS0zAqwcdG
 xtbUAU/wbnV4AAAA=
X-Change-ID: 20250522-rb2_audio_v3-ffa12dcc6148
To: Srinivas Kandagatla <srini@kernel.org>, Mark Brown <broonie@kernel.org>, 
 linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2

Rebased, updated, re-tested. This implements the playback support via the
following path: RX1 from DSP is connected to rxmacro which communicates
with wcd codec using soundwire. This goes into AUX input of wcd. Wcd codec
outputs analog audio into wsa8815 amplifier. Capturing works through vamacro
using one onboard DMIC which is directly connected to vamacro codec.

Changes since v2:
-- dropped [PATCH v2 08/14] dt-bindings: arm: qcom-soc: extend pattern matching
to support qcom,wsa881x and replaced with new one;
-- dropped [PATCH v2 14/14] ASoC: qcom: sm8250: force single channel via RX_1 output for qrb4210
-- reordered as suggested by Krzysztof;
-- updates to wsa881x-common.h registers descriptions and corresponding updates
to wsa881x-common.c (Konrad);
-- sorted subnodes in DT alphabetically as suggested by Konrad;
-- wsa881x bindings updates (as suggested by Krzysztof);
-- ASoC: dt-bindings: qcom: Add SM6115 LPASS rxmacro and vamacro codecs
is still present;
-- added "qcom,wsa8810" compatible to wsa881x-i2c.c;
-- wsa881x is still present in wsa881x_probe_common();

Second version:
https://lore.kernel.org/linux-arm-msm/20241212004727.2903846-1-alexey.klimov@linaro.org/

First version:
https://lore.kernel.org/linux-sound/20241101053154.497550-1-alexey.klimov@linaro.org/

---
Alexey Klimov (12):
      ASoC: dt-bindings: qcom: Add SM6115 LPASS rxmacro and vamacro codecs
      dt-bindings: arm: qcom-soc: ignore "wsa" from being selected as SoC component
      ASoC: dt-bindings: qcom,wsa881x: extend description to analog mode
      ASoC: codecs: lpass-rx-macro: add sm6115 compatible
      ASoC: codecs: wsa881x: split into common and soundwire drivers
      ASoC: codecs: add wsa881x-i2c amplifier codec driver
      arm64: dts: qcom: sm6115: add LPASS devices
      arm64: dts: qcom: sm4250: add description of soundwire and dmic pins
      arm64: dts: qcom: qrb4210-rb2: add wcd937x codec support
      arm64: dts: qcom: qrb4210-rb2: enable wsa881x amplifier
      arm64: dts: qcom: qrb4210-rb2: add WSA audio playback support
      arm64: dts: qcom: qrb4210-rb2: add VA capture support

 .../devicetree/bindings/arm/qcom-soc.yaml          |    2 +-
 .../bindings/sound/qcom,lpass-rx-macro.yaml        |   19 +
 .../bindings/sound/qcom,lpass-va-macro.yaml        |   22 +-
 .../devicetree/bindings/sound/qcom,wsa881x.yaml    |   66 +-
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts           |  113 ++
 arch/arm64/boot/dts/qcom/sm4250.dtsi               |   62 +
 arch/arm64/boot/dts/qcom/sm6115.dtsi               |  132 ++
 sound/soc/codecs/Kconfig                           |   15 +
 sound/soc/codecs/Makefile                          |    4 +
 sound/soc/codecs/lpass-rx-macro.c                  |    4 +-
 sound/soc/codecs/wsa881x-common.c                  |  193 +++
 sound/soc/codecs/wsa881x-common.h                  |  478 +++++++
 sound/soc/codecs/wsa881x-i2c.c                     | 1353 ++++++++++++++++++++
 sound/soc/codecs/wsa881x.c                         |  493 +------
 14 files changed, 2459 insertions(+), 497 deletions(-)
---
base-commit: 7bac2c97af4078d7a627500c9bcdd5b033f97718
change-id: 20250522-rb2_audio_v3-ffa12dcc6148

Best regards,
-- 
Alexey Klimov <alexey.klimov@linaro.org>


