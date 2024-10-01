Return-Path: <devicetree+bounces-106781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 279E098BB36
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:34:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A1A01C235F3
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2C7F1C578B;
	Tue,  1 Oct 2024 11:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="M5idW44C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5797E1C463A
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 11:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727782302; cv=none; b=Y5cT6j5qoRYGrR+WZ+AKrfBIR4ibjpWnTXqTZs//Wh8B9rc1yQXVnEu9pMfjHkoWJRjGzUc8EFA9I8gfVBqe7WN3/mzrkxecJ34+wfCu04zqZIooY+VL0TfpVMMR1F0goJcsOYFe2SMxWzzfPOopGRCKM/OnsLmBF7RvPZHOmbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727782302; c=relaxed/simple;
	bh=fwOtCEimEWkzwxYD6G3lmyiuERxgKaPU7Rm8N391xIU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RH/o5+ofsCG6ViPg2Id6bwXnIUCUy/k1ZsRWHVBLO0Nx/n5zd7DGa5PVuaN/aN7Z1tw/aPuxZ8yLRc1gcizGyM9KDzUqPBOddCi5bJzEuMUPUxeybtRTJNO43TQ0+xOkBAetNTWizTbMuA8g2Ct3g7B3TWeQYCbI+plCmIV4oXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=M5idW44C; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-71c702b2d50so1676758b3a.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 04:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727782301; x=1728387101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHVpAqtBhTjk/tW32shjLNYqZYBHOi3xkZZdLwrHsZc=;
        b=M5idW44CYepRULenbleAONsG822vcvCEo+D5PgE8ODCdogj3mfdLI5hP6LfBosZPBR
         eV2dQIACY2+q1z4cKEnT1XwhtJWGjH5PS38ojTdf4aos9ayq/Yky4Nieh9kIEtT4oAo+
         S522XYMmxekheApursMPUIZHkhvALPYP4gK5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727782301; x=1728387101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iHVpAqtBhTjk/tW32shjLNYqZYBHOi3xkZZdLwrHsZc=;
        b=NGtev1wfKOKYn6CRh/Kso7qDIjYClGTDX6mKiZhfD/XrhAe4YWNcqeFtq5qfW2FxvI
         g7y7V5WhzV8qyRl0IquBYQ6vqVGub/MBJPgP9xA1fQsxAt4L2YqCgvPCjp/pJmn9Z6lt
         nVPB5+LGSFY3AlWEoKyl+XVLjKL+Mvlbh5FcGS6xFGxDMLXW2QFR8qhPvQS8atEv6HCS
         vmuW5l92JvrgWZwtsqEYav8m5p9hxCKfMO8vv3nZQbPYvCN6pH18NEYH6vwD76RWQnbi
         qb6Lfd6qUwr3eQkvkhjHPZxnRj0ZzjGG2o5M0nyqALUggr73gZYo/RJWE9V8UtVhn4mm
         84qw==
X-Forwarded-Encrypted: i=1; AJvYcCXJbXPyM0Lna//ZsXqDY4+VIgKwJXaaO6oIpSg8Ki6JgwZbtHNxb03N1X1Mt4MJdBVunCibZUSpBDyl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6olEGbJdneI5YwsDI+1cV99aYZVRUXCeKdNNjM9dthNXy4qH1
	jfkyltfMZstvDoPTkqkjRCAgXADcGAkVrdAT5ZjuU4ZRtWTJ+Nwl9E52MiES1g==
X-Google-Smtp-Source: AGHT+IFZ3oUWJS1Sa53CgoaQveyvKTUyDvv6ZPmGhi3kZ/l698r7fpVxnLWRxa7awXLoABaq4SwyfA==
X-Received: by 2002:a05:6a20:1d98:b0:1cf:22d4:3832 with SMTP id adf61e73a8af0-1d4fa64c5admr19196260637.5.1727782300706;
        Tue, 01 Oct 2024 04:31:40 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:e044:f156:126b:d5c6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b63d9sm7810646b3a.52.2024.10.01.04.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 04:31:40 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 8/8] arm64: dts: mediatek: mt8188: Move SPI NOR *-cells properties
Date: Tue,  1 Oct 2024 19:27:26 +0800
Message-ID: <20241001113052.3124869-9-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241001113052.3124869-1-fshao@chromium.org>
References: <20241001113052.3124869-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the #address-cells and #size-cells properties from the board dts
to SoC dtsi to be reused by other boards and avoid duplicated lines.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

Changes in v2:
New patch.

 arch/arm64/boot/dts/mediatek/mt8188-evb.dts | 2 --
 arch/arm64/boot/dts/mediatek/mt8188.dtsi    | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-evb.dts b/arch/arm64/boot/dts/mediatek/mt8188-evb.dts
index 68a82b49f7a3..f89835ac36f3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8188-evb.dts
@@ -140,8 +140,6 @@ &mt6359_vrf12_ldo_reg {
 &nor_flash {
 	pinctrl-names = "default";
 	pinctrl-0 = <&nor_pins_default>;
-	#address-cells = <1>;
-	#size-cells = <0>;
 	status = "okay";
 
 	flash@0 {
diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index ca50ed20fca0..e2c6ed816507 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1618,6 +1618,8 @@ nor_flash: spi@1132c000 {
 			clock-names = "spi", "sf", "axi";
 			assigned-clocks = <&topckgen CLK_TOP_SPINOR>;
 			interrupts = <GIC_SPI 825 IRQ_TYPE_LEVEL_HIGH 0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			status = "disabled";
 		};
 
-- 
2.46.1.824.gd892dcdcdd-goog


