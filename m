Return-Path: <devicetree+bounces-134573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E299FDF6B
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:51:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D4E2160F72
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB1C199FC5;
	Sun, 29 Dec 2024 14:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WhoyhjJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DCE1993B7
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483847; cv=none; b=iwYzWGVEOS+S88E8tcv25wAf0i95etf4fpzfkmCoXsUV4V660oY2GWDk2dGlXGF3FVhePySsh6BrgwIzu+JU0leFM59SCV7r9PN3Bo5PRkcLLQpEYHMNYP0tMCQ9JJ1NJNsMXCv24naeFUPX3hcY4FZSd3BwK+TP3lfDDdMOyMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483847; c=relaxed/simple;
	bh=MWwhsP/1Gq2jtC+XMH/+PSmlpfJmY2R2gm9uwDR4fZI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ma3HDh3tmIY+G3fXVNHTQ9NWLJrqoWZfzXYrTmNAYsPG3WWugQJwAzYExE7KsD4V9PDJWIHChkrWodDmy6ZawNfc/WGz17KxOgbHko/zvsFi4g1hcL+qQUslScQgLASSifrhmlXjDACPbVkBFjU6hYpAEgGGuUWGAX1DLmDVRd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=WhoyhjJ8; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aab9e281bc0so1468066866b.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483843; x=1736088643; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=WhoyhjJ8Gh53xnH1VjxJ2t3s8su90wxMYsqX/2B0Vi/GhhGAX0N1ueST/hssidGLj1
         NB4EiunY140IHb7g/B7+hIJTjcR9PSiDnXJL+vSbzBGVfWh3I8SV3+5K8hyOYmUHwlN0
         s2Z9In9uyUPfmPnNSDHSgs3R7hmhxE5F1EP8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483843; x=1736088643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr8rvSiMKhhr7+g2wBjSbr4ZapMlTY5YRIRH4XPzpek=;
        b=hcmF3Q+/QMxO96X1Noq+vQCsIs1qQ/7tRM3rE3vEGo2TUuF7mYcVhIQKmOaD/8N5YK
         5NLgTe4h1M8q5rJUIcueLEWB1ps8sbZwHDeHffTL42R5R0rA6V0kbNsFURiBSpRCOkqL
         55WHnmmjGBFxbq4yv3NGAq00YlX+gD7qjPEkZ1rvL0HaPm5r5cYcKjrFK0T2W9p3x6hC
         nS3TGIUOoIURlAamdMs2Ddt2DCFjR6MOJMPAkwvNCVox5ODPlfrE0VQuYPSUlHNGpzMr
         yUuSvElXs69uICVO/kZ7nQBRoQDm4Uy91PcgTzFmPL3Sno9wXT2CozyTTA4Y8kbXVnmw
         Zv3A==
X-Forwarded-Encrypted: i=1; AJvYcCXhTl1rbcMreKrhFv5lS0r8UgRq7FzzAPtLVW6TL4UxhgPloTk01vH2/Pz4uHdwrDne4P3+1oDMFU6i@vger.kernel.org
X-Gm-Message-State: AOJu0YwLZqdaCGhMRSvq1B+JI7mNi7p3IYids2lbDJPU1aG7tAPXn++F
	UO1zAky4tznysoA6R4QwA7Th1NrrMDWrdBBCSziCLKMm8y/Yq4EvVDZbpX6SJbw=
X-Gm-Gg: ASbGncv/jo1a7OqUtf0dKIf2ditl6SUHG37q3VNuxmSZAGiTbcJ1JuD0f5TR8lyELJv
	RqdVOK2GaU/s+843mAepPmUk0rWtSeRBMJqdjxKT86pgdfT9K7JExCF/MniUyoyd2TsN1TxM+IG
	zXB/lUgE8EtMwsNNpmOW+ite8uabOU5ijCMgC6HLOibLYdz0S9r/ofc3IgfMUYw24JfwTp0WzrM
	iNOR0/qGPkf0/Rvyvyktz7pRS9gFvth9VxvaDyXqW/ZgbVfMjTOhufW9aV142Fgo93H2nGoi22s
	/jdpGSYkroOkff7DtluDWg==
X-Google-Smtp-Source: AGHT+IFDrY6B7oSvA67ot9ukQjCg8UM4FQr4YLiQDwamuPsObDrBp+CwuA86CFPPQhHpy2R/frIabw==
X-Received: by 2002:a17:907:d9f:b0:aa6:9ee3:e51f with SMTP id a640c23a62f3a-aac334e377amr3135317166b.41.1735483843575;
        Sun, 29 Dec 2024 06:50:43 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:43 -0800 (PST)
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
Subject: [PATCH v8 07/18] arm64: dts: imx8mn: add anatop clocks
Date: Sun, 29 Dec 2024 15:49:31 +0100
Message-ID: <20241229145027.3984542-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a5f9cfb46e5d..49be492b5687 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -606,6 +606,8 @@ anatop: clock-controller@30360000 {
 				compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop";
 				reg = <0x30360000 0x10000>;
 				#clock-cells = <1>;
+				clocks = <&osc_32k>, <&osc_24m>;
+				clock-names = "osc_32k", "osc_24m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


