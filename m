Return-Path: <devicetree+bounces-234469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E5AC2D6C3
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 18:19:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A16F61882549
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 17:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA0431A814;
	Mon,  3 Nov 2025 17:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j9mGWQcR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAE431B113
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 17:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762190258; cv=none; b=aYsQqFvcRweA0hDYRC0TtWNqpWUUkKGY02+WosUvMisXdwL2p8j7oeozIy48fwfkXlBq9Hebt2lgzpZPpZSha/EvoRUYsUbhsgoibJd0vn1shKvOOq/HzhBB4uLvdRQXbhvjwSVfndtikv/zSMsxP3r1UC7sEa8kURvkTjnoiHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762190258; c=relaxed/simple;
	bh=Bh425ift6EKvXxJnyflVAGDPWyUk+hxBRIwgXrxB/NI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IaqEUM1hagNYEuIlakkFT/e0h+MzQ5RFpmRbFjf6M4Xxwu1LCQG0hw3yHEChZ+4tWVDWWrytBBMHQ5STIjpgAEwK4Hb7DiYuEfUjk7iLpoON9EoAh6/DnaNbt0F9YjRK18v7GGvnldRMVYu/vH3n09Xbue2pjKTVX1Z5z/27LWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j9mGWQcR; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7a4c202a30aso4601902b3a.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 09:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762190256; x=1762795056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPWqT9ltZKPbWWhVTqxcM6qSbxQc4UppEkvUs5jJNuY=;
        b=j9mGWQcRrrK2vQ8ztryM9Y/G3wXB7bylfOzx3Jcr79XXT1mdbjkK36gDd3GKq+Iqkm
         ur1+FyKd9x1DE19WBbl23mCgyDZxL29WyiXdZHD7ow34kg0IOB8uXFJbpYeK38x3rFX6
         H+ukpS8caEbxNJ/RigWNnoOxv81z0WAE1i1AJGRgeCd/HQJ2u2r8/3rArX9A3tluWMCn
         dnB9eb2IMWGU9CCuo+UQSM1D+FGf5TXcY0pvm39G8FhKmOKcY+XFi2X+gSptm9Q5l5uq
         Uuj/ip+y/AeWamEX9+ZRxgRZn3jvxyQdArC98jR9CSDu9pKaupd+kIXZF7TEQjCz25Lv
         l62A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762190256; x=1762795056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bPWqT9ltZKPbWWhVTqxcM6qSbxQc4UppEkvUs5jJNuY=;
        b=kWHiAi+YCeQ329boAsWR/px/jWtRSAoaWgdMR+AEkbaj1RrhMC+Lm66JAo29G+XvBr
         0/4+bbJCAa582b3I3lUOheTpiL3NOVwWs1UaF2qBfIizccpKj+TXDKCAKgUkPNdQWCqc
         rKjselzaf9/N23maO75925hR8iUE1bUTzjEPt7GaGDQre/r3YangpJaiM29dn/d3kp/d
         OdNoj1AOy7akxRsA3a2/OgVKcMOG2+xNqZTU8kv4Z7P36uKYANABA6gR2J4t4QbB3h0F
         K8n1ShjpuTEGtqjnhMPpS/8ZER6fCIjVCkpjjJY+uwZbZlYE5zR88GxdQGFOoP5uOPKT
         9EQw==
X-Gm-Message-State: AOJu0YxKd7kWMq0U0ZfiOsWXqyStdDQuH531tLlT7lF4ImrIuWQ8PqWO
	N+mhsTgYqBqde/OC2EN8CACtHsvxRrli4SbM+yzyTpmAAuz5HGUxkwoD
X-Gm-Gg: ASbGnctKxGEtdW2AlM9TcfYtz8aPhUSXvmptEEoNAt8CP23s6za3kkGtYinLB6xiOxP
	L7GZ0P9Z/ruvso9clkADS5AAmfzMpFeZnlfYQmoIJs8VD1oZSN4m2PMHIp69VSNMJIMMQMsAjd8
	7fL6pGt79bhGke0O401qECfwwzSCZVjT3xrLxiAHjadgaVX6jMw9zE+Wv26ZDe7UGQwlvdcW8/a
	YcXc23DHqSoLamU18NP4HJX00ZYFYtkMZIrJM1LKpIZAnZjebms6jKBpX8E5dcMyY6a9picNSyQ
	RyiMxISUCe1K3MN8xrWCqbjo8cuRY8mLXjfh4TDiXtllI0b+OLeg98oa5a4nL1pvrddUqtv2Bli
	1C7iRZrYASXXmVtCI+ZGk8yt8A7pyhpuB0AOCj90Hg07M0zd7SO59baYMdILNeYheostXZSfdy0
	DHhPku3wbPhg==
X-Google-Smtp-Source: AGHT+IF/rCUTpuM1jtcm99InanDksEwGe6KOBOO9WDLmz0bycdnKff9axedjvSMnH2NA1RIHweT5UQ==
X-Received: by 2002:aa7:88d0:0:b0:781:2291:1045 with SMTP id d2e1a72fcca58-7a77737e08amr16094326b3a.8.1762190256392;
        Mon, 03 Nov 2025 09:17:36 -0800 (PST)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db28d3fbsm12148112b3a.43.2025.11.03.09.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 09:17:35 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add 9Tripod
Date: Tue,  4 Nov 2025 01:17:00 +0800
Message-ID: <20251103171702.1518730-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251103171702.1518730-1-coiaprant@gmail.com>
References: <20251103171702.1518730-1-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add 9Tripod to the vendor prefixes.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d188200..97b169f63 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -30,6 +30,8 @@ patternProperties:
     description: 70mai Co., Ltd.
   "^8dev,.*":
     description: 8devices, UAB
+  "^9tripod,.*":
+    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
   "^abb,.*":
     description: ABB
   "^abilis,.*":
-- 
2.47.3


