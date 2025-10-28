Return-Path: <devicetree+bounces-231880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E1EC122F3
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 01:39:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C0A0C4F6014
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46C741EC01B;
	Tue, 28 Oct 2025 00:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jd7Uys33"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C369420F08C
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 00:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761611953; cv=none; b=e4WVQ/BlBNwtPtUi174tNJhTJ8nmeW7GpoMkIDnl4drVerHM+RdpXuaaPn5Aee886hGcWRsSZBge09J9PwjIUeOOmQo+XZlgGkiWg8JLhY2s1BH2to3/V24Adu3tWQjbzRPHqG5+MrC89R2abS5qtVHrIIBUvunBIg4JtLeGg6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761611953; c=relaxed/simple;
	bh=la5GWOA6va8nayPbgB6XzEsfdMULSOIbIX750WJpME8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=royC0rF5tZVkeV/WrOr+V9Ohcy8n4Vc3Ogd23CYxDz+mEKEEHHmRoHq66cYU6NH8pxvVBjG4Or0hDP9D+Q67zISWRoYJbmMsMXGZwvzcCyhAkNSxiuMFhMtMyh1ixkP259JE5EgH8IhzEjWGvzXrTx8ahEGl/JSOHpUIyQtR/bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jd7Uys33; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-27ee41e074dso55115275ad.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761611951; x=1762216751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DKnShh97FzAXK9uF4JYbivS+DlO0bX3Ab4FUiZA04Ec=;
        b=Jd7Uys3332NzH3gW68MsGFZuLQdjCR7Xk2WC6g+D8VgFl/pwtT9aiPeVYGIGxFsG8m
         L7KsTU3w7aqsK2C2ibQFzYpMaUZEJ2SEsqn1q4IEYG2WmgOEud1D6nhLMOtxpBz3P2nI
         FfpxSrK7wcg8788QMivL2aQaBCxI/U50Ws9h4oPYu/PE7eocQxLiP4cDhSLcstq/qVCI
         j4hiBRuuD4NhR/7xv7oMnbfiZNrr7xR3fCGXdIlztyY3PoKc2F2nmJFmB6+YCGHuu4dB
         LJFCxq63GATxdpdyZyUmJIOYYtKStBeFd+upd1XVEFtSR8PndLkuWlyBmp5xB5qyIARk
         2nSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761611951; x=1762216751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DKnShh97FzAXK9uF4JYbivS+DlO0bX3Ab4FUiZA04Ec=;
        b=Ctp84i7kIzp/MLmhMjJbXAlFEdr80FpuLJtQA6PhXoBMZWwZYb1RUZo463UiZUqzGl
         aIrGlHNkXIISzWVuwJK8ZxBeLUy3qdER4RXXdCfaNI66K6aPY6g5/QEPMh3J16QBkp5l
         NMQsGb6XnoHuqw1fSjrpR9ybaVkRAGamchqUqYvArgLJf2N5pa94v1MwavgVEuW09qXl
         Z17eH5V1dHXVfomE5JVclszrow8CxB/4oajvPl8Z8jOKyU+pAFdaugXA2sa/rrCKfJtN
         bAvzIEQD/j5CRap5rsqPYzV+T+Pgu+cd5uqxJK+5AAXuoeJf71UIK+PmeFC8w8oQhatp
         1peA==
X-Forwarded-Encrypted: i=1; AJvYcCWCkutTa9fLsR5tGh5NJziq+GyhKLfPYoltWxzrPAg5p5WHBUk3UySwZKco7/n2RbhWkWnanA+U5X/K@vger.kernel.org
X-Gm-Message-State: AOJu0YxmelghJzn527xZw31hrSJ3xwVVZaootUXGL0pySDsKVoohq2QA
	keWn6WL+Rm4WLrtnhjUmE9yVRlh4Io35MobkrdY+VupWCEGkRit9BnMV
X-Gm-Gg: ASbGncsOusHA7bE0ku82FUHBSqLLOP3fzrIO/Ykcna3H8nGqw9Eth1dzWkswN8panPQ
	+zozRXQwXoPPuiCPxH7nf6f5bU0MzCamNcEji5BZUzouNeksHp6M18EL31JTE224g0oT6aYn8Zn
	e98MTX3SD9iGDjXSPiWVbsDAjUJaJyO8h4/WoqVxY79JOUxtqxJ5c26LlS7KDx5H69xs8oFOodt
	LVyJXhpoY2+39iKf4G4DR033SvBRl4y4xntrdtrFngdAaT88S5k0elBq5MfOBBnIK52gMI/p05R
	PrcKmuGJweJrl6fs+sUYq5MKGxWdGai4UszTRxzw/rSMQIpHEt36Ot8E0vYa4TNCjHmhICezlIQ
	lMlcd5XU2jF4mdaEB12spie3yEy5KRZCpXlHFdDABZ3QeMRVB621SGRq5m1maiVMWP7kkqqTmxX
	g=
X-Google-Smtp-Source: AGHT+IGDgRzXqJUJJkrtAaCEFJyXOr4mEl+07Z2j/3J+/i5aKBpQqqv/TIGwi4eyT7fk5HkXcUBq3g==
X-Received: by 2002:a17:903:244d:b0:24c:b39f:baaa with SMTP id d9443c01a7336-294cb65f7f9mr16976795ad.49.1761611950502;
        Mon, 27 Oct 2025 17:39:10 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed7e7039sm10005885a91.12.2025.10.27.17.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 17:39:10 -0700 (PDT)
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
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v4 1/3] dt-bindings: net: sophgo,sg2044-dwmac: add phy mode restriction
Date: Tue, 28 Oct 2025 08:38:56 +0800
Message-ID: <20251028003858.267040-2-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251028003858.267040-1-inochiama@gmail.com>
References: <20251028003858.267040-1-inochiama@gmail.com>
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

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 .../bindings/net/sophgo,sg2044-dwmac.yaml     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
index ce21979a2d9a..916ef8f4838a 100644
--- a/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/sophgo,sg2044-dwmac.yaml
@@ -70,6 +70,26 @@ required:
 
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
+
 
 unevaluatedProperties: false
 
-- 
2.51.1


