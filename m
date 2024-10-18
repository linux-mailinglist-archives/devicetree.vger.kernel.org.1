Return-Path: <devicetree+bounces-112910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 414749A3DBF
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:03:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD3721F22EEA
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49EF18028;
	Fri, 18 Oct 2024 12:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Sv80lZZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6203CDDDC
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729252992; cv=none; b=h776IDHwqTS3WOLK9GkLNVvtQI7Cudn3jBXTvY0CbRT5H2OixG47+efrEdlEnaRSD2Z927cyHVNkj1+PFGErpKynttTRsC61nplESlw3kF1/ItlG2LsSE//O9iVmynohlB5oS4xP++ajNXCglq3gnVsUoULTML9PjhbHBfAXA3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729252992; c=relaxed/simple;
	bh=y0DkIOesMdKvN8Z/QA+Qc6yTmJECLlRxko6tosmD8iM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ow2Zfxh1CJWobOV87kbSnHax4z511IwlxnlMjcv8//bSPoIwrRg9ESRgx9R1ADzPd4itONw0j0LX8DyiX9pZUaUdBr4ZA7/mELWfOsodzMk5ZhGbbFL8rtlh26uyIgL6uVL5miaLhMHzTF7VpzJx+S7inoI0b2uKlU2LPiTJUSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Sv80lZZ8; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71e5ae69880so1584957b3a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729252990; x=1729857790; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CDJu6fBQb2bDc0BqYl/x7X5JBsqu58Z2M+kmfTvKKyw=;
        b=Sv80lZZ87g2vQlP/CNSmfnaUyKlYlaTA9u0hJ/xrbKyF7SsJp5SRssJS0ZKRmxJBuo
         LqgQWKFHvR8os3ecbCvSL1vRg6IuIosm5ueC+gYMTZKHszJdSNSrL5rllRG30xAlS4wl
         myA/0EulehoG9zaeTtWNVyO3Dxqmhe7DRb+3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729252990; x=1729857790;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CDJu6fBQb2bDc0BqYl/x7X5JBsqu58Z2M+kmfTvKKyw=;
        b=t8+fcmmLYfkJY9DjYNphI8BOyYueg7LcnBFpJnxMaUv2mKCI3mftLyxhDEa1TrL6wZ
         +RkI9TuEyPlqavqxSNu0WyooQWwdUGO55utJ/fKlqlPjELhyskkSLJhBWtD9xABiSScT
         CraOFZGOxjINPU2oQEdixaOE7OEWts5ty/V1akVko312MbW2nVYwAItgcCNpzVwx0VNf
         sM4RMnrDmd3Avevi6knrURE76UDRnrQrhZPs0jnldk0vhZhTrfHr6o5XWs2DdJhWcvTy
         nJHUoLDVaBTlZJ80N3JNW45WuO/r940f4k7uQ4oekWfOJpUBlSyEvtub5JSw+NBjHdu2
         g32A==
X-Gm-Message-State: AOJu0YznkZC4TnSgtRwMOeoWXGu21rHZ2LE14Bsxp8WlnGD71lx0pLla
	jR5FpuH8LtM3rjyGMgOaX4A6D3gPWHAhTFFRTRx7x6c2olIz5/BwunIss1krwJ7+PLByWtNrsmE
	=
X-Google-Smtp-Source: AGHT+IFKICDT9+F2pT3sRCMfvCwNLuczhwS1bTZfHyCZaslXhQZFrv1ZJCb8b0gWYMEy9tdZtcu1bg==
X-Received: by 2002:a05:6a00:1ad2:b0:71e:693c:107c with SMTP id d2e1a72fcca58-71ea31ae9a9mr2758478b3a.11.1729252990124;
        Fri, 18 Oct 2024 05:03:10 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ea34ae672sm1274014b3a.204.2024.10.18.05.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 05:03:09 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH 0/2] Using i2c-hid-of-elan driver instead of i2c-hid-of
 driver
Date: Fri, 18 Oct 2024 12:03:03 +0000
Message-Id: <20241018-post-reset-v1-0-5aadb7550037@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHhOEmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0ML3YL84hLdotTi1BLdxGQzsyQDY1NDM0NjJaCGgqLUtMwKsGHRsbW
 1AKoyNcNcAAAA
X-Change-ID: 20241018-post-reset-ac66b0351613
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

After commit 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to
i2c-hid-of"), i2c-hid-of driver resets the touchscreen without having
proper post-reset delay on OF platform.  From the commit message of that
commit, not to decribe poset-reset delay in device tree is intended.
Instead, describing the delay in platform data and changing to use
specialized driver is more preferable solution.

Also workaround the race condition of pinctrl used by touchscreen and
trackpad in this series to avoid merge conflict.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Hsin-Te Yuan (2):
      arm64: dts: mediatek: mt8183: Fix race condition of pinctrl
      arm64: dts: mediatek: mt8183: Switch to Elan touchscreen driver

 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts |  2 --
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts  |  3 ---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts   | 12 +++---------
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts   | 11 ++---------
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts   | 11 ++---------
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts   | 11 ++---------
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi |  3 ---
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi      |  3 ---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts   |  3 ---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts  |  3 ---
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi |  3 ---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi       | 10 +++-------
 12 files changed, 12 insertions(+), 63 deletions(-)
---
base-commit: eca631b8fe808748d7585059c4307005ca5c5820
change-id: 20241018-post-reset-ac66b0351613

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


