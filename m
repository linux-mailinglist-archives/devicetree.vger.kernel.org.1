Return-Path: <devicetree+bounces-23177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5199980A6B3
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CF3D281B1D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4391210F0;
	Fri,  8 Dec 2023 15:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zRp9uEjb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 344C51BCB
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:08:46 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c31f18274so11834915e9.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1702048124; x=1702652924; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WDlnmNszOgddS8dBFWx/WoEU+LfvOrqv92GavQrCmjw=;
        b=zRp9uEjbqqXuiLz/ZNVOa6qRlTO/koyXsJma9ZCscz6W7BtH8tlZbBTpCwuilzqnsI
         +AMej+rHAey0IOAiwEUKrUVXZIijSLwrWxPBeq1thtNSoLWv0golFVWfYjG8DYduz1u0
         ThrVUXoRPeAfj1QWHDivYjkEwEVWOoPyqFz6rJIVsFg1RYoMOGkA0HtCJli0g49tAb4P
         aimzGlAeZAOGsxpQ0KklYGuPJvho9GfsogWxPV53f+0D8oAhJd3O1C958J6xJ2kQkD8T
         +0WHABUStMk/ao8a1jYSgsIaoOb+nMNdJ/Mq2YZlmy3EXLS9DCnsGhLCr/n5WaejOPsv
         Odtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702048124; x=1702652924;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WDlnmNszOgddS8dBFWx/WoEU+LfvOrqv92GavQrCmjw=;
        b=XDEKrVd4Ihcg3UugSCNWLOB4qQL7oSi8aGiVPu7recbCA/FXEi/I5qfPwRVhFHM5aF
         vUFHQaanwHIg9A8xut4VoS9L7vftedcmS17+2F1xA7tMDP1JakHYP6WUfFSNXVu4UJuZ
         FEalr2Q/NB40KTvZqAuc+mIlPKBeksH9QxD53Rb6oZR9Ma72zwQ4VbogZSBvZZPz1Rks
         ekSYZmsLhjL/+EBRUiOmIlI6C4BIhqHP5YWSYT3TRpmv66z4UMurOC1Q1faZ4TiHH7/q
         xj7XkU3vWRefQPqHWfasDkLfjjdU8czflzNWM4jZgyy26sRLvHGhM9RSjSgmDAVLYlSH
         w/5w==
X-Gm-Message-State: AOJu0YyhRx/QfE/BFb1x0bwdkyLNZmUcK2vdWukcW175QvpcW5fBN5Og
	grSFdn0/gK0fk7w4LBQCrh+Xkg==
X-Google-Smtp-Source: AGHT+IGgoEvGG4TIXnrkvEhDL9ohUy/9JK0zZnX9KJnrl/fd4U4EFWyMkK02TZuT4Dr/S7cum/F7PQ==
X-Received: by 2002:a05:600c:22d9:b0:40c:24dc:1166 with SMTP id 25-20020a05600c22d900b0040c24dc1166mr48233wmg.189.1702048124640;
        Fri, 08 Dec 2023 07:08:44 -0800 (PST)
Received: from [192.168.55.221] (tmo-113-102.customers.d1-online.com. [80.187.113.102])
        by smtp.gmail.com with ESMTPSA id r25-20020a170906351900b00a1cc1be1146sm1096114eja.217.2023.12.08.07.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:08:44 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 00/11] Remoteprocs (ADSP, CDSP, WPSS) for SC7280
Date: Fri, 08 Dec 2023 16:07:56 +0100
Message-Id: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE0xc2UC/33NQQrCMBCF4auUrI1kJsamrryHuAjTqc2iTUlKU
 ErvbtqNIOLyfzDfLCJx9JzEpVpE5OyTD2MJfagE9W58sPRtaYEKNSisZaIarZKRhzDzFAMlqU4
 WlSUCBi3K4RS5888dvd1L9z7NIb72Hxm29S+XQSqpDHFj2kaDcdfO+Tj1YeQjhUFsZMYPA6B/M
 lgYNmS61uDZuvqbWdf1Da3UZwv/AAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

This series adds support for the ADSP, CDSP and WPSS remoteprocs found
on SC7280. And finally enable them and WiFi on the QCM6490-based
Fairphone 5 smartphone.

The first two patches are fixes for the MPSS to fix some dt validation
issues. They're included in this series to avoid conflicts with the
later patches and keep it simpler.

Then there's two patches reorganizing the reserved-memory setup for
sc7280 in preparations for the new remoteprocs.

Please note, that the ChromeOS-based devices using SC7280 need different
driver and dts support, similar to how there's already
qcom,sc7280-mpss-pas for "standard" firmware and there's
qcom,sc7280-mss-pil for ChromeOS firmware.

I'm aware of the series also adding SC7280 ADSP support with the last
revision sent in June this year.

https://lore.kernel.org/linux-arm-msm/20230616103534.4031331-1-quic_mohs@quicinc.com/

However there's some differences since that series added the "pil"
variant for ChromeOS, not "pas" for standard firmware. Also it seems on
ChromeOS devices gpr+q6apm+q6prm is used. On my device it appears to be
instead apr+q6afe+q6asm+q6adm but I don't add either in this series to
keep it a bit simpler, and I couldn't test much of that yet.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v3:
- Rebase on qcom for-next and resolve conflicts
- Pick up tags
- Link to v2: https://lore.kernel.org/r/20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com

Changes in v2:
- Add patch renaming memory@ reserved-memory nodes (preparation for
  next)
- Add patch moving mpss_mem and wpss_mem to sc7280.dtsi
- Follow *_mem node being in sc7280.dtsi also for ADSP & CDSP patches
- Use (squashed) .mbn instead of (split) .mdt for FP5
- Set qcom,ath11k-calibration-variant for FP5
- Pick up tags (except for Krzysztof's R-b for ADSP & CDSP since there
  were changes)
- Link to v1: https://lore.kernel.org/r/20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com

---
Luca Weiss (11):
      dt-bindings: remoteproc: qcom: sc7180-pas: Fix SC7280 MPSS PD-names
      arm64: dts: qcom: sc7280: Remove unused second MPSS reg
      arm64: dts: qcom: sc7280: Rename reserved-memory nodes
      arm64: dts: qcom: sc7280*: move MPSS and WPSS memory to dtsi
      dt-bindings: remoteproc: qcom: sc7180-pas: Add SC7280 compatibles
      remoteproc: qcom_q6v5_pas: Add SC7280 ADSP, CDSP & WPSS
      arm64: dts: qcom: sc7280: Use WPSS PAS instead of PIL
      arm64: dts: qcom: sc7280: Add ADSP node
      arm64: dts: qcom: sc7280: Add CDSP node
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable various remoteprocs
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable WiFi

 .../bindings/remoteproc/qcom,sc7180-pas.yaml       |  21 ++
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts |  45 ++--
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |  35 ++-
 .../boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi    |   7 +-
 .../boot/dts/qcom/sc7280-herobrine-wifi-sku.dtsi   |   1 +
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 271 +++++++++++++++++++--
 drivers/remoteproc/qcom_q6v5_pas.c                 |  19 ++
 7 files changed, 336 insertions(+), 63 deletions(-)
---
base-commit: e7f403a575a315ecf79ee4f411cc76bb60bae2f6
change-id: 20231027-sc7280-remoteprocs-048208cc1e13

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


