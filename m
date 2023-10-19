Return-Path: <devicetree+bounces-10169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9397CFE00
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:36:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCB0E1C20A40
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B05D315AA;
	Thu, 19 Oct 2023 15:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T4ut6afZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7422B225C6
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 15:36:03 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B35DA124
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:36:01 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-53d8320f0easo13786108a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697729760; x=1698334560; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tulhhblHrcCah8iPxnvKfrb/Qib8qF8UaGqM5t3jbq0=;
        b=T4ut6afZaEtRAQVP/c1ieEU9hVwQ2IAcQf2dWNUf8f51dY+9mk6doykLCHn3JxVy1r
         R83U63tazSsb36Qo+QCTF67bH2cRB7YWvKBKufK/a0kmkXEcoGotbgR7GyAEsVfuaiyZ
         Sh9bnW0GXOneYP03FhsmjhqtcDHjT7DLuwIIK9B+gOuc4nyDC37M1hFDoiRXq5T8oNZu
         AdaH8hn1qoGWh0AUQv6VNY6RTGT11UzLGcmgg9h0CxeUPrxa0c1UwhpPOnT8JEiNQj7g
         NQLv6RClASQkTmwwLUslKxsGqtilH94HBv2mUQhxKIcpucsbJP1JFC61wa42Qoq4ctya
         7HjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697729760; x=1698334560;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tulhhblHrcCah8iPxnvKfrb/Qib8qF8UaGqM5t3jbq0=;
        b=B8pcOLUczvGM6WjZjYefhNU1rzLud2pzQIXK/7ysMvCKJ1Wq7dZYe+qbmB1hL733qS
         ZMqVvWmqf/VH9qLaNHZg9/1k1Knkv+YF4Jh1l4eoTtMb1BUsAzHh7LHogU3oDZLW7nDZ
         u3fzxJs0re439ZJzu6K+3EHkCrZOnqz6SW/l3W5mmcL8uoPtehN/NaL2k8SPx5fhX531
         bEkJlugnKhN/gvkmrEP4pmTzK6AS4Fa7VTacTWlpXGyB9xZAzeceJcFoQu09KmRvRdbO
         6yrrdrbw342b9NeejyPrpLTpUv2X39VQyURe0TUA9pAO/pq0szr5R1TKn5UJoQpptsyu
         5U6g==
X-Gm-Message-State: AOJu0YwdEfWBbIjSKQh9UZscCGF+bWyVnvZKOMIjsTdcq64dCOFd4IxP
	JKyk/MachQKwCvcnheSIX6vSng==
X-Google-Smtp-Source: AGHT+IGNhUCwSgjJIlC+Kc1pNz6Qg02U10hXnQsaMQCy/FidnXeNoyfRdij7ZAi4eWS4G4DjWbAC/w==
X-Received: by 2002:a05:6402:2741:b0:53d:8320:efcb with SMTP id z1-20020a056402274100b0053d8320efcbmr2430553edd.36.1697729760130;
        Thu, 19 Oct 2023 08:36:00 -0700 (PDT)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id c64-20020a509fc6000000b0053ebafe7a60sm4743875edf.59.2023.10.19.08.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 08:35:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add WSA2 audio ports IDs
Date: Thu, 19 Oct 2023 17:35:40 +0200
Message-Id: <20231019153541.49753-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add defines for audio ports used on Qualcomm WSA2 LPASS (Low Power
Audio SubSystem).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
index 39f203256c4f..c5ea35abf129 100644
--- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
+++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
@@ -139,6 +139,11 @@
 #define DISPLAY_PORT_RX_5	133
 #define DISPLAY_PORT_RX_6	134
 #define DISPLAY_PORT_RX_7	135
+#define WSA2_CODEC_DMA_RX_0	136
+#define WSA2_CODEC_DMA_TX_0	137
+#define WSA2_CODEC_DMA_RX_1	138
+#define WSA2_CODEC_DMA_TX_1	139
+#define WSA2_CODEC_DMA_TX_2	140
 
 #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
 #define LPASS_CLK_ID_PRI_MI2S_EBIT	2
-- 
2.34.1


