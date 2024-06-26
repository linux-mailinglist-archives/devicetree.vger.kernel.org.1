Return-Path: <devicetree+bounces-80251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E81479183A1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:06:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30BD61C209CB
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E400518411D;
	Wed, 26 Jun 2024 14:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UH/K9cDp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901441836F4
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719410764; cv=none; b=TU93O1dGq47rQ/CsD7vrghtvZFw0BQLQW7EWIVCq8ayJ33gZ7WsznNw7kSxmxY4iUkd2eVyxzBKKt1D/uwhm60AVQzKcs1dh/4CVkrKi34sXG6gEszwXBdqLwwfUETXDH3ftOYpUQgi7kQXVxCSOhacC/nAHakG1m1+K+P2sKLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719410764; c=relaxed/simple;
	bh=VwUcb8oWHH79Fw1umc4qTInN2W0N9pzMN345mM9hJmg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=p4WC+NtXj4EZ8SN58/C8eFHLrXtTauxccdxAE9Ein0TyinYXhpwXJbgcfRviTXzKQ7fy71B55vfRSH8y0+VGDjALM9RANeSTV3Yi3gD1qr6NErFq2zsnwcAihemyw/57CLmSzm0SI/5MH1W9iO37WjiyHHJf1GO494q22haWjDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UH/K9cDp; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-71d125f2d96so481152a12.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719410763; x=1720015563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7OZc4FZ1pwpi69cXkTAscSyoP+AIQrq+v1e5Lh+p53Y=;
        b=UH/K9cDpb5i2xy4v2QODUSwhM3125rXOLbw9oZUwCmJ24ZYUQWMuHBz7szl7NfT1MQ
         liXSxbg9Q4jYDWsZ6JtAHuieCyNpTXf/jagAp4EpEkQRfIEM0rJd9DVP6CH81mAbUn6T
         Z/bCcXqnxZKrHn0Ml3pcVPXRqmUkpncs2EFClSjXKAipkjtFfPKsEjEIhaVKv90G0wu5
         3cFzsypiqjagI75zn1iXGbQ4QKCwK3988j5NodPQnNaDMEImpX3615EaIZUSBqnVCknx
         fSudrynJ7+dAQA8dWJlCbHJZf3bcFhCDqiAuXnwE2GmbWmktGRbJeaONm0/d2fY0d9r5
         uPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719410763; x=1720015563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7OZc4FZ1pwpi69cXkTAscSyoP+AIQrq+v1e5Lh+p53Y=;
        b=b8CBgTcFJ4dQMm61CMiZTb4a0wRQt4/ytwvj6sWgHrZEvQWTneZRZuyrEV+oUBFMKW
         k5ZHaIwWVw3OShyeHmN2TEvd467vyIJaAa/WFkgznCaiEyqFf6GKyaz1IaMmBuNrGFnT
         VoWpECsQ+VEoZU1S6uA5imeflBV9z9/RxriJ/Lq4jWJ1daltkIHGAx+S+0PqnsorMuFT
         TeEfGHWBfJ0DFXdKOs9twxg/dJUF77I7wLr6R/i0xxyTJk53GVsEIvtLva5cQEGl/IBL
         RvuYWKNYxadiVjd8dwM+8kLPbxEF+e4ioxMazmu/IrJg+mEJJmiBVXXaiHdtVo32u+14
         Vobw==
X-Forwarded-Encrypted: i=1; AJvYcCW4I1MwJi4j/W9pzKeq5sxDnp5GCyWha20abAxFgmhP9EwRt2FVlxWZeQPaTtdC4SF1miQPiB+FndvDlARh/bYUVi9h2v7VrlxpuQ==
X-Gm-Message-State: AOJu0YwJoTRD7/6Jjgfqm1KSleplfYCu9HO/3+AFYfBV79ByY2XYvNSD
	/jEiVq1v5P5E+3ucAQfNS/rJNXbT15BsNzW5CUJediIlx0hiIXkN
X-Google-Smtp-Source: AGHT+IFuuZ3DHwIF7ceRJbn6bCnVZFhV28ZBi/KhPAy7/yf4Ap14MuOCehTYRr1CzctG46omNtILZg==
X-Received: by 2002:a17:902:d4d0:b0:1f7:2576:7f88 with SMTP id d9443c01a7336-1fa0d832bf0mr142067255ad.6.1719410762727;
        Wed, 26 Jun 2024 07:06:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b7af:6ce5:5240:a687])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb3c8c01sm100059845ad.129.2024.06.26.07.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 07:06:02 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: imx8qxp-mek: Pass memory-region to the DSP node
Date: Wed, 26 Jun 2024 11:05:32 -0300
Message-Id: <20240626140532.615857-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,dsp.yaml, 'memory-region' is a required property.

Pass 'memory-region' to fix the following dt-schema warning:

imx8qxp-mek.dtb: dsp@596e8000: 'memory-region' is a required property

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index cee13e58762c..936ba5ecdcac 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -63,6 +63,7 @@ sound-wm8960 {
 };
 
 &dsp {
+	memory-region = <&dsp_reserved>;
 	status = "okay";
 };
 
-- 
2.34.1


