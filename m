Return-Path: <devicetree+bounces-20760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF77A800C91
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 14:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F05E41C20B6B
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 13:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F16463BB45;
	Fri,  1 Dec 2023 13:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gmu68Vdi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8414710E2
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 05:50:50 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40b4a8db331so20342655e9.3
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 05:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701438648; x=1702043448; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rYNGk6XZtcHXeUZQI4MtfBcpoSsmfJQ07T1mNJVJxmE=;
        b=Gmu68VdiFGwG/DzvtNY295z76IMohwDGgxPlwWeRAh8tpKkRW/fu1yLgXh72l3SwJn
         m4pdGYltx3N3P6eHLt5NcrSutlFRt29MY1ldRS7p999/IgOmt2xVaQ2MV70Jr4HH+pKf
         P6V1au1uzmFEUq7e36sv4MCyINwwnYGhQrY7LQAqwcNRPCrPzyuc2pkh5R8VYxeiY0fd
         hgEIlwOnRrg4HEAnTk9JnJitRZLcn4nZeOCjSEdKFoxTSUXlG5IEQyMiICkP3u2jIfqJ
         V0XiLgPj1SO/2KnmR9N1Rsry18yw/eXISk8pm+b12epwj8BW6wec+LYG9pmIGcCpOkyg
         kCFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701438648; x=1702043448;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rYNGk6XZtcHXeUZQI4MtfBcpoSsmfJQ07T1mNJVJxmE=;
        b=L56pal5Jdv5r9/ZKyQ4LHkDPKBrSMhl/kyBgNDLMTzV/C9bmN+Q5qvQXDVbhJh0YAn
         2TFO2QRPfuWbrTTqwLg/gka977XhHw7odmfk/ORymERtkFFlCoG5ZfSofvOuNuCBsXrk
         iVj3URkdCN8xX5RT+pQ4krfI37GtjMKXI+P/Cb4AUKfY0T9WfhFT/QVb/1bUliS/Cf5j
         4EGlQL0IQSWiO4CfoKuA8k2tTUMLGp2yUVzdha5qfNqjjswI5PpC+Z4LBQqwg2eFhq03
         HTryxo44N94zZ9MziAq9gqjmYqCUEMHSnLaMRgdhXvpDcfdAqjnJQkXjWnKTB9UWpcVT
         GxYQ==
X-Gm-Message-State: AOJu0YwSvxb/mYScIRWJZGJOS7dHVhFzkQ7b91hXACnZEdQnmh2xbT++
	/Og/dXeVHEHbcZ473gNiZ3W+Cg==
X-Google-Smtp-Source: AGHT+IF5X73Zh5hiFUO8DhLM8nRT5it4kNvMhJaTUK9MQ7BOjaGp2a4L9MusWA5BnHvvvMNDPj+WTw==
X-Received: by 2002:a05:600c:3ba9:b0:408:37aa:4766 with SMTP id n41-20020a05600c3ba900b0040837aa4766mr437099wms.5.1701438647868;
        Fri, 01 Dec 2023 05:50:47 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id s8-20020a05600c45c800b00405c7591b09sm5539942wmo.35.2023.12.01.05.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 05:50:47 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: enable IPA on sm8650
Date: Fri, 01 Dec 2023 14:50:40 +0100
Message-Id: <20231201-topic-sm8650-upstream-ipa-v1-0-7e8cf7200cd2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALDkaWUC/x3MQQ5AMBBA0avIrE3SVgmuIhZVg1mg6SAScXeN5
 Vv8/4BQZBJoswciXSy8bwk6z8AvbpsJeUwGo0yhtWnw2AN7lLWuSoVnkCOSW5GDQ1XbwRpfTo0
 tIPUh0sT3/+769/0AryuhemsAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1255;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=rGIgscOjbmks/az7dqZuSI2/UjBmJOrXf0Dv6ltyXJ4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlaeS1zlexurgi/SMzNem9W/9mALN+EfSs9EcwH8Ed
 7IApwJKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWnktQAKCRB33NvayMhJ0arND/
 4iIadXIDuMqu7Y5BrA2mMa6kpAZDu4hX6PmWGaJ+KNCgzEX2w+8Ug9ntNlV3FPar+eia3+4zKigCQu
 ggTYb/ein5jOY/T7aNPJPeMShyHOEB2I6D3FVDa2XKq03yNMwrWaLgVjqPxuRMXGfza4u3Md+DWo9I
 uhZAIkfqW29Qrz4pay7E71B8KTKcYLoRQiKxqtMkAO0DjNBM/49EkhwD9TD3PQti82rC+4I8ELjnej
 chLUl7nTaoh5hH1J8/m46dMBOp6tE45B/dPs8G03oATBxhJDvZSZ1JJaneO2rXjw2aelY+U9D3xQvo
 +sWn4DukeAt+jZgu7/jT2ja1LR65JOep4MXXP7OV5MsyNTGM5jkzHLLTHH6VHahOi/AEDSD/cnIx7s
 4767Hw1+omtLNBDXv8yeVECnEJ0zEm3t/cl29saMWkOuiCqd5ctna7AcfhnHhVHgzSq2E87/kLdK6p
 ltAeyBA8bObbmfB7MoOBGg19m55ZiTeKrUZOqesxAmGVsqJmzj3W5BaDAfUdM4yRBf5H1SKUUIkK3Q
 hzijH1JiMsz7NSBsCe16q1Yf6RoXu+adkI35xupwxu8ib1caXf57o5dRPwpqdl4/JhviRveqDmcjGJ
 lC6LHS/eBu3VFCz72M4lR52B6nJVRgho3gq+66dflQAztFypeHyMMtZPFvcw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the basic DTS information for supporting IPA on the Qualcomm
SM8650 SoC.  Enable IPA on the SM8650 QRD platform; GSI firmware is
loaded by the AP in this case.

Tested on SM8650 QRD:
[    5.764240] ipa 3f40000.ipa: IPA driver initialized
[    5.787438] ipa 3f40000.ipa: IPA driver setup completed successfully
[    7.446693] ipa 3f40000.ipa: received modem starting event
[    8.413152] ipa 3f40000.ipa: received modem running event

Depends on SM8650 Initial DT at [0], bindings at [1]

[0] https://lore.kernel.org/all/20231130-topic-sm8650-upstream-dt-v5-0-b25fb781da52@linaro.org/
[1] https://lore.kernel.org/all/20231129-topic-sm8650-upstream-bindings-ipa-v1-1-ca21eb2dfb14@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      arm64: dts: qcom: sm8650: add IPA information
      arm64: dts: qcom: sm8650-qrd: enable IPA

 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  7 ++++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 39 +++++++++++++++++++++++++++++++++
 2 files changed, 46 insertions(+)
---
base-commit: 25cb94419a71435991cc8844251ffc0194f4dc8e
change-id: 20231129-topic-sm8650-upstream-ipa-084b42c5f943

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


