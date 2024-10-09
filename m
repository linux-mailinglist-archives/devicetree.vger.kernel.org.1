Return-Path: <devicetree+bounces-109527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 595CF996B4D
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 15:04:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E047FB2A424
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10758197558;
	Wed,  9 Oct 2024 12:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jV9megUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938791957E7
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 12:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478791; cv=none; b=QJaqC/ASmZypIb58625fTZMEDVN2yLUV+vLdr5oCY72jci5qyDQ86jKF5DUun2kLApQWjgEvQoVj8fXtbw3IX4DBhGT5mQJ29v5PHE0yIc/RIklVZYEMM6wEavGCaDk0wmXgrZHrLX+XjLTt83lNKyw5yD+zozUjScR/SM/3F34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478791; c=relaxed/simple;
	bh=Vd5ZJMYgt+siPRttC3L85GxVr7ife3eRKgQvs9zCIUU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=p8a33/Wa+2/kaJAUXgspH9uIibmvtsVRgIQDwGxm2+WD9vXfPaLs9hG6O2NMQ/rOGqfSjOYd4upcRalahOIiwd0mFNU0sPjzWukgXp2xXwp0GE5ZDo1IbV9a8j9lycQdXxXb4Bp/TxMrEjquhU3PcstLzCqvT30tZInAAGSyE8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jV9megUo; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20bb610be6aso74351115ad.1
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 05:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728478789; x=1729083589; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8XBC4RSh8TfpYO7N1cJ3hGiE9IZ5JY14wIot0+OdLjw=;
        b=jV9megUo1Hhb3VXcSaITtBFS0ofLTlApTFLqF2HSUhafNOTxoK6WMuolCSEhJfXmb0
         EOnPJ5jPsi/AdHmBGXwVjiW+D/+RAUktZ/emoA5+qWZbnop8e+L4x46XRTaXXptkOGtc
         E22umNyuWrDJd3IApSPNAxOF02KlnWOBrUnig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728478789; x=1729083589;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8XBC4RSh8TfpYO7N1cJ3hGiE9IZ5JY14wIot0+OdLjw=;
        b=leeNknQZ7xgdOBE7FAKjVj3v52bHQU1OGOKk8SI2tMZBdv9mHiFoUP/48Rf3P8MSR0
         PXndU59qOx9X4u2Nndjbgf80R9tDC1cqM7+QYfXgnitVqMtrzPbIIIWrOJltpRPy6mll
         ejTgQv5wiFBjWrp6ngmeh6RtvSlb/3OLpJDthz+iYzyqVeyq0PvpHu2YeoVPWt1aD9ZF
         XP+mzgyCXPN8Tb52Mbmsz/ckUvELjSpyiNB6MC/Z0PZ6fZ4qes7BsbbnctYhlccsAFnp
         HxmBDE00ey1RzcC2XSXuphUNpiAY/swGITZbhCwRGI8EUoogcmpkqAIZC/KA6J9RBIOw
         K8YA==
X-Gm-Message-State: AOJu0YzU+/TXs1u/WNExlVDhpHTu5HtICDwGqnl0dZL+IqSEiIIV7BWN
	iuo41GaRM1e4oBb6LjvPfr4VdRz+D175wEM8RltDwUWPQ1Bl5aHjUfiKumbI70Vmwxo7rPWA99Y
	/tQ==
X-Google-Smtp-Source: AGHT+IFlslWnbu0rpXGb6LpChURpaWlbLt2Zo9F1VE3wGGEiv8TDbnGoZkGoPnCp7IhijplXCGC6tw==
X-Received: by 2002:a17:903:2349:b0:207:1675:6709 with SMTP id d9443c01a7336-20c6358f30fmr31637515ad.0.1728478788803;
        Wed, 09 Oct 2024 05:59:48 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:bfd7:eb4:8571:b3f4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c51c21535sm27434005ad.216.2024.10.09.05.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 05:59:48 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH 0/4] arm64: dts: mt8183: Add i2c-scl-internal-delay-ns
Date: Wed, 09 Oct 2024 20:59:43 +0800
Message-Id: <20241009-i2c-delay-v1-0-6cf59721c1d1@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEB+BmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSwNL3UyjZN2U1JzESl2zFKCgpaFFaqpBmhJQfUFRalpmBdis6NjaWgD
 vuKmQWwAAAA==
X-Change-ID: 20240909-i2c-delay-6d202918ee0f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-2a633

Add i2c-scl-internal-delay-ns for each device.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v2:
- Add missing Signed-off-by tag
- Link to v1: https://lore.kernel.org/r/20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org/

---
Daolong Zhu (4):
      arm64: dts: mt8183: fennel: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: burnet: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: cozmo: add i2c2's i2c-scl-internal-delay-ns
      arm64: dts: mt8183: Damu: add i2c2's i2c-scl-internal-delay-ns

 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts  | 3 +++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts   | 2 ++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts    | 3 +++
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 3 +++
 4 files changed, 11 insertions(+)
---
base-commit: 75b607fab38d149f232f01eae5e6392b394dd659
change-id: 20240909-i2c-delay-6d202918ee0f

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


