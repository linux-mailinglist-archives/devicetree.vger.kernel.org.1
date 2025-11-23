Return-Path: <devicetree+bounces-241407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B616C7DA33
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 01:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 002404E04B6
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 00:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41123153BED;
	Sun, 23 Nov 2025 00:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QekoKF7z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986C212FF69
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 00:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763858175; cv=none; b=oK/aOWsYQOuBIu66h55HPFriZczGuCLEtCo76XkLf0796iELCTlHvZ+0zyrN0qawT4aCRG/xy0CRNNKQuI64L+ul/lsPIN3O0BWOw2yKMhMdj8Uk/4ANwEqeM1A4bSaIZ9BXXoyvnONBqtQ0L+hEZKfEdYrO6q/5amUxHAWn0E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763858175; c=relaxed/simple;
	bh=+LbtG4wlTcCjP7l1QwV5muNNO5Z8XeSappL8ypkY+bY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FFkA0FCT3H4eivczu2PfloM3a9w3vpUP8y9jpUyHVcvmNIsHNrEZi9TLW5bDDFbkdVyqCIMTmll00kIPzTXF/GBBvlrVSfz0jrp+aijoM152KuA9/VEi1WxYDUdY65zpByvB1jwBYW39kvlIzmI3cD0aOIssnoFLfrA6trBjqFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QekoKF7z; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8b2d56eaaceso327399685a.0
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 16:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763858172; x=1764462972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5InH4LAtl8CDeHrHASMmG5Sayd0VJhxUyZTTym7Ptqs=;
        b=QekoKF7zHou+ArgZlTorRmOJOR5qvI3C+IUAwRzfJNm+xPAkaI7XFH86/7GOLjRERJ
         sHje3gRRHuBS/mwRCue+5FI+P57waFXyOPUCnG2yKPdrHWu3XFimMex6cgz+/e97ZBXB
         pwzD68wP5Dw/B4GFNgzwPGx0VsLEVyHGKZjIv3GQ4vN2i3R0M/ENeYxN+isAPF65Eqsc
         0vixMjjhN7O4gAGKNUiLu8tCMML+ow2WSBSbqCVbUhvknHd7JOpZKztZLztIcEh93muH
         kBEQtL/lM2ShwgCbTt0/ID9CCE5FTTuu+JZtXwtVoTMaZdfp7tZSsWpHme4f/qbA3WY6
         ZPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763858172; x=1764462972;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5InH4LAtl8CDeHrHASMmG5Sayd0VJhxUyZTTym7Ptqs=;
        b=RNUwlsGrR/lepQ8r2fa4K+bFt8G/bJW217wdAprTbtVPVIsAZjak2PXpOALVLRhxe8
         El+lSUpI+IeaaVTW044h/5M62+tXva0PUzUkTG2pqnU62F0amsTadSXbIQCrmOuvAaXm
         9Xk7cOvgwIwMIE2tUZ30efSM2H68ta+o5d7XVmio4tFg0hQm3YEWZ9XBUbwNVXCeDqtC
         b+ANmshwA8swLKXi2VxXvc6di6u9XFgxXTwvfxlvmHqyR1CKe8LC2x0JUD/66PaFo4S1
         buldHJJMLtlVOLYSJQszbmg0A0e5XAFQlKCPhcnllfo6p64xv5EQS7sQNbjpfHAG3QFS
         hQhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHhop/OVG9d/E0W5n8bfPsC64+CbDVhDqSciZnWBart5Xs7qQWEyGLJtLHci/05NEyHBcfLpUcdQ6b@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh3F7mWm8ZcB2vAo/4a4FdMuv5I8oEGSQ9osE1vS4URI92enad
	hJegLzK+MTShrckun5I39fJ3ueavETnt3aG+CBMlVyfhoCOBS0uSB2j4
X-Gm-Gg: ASbGncvj7GbJxWfk8VsBzC84vWp2urORnf0n/dkJtguoW+u+5peWBf8ybfkpww8y4HP
	hiq/OzP/S481s/XsAr3zOCJEpeJelwj9EXOwGxYCIOXLZeikNe1kyjTvQpG8idtqIDjzs5xXBwb
	Y/QiVy7imcAjYm12K0FrAw7skhWgJOk+7Ekw4tIsb8PqwtWVx1UMsks1s8cRuJRh5ZAbyzdgqVB
	mzANPALVcXSDvzfjg2QvDbGSAwfk92bitTL5mJ8YAe4d7KxPf6U2U/nUFJfRESPWTg5XxFM04PQ
	5qE4RWouDFgtvUp5hJfAE8bkKr0XA9aPI3FCho1HbfUC8+MC+DHcJsVF73fcjvKi2bflTaiCuaH
	vgBK2IxyzN7N8XQ2R3KrP85pKhk9MGD4yjAtGingLM+VWhgx3WQFSIAlcEEFRaF2+qYxy2m3OxG
	XwidfAGQugj8ZPKNj//KdVDHrPB+i0wy8=
X-Google-Smtp-Source: AGHT+IELZ8fwCDzMQSnKQNoR9E8KUcPXJ16Bu9cxH/L+PxSpCHeZevHF26bxZFfiNniZZE6RK9ZCPQ==
X-Received: by 2002:a05:620a:4611:b0:8b2:dafb:9089 with SMTP id af79cd13be357-8b33d469027mr939724285a.67.1763858172372;
        Sat, 22 Nov 2025 16:36:12 -0800 (PST)
Received: from localhost.localdomain ([142.188.15.215])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b3294336besm657943885a.19.2025.11.22.16.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Nov 2025 16:36:11 -0800 (PST)
From: Rogerio Pimentel <rpimentel.silva@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	krzk@kernel.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	marex@denx.de,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	joao.goncalves@toradex.com,
	frieder.schrempf@kontron.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	primoz.fiser@norik.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rogerio Pimentel <rpimentel.silva@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: fsl: Add i.MX8MP FRDM board
Date: Sat, 22 Nov 2025 19:36:02 -0500
Message-Id: <20251123003603.246399-1-rpimentel.silva@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree compatible string for the i.MX8MP FRDM board.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
---

Changes in v5:

 - Include Acked-by tag from Conor Dooley

No changes in v4

No changes in v3

No changes in v2

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43..960c0ce8d128 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1099,6 +1099,7 @@ properties:
               - emcraft,imx8mp-navqp      # i.MX8MP Emcraft Systems NavQ+ Kit
               - fsl,imx8mp-evk            # i.MX8MP EVK Board
               - fsl,imx8mp-evk-revb4      # i.MX8MP EVK Rev B4 Board
+              - fsl,imx8mp-frdm           # i.MX8MP Freedom Board
               - gateworks,imx8mp-gw71xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw72xx-2x # i.MX8MP Gateworks Board
               - gateworks,imx8mp-gw73xx-2x # i.MX8MP Gateworks Board
-- 
2.25.1


