Return-Path: <devicetree+bounces-236071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 166D4C3FB20
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 12:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 82B424E610E
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 11:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7743F323403;
	Fri,  7 Nov 2025 11:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ezilsY/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B03322C67
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 11:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762514262; cv=none; b=fwJdMkSdGUylUcpyOEqciGBWyG64S3LKHuUsnJR1Oyng7Pdw/ee0RGnRkrfdbvtge+z1L80Yy72sTwcHTRPwRb2K2+uTdPBo4KzxKlPBHVfoSG6fuc0WA2MkG9IysHOF2jpag0Yi7UfCxRAGdCjqCb5jMTt70qR2FJAqXkETgXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762514262; c=relaxed/simple;
	bh=/s3k3gaQa5vELRzkRL0kZbmW5//OLC8cCCrARdlhhI8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gSmV5oDNbUGO7dzmWkAXpByKOGiazFeNWlLWJVRb/cqxcN2Zj9stYzNaAHoaHYz1MUZ0BSJetXjST/OQLX62M9xULEAHD+M+9mfQURFjzZCRoYdtwSoGtLlqv7aAoy69jrwrU5rVgAkaoz+uFdUHHIxnU6YlrR159mTvGQ76Y0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ezilsY/Q; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b553412a19bso361039a12.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 03:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762514260; x=1763119060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+DZ/Hzt/Z4dyeSpA3JZAv4iA86Nxbb9HIqSS2XvFzQ8=;
        b=ezilsY/Qa3PiFl6X9LeVDH2A0a7gKBHbBqWs2cwo/aJ+cgr7wRiPQepenViWVBUEtk
         vjkmftqgYAgCuaY+EkhaBZ5ecBkbcrcQwq7hkCk7xkn+z2drBCXw5GQHEjCD6pmxxrvV
         zTdjM2Ybf6m2LxwalUHXdcvg0TPxSzlg8bi7LKDqxWqGpI4DvHHqWGcceRHwGzBIdcJo
         IMxwfFfhHQOJUnL8iVy3WLCsFafVTECyXxjUCrP2q0YXWP/kPd0HAB84lX9erwsXXj1U
         RJaUyDpl0E38VlrbWuhhlFzJxOBjoU+AzrN16J/AVf12tLi5Gr0BhH6QYRIbdtK/OXPx
         D7fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762514260; x=1763119060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+DZ/Hzt/Z4dyeSpA3JZAv4iA86Nxbb9HIqSS2XvFzQ8=;
        b=MFhb+fU8OP1PpMjpJvBqZM1wBcZyi13sHTdB+OaGsJWQZNP6rJoKbTEAbTYEVWGVK+
         P6zdFi0SgCz2fIHmSVU4aHvSIsBQppeJe5AAG6jbpauOUsY+TEmG6yImHQUpFTxlv3vd
         wcgrIllQncry8DlFOEiQgj9z9K3AKUnwGaGv2XjgNZIZp80Oe7hgh9D6ehpGBRuYLyla
         NmerZETbUejUvesZ+wlopKry2I4nLPpwg32qlFw/mchdPDd3j/RhalhEt90zoQ7HqGI0
         134X1y3KbVmCI3pqCkAQuGwRrmIvaiY1izBHIijHnwcWuT9igzdyUOaRC1bK5Xf6ohgy
         VrUg==
X-Forwarded-Encrypted: i=1; AJvYcCUDyVF8afaN5XFgLOONM3iQ9mlP1yeVGL72gCxuluMTaJoZaqVxsRgHt6i6k/4g0ZYHWuadFaCqPomn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0R7IH1lTIWZkregKY7bZPifFbOiHcEfu8flZfT3/Rplzh//PC
	LVulvZde3pUr+fjCe69r/N4Jr7G//6r8sqLWqSOYQV+ilhQCx+CdBW3n
X-Gm-Gg: ASbGncvVD0oVG5I6sNzMa5c3YdZJcMEsBFosg1BuiqVmcppXa2Q5LFQL06eoFTmc55f
	r7WAOedwcHjOcYbp2FjR5IycmzJNC1PlFUU0pjLNQMX8wobtCqUWunS+xEioGNLRA9aXyRtNCsp
	Nt3rO+TWmLwPYgaVNffBgF1QZGyT5FImIjzMF9IJUXpEPGXonDc4uH0XpD0HRvtmGwyWm05CJGD
	5K+0ZAN7JHCCxDlw1gkyzjJJOef8pOGrLH8zHVxTvN/sApvLVOIrhQNO4TyMsmbZ6Y1o+ygT4gX
	X0ZE4phX7Hz7kjo4lW3kLJdmU23ouz0y0taLzicwj76Zl/1FkZSqNBWYZLBSpimo+zwpT56gwL5
	IxRBmo0Oxn9zcxezR09Dvi841Cw/jV/TnsP9upeV0Hze6relqb/qX80DBq5Dci7sw9kSwLb0uJW
	w=
X-Google-Smtp-Source: AGHT+IHjf5f+YuLvxkmcrd3cJvkmjsyY1yheeW5iHSKdbzLJ/p2M1xTgPY5ean6VA+ewJk0yolgl8w==
X-Received: by 2002:a17:902:ec90:b0:24b:1625:5fa5 with SMTP id d9443c01a7336-297c03b66b9mr44655785ad.11.1762514260220;
        Fri, 07 Nov 2025 03:17:40 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba8ffe3616fsm5131381a12.19.2025.11.07.03.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 03:17:39 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Han Gao <rabenda.cn@gmail.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Yao Zi <ziyao@disroot.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 1/3] dt-bindings: net: sophgo,sg2044-dwmac: add phy mode restriction
Date: Fri,  7 Nov 2025 19:17:13 +0800
Message-ID: <20251107111715.3196746-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251107111715.3196746-1-inochiama@gmail.com>
References: <20251107111715.3196746-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As the ethernet controller of SG2044 and SG2042 only supports
RGMII phy. Add phy-mode property to restrict the value.

Also, since SG2042 has internal rx delay in its mac, make
only "rgmii-txid" and "rgmii-id" valid for phy-mode.

Fixes: e281c48a7336 ("dt-bindings: net: sophgo,sg2044-dwmac: Add support for Sophgo SG2042 dwmac")
Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/net/sophgo,sg2044-dwmac.yaml     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
index ce21979a2d9a..ce6fc458be61 100644
--- a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
@@ -70,6 +70,25 @@ required:
 
 allOf:
   - $ref: snps,dwmac.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: sophgo,sg2042-dwmac
+    then:
+      properties:
+        phy-mode:
+          enum:
+            - rgmii-txid
+            - rgmii-id
+    else:
+      properties:
+        phy-mode:
+          enum:
+            - rgmii
+            - rgmii-rxid
+            - rgmii-txid
+            - rgmii-id
 
 unevaluatedProperties: false
 
-- 
2.51.2


