Return-Path: <devicetree+bounces-143431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A08A29D88
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 00:30:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA7893A7080
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 23:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B74C921579C;
	Wed,  5 Feb 2025 23:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="G8K7xFkS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C7A151998
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 23:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738798223; cv=none; b=QY2LVXup86v1vGTZNkityrGnSERVnYPYjDvxBOwy3xox4ODGU3xalfWdK2HvgfS6cmTZlqIgekkbCvmYe0SwaZKfseQNO8VzUTBMLtLmGacZ5z2VdQdpbJqh6vfaOXL4D5Fdbix4TwdQovhQe1c9xufCGF5WG9nEfQXrWzMgy3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738798223; c=relaxed/simple;
	bh=w0KqSvz4LKHnh40uBElw2aDPtTJnsxo3kIyaKh2DPsc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dx+t7lFlxKJ9UD4hRlYxDl757Hto1dC6MeCI/iCrl2yAtgBee03ra3ZHxPqeWd87EHUMW9JtRJ0K4OekHh+xc5nQKHemTsJXHy3AtAeGQvh7v9Qs7p4EPY8p6VLlJL97AKyii5iFzs9VmPNk7tlJOpWWlJ0e2O6UVZweKgdZyaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=G8K7xFkS; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2165cb60719so6634315ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 15:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738798221; x=1739403021; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LfrhKTgFStXH2HCRNCmE3wFhveRGNarb8z2r9ekUmYk=;
        b=G8K7xFkS9DuuuqiTbKM2/I6RKho/2q6A4LHzAMUYv1Y+aqRn8L3s3W40Qe1PlOiriZ
         Pb9xj4XlSoYS7m0KwTbzsFtM1yBeIEAf2uQ4OpzB4kUYDhkxRUAci1y6fZytaOux9eS6
         +73kwQbLtB6iXZYoD63KWYVt2atZCXrQE110M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738798221; x=1739403021;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LfrhKTgFStXH2HCRNCmE3wFhveRGNarb8z2r9ekUmYk=;
        b=EGEHXqhxuJhHoCUOar3YXRwyAEPgsxy7WRgI6l9fe7P6fmeoBi6/dKW/9lIGo9AxRF
         WbuqQzKqa5YpOoVPlssQWoNDmJSYwqFThd1wvWK9BOxcZdriax829F/45XNj99uS4qtv
         b6FaAZeiNDJKEWw5cMMPOwNw179oeFZhcfcSdphV4FZUHOyVFZSeSWFquyP0K9tay55v
         Axk+Wzc2QiH7r6Hyk0GRbNR75kAAZ3SNH6ny+qG0dzqExmvvNcwh1vfOh2wuEWjqd0YT
         LxpYn04RHtxszIm3mTG0f2OAGhgrRtb6rLIXRb1Fj2DuC9XeYpe2QBOqdK3pGCj2/g57
         g98w==
X-Forwarded-Encrypted: i=1; AJvYcCU5vVybvKPaUqMSLfw/kz2A14eU5cpsUqzowjrViY1R2TTCwdyJebLl3S3eePHPlCFC6KYep5H0eVxW@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ+15Upc1gd6+BACc+CmIkXt7p4wk5hmXVCnD2pM431HbTdXMn
	Y1ozp15pqCl52At1D0hA/6lGSydlLXXJHuEfqBNfaGCU/no0h8JEKEvkHcsuxQ==
X-Gm-Gg: ASbGncv7W6Dtfdj6F6VLl/tRfYNM8AyHMB/tEPYGKRq04ZJ77glfTW/yAAta90jyJrR
	cfeSOmRdtUDdJ6gRT+ovIloFkCXMAx+L4bEF4HcHM26iN8sWYQqVlvJ5DFQLbHJ2CrtfYYpASOs
	59i6iLW6+/FQENB+/9NOq7AwV6db+F43PVAxrPX1MhI7NZ8DxRf+E30Gi+3tr79SNBrpuoWfEji
	2ofwiUGv+XUrfC2FwVlSx9QK/n/57FIkWyPAR53UDidizG5HOKavcNlk0Pcr0RMvRTqW8u10PT7
	IN7gTn5QzZ1TXEBPnDIk8CiCXHVBoG+ZSYo+7QEtsMPDClbrurs8sqg=
X-Google-Smtp-Source: AGHT+IHUo+FqElUk1sltTHIWznB6GdIP99OTajELLS9rXgQ0/Ee3VmZ7ONPYnmSuxZTKWCv2pLwwGg==
X-Received: by 2002:a05:6a20:3d93:b0:1eb:3661:da3b with SMTP id adf61e73a8af0-1ede88ad4a8mr7472061637.33.1738798219826;
        Wed, 05 Feb 2025 15:30:19 -0800 (PST)
Received: from localhost (129.135.125.34.bc.googleusercontent.com. [34.125.135.129])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-73048ae7f79sm15435b3a.77.2025.02.05.15.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 15:30:19 -0800 (PST)
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
Subject: [PATCH v2 0/2] arm64: dts: qcom: sc7180-trogdor: Wire up USB
Date: Wed,  5 Feb 2025 15:30:13 -0800
Message-ID: <20250205233016.1600517-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.48.1.362.g079036d154-goog
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
cros-ec-typec node.

The first patch adds the pogo pin binding to describe the detachable
keyboards found on some trogdor devices (actually strongbad). The second
patch is the dts changes required to wire up all the USB stuff. This is
sufficient to set the connect_type and removable sysfs properties of USB
devices.

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
  dt-bindings: chrome: Add binding for ChromeOS Pogo pin connector
  arm64: dts: qcom: sc7180-trogdor: Wire up USB to usb-c-connectors

 .../chrome/google,pogo-pin-connector.yaml     |  68 +++++++++++
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
 create mode 100644 Documentation/devicetree/bindings/chrome/google,pogo-pin-connector.yaml


base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
https://chromeos.dev


