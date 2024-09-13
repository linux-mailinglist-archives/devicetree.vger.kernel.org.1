Return-Path: <devicetree+bounces-102868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 806C1978958
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 22:09:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2946AB250A5
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 20:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE6B21482E3;
	Fri, 13 Sep 2024 20:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kluZwD+g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2291482E5
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 20:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726258159; cv=none; b=AIaGBggi6b9fAoo6y+7E3aZL4crV1mPQntIU+M+GI9ICFOd4XbtRb57f4h/437z1M+iVXwSYDdwo0Gk3v2+IZMTeCcTH474FnBEttWFbjNOwKDmktXPODGwET9oaGA6vAm5IZ+6QY8uMfRGHkjGQz4vd0HhMMM5DWX6yZWfn+c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726258159; c=relaxed/simple;
	bh=X0IdmsZtVVEZIKoVLgfl+4dcqQAvj9aIFc/ehl+XKYE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FN5JfPc0uUB3rHX3hXZhqMVmst23cLkDP0XsUZ3v8260l4OEUzvoNEstwKlwtocSlnbKllwh+Pe9MWN2z+IXOd53ES2KnEJyiGxTLq1QjLLKkQcyv2DtpnnPRsFqUFsH9VdLxHOKmgOkNb/sRNhKB/a6VPsYf2wcVDQI9HhoRkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kluZwD+g; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2d88c5d76eeso1023881a91.2
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 13:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726258158; x=1726862958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DzPQCOB+yyjPnEoULISl1E918AwM+xDJcvp8XjorlZ8=;
        b=kluZwD+gVtZ2w4p5lrUO/b7nA2zz1hSWV3qlEop9HMlN5GZbtALfhrl7aJCvA5eOdq
         pnH3fsFHsWaZlw6TDe8jt4vkBqYIFySWqmR1B5p2qOriGUHI1RmYSLNY7v2A2nOJ4vjr
         gt3ZiUlN7MVVujSq10wnp21632SWxpHOwwaJVg/2rmf05gXO0ZfTQu13GdCgG5JC6q9G
         lCgA/PYHaZkA4NaXYS6bJTM4zg1OWOxFQVxSt762om1YVAf1ENs9cfcBFBRzH/NZUYtP
         PjLRCPkpR5hIazGnREAVkQMU8oLBI0rJwvb1vAObE+aTVnYarmSGkZYHT5TwQ0C33J6T
         +P3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726258158; x=1726862958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DzPQCOB+yyjPnEoULISl1E918AwM+xDJcvp8XjorlZ8=;
        b=ozC5fbTQQ227I/DHYBUleTvNBZ/ZVqDRgIoSURWxWgIASmlXG84UW+9736p+VCqwkf
         s0DrQHNLRbncwFwr1f9LfWmUk+EO1ksDijNGU0vouhIPay3JTSqNy9DevFlaD+0lajXf
         ZPZQkLxPPqgb9vbeduc2jq6VNfopUS5oh915liDMG/66GTpXfr7Hgc0b/aIs1kCs5WTh
         9uQmwRTS1MU2Vn8mzAAfGMp9KA9DAJ80UiEIdIMDHyhNW/gDtUkGjUd4MEV2hadsYFyh
         GcRmgimGjwEsByIpkcIAAniMruWBwKMMg6XVc7ntS2pg0L3VWdkLBUCAwRE6F2EWZyhC
         oamA==
X-Forwarded-Encrypted: i=1; AJvYcCUZCK5K/QNzsPVfhkmHOefseJWtoC17S/YnDfzzT+zFp3Tv2SCB8bVicNn+ef5+PZpepxkuAIfPk+Qs@vger.kernel.org
X-Gm-Message-State: AOJu0YwBOrbxbCr3RQEGv9yHYj+aV7sWwoBXW/YYU6jiWxWe4NhdDIk+
	If6Imx5lb6Dv/yDlxzVfXDlNFKOXb2FRCv6xQO3wayVoCC3EiuqG
X-Google-Smtp-Source: AGHT+IGeexT9QlFHhUD/6qxbwGDq74neekUZb8KqzCJ2fTnzP1qq160doze8F2+B52knVKam3sfsuw==
X-Received: by 2002:a17:90b:4acf:b0:2d8:9226:aa94 with SMTP id 98e67ed59e1d1-2dbb9dc0bf2mr5645257a91.1.1726258157716;
        Fri, 13 Sep 2024 13:09:17 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:f375:804a:5c89:62a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbcfdc06b0sm61545a91.55.2024.09.13.13.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 13:09:17 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] dt-bindings: arm: fsl: Document the Comvetia LXR board
Date: Fri, 13 Sep 2024 17:09:05 -0300
Message-Id: <20240913200906.1753458-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240913200906.1753458-1-festevam@gmail.com>
References: <20240913200906.1753458-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The Comvetia LXR board is based on a i.MX6Q phyFLEX-i.MX6 Quad SoM
from Phytec.

Add an entry for this board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index b39a7e031177..63b744c13f37 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -379,7 +379,9 @@ properties:
 
       - description: i.MX6Q PHYTEC phyFLEX-i.MX6
         items:
-          - const: phytec,imx6q-pbab01    # PHYTEC phyFLEX carrier board
+          - enum:
+              - comvetia,imx6q-lxr        # Comvetia LXR board
+              - phytec,imx6q-pbab01       # PHYTEC phyFLEX carrier board
           - const: phytec,imx6q-pfla02    # PHYTEC phyFLEX-i.MX6 Quad
           - const: fsl,imx6q
 
-- 
2.34.1


