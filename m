Return-Path: <devicetree+bounces-20415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F667FF364
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48A29B20BD6
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B49F51C54;
	Thu, 30 Nov 2023 15:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="bH67UIvj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFEA10DF
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:16 -0800 (PST)
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E97B83FA56
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357614;
	bh=O3TPicaObXUf+CQ2/13bF4S5EM9ZMGJpI/eXjOZpsCQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=bH67UIvj/5fgbqOcd1emdDUqhPY8WGvyLrRhkk+IOIp1fxKV8Seb1EzgWNt3/A65S
	 Nui4h5Z6eQGrpkySBga2N9mEM5TDI7la/AX1FbXlSSxmabqfHW7td8PaibBcA9oRtp
	 VwVVCokRGCWKG3BvbGp8K+KcJ3ZtkZjWdiLSLi4nYhdR2xeCiLi58yH0gpv9mtMeRo
	 hI3mjh5nDnZnofaMHDxM/aZTotFkiJcvFVhW1A7+JUaOpPD0Ao1V6hgaM6Dh1n6RdJ
	 Vba0vPvA8QSyzOjUM11ww+yxvJVoQ/1c61wS+KpX75jXkKILYZEyIDYYT04Nu9z2JP
	 6ba2zdBUPJM9g==
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-6cba754b041so1391436b3a.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357607; x=1701962407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3TPicaObXUf+CQ2/13bF4S5EM9ZMGJpI/eXjOZpsCQ=;
        b=c9X3Cge4MSJahqPxbE6LKwaCR9bpmUFiCS0gX2stYSuB0VYKOsCJ6OKUJA0mqjXhwQ
         jYKOoqvGUCjPC0oJ5gYUrbsRrYTzJQxwn71jxrKjpY/1ZDYV1/aN5io53Lo1WoU0u8fz
         +qnzTI+QeMZQTf0gNzwoh8K0QGWs/7W2oHqWxShirJJ/KWrGMlMINDNHch00vgaDTZzN
         B1aWQDMaTuKTsrzFARJHL5TvgUv9U4jnRe1nrvfUaeyXzUQ7i6kP/xipa8nm5oMegbB8
         lTouDh8hBalj6PStdFB9BacGnvX+Eq/m+DDB0gsyjCdUP0xdcfTfUF2du1NvnX1RUKha
         NVSg==
X-Gm-Message-State: AOJu0YwcfOtydwO+RlZaRjbD0e/+lBjTed9Sr2YM50wywhB82JU4+rgT
	nC7k25ro8ppIejjGAxYdESgtJT/SxPFYa9E48qcPAbUHQDpVcaP1cI1G3yYDJ4hLQ+6sz3JH2SP
	Lrnq3nQU/OdUF5tfLWCI6/aUg8dWdDDrlYrlWi9Q=
X-Received: by 2002:a05:6a00:1914:b0:68f:f38d:f76c with SMTP id y20-20020a056a00191400b0068ff38df76cmr24404051pfi.6.1701357607362;
        Thu, 30 Nov 2023 07:20:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGO2ck+Ida+RKRFtuLd6VUs98DdkRkXb2Q1rcWsF3vYMURGwbviCaQAdpZ1mHrt9Ipgx7Ym1A==
X-Received: by 2002:a05:6a00:1914:b0:68f:f38d:f76c with SMTP id y20-20020a056a00191400b0068ff38df76cmr24404026pfi.6.1701357607117;
        Thu, 30 Nov 2023 07:20:07 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:20:06 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v2 3/8] riscv: dts: starfive: Mark the JH7100 as having non-coherent DMAs
Date: Thu, 30 Nov 2023 16:19:27 +0100
Message-Id: <20231130151932.729708-4-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Emil Renner Berthing <kernel@esmil.dk>

The StarFive JH7100 SoC has non-coherent device DMAs, so mark the
soc bus as such.

Link: https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Cache%20Coherence%20V1.0.pdf
Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index a40a8544b860..7c1009428c1f 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -144,6 +144,7 @@ soc {
 		interrupt-parent = <&plic>;
 		#address-cells = <2>;
 		#size-cells = <2>;
+		dma-noncoherent;
 		ranges;
 
 		clint: clint@2000000 {
-- 
2.40.1


