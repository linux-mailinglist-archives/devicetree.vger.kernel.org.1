Return-Path: <devicetree+bounces-70785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 959688D4740
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 10:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AA661F235F8
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 08:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F3CE1761A5;
	Thu, 30 May 2024 08:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I64wiQ3U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FB2176193
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 08:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717058143; cv=none; b=CAfV/ZB338l4hOIPwQlDIlJ7hIiXT8IbTsfClvhD4QH4EQV7KuuH040TsA8AfpSph+Uh98ozLQ80wmrsCOPOlQ+q8T8J2k4Zr72Kze3aen+PPT0ZtiJ6CWUdbK8o0pLIGJQVvbzEAl5H3CHJXv3hdumFC5MZTA9clXvbS4ZP7h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717058143; c=relaxed/simple;
	bh=3sS+9gSsossoY+rGrRHB96KNj3HXC+IUQnbd1IFwUWo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fWv4ycFV7vIMCUtG3cO/CA2j+c0sEb7Kqvxl2F6J1JD2/5Dq7M43ADIhdhFs/iPVtcZxuVjd26+DS8kxmWJ0ESdoyEZQzBbjdkiVfyAfFGT90jIGRyR2jfCm2h6K9wxfik4H3QYQQVBjbzPuCCrou+byPMOINUYVqNIAytCve7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=I64wiQ3U; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-68195b58daeso504376a12.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 01:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717058141; x=1717662941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3dPYP7w2xcwwD4ezxBwzChfzLxfVatZgNqWhWYFewg=;
        b=I64wiQ3Ub+DvAtsc0QmifTY54MOf3Tm8Q8CG4wE3gJARTBLhbTMb0MU65Rg52+OHDB
         BkrqLi07nIiPIDvle4VjDFDyrhhmGb7PoUJXZueHZyQngQh280nL1dG1svOKqKjC9K5/
         qIyPxBruLj61waIabnYZlKTUG3PELMCspqlus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717058141; x=1717662941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P3dPYP7w2xcwwD4ezxBwzChfzLxfVatZgNqWhWYFewg=;
        b=nYYgHjlZBSPR9NPbQSHdMyRq6hr9QPps/O7lj1xtw3Tp6erm4Aiayl0CAMrWGgsY3s
         KmSohDLuMxkJC7g2nvxxsCnF70mRL7t/IY+tGmTkiceNUiiDWHeVziF8vEyICmCDvKfy
         OFulRKdSDwCGwaDP3kVH0vnKVMP8FgXq999/VHbuUhKJaF4sWQM2xUmtpv+PydYq5mLp
         tuKgMnSeMT6ksw9RbYAv0A2NI/Yh2Jrbl3lgopkeYf1BI13pmzTK3mQg6xqhuUEAzEvp
         OvKOLWVkrIc8CuV59oibX0Y/UKjoqAIOCdSv+GBXtWZwF7oEszj6togp32rF6AUIKkIT
         FeTw==
X-Forwarded-Encrypted: i=1; AJvYcCV4ePpgS7z524EMHx77MQLZtBu6jgDrOH1fcW0+Tjh9WBntjVxPjySuLx0RVMLJOCB33IggdWLItflw/U3htIvbF61pbTSvn/PtGA==
X-Gm-Message-State: AOJu0YyB8ItT+Ie3NJSwcj9CYyDJ6fmEqoXBhRQB/mHsY00nTMl5ihr0
	fmVO090ogAIGC+TPJEmilRPuAv86AN3YiFY4uysyz+8Sm8sUUM4Pco2TMDL0yQ==
X-Google-Smtp-Source: AGHT+IFl9n7DktKEcpEJ4WGQz7AcjFouxFiRzMPk6dDKBcDqPpXqbxbt5Utw0hXKMF4XUXofIeg46w==
X-Received: by 2002:a05:6a21:99a3:b0:1b1:ec17:e59c with SMTP id adf61e73a8af0-1b264618a95mr1679425637.61.1717058141165;
        Thu, 30 May 2024 01:35:41 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:65f0:63a9:90bb:50b8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f617390fe7sm10950635ad.146.2024.05.30.01.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 01:35:40 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Frank Binns <frank.binns@imgtec.com>,
	Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: mediatek: mt8173: Add GPU device nodes
Date: Thu, 30 May 2024 16:35:05 +0800
Message-ID: <20240530083513.4135052-7-wenst@chromium.org>
X-Mailer: git-send-email 2.45.1.288.g0e0cd299f1-goog
In-Reply-To: <20240530083513.4135052-1-wenst@chromium.org>
References: <20240530083513.4135052-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MediaTek MT8173 comes with a PowerVR Rogue GX6250, which is part
of the Series6XT, another variation of the Rogue family of GPUs.

On top of the GPU is a glue layer that handles some clock and power
signals.

Add device nodes for both.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 136b28f80cc2..3d7b9cc20a16 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -993,6 +993,30 @@ u2port1: usb-phy@11291000 {
 			};
 		};
 
+		gpu: gpu@13000000 {
+			compatible = "mediatek,mt8173-gpu", "img,powervr-6xt";
+			reg = <0 0x13000000 0 0x10000>;
+			interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&mfgtop CLK_MFG_G3D>,
+				 <&mfgtop CLK_MFG_MEM>,
+				 <&mfgtop CLK_MFG_AXI>;
+			clock-names = "core", "mem", "sys";
+			power-domains = <&mfgtop>;
+		};
+
+		mfgtop: clock-controller@13fff000 {
+			compatible = "mediatek,mt8173-mfgtop";
+			reg = <0 0x13fff000 0 0x1000>;
+			clocks = <&topckgen CLK_TOP_AXI_MFG_IN_SEL>,
+				 <&topckgen CLK_TOP_MEM_MFG_IN_SEL>,
+				 <&topckgen CLK_TOP_MFG_SEL>,
+				 <&clk26m>;
+			clock-names = "sys", "mem", "core", "clk26m";
+			power-domains = <&spm MT8173_POWER_DOMAIN_MFG>;
+			#clock-cells = <1>;
+			#power-domain-cells = <0>;
+		};
+
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8173-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
-- 
2.45.1.288.g0e0cd299f1-goog


