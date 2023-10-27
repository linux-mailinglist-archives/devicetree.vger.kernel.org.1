Return-Path: <devicetree+bounces-12492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F0D7D9B2C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 190B8B20A98
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2707236B0E;
	Fri, 27 Oct 2023 14:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="cqkVYRwB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC66236B02
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:20:36 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C187FC0
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:31 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9c603e235d1so343894666b.3
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416430; x=1699021230; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0/j0TiNzPUhDHoMqO5+ZQ6Ubp+GWwLgzxQZaKqp7fdY=;
        b=cqkVYRwB/Gy4YBzI/DvRTzW/lADWc7ljNMXAxq6eukVHNWV4G81RvzjBc+3LsujeMV
         Iw6ioToqIXaNhqHwxK1FGIupDlI62EAmyH0EKDZ4Irq8y0Ky25hsKPaV8rCGezBjrNoL
         qLV+GeIto8Tz71NvV/A1ueN0oRSiyo5yVCSBP4MQ/xHnf0N2F3onCBqFePcWPBAOcSQM
         majP/l9ppJwlB47i8zMQC1m930eN7wBW1FLb7BpiauJcBfASaqgxPEYTBB5FqLsCWThI
         pYXPy093Vj59nnEW72ZVCb3AwmqnmgCqwmGiW699B/8ivXjPIc9XXMZyYlaJbCFlJaB5
         S8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416430; x=1699021230;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/j0TiNzPUhDHoMqO5+ZQ6Ubp+GWwLgzxQZaKqp7fdY=;
        b=fw1y5aUmkC7eICfiCNgkegTWKcKKht/hcXaoJIADatm0Yjmt9xmWuRRG/9x7qOzol5
         esLNeKfGx9DDGqlzeDRyDg2WJ1RfG6+G7pexetkx1ERvUw4/ijdZTu7ziif5ICONaVWs
         EQgJxUhvXUIFMPCSwZ88i7yX2XwzDH9bs+JJGueakDEvN6XTia2mI1++TX+oNbifs6D+
         ZzSZU8QGJrIj4RgigPjzx8q0e5sHprW23xa/7q1xf2PYO2llGIfjFXRHiaThOa8bXN5h
         TYYP2KwXXJ6/PIYZc8DKVe8IG/IaQtmKBPyYb3lRa5K/fuQN3meSKYykDbTyX6nZGOC8
         RASw==
X-Gm-Message-State: AOJu0YwUvKmMf1XEl48Iq8YEey6ldDn4IYzxhNfgQ7lyRuIkp1yHTL/9
	HJhOzQCetkgjxaGnNXP+5z2QOg==
X-Google-Smtp-Source: AGHT+IEHU68OfuGWAvG3zTnVTKwBQCICdozH6KFZV9fK/3NTvhj+P36e1Upf25B4a1jWyFcm/BO63A==
X-Received: by 2002:a17:907:5cb:b0:9b2:7367:a6a4 with SMTP id wg11-20020a17090705cb00b009b27367a6a4mr2620117ejb.31.1698416430256;
        Fri, 27 Oct 2023 07:20:30 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:29 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/9] Remoteprocs (ADSP, CDSP, WPSS) for SC7280
Date: Fri, 27 Oct 2023 16:20:22 +0200
Message-Id: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACbHO2UC/x3MQQqEMAxA0atI1lNIo2DxKjKLIUbNQivJIIL07
 haXb/H/DS6m4jA0N5ic6pr3ivhpgNffvkjQqRoIqY1IfXDuKWEw2fJfDsvsAbtEmJijxBZqeJj
 Mer3T8VvKA2dC/J9kAAAA
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
X-Mailer: b4 0.12.3

This series adds support for the ADSP, CDSP and WPSS remoteprocs found
on SC7280. And finally enable them and WiFi on the QCM6490-based
Fairphone 5 smartphone.

The first two patches are fixes for the MPSS to fix some dt validation
issues. They're included in this series to avoid conflicts with the
later patches and keep it simpler.

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
Luca Weiss (9):
      dt-bindings: remoteproc: qcom: sc7180-pas: Fix SC7280 MPSS PD-names
      arm64: dts: qcom: sc7280: Remove unused second MPSS reg
      dt-bindings: remoteproc: qcom: sc7180-pas: Add SC7280 compatibles
      remoteproc: qcom_q6v5_pas: Add SC7280 ADSP, CDSP & WPSS
      arm64: dts: qcom: sc7280: Use WPSS PAS instead of PIL
      arm64: dts: qcom: sc7280: Add ADSP node
      arm64: dts: qcom: sc7280: Add CDSP node
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable various remoteprocs
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable WiFi

 .../bindings/remoteproc/qcom,sc7180-pas.yaml       |  21 ++
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts |  24 +++
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |  24 ++-
 .../boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi    |   2 +
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 225 +++++++++++++++++++--
 drivers/remoteproc/qcom_q6v5_pas.c                 |  19 ++
 6 files changed, 300 insertions(+), 15 deletions(-)
---
base-commit: 6a0dad42244c987e3c12bfae728199e360acf079
change-id: 20231027-sc7280-remoteprocs-048208cc1e13

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


