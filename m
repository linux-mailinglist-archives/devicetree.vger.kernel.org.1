Return-Path: <devicetree+bounces-120722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B1C9C3CFD
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 12:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 487D91F22FEA
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 11:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365AB18BB8B;
	Mon, 11 Nov 2024 11:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZmcGw1wK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FA5189BAD
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 11:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731323995; cv=none; b=PMZMjmXKphNmzi6AyGr5QrA/F8NCv+kutaYV658BwEumS+zRC9wiW4IBX+KNZwdoG2zTKK2ls2u60iAj0y0soNfZPylJtKHUXN73zVz0d/btIFYWnCPf9oXefvzE9W+mEyiIXRIjOt8ra1o2B5DJHWouFY/08OOauFtseZt+GxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731323995; c=relaxed/simple;
	bh=yR0gR1vAjLhs0FBNDgPv2TANgg/seBwdhhtk/Rr/WUY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mdo7B3bZK0bT/IAqza2f2r0Sd+mFiwnvoH1sJwjLfMpzS4k5lS1JJWDJjm8XZ/IZfO86wBBNyE+3vumT9stv7lxxr2Yl51WRm2gxv243fw4cRLVC1Gpbcq1Lr1zN9yCGReydN9FYo5sDVE8WQ2HhE6NKwDdiCuIQ+mcnCaiCV+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZmcGw1wK; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9a68480164so655525566b.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 03:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731323991; x=1731928791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lMrSmta7fHOUctB/5AJidvIZnIncGO2UNey3bSwk2a4=;
        b=ZmcGw1wKE444veothWeskSeb2CjaP9Pnm9KR6cbdc4MNrG1i72aCIj4TLhnwX5aXO+
         s6zR05hCtBQOajgu9AV9S6jqEgIvnlgAfy5nrKBPib7phzCYMO729kNvMb2974Vfn5cO
         4GWYWe1x6OpAqw9REXdVLGkyMOImgXx3Tx47KFeecHoFGu2rEesBqlX5UEZTWq+SYHXM
         Zk7wZuCQzCxS/iwmryY8qIE/cZ+iJT+yyun3qRKEUJBCQouRF4OxTgwo0G0zFwMqxrJk
         oxfl9p+qP6zPtZKUnr8Zx9NpA7oo3TpoE3XnXJB6c4CAwTHn7+5KJbHNHMWx63q74v6A
         gAgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731323991; x=1731928791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lMrSmta7fHOUctB/5AJidvIZnIncGO2UNey3bSwk2a4=;
        b=b2dpYANxEAwMp2k3Y0FJvtCVIHBxku0YnHZTQrV8zzfuKGiMMuxtZGbj1yq5PAFz5h
         fcboCKIa15Q/UN7ffv4hUMiirqG55R98PWQoZI0SE4lE5BHxOsU5UKgsJqxAZT4vmB8i
         gFOUGJpLK6kwQz6R4jnTsxqCjFCd2JamUbeGpTEUloU/FNGacf6sPsGeGisAhGjhSnvi
         LWG+hODguRV+xuq3ESY/aQ49U69G8zNpuc+IMU5MtNnIig2R5Yj/1uZWnGHdy/kPZAJe
         nFYN+VMPLsYu+8th01+kMxDEL3xegpqT+yTuqlVE9Iv5T+m06m2BV2lD7iciFVrBDIIx
         MvMw==
X-Forwarded-Encrypted: i=1; AJvYcCUl3DIGi+6W3u5h3MKbAM9Os/ZVJ/c+ZjcKraKsmjL9/EMynrp5Jt4D3OX9bR1ZfpDg6qXRc2rLadEa@vger.kernel.org
X-Gm-Message-State: AOJu0YzAb+PEEG/FUxpW7L2gnqEgv7FE9hOX9Xov6eX4WMuee6kDNCj+
	rnnvB+7bOyoRcABTSEzAbswS1TkY9x/j8ZoEsy5QGEuWD7/P0SuVR/cJNxSa7sc=
X-Google-Smtp-Source: AGHT+IHOXkjlkrDrtvlnPceOnN5si90LVUaiVILWy4AO1guCrPxVvXLDLxRd0s7RMfvfwDzqJwxOIw==
X-Received: by 2002:a17:907:3f13:b0:a9a:b9d:bd93 with SMTP id a640c23a62f3a-a9eefebd119mr1154918666b.4.1731323991120;
        Mon, 11 Nov 2024 03:19:51 -0800 (PST)
Received: from 1.. ([79.115.63.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0e2e922sm582530866b.193.2024.11.11.03.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 03:19:50 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peng.fan@oss.nxp.com,
	m.felsch@pengutronix.de
Cc: pratyush@kernel.org,
	mwalle@kernel.org,
	miquel.raynal@bootlin.com,
	richard@nod.at,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v5 1/3] dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply
Date: Mon, 11 Nov 2024 13:19:44 +0200
Message-Id: <20241111111946.9048-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1010; i=tudor.ambarus@linaro.org; h=from:subject; bh=/+Hab6B4EJ5Dh9SCHmRGYARDt8d1ozFiUUdntiL5/lk=; b=owEBbQGS/pANAwAKAUtVT0eljRTpAcsmYgBnMehSLAOWEq2QisQo/KwTNHCKeQe1lOWHd82ps 5T1iSUMhUKJATMEAAEKAB0WIQQdQirKzw7IbV4d/t9LVU9HpY0U6QUCZzHoUgAKCRBLVU9HpY0U 6RatCAC4xwOyECtAGIseOOgysDe7h7v7SgsjEr0sfn28ZspNaS/95AIqQMCfPSy2qy0reu67pKZ pCg8oRQQfb3u2HfTFOANgCtFAvUU7byNiliCO09Xw/vU9C9LdcuY8F6L/FvGyghiMvel2oXw9Ht jm506UJHfuIDMw1XINeUG68aULrEnhlGPJQfJIVn2XMCxiAq3u8l/3KN7r+bNbltYTHoiXnHXSA hKoSjlCj2GvfWO1ADnETrU7j9ckN4gikrHQvgxc2MSXGg6MDrI5p5PZJcsKjq+PjslQVcnEro6j sz+KTxRqSUMXxVLeIuVuiSw6EVHibHzUNsjqTuJGpAfOBm7O
X-Developer-Key: i=tudor.ambarus@linaro.org; a=openpgp; fpr=280B06FD4CAAD2980C46DDDF4DB1B079AD29CF3D
Content-Transfer-Encoding: 8bit

From: Peng Fan <peng.fan@nxp.com>

Introduce optional vcc-supply property, SPI NOR flashes needs power supply
to work properly. The power supply maybe software controlable per board
design.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v4, v5: no changes

 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index 6e3afb42926e..335f8204aa1e 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -96,6 +96,10 @@ properties:
       If "broken-flash-reset" is present then having this property does not
       make any difference.
 
+  vcc-supply:
+    description:
+      Supply for the SPI NOR power.
+
   spi-cpol: true
   spi-cpha: true
 
-- 
2.34.1


