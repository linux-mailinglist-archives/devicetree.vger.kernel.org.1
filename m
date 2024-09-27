Return-Path: <devicetree+bounces-105906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C898840D
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 14:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCDDDB227D6
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 12:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED05918BC3B;
	Fri, 27 Sep 2024 12:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PbtF8YJP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6740D18BBBA
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 12:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727439519; cv=none; b=gEzmKZZmDjFqGMmxBajuTI2ostP9rAgYJp9zesbey9jCJnSlB9UzHV19RrwOQYv4wZFicEDY28WlgVu4v3bBRF4cNELzFYc/T/ano3AUhErbwwjP2okpX1NMLo1RJGIg1oXX9Xxfr4o9O+dnS7kqVAOq9trpdr5aSQLmnXyMaEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727439519; c=relaxed/simple;
	bh=dtX7p43c9EfWKtIYreh2ZNsXHQpGNGn8sWnAnM61D6s=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=vCjYlDn8MadZ3v8r8gUz5m4GxXMPTeltDW6ob7gAaIDZ//CQTsVcb4EuV9D1/zw6TVzakkJdrxzwEz/UiS2NQ0KdBQZmCiqazbFU98q6KMjflFU5N4A56zZAHK2aIK4MYPcWASS9acS/WQplAecbxmz8go9Ql0LmQrEg3PE6MBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jakiela.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PbtF8YJP; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jakiela.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6e248f1fe4cso11132757b3.2
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 05:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727439517; x=1728044317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ELDmQtxXpVLogwubqzTMS3LPGqaX3x3eR2JGyzb/QuM=;
        b=PbtF8YJPN1Bpghv3pigDeXhqM8qiDD6BSbBe4haSbo7H+bPcl5JWZv676eFqgHrPs5
         D6t2IGE93ymjHYIRABZNFWv6gE6tsO3opSMu+qVahLKXbviaUhLR2wxKDpz5z6NCIXcX
         9HlxoPgyIlMuz1joE/21dqcJ364Cru7mAlRWBC/3znmwRn0u0k/jDQC+VCYC06z5yBbm
         qpA//JJRhtox3Bokv85xH33MVDYficP2R+qgGq03p7WZI/MQgAwKsp5DL4lSbO7eKbBK
         sPmSP4KVDDTTNTn5Vlg1wfOpXrEvrKM4308hnwGC0egQwQChYsfbKS/eI6tGaB5Dhxgh
         w7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727439517; x=1728044317;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELDmQtxXpVLogwubqzTMS3LPGqaX3x3eR2JGyzb/QuM=;
        b=R/uOr60jLrRrttzSnwV5WilxyUdpYGfM4y5yGn/A0xcaHS26AYcI6U2pdzx6lQOg6I
         6ygZFucIDhaE25qMhOxs2aA21sJFzuUS08MQm+k4p2mttVhfeSS1kIbVOHBQrqgAyugg
         2XfNkZXWK2Sl1u9u2zQwYjee8UnO40/6PtOLiTd5XujmOonM+CDykQNxD3X5sh6jeqBx
         pAh0ZJwrVJ23fKbKbSk5JRb6Gq7zUrcU+iOU2ILy4zXRWIdYeUplfT7aYCg9+EY8GGM7
         VPnbvRgq8BS1FxlnD0l3CTackG/+eRXgPpZihxezi/tg3JnwcYrqw8EHY0I7OseKBP/A
         3rXQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+IridKA6dLr+aq535XLl1ZdUvK7S556rJj9V4ZN6R61cEX/9ykaKxHq0eCFvzFB30pA4Gaf2Elorm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc3F4jOMtRKiNq7dc0Tn+VHsG7l8/6R12gsJBkqi0G5FD+U6X+
	2OGNK1BbZR8rKEskJZUviTNJgqJvKjwxDlrtaSfIJOJvT1iGiy63O0/RCvb3jQHl3LQOqvqVS2W
	F01bhkg==
X-Google-Smtp-Source: AGHT+IE8KqmibgTKaZZdzfDMUva1eju3nSdBv4cAgVn21FeAJz0pOOF7lsLcDdkXOl488n6rYNwhPcAvyq/n
X-Received: from malysz.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:a1e])
 (user=jakiela job=sendgmr) by 2002:a05:690c:2b93:b0:6dd:bf69:7e06 with SMTP
 id 00721157ae682-6e247618d37mr58677b3.7.1727439517064; Fri, 27 Sep 2024
 05:18:37 -0700 (PDT)
Date: Fri, 27 Sep 2024 12:13:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
Message-ID: <20240927121418.4187550-1-jakiela@google.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: mediatek: Add MT8186
 Chinchou/Chinchou360 Chromebooks
From: "=?UTF-8?q?Albert=20Jakie=C5=82a?=" <jakiela@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: "=?UTF-8?q?Albert=20Jakie=C5=82a?=" <jakiela@google.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	"=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?=" <rafal@milecki.pl>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, 
	"=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?=" <nfraprado@collabora.com>, Sean Wang <sean.wang@mediatek.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Add entries for MT8186 based Chinchou/Chinchou360 Chromebooks.
These two are clamshell or convertible with touchscreen, stylus
and extra buttons.

Signed-off-by: Albert Jakie=C5=82a <jakiela@google.com>
---

Changes since v1:
- PATCH 1/2: Delete sku2147483647
- Link to v1: https://lore.kernel.org/all/20240925080353.2362879-1-jakiela@=
google.com/

---
 .../devicetree/bindings/arm/mediatek.yaml     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Document=
ation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..47efd96e5659 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -239,6 +239,28 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - description: Google Chinchou360 (Asus Chromebook CZ11 Flip CZ1104F=
)
+        items:
+          - const: google,chinchou-sku16
+          - const: google,chinchou-sku18
+          - const: google,chinchou-sku19
+          - const: google,chinchou-sku21
+          - const: mediatek,mt8186
+      - description: Google Chinchou (Asus Chromebook CZ12 Flip CZ1204C)
+        items:
+          - const: google,chinchou-sku0
+          - const: google,chinchou-sku1
+          - const: google,chinchou-sku2
+          - const: google,chinchou-sku3
+          - const: google,chinchou-sku4
+          - const: google,chinchou-sku5
+          - const: google,chinchou-sku6
+          - const: google,chinchou-sku7
+          - const: google,chinchou-sku17
+          - const: google,chinchou-sku22
+          - const: google,chinchou-sku23
+          - const: google,chinchou
+          - const: mediatek,mt8186
       - description: Google Magneton (Lenovo IdeaPad Slim 3 Chromebook (14=
M868))
         items:
           - const: google,steelix-sku393219
--=20
2.46.1.824.gd892dcdcdd-goog


