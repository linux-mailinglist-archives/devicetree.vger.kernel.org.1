Return-Path: <devicetree+bounces-130051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 089DD9EDCA7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11893283754
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1AB71CFA9;
	Thu, 12 Dec 2024 00:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WoLnSKYN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768993C39
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964454; cv=none; b=C8+KgqlugyNUXrK7B99xrorUrBBUocFypi/80yGIaIH1/Pdv5ogmXeCtA3n8JgXNDV/fYHd6ZRp1y6gtaQAgWAyxl5MnFupVFd663BrvzjA8oLFIBJ3MlybKUoNNn6wuAAfHLv+1DmTcgVypTr5c1SuCrV96IfqXCxYZE0IoOBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964454; c=relaxed/simple;
	bh=u898HNuc/K7hFwQQGL+EvvHfte2KLKC60+utw98E/KE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Oe/QY26FQ16pdWH9sO2nDnJL+FFsCS+olCzCia90iuIoRX4o6QUJq4uUJ6HRSFxE3ejsOeEqGUUkTeWDZigDPGY0he0Bb7AyuOfoHFwpzMVKiBkHi0zSkLTk0isgZldhOwSQi/TmTb36tfqPzrHFMTnkiuxExI42GD9ky8virAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WoLnSKYN; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-434ab114753so285845e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964450; x=1734569250; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y5l/l7iG742JLVKp0vJqekUsAPOA4worydu3RY2wX3E=;
        b=WoLnSKYN1ihH08nxzVQBTy9+Ydi79QFSDVzdhdKAKM8uRDD510RlYBm2pBQvYBSVFp
         fnW4qcjhA69HD2wJEf+ocBjNAqhOM1m2kJ3e2U/G5vCwCdGVv78sZZpxtM1Gn8LR5jQV
         ldYUCmXJXShCpCicXNc+KYyVteEuLDFGv/+n7x+R8af+crPEb3uBfWm2e1rlu9WfpfEz
         4lgwpE3FW+bXusyLoPpu7J6fXjznwFA9Hf7LuQVM1bSgYGFCll3kGzlpXJjAS6L5ah5r
         HfkYYILUfqxBKNPVwShWPz7dtPSo89xFYm2LH+fFlm0lyueXUD6QpHMJI/21wzVMfNTI
         qX3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964450; x=1734569250;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y5l/l7iG742JLVKp0vJqekUsAPOA4worydu3RY2wX3E=;
        b=shJQmx7X5VPFuzQj9RXbjjwND1dwwC53OtB3kFlPXsVEGz1YiPjLhucC2tnFzpznOp
         a0QZksgU1uXW2JeblnXvpqDLw2o6zAXoS+jBYyarzg/9rEAv78xbitmdCfopOyMETLDb
         lQUEZiG3kqaOizUfvO1VsxucQsBkh7UlCe0M1Z5B6ZAOvn9NaLJwwQ6qbZzUgVm22VDF
         UL6CK+uHTV2HmnTj4gGq7+nNbLPKtD6K8ZRot7vYubSDWJeBucaAiuQQvddbxYq5k2WM
         ZRaIroG85uQAN53SNYsWFwuQizPYA5tY2vbqJ6y3yvoJRflnRdW3IQWSfaFfpTkvVPF9
         UH1g==
X-Forwarded-Encrypted: i=1; AJvYcCV5j7CHt1SEmiDCMPupPhmwrdKOcOlZtr6ZwSHAPYVMmamjYE9zv+ApzrF1EIM1VZ4Ya4/vN+PVvNWk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjqux0S7D0J/A4FHsAJvfMD3NmxiizNrgZOEpeuKjOcuE2qgdC
	50GQHpKsycWkxTZyNNi1+SGelkN5CIFUCopj2A1rHeOddT27UiwD6HZmzspqkM8=
X-Gm-Gg: ASbGnct4177jEDxLYVflku1rlrZesSufkiQLuZv+0O8congXmEZ9OcDoZcDHkB6lTqW
	zaWvtj75nQXXlnEHXCsbpjUoEIXKJkdqhMwPN+XUNntQG3HRFKKo2GipAsJdAy799yTcf0Wpsc9
	Zd6RC3rYWJnOx6Uh4ES4N9dQ8P3JUfSeD/Mgoi0fE2c/uhGon93Dcm/GEyFtsemP3itVVRn5BV5
	tfQNwsKMNPngXkAU9S+RTVYF9IH93KEziD2FmlIXiRNW0UwLcGPsA0lB2lNltrRDzBxbw+U
X-Google-Smtp-Source: AGHT+IFaSvB80LMIRhJfPUgXzGzChRp6atkQc01wtRMPtU4/xf5ktaw4y00amu4hB9OYaIG7Ryvh3g==
X-Received: by 2002:a05:6000:4405:b0:385:f13c:570f with SMTP id ffacd0b85a97d-3864ce5fbcemr3040782f8f.33.1733964449908;
        Wed, 11 Dec 2024 16:47:29 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:28 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/14] qrb4210-rb2: add wsa audio playback and capture support
Date: Thu, 12 Dec 2024 00:47:13 +0000
Message-ID: <20241212004727.2903846-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Issues with distorted sound and unstable volume on playback were resolved
and this patchset also includes support for onboard DMIC and thus
capturing feature.

This implements the playback via the following path:
RX1 from DSP is connected to rxmacro which communicates with wcd codec
using soundwire. This goes into AUX input of wcd.
wcd codec outputs analog audio into wsa8815 amplifier.
Capturing works through vamacro using one onboard DMIC which is
directly connected to vamacro codec.

Special thanks to Srini. Without his help and support this patchset
wouldn't be here.

Previous version:
https://lore.kernel.org/linux-sound/20241101053154.497550-1-alexey.klimov@linaro.org/

Changes since v2:

-- forcing single channel output for RX_1 channel is moved into drv variant;
-- added capture feature support hence some new patches and
   updates to pins description;
-- sorted headers in wsa881x-i2c driver, removed excessive ones;
-- removed of_gpio.h as suggested by Rob;
-- removed wrong bindings and updated already existing
   qcom,wsa881x.yaml as suggested by Krzysztof;
-- removed unused pins state description as suggested by Krzysztof;
-- reworked wsa881x-i2c driver
   (initialisation, pm, consts, some functions, etc);
-- usage of devm_kmemdup() in wsa881x-i2c probe() as a hint from Krzysztof;
-- updated commit messages where required;
-- not using i2c gpio bit-banging for wsa881x i2c;
-- made dtbs_check and dt_binding_check happy.


This series depends on:
 -- HDMI audio playback
https://lore.kernel.org/linux-arm-msm/20241204140027.2198763-1-alexey.klimov@linaro.org/
-- and LPASS clock controller
https://lore.kernel.org/linux-clk/20241212002551.2902954-1-alexey.klimov@linaro.org/


Alexey Klimov (14):
  ASoC: dt-bindings: qcom: Add SM6115 LPASS rxmacro and vamacro codecs
  ASoC: codecs: va-macro: add sm6115 compatible
  ASoC: codecs: lpass-rx-macro: add sm6115 compatible
  arm64: dts: qcom: sm6115: add LPASS devices
  arm64: dts: qcom: sm4250: add description of soundwire and dmic pins
  arm64: dts: qcom: qrb4210-rb2: add wcd937x codec support
  ASoC: codecs: wsa881x: split into common and soundwire drivers
  dt-bindings: arm: qcom-soc: extend pattern matching to support
    qcom,wsa881x
  ASoC: dt-bindings: qcom,wsa881x: extend description to analog mode
  arm64: dts: qcom: qrb4210-rb2: enable wsa881x amplifier
  ASoC: codecs: add wsa881x-i2c amplifier codec driver
  arm64: dts: qcom: qrb4210-rb2: add WSA audio playback support
  arm64: dts: qcom: qrb4210-rb2: add VA capture support
  ASoC: qcom: sm8250: force single channel via RX_1 output for qrb4210

 .../devicetree/bindings/arm/qcom-soc.yaml     |    3 +-
 .../bindings/sound/qcom,lpass-rx-macro.yaml   |   19 +
 .../bindings/sound/qcom,lpass-va-macro.yaml   |   17 +
 .../bindings/sound/qcom,wsa881x.yaml          |   75 +-
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts      |  126 +-
 arch/arm64/boot/dts/qcom/sm4250.dtsi          |   62 +
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  132 ++
 sound/soc/codecs/Kconfig                      |   15 +
 sound/soc/codecs/Makefile                     |    4 +
 sound/soc/codecs/lpass-rx-macro.c             |    4 +-
 sound/soc/codecs/lpass-va-macro.c             |    1 +
 sound/soc/codecs/wsa881x-common.c             |  123 ++
 sound/soc/codecs/wsa881x-common.h             |  426 ++++++
 sound/soc/codecs/wsa881x-i2c.c                | 1352 +++++++++++++++++
 sound/soc/codecs/wsa881x.c                    |  493 +-----
 sound/soc/qcom/sm8250.c                       |   28 +-
 16 files changed, 2384 insertions(+), 496 deletions(-)
 create mode 100644 sound/soc/codecs/wsa881x-common.c
 create mode 100644 sound/soc/codecs/wsa881x-common.h
 create mode 100644 sound/soc/codecs/wsa881x-i2c.c

-- 
2.45.2


