Return-Path: <devicetree+bounces-125836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 231799DF6CF
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:50:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC60A281774
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6127A1DE3C4;
	Sun,  1 Dec 2024 17:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gwhF5jqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEA21DE3AF
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075269; cv=none; b=OyzL3YhbdHU/MrImQAbyueMK8a8IFkCW7FzsCLzeIlEYY8I5OiZUdFUguMukwt16rVWfdfv/RqzPkxN9AvDLbEBDXTVJ8wV2/4cpQsbOE7zOk3wVGEmWdeNCwyNs5+LeDZywcRLgcRRXK1HKOTrVnrM0XM1mDAcMJHMz6Qj90pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075269; c=relaxed/simple;
	bh=w6n4rfeNbc+MoInkCIZ53r/EnS7ZauG85YmurhB5mWg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MZHdYSwz5JMq9PhfqAa4dVp3HAtE9usEeZMp7eAzzvyGve+GDXsiRnR/yMp4Gb03i16qp9H2U9YmGZWC/VrA8YD4p4QdQmt4fqawPVTckHgE+LGTe1gsUBtjRFvPYwUugAULScs4kYng+gDuwpedzW7HEzqX/qvWJOe5uygh2SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gwhF5jqa; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa51b8c5f4dso514543566b.2
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075266; x=1733680066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxJsjMJwTSMPDYd3KHgHpJeZxzAqqmLbUkKQAeNGZLg=;
        b=gwhF5jqaRJNoB4BTXJ1xo4k4vuoM0u7pzr+yJs0GxaLlpog5a6RteWN3e6CIjuT/Iq
         XZYqoIMKJiKJ3g+UDj9xnzmN19WxEZcN3OP3OupYc6+LUfurNURc5A3cwbFIJutqChuO
         rPyBCzacKON3f340en7/D7If5RnQ4SiqDoIek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075266; x=1733680066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yxJsjMJwTSMPDYd3KHgHpJeZxzAqqmLbUkKQAeNGZLg=;
        b=E18caNUOUyajqI0qC6lKmTqqrC6ylvRXS2qj9MsYS5S2YLr1SW81CDt8BEWmM6Rw9E
         QDXd0Y3B1OJcpwpRfgirJ3eoz07f/3Hjo+gJ897AbI5sxbojFLvQD7sXIalmEfq0vA56
         eoiPaBPuZjH9ICSjs3mqQWb1db6W+1yXvt0x9UZe60KiIMMtO55EQHHMVP0viW85/h51
         SbHQbKn7LWUwTSlS5eHAqRG7X5txOaG++cT/SNWL1UGrUvh6HFNuehZEnjs5/dopOcLG
         PpNAnklfYivGx5yNgfWFgrK2Icwq0q/q8URC21dyUtHzj+jbdrmGaKudzO+I3lCQVCQQ
         YmbA==
X-Forwarded-Encrypted: i=1; AJvYcCWy3V0LF38enJL1bfUGDJE38ihW8IAVkrDkIL1Y9JLXiBkI6V0NYuQiaW8c3LpedAukeYqvK0szQMS5@vger.kernel.org
X-Gm-Message-State: AOJu0YxKd2encU1z3gj/rzH+kqW97IAt1zJnsjsSbDPTuarvLp6pTc2C
	uJTlX0/s+4S8Lyf+VLP0X6hIKobnX1cwmeY+oedWpHwX2ruG02rY5Y434EBuuDk=
X-Gm-Gg: ASbGnctF+VU3UyaN6Z0xQ+zbBP38WniXMT8cmsnIK9eAfkpZYcfWm7mtTdHKMlkGjuz
	NrDIr/H9ur+E+WNQX+jD6IdHAdeMIUgJX2vDaUdjOtM6ox4382Lo/fxU1qRXVYcvjvK8R1pXEba
	CU5NmR+yiytpWCF9pOymVFPXQp89T03vW6OWx4evRiT257QwdOoe1g5OnUUUyzHOhbiaNBNKpdF
	eg695nDvD164zf0+7PHeb60Yrw9hBJZlU4TgjQWkFvziyMSfiw/ANyLjbV1a+AFFubVL5/K3xAv
	2fRyLNYpiCPb5feA5frExef5uvoJ3412RTa725n6Of/IdNinuKUp09klT1cV2AMuLX1ctwQ/uew
	GDanw6VJ8INg4viea
X-Google-Smtp-Source: AGHT+IEMnDbFieUd095y2eErzlydo05nTceNj0JCkVkJZiYgYFWL+9eesGwhsPTyw1VD3PBNGdcTHA==
X-Received: by 2002:a17:906:5a56:b0:aa5:50b6:a612 with SMTP id a640c23a62f3a-aa581093a27mr1555171566b.61.1733075265912;
        Sun, 01 Dec 2024 09:47:45 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:45 -0800 (PST)
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
Subject: [PATCH v4 15/18] arm64: dts: imx8mn: add PLLs to clock controller module (ccm)
Date: Sun,  1 Dec 2024 18:46:15 +0100
Message-ID: <20241201174639.742000-16-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 49be492b5687..aaa179784717 100644
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
 				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
 						<&clk IMX8MN_CLK_A53_CORE>,
 						<&clk IMX8MN_CLK_NOC>,
-- 
2.43.0


