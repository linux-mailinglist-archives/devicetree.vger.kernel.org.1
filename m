Return-Path: <devicetree+bounces-19006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 695AE7F9678
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B0931C20490
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D8315EBD;
	Sun, 26 Nov 2023 23:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="USWA50dv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 917EB182
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:21 -0800 (PST)
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C8BA640C4F
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041299;
	bh=O3TPicaObXUf+CQ2/13bF4S5EM9ZMGJpI/eXjOZpsCQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=USWA50dviKu0ODjnStxQ60N4E+f8SjbFwNwDDVLiIrVYhRORgfsiYUX5/sOvV9Ghg
	 NMGNopa+TC+kpym7UssVLMivTbm7UhptxPPap6oDi4uwfgouGTA3bTDQuIy8t1j7ut
	 ZrOCi0Vy6bUFJ24TWfpNJx0voiCHDXFgC7D3nmUzeGUsDj91KKHdyae3ZRU0LDeBhv
	 wIanGTdK47sawznoTpUQi+50wYdYpKplSzyZeE/KM0+XA9X0NL19h2eXzbdrR0PCLy
	 IaqfOF9WT49ahcqsHQq1IZvIz2z5QVKtkPIYCqmwBGsRWJR07ZkoVTD781KZkskIxO
	 HJV4fH3Z1rDsQ==
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-5c5d72fb5e6so247752a12.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041298; x=1701646098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3TPicaObXUf+CQ2/13bF4S5EM9ZMGJpI/eXjOZpsCQ=;
        b=xO+MOmxNLePo5naTMw/CGCMlLf9FVgm7+50/Nz/UbeGoMFHQUn8gMXOnltP4ALvEvb
         aUeo4WPD2EZxLCnK6yBTIrECo5kl4DLS1GaTMvK2fFN2WJnZBTaOBPfHeLY2TzWlr9B4
         KjGX3glqUO9oSPuMwRZRtVdnUDZ3HjV1uFRJvX70LJJSGXraXpQo209AtyAl1lxcuYl4
         DXFzpl6R6lq+rKVODqqv/qgeFEvCwPp9CVNa6HYxMBiNK8dW91dMn3m5nHLX5ktsm5Zt
         dGgxuHBHsiU2kSPCcNoPHRyjUPYe1fW752zksz9t6r4v52gn3JORNh7oa7C2nIaC0OJo
         pIbg==
X-Gm-Message-State: AOJu0YzRZsvWUup4MlSOcS5neXsBLH+uSL8UN2ScFvlYY6yOkvCZx4am
	nY7n3B8xfewVlsOxW3rhEKAOfHYLpd7mNLbKnkEMH5uMYw27ISITDhk68mgtRhiR8GAJzQ1UeW/
	Ry1ZdR8tPCWyCJttgDSPDxUx43hnwrx5K+16zGNw=
X-Received: by 2002:a17:902:be08:b0:1cf:747e:89c6 with SMTP id r8-20020a170902be0800b001cf747e89c6mr8786550pls.26.1701041298544;
        Sun, 26 Nov 2023 15:28:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFuQM7m8wCn6b39aPT5b9YXgOSCYAQDDWmZ8ylvHuaFNyspEtnWGrMk3kxYgR8lkzRlvz2bg==
X-Received: by 2002:a17:902:be08:b0:1cf:747e:89c6 with SMTP id r8-20020a170902be0800b001cf747e89c6mr8786540pls.26.1701041298276;
        Sun, 26 Nov 2023 15:28:18 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:28:17 -0800 (PST)
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
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 3/8] riscv: dts: starfive: Mark the JH7100 as having non-coherent DMAs
Date: Mon, 27 Nov 2023 00:27:41 +0100
Message-Id: <20231126232746.264302-4-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
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


