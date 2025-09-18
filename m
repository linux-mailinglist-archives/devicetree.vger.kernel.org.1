Return-Path: <devicetree+bounces-218629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BCAB828A0
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 03:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9720162261F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 01:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 155BF238149;
	Thu, 18 Sep 2025 01:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S6Ah4Fy5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E4A10957
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 01:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758159819; cv=none; b=QPP9KfKUycgUbZ5x8x6RClg2+Xa5vocj71Cc+iaB6b0RS6fPdt1wnvDOReldzyjezbDI67BVhmbtMCqaNDXVwhK9VdlMDKw9mdaVfq7HZd8lk05gGx7JRbi2B4+Wy2e9h0NxS6dBwpEJSVwvRAmr628mbJCB2ZUGwX1DI/oRUMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758159819; c=relaxed/simple;
	bh=UrGxr/WjtT928xmbCCKU5+v2Ur3oxLYlU77CDE4u8No=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jFR32mA+v5noiSRYO41RcPUGAi2aR84YOYU1/husYrzyYUph+7azCku6a9zaMh9tnXvjNyu/5SydIzOS1tApSuq2KCMV1jH0liRmNh0FLiNRNfqnXsM0Qmx++UaBb22vHrEArwE+a1FCnoQ4wWh/gyshrY9ZCeiHfaXk6dsSACY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S6Ah4Fy5; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-78de32583fbso2361126d6.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 18:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758159816; x=1758764616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+l9K23yh6l3TvW8w/MfzE09CsujDDpfaYqSz07+eVdQ=;
        b=S6Ah4Fy5BvYlpmyJyghQ6rOyRf+yIrZRFuWx1AniLYCC8Tfsrxfkg5cXovWWKMpfwl
         zn8jjLY/zYqIM1MJkKYMr6eyEL4Xutmd/qJNA4GmPomqfMxMUMNuxysQ+ylr2xUPExM1
         hJiNa+EGViNqxvIsvH8J1D9Iyblil6iRT6V/2xTWsbG0tbzVesD6msVgcbGV+73kuWhY
         QOrUF5Nb/ZNHxIxqB/+8/+TjBTNVqpYpiSLCLMvvhxcFKFfrnkMgTuGrFyXmY+YTI+5q
         4YsDy6So5A3ihrDbWG5C/QRoTse3PxOyNQWfiK4avqzb1dBUBivFcxN06OvL8HrQl3sY
         RYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758159816; x=1758764616;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+l9K23yh6l3TvW8w/MfzE09CsujDDpfaYqSz07+eVdQ=;
        b=YHkOykFbhYlH5l0Ept1mfDmfVKfi4mk7RfZ3L4LbXT2cvHXe3w4sobVV9pPGCvk82a
         /QjFZeZHSgkw5lyr2omD0dMGvGTN8ALbot8/KQqMg/VlFSJhYe19zzeAG+Dj3NEQdZsq
         cOZMhJLpT1kAbVfPAPLNBhD6r0aTY3VwsyKc+68RFOpnAStE0igMWrYZikas5FLYzVrj
         vaMVGWCpdxTVWtxcoi61yYHD1tD4WB7vXVeIbwYBPHM9b9A/YTXYu9EqNyh1G8eNWVYA
         hRfpWdBxxf9maHakyBRxt08gVQ3JX+L0vXy/ynUk8I9BrxB5lrbIjjKEh69+g8XNA8NM
         +YTg==
X-Forwarded-Encrypted: i=1; AJvYcCU7GjdC6mn0UX7zgQZ1YXnVMXUIkhZNwoFOAd5gChQS6ERqj7eHcu4n2WALGvx6I+GsHuoiBbIF7gXD@vger.kernel.org
X-Gm-Message-State: AOJu0YwWwsKsHdwaFNV6D6Q8jWbsXKB9pTkeOcK7ADRt/iwJZ0/O+KVE
	cz/I7cTHer6skXHGW/4229G+b89tHivQJbSU/ZDzesz8apajB/JZmI6N
X-Gm-Gg: ASbGncsgmM2NIHXYUvPc2YRKYioP4p5jeJD4qNwj4mAGz016KE0S+bXji3mG1cyM8qU
	5NXAbuMsgxcPkBGN5LvYyj3m9p2dEdRtytIJpgKnpGAf/s2Se+HTZG7N6OzXD+vHLxZEtPKbt5F
	3rV3eM058hzO8ST65o1eLhDEhdow50IaWKCfCat/Q2YA5v08eF2XRzC6mYF3WIAlKvzMfGpSxky
	W1DzZBlE9HnhvxVaSv6pggOUlWiXgrUT8pwc/jaoqJq2p2pkVvZ34ULNvgqvHvUExwVak5zPhMX
	F6k0O75tO6mfYkBGPjGLmuKZ82oAWQ1+OyKVnCZGwt70lA9gJGJNVHClleEH2vTxDXDXndFJO1/
	M/viaBg9mA2nky0EQwYyernPlXr1mXR4EWdsv3Q9SGaDri3Ddoj9T5dVaPMM=
X-Google-Smtp-Source: AGHT+IGKxnkq9Yna25gDDHM/UBKhOjdM3Em76x+D0aBlAB+6RbOzXElaevH4sYxDOsPcW3TRYXULaA==
X-Received: by 2002:a05:6214:3482:b0:78f:5313:1417 with SMTP id 6a1803df08f44-78f531316a6mr29850696d6.32.1758159815844;
        Wed, 17 Sep 2025 18:43:35 -0700 (PDT)
Received: from rogerio-laptop.home ([184.148.194.86])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-79346930bbesm5191506d6.17.2025.09.17.18.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 18:43:35 -0700 (PDT)
From: Rogerio Pimentel <rpimentel.silva@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
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
	Rogerio Pimentel <rpimentel.silva@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Add i.MX8MP FRDM board
Date: Wed, 17 Sep 2025 21:40:52 -0400
Message-Id: <20250918014053.696710-1-rpimentel.silva@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree compatible string for the i.MX8MP FRDM board.

Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 00cdf490b062..8bddf1f8a78d 100644
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


