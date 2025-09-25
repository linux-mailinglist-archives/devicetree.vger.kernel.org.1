Return-Path: <devicetree+bounces-221529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A04FBA0AB1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:41:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A9747B07AE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 16:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E1730BF79;
	Thu, 25 Sep 2025 16:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e7a2QSA2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F24630B524
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 16:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758818456; cv=none; b=uxA86OqEWqZyia8u9iitTPdKui2t5W7S4X0z8mSgynd5CIjAGqtqcc63XI/P0S2DBx5TixSwwdZPAc2UyHJ5xsWaJBUao7QnvYSomou7ui8iL3svH88WrFsyODDPgcnMVleBw6HeOg+27qsiVpgkqLeBP6aWfGYH8MJz2XRPitM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758818456; c=relaxed/simple;
	bh=5bKaIyYtkl+MP8Bbq3igxb/jXbBeVFx0aqkgSriTev0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S8ulLYzmV0tLKz+IN5A4rZfkrBJx/y+rDcvMAP+n9pyeSdqhrb3JR+D5acMHXNRbDlZwygLbgHc8v87aJuSnFlNxISi27TPUbKD08eKw7Myy+OXCkx1QQGfIw8Wlsc8D2jPUzKiKBqnj5gX0ABFHH7uGiImljOxZJtYg7PvVQ9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e7a2QSA2; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3f42b54d1b9so1428801f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758818452; x=1759423252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2eyp9Gi1dreOzDe7chY8j7wPpNbM6pbeZ96TyLDdfpM=;
        b=e7a2QSA2TOGxL50CH7x8FYWAIaHtCmjWVXSJlEEaHykFssFgAUUaSzl9CA0iI3OQd+
         S2PxDRp0mhh53lnxRnsuXgT7N/YMqMtrdP0E4ZgdYfeTDMa75XQrt4mnTfihLKNLyTr5
         M7rgK6KPpL6A5Uq0t+Bo+53aXuuABxmePeJkVPtzFGf4/JG1GV7IwoG79CG/3cibaJNM
         dSHtqTzgl7frw4fRw5y7jb63Qc5gk11Cz+PPnBpQjYCiPuH6HrL9UxCK2GYWIygZCn5K
         lNBDOjU0uShScE4bwA2qLeJcG3N1lmbhhxbYjxuBOIJuICNU42pi93ajw0R7KE9jNBaY
         Zb/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758818452; x=1759423252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2eyp9Gi1dreOzDe7chY8j7wPpNbM6pbeZ96TyLDdfpM=;
        b=ts2cxKfD/b9EGqA1vzCCc4Ms2B76hWr/uaMTRbzHHNJ9CAF9jQAIk4FuJNUat8rdMS
         X1Qo5o6gwpDM9TI9VZQ7YvotzoRmpDjIaUjcVI4/vHC7iz66vNBxpcBHBdXoabFNZYgG
         EdTppmuYc3wO/CC8IX44WWz/P226+C1PZSQq6EB+AkzNh8s72Tnft0PLwLJLctWl5Nx9
         t8MDVhEJDp4C98jSysK32FtAPM+ZosBpflKpycrGjpaspPd17qrKYkxKvzdiTSKECrMK
         ThT2Uogc2/LapX3+GmeAI1w+D4YDexvWGrxDRB4mD+6JNaFUPrXgGOxnmCZtYL+LjnMA
         greg==
X-Forwarded-Encrypted: i=1; AJvYcCWHXIEVxGzgOhg5EzvRv4J29vDNoY7RMD+98EjmJrVv1soMVB+n0wE2wrUrvb5SAptkDENyEGinSgeY@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt11BIokZWnX0AzPOYfk1Hx0SXa0z7DLBWuK4JD+ZRvQUUoFtI
	T2R6jt5t54RT+GVTxvZ8F8TRhE4CHGZ4+vMVXHkh9KMAR+89wp1f2az3
X-Gm-Gg: ASbGnctG7BzMpwlyeNckjjSKVrAdPiWIM4XZESndj6VkG82IdqqJ73ugUFDcDR0kSfk
	mC0bnCe8EKHXtWDOoQxHAeXUiRwWlluvt6weao/l8Gvg9H0a9cfafc2RhTmknM+b0YW7eVox5hF
	rBaDYERr24/C/RXcQkSSe+to/X5heUICIWTlgLzt3cC9jLtMAZ8yOVn+0A7hR++kFZ9kJDbjQtb
	A5tiFSA3oMDzs2XoNR2554f0lMyq7a9KAvRZvcxvF24VtuLJsrzg86kvmOStsoLbXOaPAWfgJtm
	6WxJBAsrHIk6p3rZEMV5yZyZA8hQOGuTTGUhKXxfLGG3XC0MrHfldFf+DcC8xtf1OQSByjrOnqO
	YN80evSAJr7GEz8yygt3OxGlNkyfyctyLUUntZaaMwu4QWmKFSsjOAmEYXRF3KNEz5iOd76+bAc
	W3rVqEqQ==
X-Google-Smtp-Source: AGHT+IFuboP96UTpd7Lrf1lzxKViS1D5GdrbEgDmgGvbVgns+3irooGx/K0KSA4xhs66h89FOOvM5g==
X-Received: by 2002:a05:6000:3102:b0:405:3028:1bce with SMTP id ffacd0b85a97d-40e4886dea7mr4262966f8f.32.1758818452397;
        Thu, 25 Sep 2025 09:40:52 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fc6921f4esm3591904f8f.44.2025.09.25.09.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 09:40:52 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Felix Fietkau <nbd@nbd.name>,
	John Crispin <john@phrozen.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 2/4] dt-bindings: watchdog: airoha: Add support for Airoha AN7583 SoC
Date: Thu, 25 Sep 2025 18:40:35 +0200
Message-ID: <20250925164038.13987-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925164038.13987-1-ansuelsmth@gmail.com>
References: <20250925164038.13987-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible for Airoha AN7583 SoC. The implementation is exactly the
same of Airoha EN7581 hence we add the compatible in addition to EN7581
ones.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../devicetree/bindings/watchdog/airoha,en7581-wdt.yaml     | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/airoha,en7581-wdt.yaml b/Documentation/devicetree/bindings/watchdog/airoha,en7581-wdt.yaml
index 6bbab3cb28e5..6259478bdae5 100644
--- a/Documentation/devicetree/bindings/watchdog/airoha,en7581-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/airoha,en7581-wdt.yaml
@@ -14,7 +14,11 @@ allOf:
 
 properties:
   compatible:
-    const: airoha,en7581-wdt
+    oneOf:
+      - items:
+          - const: airoha,an7583-wdt
+          - const: airoha,en7581-wdt
+      - const: airoha,en7581-wdt
 
   reg:
     maxItems: 1
-- 
2.51.0


