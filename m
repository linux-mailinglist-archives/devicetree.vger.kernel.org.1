Return-Path: <devicetree+bounces-102943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 84447978E70
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 08:32:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DF8CB22064
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2024 06:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC354AEDA;
	Sat, 14 Sep 2024 06:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Jhb9iEzs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECC913A24A
	for <devicetree@vger.kernel.org>; Sat, 14 Sep 2024 06:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726295500; cv=none; b=HwnLbnx6zV2UN38ZBFkZIzVL5CvTrcyGJqUtppM5PkD8GQfHOKJMnU6IIHJIV2eYO3u52k2uIlrXYFVUTFejQIBGvv5PvDX5u+BKd82/jfwOY1mkANG9NJIh6QHheEic8xcHLSnOShwTcVPrLVjdmv1dWsQLzIQkArG912C+ECY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726295500; c=relaxed/simple;
	bh=vfULJRsB4Lg+7qZAwQwPIzpiKEFydiBlcWpXZBfz45w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ip/Y90cS7/NpXaJnMqH1gRLUeCqg2z/9Jt1TIUo5TlBYwtzgJBjo5TqTXslBDjuSKKFCPlG7QDF6nhY4zxrFZW/adz6mIWuQFJhvdlnRCPLWExEzWiJ5ULEh5OGIWkxEO+kocUnVJOwMRFT/RX2hioToo9ngsJxgN5RplD9tudE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Jhb9iEzs; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-718e9c8bd83so2855598b3a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 23:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1726295498; x=1726900298; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZMbpfoBsozAlPEt45oixhx4qB7QHE0ziqmDEI/ywgss=;
        b=Jhb9iEzs0SraL73DguUEm89Y6MalV+HLPyKnx6nAGjpUtwkrphnHWjZL0/CoQWgICR
         TyZeowcCrBrFxvQy+LgMOS1fBkS2F3OsfLi9laObLUtmlNDjct0Li+Okmmsi89T9ALmn
         5xHsdW2bieRRKY6OSEgV1jx8gTIjL2dT+9W1WcNPpniVC40EtKugE8ZAARdJgnl/hhXE
         X/xjaLjLuTWMEx8OeVAI9ydtbCzIq60ZGIZgI9s4wNOfGM/6e6jY2Wskw2Y+MeJIwLTc
         bY5hU9OyKHbIh9gASGV8tzS02y94a95BOr18HbGJwvWsdfrn3W2hmg0bikScMN7in9cq
         y6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726295498; x=1726900298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMbpfoBsozAlPEt45oixhx4qB7QHE0ziqmDEI/ywgss=;
        b=V7P40jmP2jYw9bqfxzilzhuh0bufLkcBhzezDzGvpj638QSEY9tUyC/gbR01mjuXqD
         LiM6lYPS7Y6bdMA/iZUMNqSWC9lnzqqls7537cwCIjQSMcy2vIh0DVO+5yrsCPWLk0xk
         L55C2AEyOCveSlsNjwQuzS62iwgl7FFN2fomWQgqjWEgSnml4y64nfdHsfS8eo6/NBm3
         JjgtMB+319zyFZ8gtUi/gTNRfPdiGVCvy5BHjh85KzPsDQzwA6bPfkSDp19bBTHQNriG
         nvsqgYu+Ezx7j5SCEW5zx5+alP/f3SUEFCoy86pwK2MCs1f7GsjXVuZKfHdWvNW0OqE6
         6WrQ==
X-Forwarded-Encrypted: i=1; AJvYcCU188EjyNczKBzKmUmdjBX7wHqCFCBaihTzFrtcjltLG0OK3c/U8DK6+U4uLLAHiKn+rUWRp6nBFa1Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzQiCj1uzmV3QABl1JNLwk5ShFTTWUXDkl9FSrP8v0Q3DZQOfQU
	EnbWYSdYhCynF5uX+N7GV9LGm4+bGJddApdiaclzhqK8o+4Ve7qsDOjoYQFQImU=
X-Google-Smtp-Source: AGHT+IGycpetak1pWQ8TZomDKaTDzd4/oHu4i8ppeV0iKcr0nagXoU73WEZHK3VSlahquUT08PKg5w==
X-Received: by 2002:a05:6a21:328e:b0:1c6:9a3b:ba44 with SMTP id adf61e73a8af0-1cf5e21aeddmr18019343637.25.1726295497922;
        Fri, 13 Sep 2024 23:31:37 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db4990cebbsm599216a12.37.2024.09.13.23.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 23:31:37 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Sat, 14 Sep 2024 14:31:21 +0800
Message-Id: <20240914063122.1622196-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240914063122.1622196-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20240914063122.1622196-1-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Ponyta is a custom label Chromebook based on MT8186. It is a
self-developed project of Huaqin and has no fixed OEM.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
Changes in v8:
- PATCH 1/2: Remove custom label.
- Link to v7:https://lore.kernel.org/all/01020191ea98a643-2d0be5d1-e00b-48e0-b823-bfe2c65b0d00-000000@eu-west-1.amazonses.com/

Chage since V6:
- No change.

Changes in v5:
- PATCH 1/2: Remove sku2147483647.
- Link to v4:https://lore.kernel.org/all/20240906085739.1322676-2-cengjianeng@huaqin.corp-partner.google.com/

Changes in v4:
- PATCH 1/2: Add more info for Ponyta custom label in commit.
- Link to v3:https://lore.kernel.org/all/20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 1/2: Modify lable to label.
- Link to v2:https://lore.kernel.org/all/20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com/

Chage since V2:
- No change.

---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..88f50989ba3f 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -257,6 +257,16 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta
+        items:
+          - const: google,ponyta-sku0
+          - const: google,ponyta
+          - const: mediatek,mt8186
+      - description: Google Ponyta
+        items:
+          - const: google,ponyta-sku1
+          - const: google,ponyta
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.34.1


