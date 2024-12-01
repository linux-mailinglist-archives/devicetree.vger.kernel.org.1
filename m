Return-Path: <devicetree+bounces-125837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B05159DF6D1
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27F91280C71
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA2AC1DE4DE;
	Sun,  1 Dec 2024 17:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="KX2GhOKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001301DE4CC
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075272; cv=none; b=Swowh3S2RFmJ1zd5bKVEAOIIPq+2vrqQ1qCCncdnSmvCiUqp6wXsxKfAsoQpcgGi7D+6ZBQID8C0V8jZStTR9kJu5N/K8zrFIGC0NhcLDOxAZsCXbZPNAYcQeLDNzx2s7O6rkoudGmu20hzIh7TQRKZ5AVDmYbLjC8khRnIosxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075272; c=relaxed/simple;
	bh=FRFUyZwPX4G/0Cai4GmO9ovi+nkQmDVraCIaymyOQS0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sHdtapwlcBOOV0qNJZG77870XLiVaoNmGZlVEeFdxcdfD3om3PUsZDiWT8o1XnUPWYk+sDiWvLBeHTDFICFXq2U+jVyuZ4lDZ6Mald0BKOAWdI5fBx6AJHty86HmnFel4i51KPLnZoaQfhiWohIDHK+YHENzGN/VOCnZW5TssYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=KX2GhOKQ; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa52a5641f8so503424066b.3
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075269; x=1733680069; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C+h8roym6BKL4klc060XmQbisU15KKTnjExLT+vczjQ=;
        b=KX2GhOKQ4lf0X/+8OsWJ99PqZcZXcFdEacNbnuj1R++QGZCl9SUOBwHkdLMqO9rMPP
         3THG8f2SoGnIdywHvDocSCem5wgRQOi5W1Qa2aLOo7dh0bOCnm+v7CV829I/CafU2wWE
         cr7qwEHcWyOje3ifU1Y1hM05/OyLr2VItj8FE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075269; x=1733680069;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C+h8roym6BKL4klc060XmQbisU15KKTnjExLT+vczjQ=;
        b=puL6PWriN8AZknyki+d2AO/MZlMCzU0XXmjMxKLiIso9Xli7/qCpnGcO255O6ZopF6
         +Degp5D/OIpef1RIQ5aNctPmR32bJDpj+ojWv8zE3uI/JpguDmLOBk26Bywfuy8n4rfE
         PkWGcZkzkr/grWEkfkwNKSVX6pxzd6gTnNbdBFhXWIBoQYALc/Ah4wmW9nmrCeES0Ii/
         stzaOT0CmGs+HJnFU2IhDhEu3ac2aTV5Mz38xrqXtM/krOotwjOh7U/J8HRV+6hUyaf0
         Yl1tnR4nWMZ41VFX1ijkzW1oJ63E3a9HINUc56ndl99HN5CEaR+0TM2E7kEC82dsyqPH
         CtGQ==
X-Forwarded-Encrypted: i=1; AJvYcCValdZPk39aAVsBpdMT6NgIk+rAI4V/8gziqSMG/8qHRlyF0KTEq7vUFHfGSufdNSDgC/C3XAET875Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyYQ/xxf+3iz2B4qyLJlMNfVfpD9kZe+lh1UDBc6b7n+vzKSyCh
	EzGgx40ZYaT1lGHZVBHrY8m9rfchFXKApA3A/VRp56brYsd4e/AHfTDUHwtNbVk=
X-Gm-Gg: ASbGncv++dBgwBuv6q8sj9NUOykGAxY5/hPUPRhzIrLWVGOjjZiZP/rdSzFW5P2zSA2
	6xrZiUTKXW1ahcVGA09pAIdqoszVHDi4mMfXB48UDC9XGCaawzN7rp/mkW8JUhg0k4HWlGkvXzf
	C5pBahCM5te1q7TT0w85rlfa4U6+zBp/Hz85E4aQYWB5AJ6FTd+ZzVii9L6D3VBoE1ko3/Q3CQl
	eN6Jrl2b6Yj/6gspoKpllDHhoyRrmg526f0sd6Yon2EiuztMMKpvSUcj0yuPHHgJV+9DkAkpKXp
	RA7rPVMFqvrIDqMUDmd02+8lXHsFuwnjYqU1nKyH+rgmLXjn5DyBgO4Yw1UYf+qw0/RoY6amwxu
	e5cQyQeh8ix3V06qT
X-Google-Smtp-Source: AGHT+IHcG2/XEmp2qpnejnJb7rN8m4vpml4qw4y1T/GeofPNf27UqhM/khEJJ1uq/MGoaT5KNjmbrQ==
X-Received: by 2002:a17:906:3145:b0:aa4:9ab1:196c with SMTP id a640c23a62f3a-aa580edf60bmr1451047166b.9.1733075269496;
        Sun, 01 Dec 2024 09:47:49 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:49 -0800 (PST)
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
Subject: [PATCH v4 16/18] arm64: dts: imx8mp: add PLLs to clock controller module (ccm)
Date: Sun,  1 Dec 2024 18:46:16 +0100
Message-ID: <20241201174639.742000-17-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
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

 - Added in v4

---

(no changes since v1)

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0b928e173f29..861bd4f4dced 100644
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
 				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
 						  <&clk IMX8MP_CLK_A53_CORE>,
 						  <&clk IMX8MP_CLK_NOC>,
-- 
2.43.0


