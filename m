Return-Path: <devicetree+bounces-48490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B28FA872373
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 17:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17D48283AF7
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 16:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9EB012836E;
	Tue,  5 Mar 2024 16:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VgrkJe8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1351127B76
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 16:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709654459; cv=none; b=JWNNd5iA9jKlqyyXRS/Ii6uCVLxP0LkjktV7n75U7l3pkTkHs6QYQUppykTEctpst4K2TPm200HnQUjfb9UMu8mbGqeXyMb0eo2hT1Q2EXOyhZVemDRdCJsxjeQp72l5RSrE8bJjioD2MKOP3LXVHV1HA0vxk3e6zaSjErAY4jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709654459; c=relaxed/simple;
	bh=juPU6erojBHRmFr17SVfJR/kK1wudgVeymnF0jWMbIs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eJS7MhBFu1haSb0Qxn8yNKXTb75FtOaWUXF1pYQSxy1UwIOT3CjmtnvhE8PNzJJfBsgTPAIMueqYbugcnj73Q5UHDSQhElgKXMbJF7hVxmLs9yQzXHhU7yDIWjexS6ldnkcAvs8cRw1Fxq6QerH3yN+i/VfNyYErnBz6KxMdCFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VgrkJe8b; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d269b2ff48so11794011fa.3
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 08:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709654456; x=1710259256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HxUg3AxRiB6TIJXosfVD0lTwwq/nFBs+gkaA4km4gxU=;
        b=VgrkJe8ba/9BoM4xQXyfoMJHCj9/jfd8ZnFOSm4u/SIjrlefIzKEPZFZth2Rq5JKeK
         uYQOmVQVk0SgHXs3FejEpYJhVX7k5NCeT+dpS7lcFkPCu90m/kpot6wcVv6SW4QJMqVe
         mA0HyMrM6r4zQMN0+NpC6ugafIsS/MPXh10m6eu9AosLiVLy2hlZAw7APAZZ+SctR2vg
         XsWWPUysFXMOPmbh5zJgIWCHcOEE8CELWomotaM8Pj57ZWGrk86yfsi3CFeZqQKBsAim
         bGV4vLZOLDgYjGKVviErtAxqbTxJJc+m9RYl/5WHMs+1RYMnC3b0QzfklTnEzZUZ9CSX
         aMkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709654456; x=1710259256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HxUg3AxRiB6TIJXosfVD0lTwwq/nFBs+gkaA4km4gxU=;
        b=CY9FpVTEghwuiCTLLf9ry/eStOXXufXwzAZdDvNrVxCKT8kTIgb//pxx2PTbyM1aaT
         k8lJrCmx+qPdbYi9l+8iU5tbFwEDJRbMZ03qYHjzwkLgy9c30GKYmofBKaNL3PtzgFyz
         dicUgXE08fH/PnCgphMMGU3MDyvD8AJHGavEpIHiesy99801gmn+XesGq0qZh8wi/fy6
         Y4c8XCkzxPsn6bi8Kfw13OO4gjsv3xGZFl7WuLLiK5/fR33BDyJxh9TSdnqVJoFgCfvT
         USTJDHdq67eCd7G2FMV6v/l9EtzRrbhLVhl3hhn4cs8tgo3M6iZF6rL9DteYF30jgGHw
         VHZg==
X-Forwarded-Encrypted: i=1; AJvYcCWbAamfOLxW/BWNNlu9jL8TsN8WTYpG/4qy75FBWUIs2VyAmu/Y/30wGYwNpof/uADQq1FrMRBSriVJSrFsF4J5LxSJh9/oHlgAAQ==
X-Gm-Message-State: AOJu0YxJnxkNrpucELCsKF3aUg2eSDoHLyvlGlacXcm2xJsoYcBoodLe
	vggid19MKB4v7Nsji3JAty57OLQpm1KrZfZBqsotIZG8YtNeMkbcPXY/1CW/+as=
X-Google-Smtp-Source: AGHT+IF57JrXYlAH5g59FQErQGOTRJzeoscMpRDMA4PwN4JJecNt3wRc1NRvWU7k57dYCHeOVs6BEA==
X-Received: by 2002:a19:8c1b:0:b0:513:472c:1f50 with SMTP id o27-20020a198c1b000000b00513472c1f50mr1704877lfd.52.1709654455835;
        Tue, 05 Mar 2024 08:00:55 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id mc18-20020a170906eb5200b00a3f28bf94f8sm6133612ejb.199.2024.03.05.08.00.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 08:00:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH] riscv: dts: starfive: jh7100: fix root clock names
Date: Tue,  5 Mar 2024 17:00:46 +0100
Message-Id: <20240305160046.46337-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

JH7100 clock controller driver depends on certain root clock names.

Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Closes: https://lore.kernel.org/all/CAMuHMdWw0dteXO2jw4cwGvzKcL6vmnb96C=qgPgUqNDMtF6X0Q@mail.gmail.com/
Fixes: f03606470886 ("riscv: dts: starfive: replace underscores in node names")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on hardware
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 90149e379c10..9a2e9583af88 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -116,6 +116,7 @@ cpu-crit {
 	osc_sys: osc-sys {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
+		clock-output-names = "osc_sys";
 		/* This value must be overridden by the board */
 		clock-frequency = <0>;
 	};
@@ -123,6 +124,7 @@ osc_sys: osc-sys {
 	osc_aud: osc-aud {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
+		clock-output-names = "osc_aud";
 		/* This value must be overridden by the board */
 		clock-frequency = <0>;
 	};
@@ -130,6 +132,7 @@ osc_aud: osc-aud {
 	gmac_rmii_ref: gmac-rmii-ref {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
+		clock-output-names = "gmac_rmii_ref";
 		/* Should be overridden by the board when needed */
 		clock-frequency = <0>;
 	};
@@ -137,6 +140,7 @@ gmac_rmii_ref: gmac-rmii-ref {
 	gmac_gr_mii_rxclk: gmac-gr-mii-rxclk {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
+		clock-output-names = "gmac_gr_mii_rxclk";
 		/* Should be overridden by the board when needed */
 		clock-frequency = <0>;
 	};
-- 
2.34.1


