Return-Path: <devicetree+bounces-169738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ACAA980F9
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:32:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A553D17A65D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB3726B2D3;
	Wed, 23 Apr 2025 07:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TICk2Rj1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57C126B0AD
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393439; cv=none; b=kPNtqgtS8c6eICUW3EqQEwQvuS4rDl7eoMMfxYriZTdkvkBgmeN7STNHUnOlTj1v17jCdGMt8uIEBkkQDQOXyxdWFGMl7ZiGEJVQe/SIAi5G5msl6e9Nv4rYrsJZcm748st+uLigB3pr9clPHwXDFTqkBzeciRxYQrmqV7+jkKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393439; c=relaxed/simple;
	bh=ugdh0Jwg8OtNDnnvSXX+JcwFs/E/9kEcCZ1PVSsw1oo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AjHoaSIORlBIGk/ASakKfrjGFIHrlX4iZYKi/+sRRrbTmXUPxGO7prG+/ZxKlrincSH0B3kep6ZYJsojmZjZZCHzTdhzzbFyY6FIiAIgWXCGM6b/V+kJN6wH2i38h2Utx9zS4UE+ykboI7zKtofZ4+aOA3sdUOPWhHcEJrfEjb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TICk2Rj1; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39ac56756f6so5985131f8f.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745393436; x=1745998236; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IAVOf9WwZt5yb8GSwQ0W6u8pvseS1B6MX+loQMEGJLQ=;
        b=TICk2Rj1l2YRJmLdqOz5FZwY43nDW2Lk32jG8grGPWZPJneWLq7G9cL+ffkwAclNsE
         Rz/0Atm00/xafJJfGnHaNe2rSY6AuE6tjc6Hhp6UM0r+MK++tJP+rRntbBXwS1lHPtt8
         lt8rGmFOCk2ElOs5VUEHS2Ck+7AjbUonhJ+FfhBLyIqSy/rd33MVj5M/rEMGbmfrRThA
         KVgbXeR2QkZA4ixX3D616vpaga9OH1g9mPyV4hVBiG2tgX6+WxByuzPQ7Qp12fSl8wLF
         RJAcoGFUTMYnfDVXD0ZCIGw4xWctHP9TbMho/W6aqwt08gDbOWBkSWuNmFab3/0hgqIX
         fOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745393436; x=1745998236;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IAVOf9WwZt5yb8GSwQ0W6u8pvseS1B6MX+loQMEGJLQ=;
        b=g6LoOQBd50VKUA/PzWKlTpZOrr3uMfuK8WpHftG7Q8+UUd1vTM5QJY7gfbT6ZCNPwT
         YM5Fpod3HuarDkhI3vZ9e397PqQdNw7YzBuPhP/oYkL+AXi4Xj8JAM1/bCknsZh2/39X
         XTHal41sTukOt0nxYP0nlnwBc03jgwFm7A846o6FQ5BMkXIwNuJtA13UobT24GqVOssq
         YnqHLZ73SkRBlU8uxgaMHHHkrd5QL69riCZXKSwI6LLBf+IG0ZmhCTNUpicZiLL83Y5a
         QNpom5OqHXHIlvucjo/0cZhliYCO3ZlRtfw3JGkBGSJ2/nm69fDkgs374l5yJBysepVk
         rU9g==
X-Forwarded-Encrypted: i=1; AJvYcCUQliDhxLgT/g4zXGdoBR7iaFqs2rfgBzcIoTJYSmokrONExOARBNlAYiy4hBZnR6MplkU7oniPA9Rs@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6Xfqct0hY+rpQaYwsk5KC/sUIGQpFkmphqU0K1Vh0wZqepx5q
	q2TECII23npLpifW6o6PfQof9QsxWlIxmTKkJeHrpYlV1r7hwXSStAWreCGRMWM=
X-Gm-Gg: ASbGncs6BPoVTbsVAE5dXdNfa8MPLnOUgtAUZEx5/uNe27CEtx4WwRJmFIiZ2t9GU/p
	SAJGTz6Z4E8jVthGUn7dVA8BEqoZ7t5A9JoZDFhPrIR+zxkqkgBZ0mAqQIfTDL0xcYQ0NCiOYov
	ZZIIGsN4n2zG1GUKEDWwcH4wzdbJqdzLRXAOhl8wqa7dLZtTWcXhgVhFMDg6FlvizHBcTVYUzYO
	w7mZVAw4LBfHPQgbFii19SSXndYjPffEMCR3G/qvN1/LOUidbs1l/xCm2+I7Il/Mw0li0QazZRl
	k+Q4lJtAOfllAbWFTErDTbldOLdaloHFAIOPDezJ36RudIuh1BBvloM=
X-Google-Smtp-Source: AGHT+IFDeOQJ84DRhqUsU2I2qejWhkxN7owbw0EAeDx/ORw4YLo17BdfeLQzG90l677GOD8n8erpdw==
X-Received: by 2002:a05:6000:438a:b0:391:298c:d673 with SMTP id ffacd0b85a97d-39efbade41emr14796194f8f.40.1745393436055;
        Wed, 23 Apr 2025 00:30:36 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:67a8:3ed8:e19f:5eaa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa493115sm17761699f8f.78.2025.04.23.00.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:30:35 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/6] arm64: dts: qcom: x1*: Fix vreg_l2j_1p2 voltage
Date: Wed, 23 Apr 2025 09:30:06 +0200
Message-Id: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP6WCGgC/x2MQQqAIBAAvyJ7biEXw+gr0SFyqw3R0JAg+nvSc
 WBmHsichDMM6oHERbLEUEE3CpZ9DhujuMpALXWtIcJbM5bEG3o6sER/zdUx1GvnrLFke6jpmXi
 V+9+O0/t+/insk2YAAAA=
X-Change-ID: 20250422-x1e-vreg-l2j-voltage-4281dd747278
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Marc Zyngier <maz@kernel.org>, 
 Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Several of the Qualcomm X1* device trees upstream specify the wrong voltage
for the L2J regulator. In the ACPI DSDT table, PPP_RESOURCE_ID_LDO2_J is
configured with 1256000 uV instead of the 1200000 uV. Change all affected
device trees to use the same for consistency and correctness.

In the other device trees upstream, the voltage is already correct:
 - x1e78100-lenovo-thinkpad-t14s.dtsi
 - x1e80100-dell-xps13-9345.dts
 - x1e80100-microsoft-romulus.dtsi

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (6):
      arm64: dts: qcom: x1-crd: Fix vreg_l2j_1p2 voltage
      arm64: dts: qcom: x1e001de-devkit: Fix vreg_l2j_1p2 voltage
      arm64: dts: qcom: x1e80100-asus-vivobook-s15: Fix vreg_l2j_1p2 voltage
      arm64: dts: qcom: x1e80100-hp-omnibook-x14: Fix vreg_l2j_1p2 voltage
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Fix vreg_l2j_1p2 voltage
      arm64: dts: qcom: x1e80100-qcp: Fix vreg_l2j_1p2 voltage

 arch/arm64/boot/dts/qcom/x1-crd.dtsi                     | 4 ++--
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts             | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts  | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts    | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 4 ++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                | 4 ++--
 6 files changed, 12 insertions(+), 12 deletions(-)
---
base-commit: 39155a896925c3af2156ad61e821aa9fa5a1dbdb
change-id: 20250422-x1e-vreg-l2j-voltage-4281dd747278

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


