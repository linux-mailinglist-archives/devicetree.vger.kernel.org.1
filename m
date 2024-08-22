Return-Path: <devicetree+bounces-95875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9969595BA5E
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 17:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52131286527
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA83F1D0DCD;
	Thu, 22 Aug 2024 15:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lSC0pPIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEE41D048F
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 15:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724340525; cv=none; b=qwOy4OQwy47Ru123uWHkwLy5EXTar6iizPWnjF6yhklg2uTByRF8QakcJKDGc2KFDSZ+65SigjaVifA0mexoV++OVk/naHz+jiZulpQSV0xwLSu4lvE8WqPI9c5Tuhc7XYRlcegs3WtpBYdv2PqqLU2fLELcZM9eblRya0TqJS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724340525; c=relaxed/simple;
	bh=qfMyBWF/BL7cu1fLu2yMExkkMJ+Iv5WKiP7iKrRAAGk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=n1npJO0mxBb8wKHYgHxZja7Bx6I/dY2zfa0igCVDDM4wYU53gwR9CWBtFIBl1nUTtW3+saM7Xt6IHjzaDxpS39veKFc4GsA0QFch1lC7L/beXayBPK3mqrVmP5adkYzuZGwQfK+ho2mWYi3/rwUZR8mKeSwgi4WHEbiV8t2kb/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lSC0pPIt; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a8684c31c60so121164266b.3
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 08:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340521; x=1724945321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XSWof3eimbYWdm3Zde2Iz4BDEJwC1Ylc5fdAQ7iNZKY=;
        b=lSC0pPItQ1mmbd/o/QKaAbzFexzBwZt/gpoSig4MEDA4mHOPelhwzMiF/rZuoZInu/
         VBmHIcOAZuBPYPociUCPZ6/i7ddtKNX9wDIlf60CRd0/o2UD5NIFX8FeBseGM/bFzcq2
         JZhSDAJNyfZP6dq9l39kgZg+aF08Vps8GNna4ZLCpuX21L3Nkzuq5/EGNLoKMjFs0kPp
         JdXpg5t4kTjozpqV3botNWvrNDrSihivB48ih82yxvFYvD00NQ/DCIxaifF5s61+OFVB
         VRKjzGxHaUxqJS5eazktQEb/1jl4E9KpvgEahhoq/0eUjAAFhLgyr4LzKkVWByARNMq7
         /NSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340521; x=1724945321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XSWof3eimbYWdm3Zde2Iz4BDEJwC1Ylc5fdAQ7iNZKY=;
        b=dMtNVBdQy8PPOV8AKIJc2E7APtT/iwjDtYxwhgpeqhVfB44HXyNjTEQs//93TRjLZ8
         tQakzIBNMfbB9rw+PLHHYCCe3gxVDobO21lmN/6XqkzLJ6/yTtL02Hq8yvFma0meDNdp
         AcTjS0aFAluso9m3HGrWoGNgc1RvxPLT9OMpTzCyK8zmLJOrQfVRyeQZJayOt1D+c1Ze
         r2sU3fNQS9a3mJvBYBsr6xt11P30h6OVvQDxuMYP03a9ccpWvrvIBWn761cKm5joFexp
         2UMB2WNBM2AWm4lcWraAAmtHZh5e8QnBxgOWApmyIfDH4RX8TrFvFHs03he/tavRxexV
         jSxw==
X-Forwarded-Encrypted: i=1; AJvYcCUEujZEfxqzdsPJi2ShmbJFd/x11YyMvxf3aZQwjnbgtLNFJidHEJDcfPAgVZsaWHKX7Yqge7rbM0UH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzscq0YgR5W0rB3U8RiaquHFQ6EbBiTjboGtAhjUIoeyVUKNqq
	M0a4F3nn+vkfVtY61XxKPIBhrB9vZ8++Gtjx9td2GhL7hF0wfvabH4d5sDaONyk=
X-Google-Smtp-Source: AGHT+IEBQZ1FZ/LXCGsRTtDo2mrL6RRIsqfYVgMxLk7cvYuAGygDFmxNvFc2QDySBzsJWYCvzMOvmg==
X-Received: by 2002:a17:907:7214:b0:a86:82e2:8c64 with SMTP id a640c23a62f3a-a8691b5c943mr185347366b.35.1724340521191;
        Thu, 22 Aug 2024 08:28:41 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:40 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 12/16] phy: renesas: rcar-gen3-usb2: Add support for the RZ/G3S SoC
Date: Thu, 22 Aug 2024 18:27:57 +0300
Message-Id: <20240822152801.602318-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add support for the Renesas RZ/G3S SoC. The support is similar with the
rest of RZ/G2 devices with the except that the RZ/G3S needs bus
initialization due to hardware limitation.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index cf4299cea579..58e123305152 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -583,6 +583,12 @@ static const struct rcar_gen3_phy_drv_data rz_g2l_phy_usb2_data = {
 	.no_adp_ctrl = true,
 };
 
+static const struct rcar_gen3_phy_drv_data rz_g3s_phy_usb2_data = {
+	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
+	.no_adp_ctrl = true,
+	.init_bus = true,
+};
+
 static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 	{
 		.compatible = "renesas,usb2-phy-r8a77470",
@@ -604,6 +610,10 @@ static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 		.compatible = "renesas,rzg2l-usb2-phy",
 		.data = &rz_g2l_phy_usb2_data,
 	},
+	{
+		.compatible = "renesas,usb2-phy-r9a08g045",
+		.data = &rz_g3s_phy_usb2_data,
+	},
 	{
 		.compatible = "renesas,rcar-gen3-usb2-phy",
 		.data = &rcar_gen3_phy_usb2_data,
-- 
2.39.2


