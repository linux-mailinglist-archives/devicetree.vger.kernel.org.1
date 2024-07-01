Return-Path: <devicetree+bounces-81804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035B891D80D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 08:23:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86FA82859B9
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 06:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB78760BBE;
	Mon,  1 Jul 2024 06:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y56TD+xB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4002E43AD2
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 06:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719814980; cv=none; b=uj6Zbd2OYd+BDZKCNTtutvrOWr9qkEyWdOQMk/BhIE0o8BhCU/MKth4PXwfz4fEMX8Dasr66zcmQ4XS+Jd17/cbAwZVZcftxIY8O1V5TwQ8xL3okh0BtDTu3kt0AhCJVHrPqSu/+CsMOTPH/osnhATh7H507YBkQiXl11r4/dP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719814980; c=relaxed/simple;
	bh=vnOavInzasusu7sZvRiMbPs2BO7CtAwUG6VhiHeTfx0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fLWFVzb0S4JclbuupsIcBzS4aqgNpH5mAUmu3U/tRGD26gLlHQgbSvo12FYoNai4bryn6c3pePpwXc1WUepBJJhMePCuVcE9Po3pUUGpPwZtHumSTh0v/IWO9NKnRvN1uYMpptHMj563Q1lH/Z1zIh3iw9j1GjrKCGweIQ6UUkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y56TD+xB; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52e829086f3so1947174e87.3
        for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 23:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719814976; x=1720419776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BAsmlu9vk3gg6K/UmI0l9ZVjTV6Bp6WBwBKunNxxZw0=;
        b=Y56TD+xBGEfL3e6m0Ky7SO8+7XSH0KiWIp9JIGbgUWi70Ew6atcIuAtlzXREPRCOUo
         9X34HJ2E8T5ncUpz8i5rR5b1xI+ZJU851Lu2608pGu4RAXE5mpTtdyxIJV6TifVHBtYM
         jWAmmZvXJMoIjZWl1WSmTd0rP9o/A4r2Wz4oSL9YkO9OgRPQP3OqdtpIM26yn1rqoGmL
         PUvPKYpjwjV4voDIk63K5amElrYs9hWd6YGjKs8JEl2Fm5nVpR/avTZ75JzgrzfN1VC0
         92M/CLS1cGvBOzEImRxnhI6JfxQOk1FA86dq4ZglSF38nDTAlTvqL5tbQX3+VCx9/lS1
         tZ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719814976; x=1720419776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BAsmlu9vk3gg6K/UmI0l9ZVjTV6Bp6WBwBKunNxxZw0=;
        b=BmLb3cmWn+hPGF4PCAb3/2/DmxxF2CNBXOqaYc7kRFjKivbPA9vrahLeZH4rwyM2yX
         ev4b0qJ6u1MalxpBP2RK/QjBAICOxt88nHKsFcLtN7N5lC7v5srxKC03oiEFmGkUWePE
         ESnmSIdA7PxMzUyS7QZhuePWFqekHQ37NEYb24V5H2Vc7Bn7pfY9fsjSDK4xhUypG8pB
         HGIyUahbcBvXYu79IFzh0aNo4xMGSPU5HVOfvKwqmHKIdwxJBrZBJutQcaz6xLo4aGxc
         3i0mnYYSVSZMluTtb9hNQdbpFOeKaO1B/6qO/lqk/jNTf+N//INElpxrs773tWvWUSsc
         LIXQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3RmBc7vHbhF+y6QVTTaBac30gc1qg2JIlRi/+vAVd2mVXAgOiBll5mBoyIeICFFgmfRitROX1bpmN/9o+a9GOB4lf4QL8BLbWtw==
X-Gm-Message-State: AOJu0YzJbswAGoJEr2OPZO9PIX+wB4mjuRX1YwtzxNzxFwBLqGSxLOZ0
	SvDMkb3pUMlvPe5HCkgm/JtclAf9PrurgqeCbXu26rwIlIJZf0PCAbkF/QXz9sI=
X-Google-Smtp-Source: AGHT+IGMyvzN1UuH0TYDU07LJVMzmdbi3um4v8edhrn6hp/lr+qA+R8n3VuTL2BsnUlvBPuUwMTlbQ==
X-Received: by 2002:a05:6512:1049:b0:52c:d88a:f769 with SMTP id 2adb3069b0e04-52e82687d9dmr2577628e87.33.1719814976266;
        Sun, 30 Jun 2024 23:22:56 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4258014f8b7sm40899615e9.41.2024.06.30.23.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 23:22:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] ARM: dts: qcom: apq8064: drop incorrect ranges from QFPROM
Date: Mon,  1 Jul 2024 08:22:53 +0200
Message-ID: <20240701062253.18149-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no direct mapping between QFPROM children and parent/SoC MMIO
bus, so 'ranges' property is not correct.  Pointed by dtbs_check:

  qcom-apq8064-cm-qs600.dtb: efuse@700000: Unevaluated properties are not allowed ('ranges' was unexpected)

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406292139.yqPYyUfi-lkp@intel.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index d73ea1434b36..769e151747c3 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -671,7 +671,7 @@ qfprom: efuse@700000 {
 			reg = <0x00700000 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges;
+
 			tsens_calib: calib@404 {
 				reg = <0x404 0x10>;
 			};
-- 
2.43.0


