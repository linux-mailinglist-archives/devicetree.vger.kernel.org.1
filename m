Return-Path: <devicetree+bounces-255131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC237D1FF06
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A11D63097091
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FF12D4B68;
	Wed, 14 Jan 2026 15:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Br6vZf8I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E233195F6
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768405554; cv=none; b=dMqZALWA/CN85cOzpi1oPAPDM+5nAvGWqYCQeG29ACBCmPuR9ANWON63ubNjwKTb7lSnEcpozXwphVX/2u3ERuVo/EA9hwCxEYyP7P1NIax0MCXKrA7etbrZ0TicRVUFVleMTl4kbcmsiv3N97BshOKU6aN0kGBOnilVElLZbac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768405554; c=relaxed/simple;
	bh=FOL5X+99qWunsCTeGM07ATFHOMYT6GR93IxdA7aRrUs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rVe6uqqkUxoBHUeGTvBwoWTK8/0YjZJqQvDFDHAkk26vVUqKkeHYytq7VV18QjJQBonNYEQ6tEMO3xdoTfMhRszx3Y0iMlT9cGrW09lORQTJn+txGIGEOtD7Muv/Z+qyY/6q1/6wcHOUEgFP8sSR3qYcetwSG47DREou1z72BKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Br6vZf8I; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47ed9b04365so14088425e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768405533; x=1769010333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HSodyynn8rwGOKc+y/IlQ2JsCp706/pukP4Yc6NiJMc=;
        b=Br6vZf8IrU7WaigK6h/fBAeSflsFuiFAzrkG/eNBVIYCNOCigexS+WeBAX6f3vnp28
         DykdxeI/4iKz97f/zr347YzJKrtXabcISGJuZWHFBLcHj2NMepYp1RuvVeTsGdog4fpA
         CWe3avU11Mt0q8gTHiCAqlfvNsPZ+Jb94AC82I2GUSc62wuIxQ6OL7Mvi2BPfkZ0dOSr
         JQMP1//ZGBzCsd65zvcdpRdY9BAlzVcV8zjWUuc92l26DHr/EQZMI1pEA4dp5ee3FL8/
         hpsNUX1OR+hnsGcJMPGtIrb8tbBuWpCfkbq8iDbK+HMNhl0yHzoPqp4LnkBDJ05dfwoi
         AAJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768405533; x=1769010333;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HSodyynn8rwGOKc+y/IlQ2JsCp706/pukP4Yc6NiJMc=;
        b=UW0slNoB7AlvvjiR9OUylN2U5tbl8M1IZ78Snhsh2ozbKfuoHz3OjkZXEWsriC5txU
         w78C9fgXVJH4lSDHB8toB9hriHrVBr1cke0frNggBUViSVxgCjepbesF4bE3fGNVjJzh
         7HFdWenunPFo5brksjJwl1zY+TwaZMY3XfqbCLfnFn/wxZtK9BVf448BWuHrPy5qno3F
         aaLPL32KtPZ/zjUVaiPbY3Z8CI1XQlp1U4xxy74/N5ILCB4967VEuIm7ZAE9IvMjYisr
         oRG8IBabo8YNkLhwT3zi7gKhRJv3eEFuo52vdKi/pQmzyL+kTHELrcl5RO2VUNfeTB1p
         RwQQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+grzkcXin4cigtmAltFS27FEL4VnavqoimX0LG9/K8tCukwm077fexZIpl0tDJjTjYKRutL8VZWyF@vger.kernel.org
X-Gm-Message-State: AOJu0YxFguNERUalqJOnaRy4g5nddx/FZWnTxkN30r4UBAljboNNYXVf
	g1qlJ5Xy83Pti+lPSlNx78jneGosvbSbLiBnmCRonOj1T6Gs6OVKMpTo
X-Gm-Gg: AY/fxX5hMc3L/02x8XguTI1QIYoJ/qbri2OCsw68/aYQJw4NsV+jJ0eltLrcWrEvJNG
	2/foITPXvp6ICiNxLUKPzUwNbtpmvYTZjXPAsoNOMTvl89VL+WPej+M6Hsihv7qO+eT4A+MukGu
	jifrT9ntVu2gLnUyi2ksmmPXvKKgX9fJwKq1nPYDNTqwQEbwAU+0Y45AG6EiB9eBifHeutjfuAq
	whfF8ecMZtka6R2H7KCnPOACzj6hKWhPbavum5feOuI1njS0Dm24/678M6RbZR3ervpwiuGR2hA
	U/2pe1YASRAhmQ6Tj8tbTCwL2mBSxTtjEC2RnqoRoEFtn0XN3I1MKhzfWx5O1C0dqcaLpohhDft
	ywqcE14WvGDGWuJGcmcLpb6+KK1rCeImizFrC6qQ7TZrViIruqh9IJZu1kXef7uYv4Xuyd5FwHh
	LL/yYFOGjyijjN0s339AuPloZ9w+Ygb/LOj3dCGFC+3RNKxnbpybQg3jNox0VK7UYqiIB5C3Z3n
	H74zQNgiPLa0tMsFIWLvuaN
X-Received: by 2002:a05:600c:8b0e:b0:477:7af8:c8ad with SMTP id 5b1f17b1804b1-47ee3371b93mr40781275e9.31.1768405532616;
        Wed, 14 Jan 2026 07:45:32 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:7f20:df14:ac2b:3d74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee544387fsm33867105e9.0.2026.01.14.07.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:45:31 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v4 4/4] can: rcar_canfd: Add RZ/T2H support
Date: Wed, 14 Jan 2026 15:45:25 +0000
Message-ID: <20260114154525.3169992-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260114154525.3169992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260114154525.3169992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v3->v4:
- No changes made.

v2->v3:
- Added Reviewed-by tag.

v1->v2:
- No changes made.
---
 drivers/net/can/rcar/rcar_canfd.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/can/rcar/rcar_canfd.c b/drivers/net/can/rcar/rcar_canfd.c
index 4a653d8978ba..eaf8cac78038 100644
--- a/drivers/net/can/rcar/rcar_canfd.c
+++ b/drivers/net/can/rcar/rcar_canfd.c
@@ -670,6 +670,23 @@ static const struct rcar_canfd_hw_info r9a09g047_hw_info = {
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
@@ -2345,6 +2362,7 @@ static DEFINE_SIMPLE_DEV_PM_OPS(rcar_canfd_pm_ops, rcar_canfd_suspend,
 static const __maybe_unused struct of_device_id rcar_canfd_of_table[] = {
 	{ .compatible = "renesas,r8a779a0-canfd", .data = &rcar_gen4_hw_info },
 	{ .compatible = "renesas,r9a09g047-canfd", .data = &r9a09g047_hw_info },
+	{ .compatible = "renesas,r9a09g077-canfd", .data = &r9a09g077_hw_info },
 	{ .compatible = "renesas,rcar-gen3-canfd", .data = &rcar_gen3_hw_info },
 	{ .compatible = "renesas,rcar-gen4-canfd", .data = &rcar_gen4_hw_info },
 	{ .compatible = "renesas,rzg2l-canfd", .data = &rzg2l_hw_info },
-- 
2.52.0


