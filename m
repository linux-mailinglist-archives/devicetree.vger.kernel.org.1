Return-Path: <devicetree+bounces-28713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9F481F270
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 23:28:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5EA31C2085A
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 22:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5B4549893;
	Wed, 27 Dec 2023 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DJnW3RDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E0495F6
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 22:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-555526a060aso1225871a12.1
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 14:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703716111; x=1704320911; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xErI1idyMhC4npl+ml9xzJRore9ZzchIfnM4qro4CLs=;
        b=DJnW3RDcH9RvuejC5wHMfAjRnD0iuCVXAVq2Lhf/dEqQEk9aaVnHxfmEg124RukGVN
         VNoVGbvVc7ZvXtFlaOZAkwMGcRdgC6YCCNzl/MuzbWzPbyTkKQ6S+dBafx5Iu/+r6nCd
         jvPXlIPFbmvCdznzvr1Kh1lg79ijFbLeHeWWZd8cpmgBxfzlclpDNzW1p80c0F7E6Vfw
         Oxy01a0H3NhxYMixViRCDhI7DzPjAVXVzoF7uiwrMa/hkKTDCzUzI51AkCQPG2F8kYjJ
         ZvffLcYPgYwKjzTuSRSVBos7d950m2rCcC54+KtJVHrEWa+BnnvJ/mwbc3cH1i6L9BYY
         Tg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703716111; x=1704320911;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xErI1idyMhC4npl+ml9xzJRore9ZzchIfnM4qro4CLs=;
        b=XMbYVhL6M/m7wMbB017iG6rtbZjIbq3PEgac4drGBnEWDEjb/sP2XT/oNvMcF2oeu7
         7EtpP57ro07bq2JWGj8PtAILlMPICy/wk7XXvsFGglOWWX7E9f15c7QbwnbF/9IJ2kqR
         mBq02sEbCeFhpm1hNNnd7g8cUxlGH4PGOCiKsLqUDAxhqr/l1m8Xp/tBES2XaW0m0/mQ
         RYhnVM1EnT5yFAJORDduVQNCW3wZMUyJnHdyK9ghdgr1iMVacjM+MSMjZ94p5c/IxUFd
         bNhYb/rlWwt9LyUUK/rLvA+05guT3sxdYqZAHEZDxegSfSMiS5Gv4U0AAxcqaDxrWDrV
         Md9w==
X-Gm-Message-State: AOJu0YwVtwKY02JHfX3ujcqSvGTsz5p1YCwm6UZxkeukAIptMwaEzLUe
	6zmtfd6YrGMQC8T98dZLR6+6f2QX+rnOxJy4WZgI73TQrT4=
X-Google-Smtp-Source: AGHT+IEotLOu15uOB6FJc1lam3uPUtqtPsb2Yi6C3g1dydVP6UGRuS8LK/7dffP1OtWpo4hrgToTGA==
X-Received: by 2002:a17:906:9889:b0:a26:f057:974 with SMTP id zc9-20020a170906988900b00a26f0570974mr2058680ejb.152.1703716111204;
        Wed, 27 Dec 2023 14:28:31 -0800 (PST)
Received: from [10.167.154.1] (178235179028.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.28])
        by smtp.gmail.com with ESMTPSA id fb20-20020a1709073a1400b00a26a061ae1esm6854252ejc.97.2023.12.27.14.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 14:28:30 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/3] SC8280XP preparatory PCIe fixes
Date: Wed, 27 Dec 2023 23:28:25 +0100
Message-Id: <20231227-topic-8280_pcie_dts-v1-0-13d12b1698ff@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAmljGUC/x2NUQqDMBAFryL73QVdpdpepRSJybMuSAxZWwri3
 Rv6OQPDHGTICqN7dVDGR023WKC5VOQXF19gDYVJamkbkZ73LannQYZ6TF4xht24C627dZhxRU+
 lnJyBp+yiX0ob3+taZMqY9ftfPZ7n+QNPGHCgegAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703716109; l=1303;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=TvdiqAHru5oeCjCbrETFjc4fDC2d8OWDHOt1FQxey70=;
 b=1EFxOHYqsKSlwuXEfrIWVwuh+CbG1eqYiFoB4eKRHYP1Bg/eDJfglIcsxfuCxa9p6MNNeqvS1
 YdmonVaqhjDDdYIVhIbN8EuiWA2lMgL5r6xugoFVmGPP6ECKRWaRTWn
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Just a couple of minor fixes in preparation for PCIe shutdown (and by
extension CX, AOSD and DDR power collapse - anybody here a fan of
suspend?).

If you want to test this on your machine, you're gonna need:

- https://lore.kernel.org/all/20231227-topic-pmdomain_sync_cleanup-v1-1-5f36769d538b@linaro.org/
- https://lore.kernel.org/all/20231227-topic-psci_fw_sus-v1-0-6910add70bf3@linaro.org/
- https://lore.kernel.org/all/20231227-topic-8280_pcie-v1-0-095491baf9e4@linaro.org/
- All PCIe devices that require fw must be fully booted (so that they can be suspended)
- You must not have any dangling resource votes (not the case on 8280-crd)

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (3):
      arm64: dts: qcom: sc8280xp: Fix PCIe PHY power-domains
      arm64: dts: qcom: sc8280xp: Correct USB PHY power domains
      arm64: dts: qcom: sc8280xp-crd: Add PCIe CLKREQ# sleep state

 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 78 ++++++++++++++++++++-----------
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi    | 18 +++----
 2 files changed, 60 insertions(+), 36 deletions(-)
---
base-commit: 39676dfe52331dba909c617f213fdb21015c8d10
change-id: 20231227-topic-8280_pcie_dts-4d3a94efe6e7

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


