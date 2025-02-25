Return-Path: <devicetree+bounces-151231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C05DA45037
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 23:32:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 089B718943FA
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 22:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D12218AC8;
	Tue, 25 Feb 2025 22:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="V/G2h6y6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21801EDA19
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 22:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740522643; cv=none; b=JSwf8YQ5pNTYiA4zzNftNcqcydXIvKnx2NdsABj5PVtz4sn20VvdQjGu2Jk9mTYNDZCI83/Fmy31187AVin/brgOYqSQRCl2ra5fLucHVwsakWuCBok5wm5Eu79uj4TdF24tCq/FHIgV4fY4IsAW1Vi7Bqvh+GnXF7k2aYdyljs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740522643; c=relaxed/simple;
	bh=oxaCiQCmqeAS1epekehXbElGJ+m3X0CqMo4HcDIs+cU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NQGaOjjYOlAivg4g1iN2eftJGIBWGQ7Ddi2+djL+p8lQNjMZRZjTo0k5kR6zSI41kfLz4i1tziuP3eHt2PP1VviefULQsFdXzKICE5BO1Nn6Z4V7vDiH2UANRlT/lh3uirAijHuBoLWyzGvwebgL5NR7fkOgi3WXgP3lZRNtXKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=V/G2h6y6; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-22113560c57so39535935ad.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 14:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740522640; x=1741127440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CxPMcTd9qCEBN074ty2w+VRI4Bnqdaah0BYjoLFwE7k=;
        b=V/G2h6y6WpI9gq82abt50L/6j2hctNFDFTZRmxxfcq/BO+GOZB5XK9hd/wDJKyw68/
         MuyHdGZHGdBkNQ0nx0kGZ3EkLIj2dw1MoR7Xdsux5FoWwCUhT0m320Vjrn7CYMPLT9NV
         a1ljDIF3nG9wEYDOh6yxsFIDs50T8Tge7ncfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740522640; x=1741127440;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CxPMcTd9qCEBN074ty2w+VRI4Bnqdaah0BYjoLFwE7k=;
        b=rADDkcmqBihvaoRWpsEP5U94m3X+EaAXlmyYXiNNox64YQ18i9xnt83FaLIEIo6SJq
         HZ5apNjGP437Ws4OEJ3GYKYoq2ObYiXsMzylHh+j++VPJWXmSbp+KwK/5AJA++RBSl46
         vZnakjFYfIzE+yh7e5jA62QnNDKubeUPrTc5fXfjUkcuJvDXKJuBnPuxKM/oQPIG2yT4
         anP1iL5rfaLKrsT2KvFDXGMTKW8+GEJcoezeHkPWljCNKZ4to4VaLRnI8seNdYO59wrM
         YP1pOEvLxf/plcLVuGeKuYHxqVqSU5LEnynarAysFPeVekf9CdiNbppXnwWDm2aB4dkh
         lnPg==
X-Forwarded-Encrypted: i=1; AJvYcCUDE3Sde+HXuob/AJSht0WH30Hap3M5D9rKv0SZDE6hCrowwGz1ARGEkiKZFcLqOW5pDnEOg4XrfkeW@vger.kernel.org
X-Gm-Message-State: AOJu0YxZnW4HmZVkKj1EPXNXMINVCKjtg6A6dJZ5hXyEqyEIFnZrpPJL
	bOeVgImeNKKDseQIpYB2DjG6e/p3uw+0yX9hVdLzwm5nv4WTtuKhmqjmqFvULg==
X-Gm-Gg: ASbGnctO2Wt+quhL+aBAgkzQUIpndU+q9MBKCPfATZEpowFi8M++3e5i+T24uKZKi9O
	EGwbijXISnA3tS/cfQ4vk5axMpAorh7Dc0KUYvrB/vdFMtdLelB6vFPemYsvI3woNOmLwNQ2bRJ
	RVkQenxFKRxPUOGZ62DkO7OYguuyaMDLadocWTHVA3F4G5M37H7/iJ5zfAzGHeEf+vaMsQC2ytW
	iWu4nB1sHt3Ggb2Zx0gqcjj+ynxS4kjtrQOoFJ9GKcyCjusSVxjk2m5SkqK9meIR0Y36YCzkhk4
	eZvtmOBczQ4aKsCoi/RxlmV7iipncaCeO9sMeM5A6qHgv+qyTrpZadvysSa8jAhMtw==
X-Google-Smtp-Source: AGHT+IGfycDzz2jrkUoYR/BFevUgFFIrZzQind7dUvVF1+Ua3fNlMG4d7Bly/f+2404A/5GyvlX3Qw==
X-Received: by 2002:a17:902:f64c:b0:21f:49f2:e33f with SMTP id d9443c01a7336-221a0ed7885mr305363575ad.21.1740522639971;
        Tue, 25 Feb 2025 14:30:39 -0800 (PST)
Received: from localhost (222.246.125.34.bc.googleusercontent.com. [34.125.246.222])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-aeda7c9079dsm1949830a12.23.2025.02.25.14.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 14:30:39 -0800 (PST)
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
Subject: [PATCH v5 0/2] arm64: dts: qcom: sc7180-trogdor: Wire up USB
Date: Tue, 25 Feb 2025 14:30:35 -0800
Message-ID: <20250225223038.879614-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.48.1.658.g4767266eb4-goog
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

Changes from v4 https://lore.kernel.org/r/20250221233120.3596158-1-swboyd@chromium.org
 * Add newline after property before child node
 * Pick up ack from Konrad

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

 .../usb/google,usb-pogo-keyboard.yaml         |  68 ++++++++++
 .../dts/qcom/sc7180-trogdor-clamshell.dtsi    |  21 +++
 .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  47 +++++++
 .../dts/qcom/sc7180-trogdor-detachable.dtsi   |  16 +++
 .../dts/qcom/sc7180-trogdor-homestar.dtsi     |  47 +++++++
 .../dts/qcom/sc7180-trogdor-kingoftown.dts    |  55 ++++++++
 .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  55 ++++++++
 .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi |  55 ++++++++
 .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |  44 +++++++
 .../qcom/sc7180-trogdor-quackingstick.dtsi    |  31 +++++
 .../arm64/boot/dts/qcom/sc7180-trogdor-r1.dts |  57 ++++++++-
 .../dts/qcom/sc7180-trogdor-wormdingler.dtsi  |  47 +++++++
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 121 ++++++++++++++++++
 13 files changed, 662 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/google,usb-pogo-keyboard.yaml


base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
https://chromeos.dev


