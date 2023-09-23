Return-Path: <devicetree+bounces-2699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 490507AC338
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:27:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5D5FF1C208B0
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 15:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA321E504;
	Sat, 23 Sep 2023 15:26:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7C2DF42
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 15:26:58 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12970A9;
	Sat, 23 Sep 2023 08:26:57 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99de884ad25so465100666b.3;
        Sat, 23 Sep 2023 08:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1695482815; x=1696087615; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=su6WYbPXHqLnNDFrNX/cj9aw9V1j7eGBIGjhoDpKtWE=;
        b=mAL3feOzczhBdWIzpb7Iqe3Ts9fQNdReE9ERKaWGjfWr6SN2AcSALcoMNQ5egTEegA
         CMqGStaUzqgkrfeW4IPOAw7fnVYS7gIfjnohk3NngtlXm1YjRRuXHtyF4mYk8GfjuusF
         hnz7m+xwpQdyp55SwdVm8GgjYJFL0TvoBRv2WjeI+fFAsz3tUqCKn8hZNsoa2sadMuLY
         VdaIyaZEyAw00ILtUZG2RDYcwQMoCku1kGl9IK0ombY/XIPymgRWzgLR6KKBoTJD3GLp
         60npMP1wTIRICgmQgBm1VjVTTvAd3Rz+d3CgGr2nzkeovlYgSbCNAxI67gZF9f7oUGF8
         ZkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695482815; x=1696087615;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=su6WYbPXHqLnNDFrNX/cj9aw9V1j7eGBIGjhoDpKtWE=;
        b=a0Vgg2NT2SYzc+Jzr4gJqMFsfIIkh9CAFEhQcOny8P3vtfCMXMfQbJCImzBay29cfz
         bSLhDh/xapI3YMUwBncm1kwfjlsYmc04JMn446qUJ/cnSw/mvSqGNBFridpQ9/BI0fy7
         9FMn98LXnk3iTUjWSu3EjtISOu4jdEvErLD5ZqwVOp8Xq0Lcx/DkldjXO/JocZKd+Z+Z
         wcg2Kh3U5frhi1Yp5KNr1jxC0tcQdRpgZLJc52R5bW3U6TUqTJ07kH0mFrdHAaB163l9
         jtsOGd04cTflE+z12YaBDuv8J7wYZk4AD2g6coXXgLuNvxtW73+wgwFbCDljyxWGEwZQ
         aVtQ==
X-Gm-Message-State: AOJu0Yy3Ivh3Xd1RJuS11YUD3ZB6960Xk3tn9lNfppCaqtCmticxTWIy
	8ehtb5rMA1VsEw==
X-Google-Smtp-Source: AGHT+IFoH2k1RhzmFyq3NWLYhDgDBjvsmXXcDn6IrBtEaB5273OwXVlXds6aaSc1IEDF0vwczySL9w==
X-Received: by 2002:a17:906:328a:b0:9ae:284:c93d with SMTP id 10-20020a170906328a00b009ae0284c93dmr1941980ejw.5.1695482815280;
        Sat, 23 Sep 2023 08:26:55 -0700 (PDT)
Received: from localhost (ip-005-147-049-011.um06.pools.vodafone-ip.de. [5.147.49.11])
        by smtp.gmail.com with UTF8SMTPSA id sa21-20020a170906edb500b009add084a00csm4007325ejb.36.2023.09.23.08.26.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 08:26:54 -0700 (PDT)
From: Daniel Maslowski <cyrevolt@googlemail.com>
X-Google-Original-From: Daniel Maslowski <cyrevolt@gmail.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Daniel Maslowski <cyrevolt@gmail.com>
Subject: [PATCH] riscv: dts: starfive: Add VisionFive 2 PHY supplies
Date: Sat, 23 Sep 2023 17:26:53 +0200
Message-Id: <20230923152653.3371216-1-cyrevolt@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

I checked the schematics to see what power supplies are needed.
This allows for using ethernet without other drivers enabled
that would coincidentally enable the same power supply. ⚡

Signed-off-by: Daniel Maslowski <cyrevolt@gmail.com>
---
 .../boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts
index d4ea4a2c0b9b..bc1ac12bc71b 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts
@@ -16,12 +16,14 @@ &gmac0 {
 	starfive,tx-use-rgmii-clk;
 	assigned-clocks = <&aoncrg JH7110_AONCLK_GMAC0_TX>;
 	assigned-clock-parents = <&aoncrg JH7110_AONCLK_GMAC0_RMII_RTX>;
+	phy-supply = <&vcc_3v3>;
 };
 
 &gmac1 {
 	starfive,tx-use-rgmii-clk;
 	assigned-clocks = <&syscrg JH7110_SYSCLK_GMAC1_TX>;
 	assigned-clock-parents = <&syscrg JH7110_SYSCLK_GMAC1_RMII_RTX>;
+	phy-supply = <&vcc_3v3>;
 };
 
 &phy0 {
-- 
2.34.1


