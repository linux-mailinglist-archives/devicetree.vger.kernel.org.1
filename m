Return-Path: <devicetree+bounces-241452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA53EC7E552
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 19:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BB863A6C11
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 18:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35BFB229B36;
	Sun, 23 Nov 2025 18:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FQlRYzaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBFF1ACEDA
	for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 18:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763921694; cv=none; b=BefHxj9zFx61iuDImVL9emRDU/ZmF8aFhwL9/q9/Qei8o7+hvpONO0n3D3b03hpN9odXcYZjnaXwytQIMsXUZhjLwWQdEarMvDTQAAwz6PAflgg9ZnKXXbxXQXDWLz8BObHeeKLsv4x/fY6+I/DOCSxAYnATn1t47cXfmeKguf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763921694; c=relaxed/simple;
	bh=0PULvETt9z816gDcDVvusNHQVkAxlavjk0u7No+qGbo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=L18cTu/MUhj6BJaulbmRsZVN9BM6huLBQrdL/uIXOzQyFYxSgoL69J5oBWTYwzDTGSd+qi+eAbWwaXE3xUdhx6UntzhlS6oNGmM6naRLVy21JKzuvYCgIitz5QNI4wreY2nlXrdsBVaWtIdDzAvCVXIk+pFBTjI1+KsNFqbnL2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FQlRYzaT; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8b31a665ba5so333889985a.2
        for <devicetree@vger.kernel.org>; Sun, 23 Nov 2025 10:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763921691; x=1764526491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dCX6WT7m7rVOFFnbXXZfQ29NTD0s+0MEDDI8eQG4yUM=;
        b=FQlRYzaTZjY/jAlQ8Fv1VupMttbk4i9gJ74wJXSFBsHkXrSR3b31GV1pQfdY0AW5y/
         heh7jd+SxZwoA8p4itpyNhOaVekz2JLGnYJUCBXc5h0gOWjqaZ+1eo4ljoFSwnTGSpOT
         wZvi/khMSrDY+6USQCgrd06LksVsRFiyTO80wLs7nJoYxwefJVfCIFFLoIozCn0n4dr/
         2SnYhUSLL/Pbg1XDIXKVjn3SEupYVZy6xRC4CdxU+OVQlQ4r5suD5Wl7tTFhQnnNUmAd
         FLgHaIbf4TtUnFsVwOdI0vv75n2h5NyLztexgp3BxBnqKFiCRZG7aOEHEjIqsqNDad7X
         /CGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763921691; x=1764526491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dCX6WT7m7rVOFFnbXXZfQ29NTD0s+0MEDDI8eQG4yUM=;
        b=ZfbooWn2TQsx14d+JvvvxqgLAqK9pBqqKOgBPC/O0dSqvZ8AULwsbEONSrcQH6r38U
         ex/XDGFr4/nqE4RXUfEDjFzrCvFfpY3B0+4VFZWXrZ5PNvohfGf/pIzDk3pYnsialW4u
         TcbUfQQC5oDjGPj0VWWNQbSIp2xzBOKehvUAgiYvY1n+iUE1P1RcEZ3TRJCFhqclt+Lr
         S/b6FE0goShssHbK7UZEKuq6rEXswRC9i6hJEEkPYBp5OTOyEtUqgwq1mrqgQjux98D+
         6h23jTjC+CifG/vU5T9X54AW67wiwBs7NaVpJ5aCFJ+G24Y0rkr8WAB37k4rFiEZlxfw
         IMPw==
X-Forwarded-Encrypted: i=1; AJvYcCWRCe2yeVD8DGtH2X+N1ITdkBJs/HKFDZOiBeS+hOJHm+GLPrGurrRBzQQzj7J+cuna1MuqDSdYZ1Oi@vger.kernel.org
X-Gm-Message-State: AOJu0YxWhPlPm0B6SzU4oDYXWgQz/oN1DTkwq7OBXwcDLUxwEjxycvUs
	ePRBeSokl7nqpjd8rADYs2LpOZU+67jwI5H8NeCwi0K5gFseV6i6ImgA
X-Gm-Gg: ASbGncuqvE5Am6AHoPEkCNzFW7zuwStpeyh4V4sxRMEmEL8qYjMgn0P6h90ftbOIa5F
	mdMUsOPmThRmTEZMSsCcOrv87Q5wbLM89GENv/tzbl5HgoLyTQG5Acf9EQ0YwXJvezjyGoZCBUt
	b2DzkTEQmbTTcPSt3Ie+7/7Z1TFVBRY+LqxgSkrqjY2EleUT4Zx9NQifI4RqNnwTG3xOPI3NGM5
	ir8+0stKmeZiMU4zTlE9dCruStIMr1FiN9TH1GLXWwc7ybJNmaC02UGSmLBqhbER4nNM4efMG/b
	4aC1KX9zUsacj08uDWCOWEEXt6kDSi8PfkmvuriyW/qKnYSxUFSsVRScsMKnzRYK4vgKptuIdHx
	kxwtHtIQAGJUPTyJKsdA720NOOYJfn4dkdPbXwB7oqq+Lqob8dt9dhHqRTegx5BLpRS+C2REaTz
	3kdHljAn0P1bp0tKoxR6i5G0eq5FhV
X-Google-Smtp-Source: AGHT+IFCca9D0Nqlxq/e//g/tvSDD1qUyYElNo9V329H3YLMPI6JAiHun0zZOL76EY5TDf4OeItFbQ==
X-Received: by 2002:a05:620a:1a03:b0:8b0:f2bd:4764 with SMTP id af79cd13be357-8b33d4d84aemr1213451985a.63.1763921691498;
        Sun, 23 Nov 2025 10:14:51 -0800 (PST)
Received: from rogerio-laptop.home ([142.188.15.215])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b3295f17dcsm782010085a.55.2025.11.23.10.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Nov 2025 10:14:50 -0800 (PST)
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
Subject: [PATCH v6 1/2] dt-bindings: arm: fsl: Add i.MX8MP FRDM board
Date: Sun, 23 Nov 2025 13:14:43 -0500
Message-Id: <20251123181444.266030-1-rpimentel.silva@gmail.com>
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
No changes in v6

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


