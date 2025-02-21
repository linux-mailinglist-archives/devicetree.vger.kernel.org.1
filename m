Return-Path: <devicetree+bounces-149723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D4FA40377
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 00:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C51647027B5
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 23:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16F820AF8E;
	Fri, 21 Feb 2025 23:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RZtL8cRR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F641FE46B
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 23:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740180685; cv=none; b=ay+yuQvgDubc5QEI1rJaimx7lhIj8Pd5HUDezSBIqr7VFvIe2PnU0abrT9urQeW7pGpxTEqM20oF7zw3uOxmTYzNyn4+IXRMf+GXz39zmJR412Vrq4Rmdsi+vLFe39EbY9F4llqEiYf++QuVwI0N/pum5eUHj5pgI5ZgkIuCmNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740180685; c=relaxed/simple;
	bh=f51eqVy7xwWHEuczDtwNNkEGNpGXp5mse0YoxqxxuSI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pvm9Ur1SeeTMVgUA6riAL9iCGYjyx6zKBR3g1bg72bwSLRb8AXKY1wrRY6kAFPoVdzeRIz/2GybJw/kMR8THcBM2y8gvRdHlXaednRX9cK9q96sTXCiVCnlCnxRBsGXB9U586ePO5Cqh3Rykj5CKZqsvTLmVUbUDqcltMW9JsGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RZtL8cRR; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-220ca204d04so41839775ad.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740180683; x=1740785483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=81FA3e/JZjjDAMLf5iojUcA5/pLMU3O5i7ad+AEyuhI=;
        b=RZtL8cRRevN4bA/z4199K3c/ybJuHlTdFkv3Owb9C4PomGVsLNBL2j8Sgdbf403ZeT
         ZC2GtdKsvFGGbMiApOG5lwfkWvbSOOEWrKAyRKWAfUssSfmUorrN8xxFQ0JuSACY9CAP
         QSXFJPyF7CAj3SdSefLZbnyM2v10dz4qXBrpA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740180683; x=1740785483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81FA3e/JZjjDAMLf5iojUcA5/pLMU3O5i7ad+AEyuhI=;
        b=citFKFjj901tKWPpXv4yHm0TF4Su/WfBwdYnlESwoTE+umtT43O6lEX6iqfh5lCw05
         ufcfeYAdYVoFiiQpuvZib6Jbcl06JA/akteGPnLAn9Fg3xZa5YvpgYOTnTnTRZ24EkII
         E4NcaKv7DALfyZAgi8vAblBr7H8MWaFqCQjywgcALY5NM4y3+r/zP8LqOMtsLh99U6Ex
         cKMW7NcT7hVDUMmt1xe01mpJAUl5nKr+tVhvGwxZaNdhhMRQ0uukfd0bFeQBoTg8lduF
         GlusQ6mQms1dKCIl/0jMOk4uwEJqATLOX9vzD4PHpaCirTRW6ED8l7We2p5XOsZm+FMz
         Jvow==
X-Forwarded-Encrypted: i=1; AJvYcCUiBRkRD3TMkYq1YjsbxwD2EfJq5TK+gv7h8GAjLDETqwyZu/5e+/c4xDYECVpcOsFHHOE3O7r8dGB9@vger.kernel.org
X-Gm-Message-State: AOJu0YxRF4A7M9edqLzV72pSwN6H0bJSCZ5pDNpbz9EZw1/WTJvO3njN
	bqO1itBN69PeTFQV5NbKcOQZbMf/JfWpfAo1VyPP9PKW45hNDG6RdI/BrSiXKA==
X-Gm-Gg: ASbGncu345geNsJP6SZoYiNb7kApM4QbwnYvXrM3rEyrJescFW6FMD3Q7pAxCL0sgZZ
	oIanCX5Qwt6ZsvoTN65JsTOjdH1tfBYayQL89zVVruqCGOPbnK0SeuS/pwrbzLGJjNcZRg+Fvgg
	DHO/GfjgkSFGz4iSvHBkGJDXvEgg30BS5iH/ik5hLnFEoRLvwkbW8FLLVINwc/U28jq/YfkWzfA
	0NaSkAEGRcJ7So8BsF8iEnQ+UWzoFBggmyPMKn7vbvaQe/kPw90JdChldz313vKxyuU6M8KvUeK
	fWZH3bYkhxwpxSvT7hOxkpUX7fj7RKgZJgaQa5JUmy+hOG08lVW6shq445PoKxF/yQ==
X-Google-Smtp-Source: AGHT+IGkH7xMxeGNr82l2STxZJtAA8Gv2n4NyOTr4CeAZCvwgPvVhf6sJzdIj4GQWhVoUq34JljyhA==
X-Received: by 2002:a17:902:ce8a:b0:216:760c:3879 with SMTP id d9443c01a7336-2219ffc00c1mr74674785ad.46.1740180683043;
        Fri, 21 Feb 2025 15:31:23 -0800 (PST)
Received: from localhost (222.246.125.34.bc.googleusercontent.com. [34.125.246.222])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-2210001ea01sm113953455ad.176.2025.02.21.15.31.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 15:31:21 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	patches@lists.linux.dev,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	Pin-yen Lin <treapking@chromium.org>,
	cros-qcom-dts-watchers@chromium.org
Subject: [PATCH v4 0/2] arm64: dts: qcom: sc7180-trogdor: Wire up USB
Date: Fri, 21 Feb 2025 15:31:13 -0800
Message-ID: <20250221233120.3596158-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.48.1.601.g30ceb7b040-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Wiring up the USB hub to the connectors allows us to gain the proper
'connect_type' and 'removable' values in sysfs for the USB devices on
sc7180 trogdor devices. These two patches are split off of a larger
series[1] so they can land faster and because we've come to the
conclusion that the DisplayPort path is going to connect to the
cros-ec-typec node, not the usb-c-connector node.

The first patch adds the pogo pin binding to describe the detachable
keyboards found on some trogdor devices (actually strongbad). The second
patch is the dts changes required to wire up all the USB stuff. This is
sufficient to set the sysfs properties for USB devices so that the
builtin USB webcam is considered "fixed" or hard-wired while devices
plugged into the connectors or the keyboard are considered "removable"
or hotpluggable.

Changes from v3 https://lore.kernel.org/r/20250210225714.1073618-1-swboyd@chromium.org
 * Consistent quotes in binding
 * Drop unused labels on hub ports

Changes from v2 https://lore.kernel.org/r/20250205233016.1600517-1-swboyd@chromium.org
 * Make binding specific to keyboard and move to usb/
 * Update dts to reflect new compatible string for pogo pin keyboard

Changes from v1 https://lore.kernel.org/r/20240210070934.2549994-1-swboyd@chromium.org
 * Split out of larger series
 * Added description to DT binding
 * Removed DP part of dts changes

[1] https://lore.kernel.org/r/20240210070934.2549994-1-swboyd@chromium.org

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: <devicetree@vger.kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Cc: <cros-qcom-dts-watchers@chromium.org>

Stephen Boyd (2):
  dt-bindings: usb: Add binding for ChromeOS Pogo pin keyboard connector
  arm64: dts: qcom: sc7180-trogdor: Wire up USB to usb-c-connectors

 .../usb/google,usb-pogo-keyboard.yaml         |  68 +++++++++++
 .../dts/qcom/sc7180-trogdor-clamshell.dtsi    |  21 ++++
 .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  47 ++++++++
 .../dts/qcom/sc7180-trogdor-detachable.dtsi   |  15 +++
 .../dts/qcom/sc7180-trogdor-homestar.dtsi     |  47 ++++++++
 .../dts/qcom/sc7180-trogdor-kingoftown.dts    |  55 +++++++++
 .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  55 +++++++++
 .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi |  55 +++++++++
 .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |  44 +++++++
 .../qcom/sc7180-trogdor-quackingstick.dtsi    |  31 +++++
 .../arm64/boot/dts/qcom/sc7180-trogdor-r1.dts |  56 ++++++++-
 .../dts/qcom/sc7180-trogdor-wormdingler.dtsi  |  47 ++++++++
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 109 ++++++++++++++++++
 13 files changed, 648 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/google,usb-pogo-keyboard.yaml


base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
https://chromeos.dev


