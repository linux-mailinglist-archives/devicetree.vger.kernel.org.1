Return-Path: <devicetree+bounces-134420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9309FD648
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10DE83A31DF
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72391FA17C;
	Fri, 27 Dec 2024 16:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="h/I3p7AA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FCD1FA15B
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318677; cv=none; b=imzLc8IQBxEdFfwdYD3acCZHYziAPUqv4lTjLrs40ZkapMeniJVgGJvGVaK3M5NkFB/aQCj5Desq813s6dKXJN7TbNf1714gKjhlnLQi+jtyvEvMBpw6nCmkkqwyl7ms36a1AVFwgi7EQyRoMVYl/YoWaBimu1uOGNr8vCbNl3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318677; c=relaxed/simple;
	bh=WPI2dIsyUP0LxzdhYGphrf43j1SUNHG0CnoAlIBpkLQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ml/+Hgp9eN+8fDnrkViyaXVLv9NEtg2YwE7K5bNBrtntNnoun3OdOUyMsfZf2ypUOPbiUoF2TkAIQtJer2G1WA1WHe1JH2ZJtCih01NpP40vPF7lRSLrZbPQ8YrNIhJS29JAooosZhb67zGdd4KhjcyB8JKMLp/8ikfjnRNuLSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=h/I3p7AA; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aaee0b309adso611636866b.3
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318674; x=1735923474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rq1VSi4sJPfcoFKtG/h420vGHkyV2FuPufBKEuYsW+8=;
        b=h/I3p7AAvERpOK7GXqcWjFqcstgLpmNOa/OXt3OZofKlvMloKEgBrXkvaHYprBkc4B
         dwTet/cIBW1hn01UJxVUumlZvCKXqFfDZMlDd82H6NcOCSKFJ9kCb66r10qDT8sIHFOC
         /Qn+k2RMi9grRT4smPaUWnCuoJsuM7qMhN98k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318674; x=1735923474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rq1VSi4sJPfcoFKtG/h420vGHkyV2FuPufBKEuYsW+8=;
        b=JhOedRw424qy4YPJUy7qlvptYAXFsjoXBZxc+jjSuEWuLIO5qH0pEUdAw9fjjYELLP
         Nehw9nkqCqd9hwfV6391W+xNE8gI/sCzTe7rUANXf6Sij1plFITL3HZRzsJYOJ0ehPiT
         757gW8JrYmlBCXDIz+GQiu2eTFyIX791S3fzCw56mWzALak8Pq7saBb2tY4U3G90yblG
         X2oTZIkKFzXxQ0VmRayEsk5Hko2j8pykl2S88c8NxZUWcVa5R2dc/8eSTXxV2ELEsxF2
         Ckeus7v1l/rCbCR1ErCiDZqfhgSDyxB3tKdzwtZ74ZSDhsI+mtTVygUyNO2JQW2V22f2
         saiw==
X-Forwarded-Encrypted: i=1; AJvYcCWGJYyjkyysbmzk9TPBtS9y9WVtOBII2+hHOteRZfIm2HCKWYxogW4BkzarRvhKPy3cxcfXlVn3C1zg@vger.kernel.org
X-Gm-Message-State: AOJu0YyI/icVSdx/oRxSeY4BHMmEI9sDGj/x6BfPnc+wcpeHVwy3ohfe
	oOiFBtO517cAIAqpDdmH9gt0LlEaFhUL/9f1ElZ9qFw0pjxno9sllHPbvpVdw8Q=
X-Gm-Gg: ASbGnctd+BcceojJYxYvKqPkwF7QCJlaecYyU7Cc/7YammbrBIKRIJ8A/l5h7vsmLIi
	dLlqg3sLFjdyNruFUnX5JLuGinNWCh4jeCl9wLlrlPObZ1XjBLRjcScHkbqM+u/H9D2/JZt9bpo
	FgoxZPKVNUbwOY+K7LJ/jVuHxZJvNmdmCdT4NyNcaxRv+B6nR7jiI8W0X/RLNjFE3wuDCv8cBYI
	XHat1nc1ij0Bhr9ZwrynyoCxqtK8/uMilavSTHCI17TKZYvqXCvHddd7jaOxqGw7ZUdDWZm3WRu
	LsWoDaANlwHmgH7QbfRtjw==
X-Google-Smtp-Source: AGHT+IE7j4dDMSJzj4YF9TTof8Zod66BxHTVWnQ8MmtOChqL0trQDynsgYUTS5unrBlBn2AwqqLf3w==
X-Received: by 2002:a17:907:940c:b0:aa6:82ea:69d6 with SMTP id a640c23a62f3a-aac2ad9e63dmr3011790766b.18.1735318674459;
        Fri, 27 Dec 2024 08:57:54 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:54 -0800 (PST)
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
Subject: [PATCH v7 19/23] arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
Date: Fri, 27 Dec 2024 17:56:22 +0100
Message-ID: <20241227165719.3902388-20-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 68efa77535cb..ef25c4a655ed 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -643,9 +643,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MN_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				fsl,anatop = <&anatop>;
 				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
 						<&clk IMX8MN_CLK_A53_CORE>,
-- 
2.43.0


