Return-Path: <devicetree+bounces-134421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C459FD64C
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 460893A20BE
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D99E1FA27C;
	Fri, 27 Dec 2024 16:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YQ9C+lWP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2771FA170
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318679; cv=none; b=WO10pD2zAHG8FO9LzpfzcGgmb7++UHtfZbVxceJ2UBWR5ucRUJBDLsBBR5xt9eKLJDLJf9gV3JI3ateyGejMoPc7i7YnY4hR+YmTnazThNjveU/JyMCexiCPAx7RVJESJ2OfXHnoM47h+PTnL8kM9LXVPo6r1nY/89r+zpMFxS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318679; c=relaxed/simple;
	bh=GQfdS0kr5E8nwdLPiF4Pmvz7xsX6Pr29PRtsziZLSbs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uP0twaz5kV2/+kDk0DoqnrA68dD2+PSMwAPyZsaHecz2J+dnmKxuCWmcwcZGXRMnhqNIx/t2GCqiRphA8b19AmHipGqLEO2MT+hRH937OBiOub/jqg2hod9GrS0XXCm2YriGCNRrtRDlsqvacnO/YP+W/j5Q1ShDeWHCNx0gzVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YQ9C+lWP; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa692211331so1406933666b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318676; x=1735923476; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8SU2g1cyJY/YhurmsY4xoxi+5SPo4QoddhIipRwE9k=;
        b=YQ9C+lWPU0eM/JA5CP75DlRd8jOSUFq3D5uhyWHTuU2uf/ZJ+4H7KFe/tcjIMLW9iY
         0+W4YK7paZBtPLTGic9lNgbuJL+82GaXt3AruMYrmbXf2Au9auTXeNdoMyhxIS84RZhQ
         /UquF316VqNwysK3/mChO2xhGrImMaAqX4mXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318676; x=1735923476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y8SU2g1cyJY/YhurmsY4xoxi+5SPo4QoddhIipRwE9k=;
        b=VCM80o5W7FFGTjMsFgZoO8gqLQgFcggKaW1D2GkloUCG4uDw90p3Z+/3kj/0PTilwm
         2MWEHxSIiEXOVQx8Po6KlcQCjRANZnZAQcaPbvvjpuSD/5b3wH6ye4WsWATiEKu7qD2T
         Oq64PV09ja1DzJIAhnn7vpm/bADsKAJc1ddTYOmugdxFo7vB2GVtoxrHVthOSMiY/TO8
         u2eLPx31a9gSKqMpXkEUUa96ERuZUUuip0aotv4/Oi73gxWRxviSj1kYC3tHLHuCskgA
         /HQ8gwNYpNfT+CiC5CnQR529t6ZN81EoG1f7kxi5r78fZwk80K6Vnb2w96csU1TTn4Q2
         MbxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbEsGvqtDvIk4h0a8MufwyLZO1WnHWXAMUJPip6TrOxEPSstL1YRoFsLzA0g9i9fEFQ+0pxd/+/Y1Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxM1L0/RwNsXeF0KvJbghznwj3PsSR83/KPHyD9TijiLDYca80P
	xIMZ7LYW3/JBy55vT68l1eLt65vkFCie8FhJFJEen0vPKdlJcqFZymW/WYlw6f8=
X-Gm-Gg: ASbGncuvmhNKZZGppGPr3rsdxM0aCZAwvZyKmwHli5NnTdVAsd4ukdEdWrzxUFKR05R
	V5BEVKnDGNn2dZCpuMTSrEgl7RkRvgG8TTtnpKVztRoQCHsecphWrtAbCimaN6d7kMarZFhCZ5x
	yMCoVuC4vIyJJRhJYqvrELKibdmf7XbcxtcqnD8BzP1Pr+01Lz7q284U44KTsjD3QcXx2DC6zQj
	6Hsb6oN4SiJnDCjDAdvPKtCfLEUNYhmOw3pEzifN3977xs5l/LnAe4Rz/aW3oFAZfhjrQhqAHTA
	u6L+ez/oJqALmu8D82wQVQ==
X-Google-Smtp-Source: AGHT+IH0lWPZ7CSr63+Pe3YNPdP7iCVlRpFAQ9r8ey6JfEjfuzqQLJzkM3y+9Wa7RLtt+3lup5Nlpg==
X-Received: by 2002:a17:907:969e:b0:aa6:938a:3c40 with SMTP id a640c23a62f3a-aac08228246mr2206907566b.24.1735318675830;
        Fri, 27 Dec 2024 08:57:55 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:55 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 20/23] arm64: dts: imx8mp: add PLLs to clock controller module (CCM)
Date: Fri, 27 Dec 2024 17:56:23 +0100
Message-ID: <20241227165719.3902388-21-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the PLLs generated by anatop to the clock list of the Clock
Controller Module (CCM) node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index a1872b5d6e2e..ccf990a63372 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -751,9 +751,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MP_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MP_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				fsl,anatop = <&anatop>;
 				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
 						  <&clk IMX8MP_CLK_A53_CORE>,
-- 
2.43.0


