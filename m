Return-Path: <devicetree+bounces-18780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3317F8B04
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:04:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A95F52816FE
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 13:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361BDD512;
	Sat, 25 Nov 2023 13:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UHhs0t83"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44B298F
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 05:04:47 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a00ac0101d9so374565066b.0
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 05:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700917486; x=1701522286; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UlzufWUHKFDhFCD0mnL38mavq8i9eYfNJTalR1F6jUM=;
        b=UHhs0t83hGB56m51E0OoZFqwER/sZCfQ60YvDxTDCC6UUe2KLuf7O4b8T41aNfIMIM
         pGpAE4fDGyk2ArSaJO0ftCUbbRLCjNkmFySYZET2Dp70oAj7rq/h5Lwawta7KRrSZsvH
         2TWyMfZ+YZ8ioE/8WEQ0zpSRMolm7PJciNjRwcUMGI1S8u6Dd55MiFLwH50AYjAdZ5iD
         /waYaoST8F6odwcVlmYnS+HwUJIXzVYDnXksnofh8w5tF3B3jF0VkKk+AA9/bfy105zW
         WMDwNQvnJ9kGjLVSnX8pN2aw34oJM1gWnXLoh9HZQAYLRoP07gN8Nf/zS62tugRyy2PX
         gz8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700917486; x=1701522286;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UlzufWUHKFDhFCD0mnL38mavq8i9eYfNJTalR1F6jUM=;
        b=mgE3725hCfn9tY3f8TQJ3eQyd8xpd7DOsB0wXxOBGRvn0c3R/fttT6sKg8ObY674HX
         XB5oyHpjkGjZia+H+xKLypNGo1H65JKVk9Ym4+xWlx6uygdaau7wbnoEJSqtZ1LfyZMY
         +KtPv6MAhnYw5hNJnPUUUKAz9UfJQDtm/XO0wQwLzR9kaACCLVXEXctRaihTICSa8ISM
         vU6Y2QtmAQUyMpkz/bJ2AzHui+AjLfsEislo6WtQa1gxWR7fhxxBBVTlqrDdQ7qqBvjt
         jYhgrfXUetL88pgYJJwd7wFzXrrhBZ03qEw8BxcOnQ281s8CbcK7Fhh/aZJGiFQWFnQg
         a/lQ==
X-Gm-Message-State: AOJu0YzRMnxWq2/Pzd1BNz73qt3V/9c9PeJXk4NDJejFImjP0qasNmoX
	KpnO0K+nHwiEUWq1SttBVjAmFg==
X-Google-Smtp-Source: AGHT+IGZe1Keh2kWDwVVxS0OLuNrYpULTlZnzmyMwr9TBaDQRbHU004WkF447OvuLiaLVNel5n/R+A==
X-Received: by 2002:a17:906:528b:b0:a08:f7f9:d9d8 with SMTP id c11-20020a170906528b00b00a08f7f9d9d8mr3298738ejm.6.1700917485744;
        Sat, 25 Nov 2023 05:04:45 -0800 (PST)
Received: from [10.167.154.1] (178235187180.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.180])
        by smtp.gmail.com with ESMTPSA id q22-20020a170906361600b00a0290da4a50sm3433750ejb.186.2023.11.25.05.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 05:04:45 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/2] RB2 bluetooth
Date: Sat, 25 Nov 2023 14:04:40 +0100
Message-Id: <20231120-topic-rb2_bt-v1-0-509db2e28e70@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOjwYWUC/x2N0QqDMAwAf0XybKDtNjb2K0MkqXEGpEqqYyD++
 8Ie7+C4A6qYSoVnc4DJR6suxSG2DeSJyltQB2dIIV1iTAG3ZdWMxqnnDWm48oM4329hBE+YqiA
 blTx5VPZ5drmajPr9P17def4Anmnj9nMAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1700917484; l=705;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9oo3d7RN/T9srbOU/SssYvWYQEsLa8+tGvWkxfHAsKo=;
 b=Z6GqEHPAB59EgccYQFelcFjzOmkFH4R0pkciPJvTazTgBYZwItYtGdXbYrJ2xjMjX6pQItmE5
 Je7MotgCGMTAhY7SJY/WOZ+kiMis1MxQnaZgYyHhUudUQWM6eXKdh02
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The bluetooth module on RB2 seems to work ootb with the WCN3988 setup.
Enable it.

Scanning for devices works, couldn't test pairing on a remote board.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      arm64: dts: qcom: sm6115: Add UART3
      arm64: dts: qcom: qrb4210-rb2: Enable bluetooth

 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 81 +++++++++++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 30 ++++++++++++
 2 files changed, 110 insertions(+), 1 deletion(-)
---
base-commit: 8c9660f6515396aba78d1168d2e17951d653ebf2
change-id: 20231120-topic-rb2_bt-ad4b8abc750f

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


