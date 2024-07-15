Return-Path: <devicetree+bounces-85775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADB4931562
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 15:09:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D7021C210A1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90C3E18E749;
	Mon, 15 Jul 2024 13:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sgoUCVnB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FFF18D4D7
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 13:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721048957; cv=none; b=guy/dIFB4gSKsA7bG9P/W7+ZQ2a/xkWaOmeMlJv7yuliG5IlE8YbNTFgSnThFx7JBGFZAlvGzaKTHVEnsgvW0ui9KfISVQ0UHk4sZVraO1WkUSjzfAA037qP3XJbSm+mKwksxUicoSRob6dr2/aWW+xq6mwY562i7qLhkRIFUBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721048957; c=relaxed/simple;
	bh=Sp4rJOAfwoDg+VFyI4LSIIgR2i72s54RLNQmNjA0en4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aY6o+NpsfFBO0t6jYp+puNrAs8ICj3uZ5+09AY5lkMcnFifJGEs/uiwi4KHRoR2Hq2m8t6dDR7IHFj3ivngwoxV7cHOxtN2qQB7EtjQff0Ujh0zjxIwyrIdkCSCuhS8W39IjhltWh2rrJ37Z8gDVLviQBrBQh+Rp/du7TO/P9ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sgoUCVnB; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-367990aaef3so2575532f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 06:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721048954; x=1721653754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cg1g1741KIeUKYb9m11yGc/6n/X3TYaI+dSIEkjSgkY=;
        b=sgoUCVnBouOoJdqARhSifSnyiTCbGcsuDn1LhIGSMJAES7XCXCg4Nm0qCFaZnLl+u6
         CLG8kJAUJOewvy3pbKOzAuUXP8NMJnjJSBT0sSXaQS9pMYPrpE2Ih+AOXOvjAli4WTSe
         HdslKgq/nsa507GgjqzS/8BKYU/RrfHGEMSnYqyrMFD+vu/6qtozQpZX9fcWuoWakrne
         0ZxXqTwmoWND5A7gY3dPJf+2mJ6/nn1noqJiBJeNk/CKE0sV0bzvos/5+c5vqDc/Ee4y
         k3xeJzxTfM0vkdewNxBaPghGu49QueGQv7hWVgX7fX9tU1Eu46L7vku7+7LWk9XXNyX5
         T3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721048954; x=1721653754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cg1g1741KIeUKYb9m11yGc/6n/X3TYaI+dSIEkjSgkY=;
        b=s9Z6NJlb3uRT+6yHwZgUYTEs8iAF0o8zPnJm8yjw13LmsN2rlE2aeAW8vgrlh+wTcw
         CskpGUPpS4Ak5mmNmATgISku1mR68FKEQdVlEeUZPUchkGD07dkpYZzzlMVPFi9tpiWx
         fP+j8JM0G75dKLu1VmIw19i2BBp0bUvJCEqtvrNGHO2+sN4UOcCfp1U11vUJDrt6d9Bv
         icH/BRyGTMvnCn3ltijUI8JpU9TabCsQwtnLJ8FmQ0nu4D+bo3freoFL6TfzkwZKqhHX
         WlOEgHaaMCWOaTVmA8pzhCeOl2a9/UkGmaJsaTh4W8dnJi/J6GEzHJ40F2usJztpE+/g
         BW2w==
X-Gm-Message-State: AOJu0Yyaf96Y4fggi0AQZXwzKL906xPKgI2oPABYG59xIpAA9BMMQPS5
	nTJD75a5AwK6mRdYNXN5HH7DRM7qMmd6K9t8pWYReJlUPrIrO6jUEM47P8Tohypd03kG/2SzWmP
	D
X-Google-Smtp-Source: AGHT+IHTCA8ycbg+4n5AdBnrvp1TwQNdgC6l8a55ueOh87lc552vC36yNGKeIdFpKvE0CAMgsrh4ew==
X-Received: by 2002:a5d:4dc8:0:b0:367:91d6:e12e with SMTP id ffacd0b85a97d-367ceaca9e9mr12859126f8f.44.1721048954235;
        Mon, 15 Jul 2024 06:09:14 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680daccdffsm6417766f8f.54.2024.07.15.06.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 06:09:13 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/2] ARM: dts: qcom: apq8064: drop reg-names on sata-phy node
Date: Mon, 15 Jul 2024 14:01:07 +0100
Message-ID: <20240715130854.53501-3-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715130854.53501-1-rayyan.ansari@linaro.org>
References: <20240715130854.53501-1-rayyan.ansari@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the reg-names property in the sata-phy node as it is not present
in the bindings and is not required by the driver.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 769e151747c3..81cf387e1817 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -871,7 +871,6 @@ sata_phy0: phy@1b400000 {
 			compatible = "qcom,apq8064-sata-phy";
 			status = "disabled";
 			reg = <0x1b400000 0x200>;
-			reg-names = "phy_mem";
 			clocks = <&gcc SATA_PHY_CFG_CLK>;
 			clock-names = "cfg";
 			#phy-cells = <0>;
-- 
2.45.2


