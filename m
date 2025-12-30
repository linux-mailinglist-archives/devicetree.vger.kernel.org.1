Return-Path: <devicetree+bounces-250519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9CBCE9B7E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:59:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 167DC300B68E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B651DFDE;
	Tue, 30 Dec 2025 12:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nt+wYWCy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE352AD3D
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 12:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099567; cv=none; b=AZAVg49ZkfG+AznSrHCaM1DMk8JOizLaQWYteEk2lWKYbb9txZcFxLC2gYXpvXVjAUAXbGjQUFryOMGgpyiP/UmZ/ynf76lwB1AJstremlFV9mbvoW7Pz/NYFXTtGomq7M/T6XQ2MIzZx7X6QbSN+66bEYt3Pv1ClCEtRxAdKKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099567; c=relaxed/simple;
	bh=9Y9E1eUCfJV0oDSo8vhs86x/CPD4Zpee941RDek5LTI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kmvWUnErfQ4W1Xy2QImsAA5a48yh+qPuvyfDsyb0W6BsK7Wij7UPFNqfza0lCJOXSdiQ5TVN+in+GkzUiUXk2BB1Np8lPxu8dfSRyBQ0R/Nj8aVVEGWeA2lNfWsmt5MuCHei66saxXsVIFx5M1hssnXc4CHI6T8LcpTzOpzpMY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nt+wYWCy; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-bc29d64b39dso5334365a12.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 04:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767099565; x=1767704365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yp750MWINpgK2NvZnHynlpix3A6wZrIevbzSXr0Mmu0=;
        b=Nt+wYWCyRoNxC7K6ermjWMNCQ3hdQnNG0XGxinxbIlSDBe7T06eWeIKl6cWGzw43GL
         uz0QK8RYTDbv0Bs27U0oGKwCtVcTURKf3GmVEqnQ9Xxr/O/6VP9MZ1Ws+Div0M95dBhP
         RkvreN0IrHThaL+4C5MtvWK41cZlHnzsfiyBCKbjnangm7D3ufSOzN8tPfpGLJKt/xGx
         9Ij/7gSVuh78mtFDH9jNhRJLJxbz+Ajv4Cq+2YP5DOfRIWj2VxVsfrermRn6xFpi56NE
         2GXrpcdPKoYhdiYu7Mxs1Z1En5jZ5fa8AQP3mpgh7Jc4UkMuOk5sGEqPh9V6WWrinj/K
         elVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767099565; x=1767704365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yp750MWINpgK2NvZnHynlpix3A6wZrIevbzSXr0Mmu0=;
        b=A2sIgtNXgwpP5r1ZB06ndyjz6obAfJMm0hfyEO7BrxuR6qQgQeM/537fCBvQaXcM+k
         VNWkdYC+6kWddP9f/dfUe1swP3CZu5WdwsQKpxjF69av4z2V8+mMh3lflNheetTNjaTA
         ZvYULNAhzWz0UdmZryOLNRJ7TpToRoRAXor8cW1oLTI7JoAU/NnKNQyXLIhBPPsnpmv8
         LPbKqy3D1lhzCgzymPUnAAxbRwxy/yYkpidJZZu5T06GVCT6ecjDsuNWHlzx7Mu1esV6
         b71j0LX+rPjiDrSioZ0BdkXVkYIPsxd5LM5hCUFnzD4Y17th0d6VCzMokiHJShqCg6sG
         xfSA==
X-Forwarded-Encrypted: i=1; AJvYcCVHBRCuZP5Q7d6q94zSHjKTrgdNzta8Z6qwjKvJKwRc+fppahbRsIwLIxyAq9AC+1BzrOMmj7u8aXzS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq0q4pOQ2zLuLh+3i3cghk4ybV+muAIfqfMcmjTPuzBpCbbO9o
	2JEr2spKiALBHSc963WIoUlDI28WHg1ol2GOJpPSmjZ99Jp/H7W9HKnz
X-Gm-Gg: AY/fxX5qkeRbkWxdFOqBX6MvE+HdyUokeE4+ArHMhA9sZOc7ioanC8kc01xCr5l6TJk
	mZCrIekSDSFHrX95xvwvQURBtluqHh7Hjy6osqVrhRh08lU0mb9JlBtf9Ir24wHUQKUJH7ZSxpz
	5bUo2X9PaMTt1Rbmwz1Im4jTyZtzlgrvXhMphyl877WIq6abROBDp3+bEgFPzygZhMxBArU9SOy
	eFaSCEoOWc1vuyEIJdWcUP3DllSV/zkWBelwcYhYVwfKDv7aKhUN/xqiLmzgChs3PaO7Ht7JsAM
	q8bnhHPK7iXltHwAs6Xr9mZ6tyybXyleG5Uyp5BWvdDLHnH74b6MTfy8VX+BL7M69bfaldmVePO
	vYRtSmzvHeV9Zt2pLpMyjitRuOBi0xIUCE3BMzncpQoF7ZeRBtuFkEb6pJdrmzsZaaRQf9xk+9N
	4+Szv2woVl4WzVnpzfRt3veVqW1RQd4H/gRtA=
X-Google-Smtp-Source: AGHT+IFVA/XRBrsi2Ymbd2HIl3yOZ4AY8cnV20h/KUg9ayosmMMcaXvzbDNTtg3adl/AvO8djXMVGg==
X-Received: by 2002:a05:7301:1a12:b0:2a4:3593:ddd6 with SMTP id 5a478bee46e88-2b05ebb6038mr24493296eec.3.1767099564970;
        Tue, 30 Dec 2025 04:59:24 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:ae10:4ecf:7e5a:aa6f])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b05ffad66fsm75132634eec.4.2025.12.30.04.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 04:59:24 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 1/2] dt-bindings: display: simple: Add Innolux G150XGE-L05 panel
Date: Tue, 30 Dec 2025 09:59:12 -0300
Message-Id: <20251230125913.3670617-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@nabladev.com>

Add Innolux G150XGE-L05 15.0" TFT 1024x768 LVDS panel compatible string.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index fc244fbb5a54..3b7550f09936 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -182,6 +182,8 @@ properties:
       - innolux,g156hce-l01
         # InnoLux 13.3" FHD (1920x1080) TFT LCD panel
       - innolux,n133hse-ea1
+        # InnoLux 15.0" G150XGE-l05 XGA (1024x768) TFT LCD panel
+      - innolux,g150xge-l05
         # InnoLux 15.6" WXGA TFT LCD panel
       - innolux,n156bge-l21
         # Innolux Corporation 7.0" WSVGA (1024x600) TFT LCD panel
-- 
2.34.1


