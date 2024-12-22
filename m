Return-Path: <devicetree+bounces-133397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F5F9FA74F
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:38:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E76181887177
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 711471946B9;
	Sun, 22 Dec 2024 17:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jxQacDJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22A7192D86;
	Sun, 22 Dec 2024 17:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734889097; cv=none; b=uru3dPSOOt7mLbSLHedpWrJYKjAQ+EfzSbLhWVxEBfJsfyyO5hqyEZhwFgTKxLMZ1wGDsDA9WipX+d3cBkchtp5B3krPTyfdD/QfjZjXsvGDEj8Or/P1FqYtbphCX1fnYEMoM8EwBsSst6jn3UBOeUdFMioW/4OCxpQWp/yet88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734889097; c=relaxed/simple;
	bh=6pZiuvJaNtb/CqZdgPcO1kRdrv9vQuk8hv7BwCYOsp0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GY7GYii5qddj0uIdxo6YmaxIo4znQS9Ougx0LHEIEPQUfWSN3hXKpS7TAnDv1snJXIt8JAN9TIUL0uS0beiXKObcEKvmRRo/pfB7+DR24Z3d1BJB+jXPEMrrNRo5DrSlV+DN304kBJdsCfkXInguBiUahb09AeMqnhHOkyDtyBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jxQacDJw; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-216728b1836so27360005ad.0;
        Sun, 22 Dec 2024 09:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734889095; x=1735493895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hebD8ipCbzY7nEzua8g0Qgmxl+l/xC/PNKeirRiQP54=;
        b=jxQacDJwGLdVWB0233ZHDOHnttZmvrx13JUo+ild38NhUyoKzyEOz0QUaz/HGMEzZv
         y3Nrv/61fSpg9VlpvwfPZyog2M4quKfe+lDVwEUjg+39EsT9GaGIt0Klu4vOXhjsNGub
         YKBDDCp7/I+7/K3y7iZFg5nt8NF5mnJtrEJVwyi+l1jcuwQ7AtEG/tsc/5sMD9ONnrGI
         PDVrdscWnnd5+6ue3f7/XKxwo9YbqYbpC52QIj7xUgfMX2DLQG70glXqs7ys2fgBs+B7
         hlQMfTqEyNKtXcSdLaG6QYRxbP31GPGcgmH61b9eY9tfzin6cLc0ylTeo4/KR5CBRAK8
         BfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734889095; x=1735493895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hebD8ipCbzY7nEzua8g0Qgmxl+l/xC/PNKeirRiQP54=;
        b=id/Lof6L6LoFy+Y9yc4fwL7xxRJ13ZO9Db7ugQujiCyvo0a1+EO9lPtppjZEJYS/lv
         maLdhu97O19jGF2XQXCA/VcaNuhPHyB5e8oyyeK5OLGi7/pJrAqQflfu8kXGhxxknG9d
         jc4tTwXqEq9v/R23Gh/n/RmkMWmHg6HBowE6Ec8kX7plATkbK5/tK+BW/6a5yxxYde2a
         XsHGKw2petoUrNW2X8zwK1Q9NJxvMR+ZQik9eGyG3etXyXBXPo2sKpOHN9W7+d0Cw2lv
         k7MCVXn1dXQq2WcQeEZIWSXtqxInmEydcGyaz2PhhegSiAqK/VcZFK/eMHHvckpwAvQ/
         0J1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVy2YiHZE6DDLWJScpKdwnV/G2IJ0/VVSp+0cDcGlrafmxtpXN6uc4/p726nz74txVH0K2nHhtj//Xd@vger.kernel.org, AJvYcCWkHK4xVqPh5aTd00j0muWVtFPqIKT4xgs2sYxZtnEURMzKIUYOtefhaDbc55ZzWQ0RtrVjEqRN9g0KGkE6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2g7wy9oAUPps1g25umskkJv8t0fGL6fj//DUnf4SZd2fV0Kgn
	D+xd+zidwS8MZMyT0dJmKfNGYJb4fzVvDKrhD1S+sr+8A26mGW1l
X-Gm-Gg: ASbGnctxVFwY0+8nO5g0uQYXsbGOaeTOZaHv3HJqVdmuP/dmmShtO790Rqo9WRGofhf
	qEkpT26e+wTkSTqFoYwqDqOsGk5gevqALZTHEPxgDzVx8j7KTsuTtwksHa+fpb7yA0gREnhs5rC
	cGGBUS+2DbhBBi8Klxpd7fzeJ45vPpFFUVLtEmtD2lzTWwnm0RajQEeXc9mnNig24xZaei+rHX4
	H4TdMqZyf5gbrL0y5Cp892mi4YQQHBQjudfZ1Q9MuqSG8ZxJ6rZXCFRDg==
X-Google-Smtp-Source: AGHT+IHTIsviKSZ1LKilIoOjqzYkBQpMrGt61rnjhIo4zoH5+CmZSeIBYKiQb7rgGn8rEI4N9j1c7A==
X-Received: by 2002:a17:903:2287:b0:216:682f:175 with SMTP id d9443c01a7336-219e6f42c4dmr149570225ad.49.1734889095279;
        Sun, 22 Dec 2024 09:38:15 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dc964a73sm59328175ad.45.2024.12.22.09.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:38:14 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neal Gompa <neal@gompa.dev>
Subject: [PATCH v6 02/11] dt-bindings: arm: apple: apple,pmgr-pwrstate: Add A7-A11, T2 compatibles
Date: Mon, 23 Dec 2024 01:34:52 +0800
Message-ID: <20241222173750.148071-3-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241222173750.148071-1-towinchenmi@gmail.com>
References: <20241222173750.148071-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The blocks found on Apple A7-A11 SoCs are compatible with the existing
driver so add their per-SoC compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Hector Martin <marcan@marcan.st>
Acked-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 .../devicetree/bindings/power/apple,pmgr-pwrstate.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
index 59a6af735a21..6e9a670eaf56 100644
--- a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
+++ b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
@@ -31,6 +31,11 @@ properties:
   compatible:
     items:
       - enum:
+          - apple,s5l8960x-pmgr-pwrstate
+          - apple,t7000-pmgr-pwrstate
+          - apple,s8000-pmgr-pwrstate
+          - apple,t8010-pmgr-pwrstate
+          - apple,t8015-pmgr-pwrstate
           - apple,t8103-pmgr-pwrstate
           - apple,t8112-pmgr-pwrstate
           - apple,t6000-pmgr-pwrstate
-- 
2.47.1


