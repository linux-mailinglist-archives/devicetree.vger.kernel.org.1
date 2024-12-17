Return-Path: <devicetree+bounces-131852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A45609F4C1D
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:26:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF132172DD5
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 13:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 601F11F4E5B;
	Tue, 17 Dec 2024 13:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aH2mXAhk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DFF1F1917
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 13:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734441284; cv=none; b=Aga/ICvmGEedsA/9pck76K7QEKRNKxh7sirlnvPRrvh8Fc3muZqXEQnfR3a8kRzOG9A0sAM7aUvi5XvMVR6hDONPznP8ZLXld+GjBC7PaDQpbSorMbdu/w/nL2mWZcDUZaDWll22g7zSa10alYBA8lSYBXUtOd+Mv+TRDGRMTCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734441284; c=relaxed/simple;
	bh=WQeOysPIW6mnGOLf+qJBihTjlX+lwaKoHQq5efFuYGU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=r5XC43df6h48mih0YdhLWGbiHNelVTke1UjQWtjwl45nrIaOOTZsZkhP+AbqmBZ3Vf9UYtEUKv+txW5O29uzAif8XuUNGRQQNSBpupCjhz/ZCso0hrKky29HEbijGraJQDkWV7YR0eoQx78aPM6BKl6JOOrTS7eufoqWfl4z1Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aH2mXAhk; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-725dc290c00so4847492b3a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 05:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734441280; x=1735046080; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=axyAQhPj9nhVil4KAAnIiakdiidmvsJlf9IRfQkGvmI=;
        b=aH2mXAhkVv/ZE3ZwbM+1raB8KmMn3bQ87pwaW8YI4zyTXyNnzmx57QkPc/HcNGG7H1
         iXhSSTZukt5pElefDa84eqMYc73qo5n2IU2VtH8QvAoAdY3S/QSotJtWUKFuE8I8tFjj
         Ogjnt34gE6XzZ8KyWKE2XYKda/b14nA1zXC44pX11M9TiFLQRl4EGCrqgN278zBaTc9y
         XmYVXbdz4qjlw0FXThzFe7Vq2VJNgVAWjYH11wVnvVgq/e8uknMuYcPfk/11w5e1zjxu
         zYZZFNDaUADM6dzBie7cvX2cQCK7yfYPm6MWXwxGBMXKO0YcRF8tuXEeFkPtV32P3wkq
         9YvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734441280; x=1735046080;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=axyAQhPj9nhVil4KAAnIiakdiidmvsJlf9IRfQkGvmI=;
        b=WaPGYb9J1+9QHCy/72UBhC2DhdbOzRsp5U1XQBBKWx6ScLWcqPrW1agFzITLXZdnut
         EO7+zQeAVlxD1OS6jnMCkj1QBqWtWUld3xojhVo2fh5Ipw4dLMyPjRazOrEGIwuoNMA5
         f348P2ol1J9NDP5hUMdJ8FeWTStvxd7vKS9cWjs9mpMTumhFRliD12EGptHAwp+wIzDr
         cD4w+2aQE9QLIzFsevTh4pnJLKOjaH1WHb5W7Tus4nK/WZg3cyiO0R1qOin3Rq7IQglC
         7I4YRoEBMBMX3QL1Dz/homku2GVDMgZyHT2jeFveV3ts6pex85rNHwlyfeYtBLPUdVqN
         6OJA==
X-Forwarded-Encrypted: i=1; AJvYcCU5WNjmaGpPm/isimMKG6IaBoj6/i7dhS6rsW1WQzDuS2D1KbkXXd4Kyqhch/7LlDzEiFEUwbxrSl4i@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5+zDszn6cgxPhL/KlKH9LDTL1qvHAzgg+r3zsSbmcO4gcv3y6
	gTLrnRLRUf0cwLx8hunCarZogyG46IoA+lKPvJujbg7x8Oa6tZ2I
X-Gm-Gg: ASbGnctVV0w5dfKhdymSbBaizFp6vq2XwgX1hP1leaPQsLa/IM07vZnlZ3jsRIbdLpn
	cQV4I4iQMbiNeHoUBBTE4YR0yzFsGQnU0kd79GOwwoDzxQmFW9Xsl1a3hFs5TXG5XToRPqg0Wz0
	fLltKP29asVqYmyZXRpNQnzReoClajHUU2tguLXdtgipDrRujcEwQvyrTp4Em9dHM/PBkainlXl
	tzR13/Pj7rIumtpSwy6NAkdtHHxi5xNrmbxlCXJ1hH3FeCC/2UhzFNhTkASgtbP07o0pQ==
X-Google-Smtp-Source: AGHT+IGHcV/NHnllfqv7fR/hLPWE8KERD+FbPGD/o3fwg+D3eyN5ic8pO6VhkBpEn8TBSM1LxM5IEg==
X-Received: by 2002:a05:6a21:3398:b0:1e2:5c9:6831 with SMTP id adf61e73a8af0-1e4e779760amr5123201637.14.1734441279972;
        Tue, 17 Dec 2024 05:14:39 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:2d08:94b1:8dd:a583])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-801d5acf064sm5821625a12.40.2024.12.17.05.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 05:14:39 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: Laurent.pinchart@ideasonboard.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: samsung,mipi-dsim: Document fsl,imx7d-mipi-dsim
Date: Tue, 17 Dec 2024 10:14:31 -0300
Message-Id: <20241217131431.1464983-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The i.MX7D MIPI DSIM block is compatible with i.MX8MM.

imx7s.dtsi uses the following compatible string:

compatible = "fsl,imx7d-mipi-dsim", "fsl,imx8mm-mipi-dsim";

Document "fsl,imx7d-mipi-dsim" to fix the following dt-schema warning:

['fsl,imx7d-mipi-dsim', 'fsl,imx8mm-mipi-dsim'] is too long

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index 4ed7a799ba26..a036c2dcfd86 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -29,6 +29,10 @@ properties:
       - items:
           - const: fsl,imx8mn-mipi-dsim
           - const: fsl,imx8mm-mipi-dsim
+      - items:
+          - enum:
+              - fsl,imx7d-mipi-dsim
+          - const: fsl,imx8mm-mipi-dsim
 
   reg:
     maxItems: 1
-- 
2.34.1


