Return-Path: <devicetree+bounces-246448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84081CBCE3D
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:00:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9191B300461C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A1132B9A2;
	Mon, 15 Dec 2025 08:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hJlq8Ycg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80753329E6D
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765785609; cv=none; b=tjaC4669gm/phayoPenlhnhjG/3B0PdFvHm+lVZ4r+Ja57K+X2lkdPXS9GriMaJ6y/zBWAfR7HAuwb/UNGR5FdRfE1VGZy/Tr8GiDJRDmN6a1Ao/WM5SysBN52yEtE3wnrRpBbiygTlVEVrQM819HPa4SnkP2CWzckJA996gypc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765785609; c=relaxed/simple;
	bh=HPtm98uKiMslXOH21fQlQh3p66ZVT1qfIbtBz84LhxY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AHzEfI1azz/uwgyBppvKB/7Sfa3gsC7mvauWBjtyCpYtg3dzewiuWJTYHmojKmi0X8cxJdh0OiLb74FsBATOfiRyo5I3cxfFmen+Tm9RZkBGLvvPuNDcrrXnRknLEOmEbsLb4eR8uBLzbrxPAuBMRGgmbHlCukxkaUyq6Iwa6uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hJlq8Ycg; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a09757004cso18546295ad.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765785606; x=1766390406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mn+zeiFRKpp0z4XzuVGxMSjaFqAtsY1VIsxWUC+ubCI=;
        b=hJlq8YcgwhVul+Od3n3QEU1EID2gYQG4bIuogMDswZe6MO3UC0XbHEdUxK4Oov/m6Z
         E+oFFI/Q6rXwXqXEcJjLTBbkOrMsNycGNkbQvsn135NLLLsCZV0KIT1sVSRADORAaLmU
         NKtchW+CjZFoh4HvJT3b4PiKdYgkjCrOwgbhaDMFpMRQmJTRJ30FTXC6Kgu3t8qgOTiu
         cPOTCCjJ58Y2N8ZWoMcCGwTB2skRWUogiLyQruUABGgsCrX2GdNtsrKEJz0G5Dp0pg1/
         R49cWPha7BCbt/BLpzNtsJcGFMi79ieDQhkKsB9Dhg1VgEU6nfSCqu+lPNxRjZ+WpiSO
         rm2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765785606; x=1766390406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mn+zeiFRKpp0z4XzuVGxMSjaFqAtsY1VIsxWUC+ubCI=;
        b=UsxGbl024vaUq4yo2ChNPsvVdkgpXKtVvI5OKDMxvv8SO4+GPqfuhQ1zC4n7igwL+h
         do8aunM0YAXiMv4AXKd7AqOoWV0Vpb+FKtIh3rSeiw4/gqVosq5wfSrXDzoxzumb9pIA
         48UlO59TQHxlDtcwg77+6LiE5xennO5/U7VfidUP2Bx/M11ScTFEl7ZHfX0OIet8JrM0
         tmRvCxcoMjhVQ+SEb3An9OoNTdYUejo1twvX8ShkRz31mZjOyrQq/7ebfiXLtXj5fIBk
         zEbmfzitWsDSR/yBNbMNQ9puFM4eBFk41H63PWnAvBFYEvqxQ7PR51iTSLLMLI60LAAB
         E/3A==
X-Forwarded-Encrypted: i=1; AJvYcCV/fMP5VdXSrC5Niwv1xQv85us4CKJbCMSq2WHVEPz5y3k+caGM/1cS9w/rjFzBO8wX7nec21zzEAzm@vger.kernel.org
X-Gm-Message-State: AOJu0YxaAC1+nCUUkEDdSGCFb0YpIdoT/U8oPmwiRrx+dQ7GJh2/faz2
	Z/RRLXr44a/OfHf9GqYVf3S0zJcYSw1qAhuypz/bG5FVcTUzpeLMQPDf
X-Gm-Gg: AY/fxX4UchS4hVpELD57hJOFPc6eWbhgvvUEDzwFP++4u27AStikc1pW4hgE2qOfi7m
	w4iJXnQgZ9VkoKbNmYxyjYNdMhGDaRwRWgr0giN7nu5D7dWbVXxWOKjD/ctzMNp4CDOx12IfZW+
	q1Rv1p6qT4Czivc1lLaw+/2dBGXf78+SwQwSHXWnuGhvVw4FdPFjZeloABCMMkCDrSxKyTo7vai
	sKXYfozXJmWjPD3vzt61T75AroGBMH1eTIvStuz6bF1Xb4dgfpZE4EH9BberR924fFb8fnujQAr
	7h3LAXPor/iwIkaZOLJJ+syvc9lw4UdgWA37g47lyYREdmysnYSfn0FyJ/lzs8pgL0N2o7DjbEU
	9Epr1Usw2if25umwlT1NP63i0NUOnnSe6S8BZiyDvbDCDzyKmh1z3OkfRrFLv/FfekNnYi/dtNS
	pCThidx7B+XRM=
X-Google-Smtp-Source: AGHT+IEq2Sf+p9p2X7o3MuL0JatpUn4zPBXWnM3wP3V5EAP3Px6RiLHWn2wyvNZb/sW0cyMzORYkFQ==
X-Received: by 2002:a05:7022:ec4:b0:11b:a8e3:8468 with SMTP id a92af1059eb24-11f34c30240mr7883689c88.33.1765785605501;
        Mon, 15 Dec 2025 00:00:05 -0800 (PST)
Received: from fedora ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ff624sm43637473c88.12.2025.12.15.00.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:00:05 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH v2 3/4] media: platform: ti: omap3isp: isp: read crc configuration from device tree for CCP2
Date: Sun, 14 Dec 2025 23:58:34 -0800
Message-ID: <8b91902b1aea867a67aa5679710812650fa2987a.1765782992.git.alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1765782992.git.alex.t.tran@gmail.com>
References: <cover.1765782992.git.alex.t.tran@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow CCP2 receiver to read the crc configuration from the device tree.
Default value of 1 is used to maintain backward compatibility with
existing device trees that don't specify the crc property.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 drivers/media/platform/ti/omap3isp/isp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/ti/omap3isp/isp.c b/drivers/media/platform/ti/omap3isp/isp.c
index 8ac2bdcdf..cd10589ed 100644
--- a/drivers/media/platform/ti/omap3isp/isp.c
+++ b/drivers/media/platform/ti/omap3isp/isp.c
@@ -2102,7 +2102,10 @@ static void isp_parse_of_csi1_endpoint(struct device *dev,
 	buscfg->bus.ccp2.ccp2_mode = vep->bus_type == V4L2_MBUS_CCP2;
 	buscfg->bus.ccp2.vp_clk_pol = 1;
 
-	buscfg->bus.ccp2.crc = 1;
+	u32 use_crc = 1;
+
+	fwnode_property_read_u32(vep->base.local_fwnode, "crc", &use_crc);
+	buscfg->bus.ccp2.crc = use_crc;
 }
 
 static struct {
-- 
2.51.0


