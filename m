Return-Path: <devicetree+bounces-249574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62168CDCF1D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:34:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A439830302DB
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD80132937A;
	Wed, 24 Dec 2025 17:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vnu1vLWE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B371B32721C
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766597616; cv=none; b=WiwOUa187/mhd0pt8jHKpdt7x+vddupV19dOtdTh3izDRZToib+ftFzktaH+QVrDrrhs32CfSkQ9B0OlM1cephNSaXDUoDcfGrl0Db8vvfSl11MfBmI+A/Nzmo/QdxHOBbAxpp7X5sN8o+/SMgPFDpuwI0jEX0v1j84H0qHk1Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766597616; c=relaxed/simple;
	bh=6vJ4bSi0ImRGMDZTqpjHFf3uaCfNse/v4LbdHVPVZFY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hSItwxjnxJoRrrrtKHBys9FI/HELewAaRWbS6h7kv+Qj6KIT7S7bRLZql6XfwVgGkYKqLr1XVzKseRapujG43HaWfE06pfvVlaHEpqaVVfDTJabUqwobe4tX93VYs+bFnvt52IkPE/mxxPkKORRRNtvA7GZJXMRdVqYDYu3AfuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vnu1vLWE; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42fb5810d39so3252626f8f.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766597613; x=1767202413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g1ZDegOep1AFZEtY2dKjdTcrce0s5KYHXiDsqOzuxHw=;
        b=Vnu1vLWEEOd0tOTyA9/A4fhNC2JrM4Cyfbt7/B9HinNImPDAt4kKiUe2CZqIOGTyB+
         IF1xoXvmehVVu7G4Bme+Ofl3WWkHuZ/G2nFStzkJjybApz6uaxUu2MCpJ4UqJn40zpnY
         XKQ879k89tAtSTFutWM8qar005eoyRnVGUsTdmkNhKyS4X2Zi49L/1YzwI6BFeLEZu/z
         IHih35JdDt7qZBeSGjZTCPotXZjnzZ2kd3U+Ol9LRsJSVzmibRfR2vKQ77hC/pxmTmc4
         w0iKCLLM3bGcOeqpFcCii1vYyhX4zYLYHcHX5PiPNm4d33g/UsxMa1xQS+6WLy6gIH83
         lSZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766597613; x=1767202413;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g1ZDegOep1AFZEtY2dKjdTcrce0s5KYHXiDsqOzuxHw=;
        b=OzI4+eCJl4Qgf1tVtPE+U4sjPozsS0WMpYo1FvBvOyZN8ndYp9JiGbpgADLWsk5+1N
         kiEkl0oK1+BrdivK7PxV3m05wPF0G2yO6xnPgfmDTG9jTAxkq1FHWhpWda5hlzOWh971
         d+nEp7xeyUj2Gm2nNhm4BBPLYzKvdl5nR2YbiGwvHpmIAO2XIWr/KeaYl533yceg2kse
         q/zC/sPIMPfCmusP+9lB0QwKrAqYB5u64uLU1U/A05k5/nFgXl1FLfquL3U07rt/dpD2
         C6346w9KdmTxG7JaU0eTzM+VY/6sDGiL+ytJIoUeakoQn93FWQBCy4nRHuWDjy1LfMWp
         wiDg==
X-Forwarded-Encrypted: i=1; AJvYcCXf2/fFzzZ6vzFOwYqrX+GJ7ksjarr4OSajl6WLGaKrxcxtMhvR55jk7wdyDLbqAdec/6RtbdYIh7va@vger.kernel.org
X-Gm-Message-State: AOJu0YyWX8iAwcXaXe2owG1dAdAX+QV586/vqyZGkBpmu2rOPn729zrw
	ppDJRTBq3ya05yZkvbojbLd60LXi1Uxc+RHaOWUYcwnX9g4BVPHqSYg8
X-Gm-Gg: AY/fxX67FNZ+eYtXAXetwr8Y5MZOF6Xspvt4CVZUAcMGvM3WTZXb4lfb32iEbEJoyPt
	69N9WQ/0SMl0hjJT7eazrUiFLkWSL13QSeAcM280eepvUwK4Mrm/b2NEnX1+s4m50f8y1jA99A+
	yklMgPw3OYKk+2gntS2xvmUY9Xcpy36NF3Dk+Zc/Zydro4v00R357t10r86QQPml5+ITwRH0u8Q
	7okrshe/9Wtm6zKBjkVLFutMmaFYA5a1Zt5Cw0620dQa1C5zw/KsSSqSrPG8Ve9XDlW5D1ZwYFo
	Nowe+Mh365zbTDdN2lSFfg2Ngu4foiSmHvcJtuKX2t7pUHuyCiyEn8XxValGk2VUWYeH137v7aB
	ge/JAwt9Nxc8sH9hGImgH4IUlHfbYcykRwN2kPFyL8txmLbpSuMn/tm50+VxrY+4as39c3lPNA3
	j3aIzXunyXtzCDJBloD/k8xbMigM4ZIPamwSI6QoXGPXSgzqvFM9A2qIk6LCIz0Z1yfkwG2QT9H
	uV6qcImqG6P4tq8tABkOgYH
X-Google-Smtp-Source: AGHT+IGgxQz0bDh3vZdYMDbGeuG8CoFcnXx+kUANoD7XqIVecnIjPJrn1+svSQY6szlpP60Yp1i0Kw==
X-Received: by 2002:a05:6000:4202:b0:431:104:6dc2 with SMTP id ffacd0b85a97d-4324e4c68a5mr17212620f8f.8.1766597612886;
        Wed, 24 Dec 2025 09:33:32 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1af20sm33237553f8f.2.2025.12.24.09.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:33:32 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/4] can: rcar_canfd: Add RZ/T2H support
Date: Wed, 24 Dec 2025 17:33:24 +0000
Message-ID: <20251224173324.3393675-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224173324.3393675-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224173324.3393675-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The CAN-FD IP on the RZ/T2H SoC is similar to R-Car Gen4, but differs in
the AFLPN and CFTML bits and supports two channels with eight interrupts.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/net/can/rcar/rcar_canfd.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/can/rcar/rcar_canfd.c b/drivers/net/can/rcar/rcar_canfd.c
index 7895e1fdea1c..3d1b595eb3eb 100644
--- a/drivers/net/can/rcar/rcar_canfd.c
+++ b/drivers/net/can/rcar/rcar_canfd.c
@@ -669,6 +669,23 @@ static const struct rcar_canfd_hw_info r9a09g047_hw_info = {
 	.external_clk = 0,
 };
 
+static const struct rcar_canfd_hw_info r9a09g077_hw_info = {
+	.nom_bittiming = &rcar_canfd_gen4_nom_bittiming_const,
+	.data_bittiming = &rcar_canfd_gen4_data_bittiming_const,
+	.tdc_const = &rcar_canfd_gen4_tdc_const,
+	.regs = &rcar_gen4_regs,
+	.sh = &rcar_gen4_shift_data,
+	.rnc_field_width = 16,
+	.max_aflpn = 15,
+	.max_cftml = 31,
+	.max_channels = 2,
+	.postdiv = 1,
+	.multi_channel_irqs = 1,
+	.ch_interface_mode = 1,
+	.shared_can_regs = 1,
+	.external_clk = 1,
+};
+
 /* Helper functions */
 static inline void rcar_canfd_update(u32 mask, u32 val, u32 __iomem *reg)
 {
@@ -2333,6 +2350,7 @@ static DEFINE_SIMPLE_DEV_PM_OPS(rcar_canfd_pm_ops, rcar_canfd_suspend,
 static const __maybe_unused struct of_device_id rcar_canfd_of_table[] = {
 	{ .compatible = "renesas,r8a779a0-canfd", .data = &rcar_gen4_hw_info },
 	{ .compatible = "renesas,r9a09g047-canfd", .data = &r9a09g047_hw_info },
+	{ .compatible = "renesas,r9a09g077-canfd", .data = &r9a09g077_hw_info },
 	{ .compatible = "renesas,rcar-gen3-canfd", .data = &rcar_gen3_hw_info },
 	{ .compatible = "renesas,rcar-gen4-canfd", .data = &rcar_gen4_hw_info },
 	{ .compatible = "renesas,rzg2l-canfd", .data = &rzg2l_hw_info },
-- 
2.52.0


