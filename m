Return-Path: <devicetree+bounces-100769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A9396EEA6
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 10:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8BD0286F09
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 08:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0EB115ADB1;
	Fri,  6 Sep 2024 08:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Iu3dpdk7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082E8158DC6
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 08:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725613077; cv=none; b=noM2U6S3TluN9UA+iN7U+CTD+GPiPLa77eUM2+EkDb7sYnkn7mF/BCFlRlq8lIK3PBDIonJ9GC4/LPst0YFcJm+HY4uc2K3jUPLL49LqwGyZchVd/yXdblEEiG7pKW6LqX9UZWo7zAVCEFOnJ6FRnRMHKY9gUv9/qjSibCp2IGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725613077; c=relaxed/simple;
	bh=EiMc6AKuBTOVH0XOVNo9dyuRDAsqloEKN4IWcRO5bwE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nZOANm0KP4Vf2GZ7upt779soaNB5XZIqMxAHAD1nT8nMJerYjsF0gQGbnBPIXVG6dVGnqmSvHBt0CKN6yeqBLTbr9hVNG4sE1GM9YO5it64KVolLCBQL9QijV0Z1dYp8AtzBVMAtCBtj+Y3nj+pl+vpROfaQau51zDtU4ndIp08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Iu3dpdk7; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7179802b91fso926774b3a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 01:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725613075; x=1726217875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfPCPDyI1RrKAFi5i8oSogBSmIZBHNxCV6AppJiq/Hs=;
        b=Iu3dpdk7UcjgMgJilDhi8eoEVzFoPIj+t7GVXhXxzu0vmvizQs4A6uHx82QD7ZGvUj
         6MQAgc4aMJml2nWzG6rwxaF3hnuftIvEsfNC51cE4sLEsrlTrzLHK1X2Y0xSstwMU61M
         8mD2LU/f7RmTfQm757RLXLq4BQU89UAlYZVs9XOscam55DHhjA8XZabekhe7k3sTFtbm
         mAvpuYVPhjmo1ElDJbLEITeTJNd0z+/jKHyG8VSUGR1aWXOt9yKh39NpdEXn1tcIRBKW
         saoiCo7W1ecHmVW6Emc5FbUlVnyuJAL8J/EfFiy91AwEfVAtB6RmwJJHJGut8uydsUsW
         1jKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725613075; x=1726217875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfPCPDyI1RrKAFi5i8oSogBSmIZBHNxCV6AppJiq/Hs=;
        b=ta94EVrhufG0VJU7lgzwRXNLRuWM0/n+WdPJFjUYweNbSbsBWHMPoyHvybID/ue7an
         myUM7iGjufIKmv2fyTZ0oroMHPofELN1KkSUY8YAq6rlw3snuz+J/5uEgeNnx/DBsOQN
         Mo0T32eCdCNw5lcEdRI+U08RJtaRa6flGBoyG01NIh/jipGLUN76d1jBLPTE7VvtF/Nn
         Ah3fqnM+eSu//OMWiY+ycDGeODby9+B8YstRpGBVPc1bhLUcyV4imBzJka/fZNNYaJth
         aFNC4MI9tAHbWAn80P8tpUY6apgfNgztCcz3JcIOx88PElOBxjszO1mg6//WO8gdJ0rG
         nyYw==
X-Forwarded-Encrypted: i=1; AJvYcCUpbM2dlChD5DYiZUa9KgqqG3HpXROY2FfSqUVGj0+OzprT5tUGNb9L9Ha3clj4pJFx3txojfONPS5l@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb5iCSqi1+ohLvcSq4wPMdRlEQwq2C3glcRi7TP0D1xwVFzqmV
	SAE/76xA9vg7OK/x9+ncIqqFfs2t8+3vFN4VkD8hA7rDAPGvY82w/ynpL7ciKQo=
X-Google-Smtp-Source: AGHT+IEQknbzHq8Vt5pY2Z0mPW8VsXzjXllMF+wnb/G0zbnfo/dO7wl0slgZX4oz+k9PIl8B5XeZGg==
X-Received: by 2002:a05:6a00:ac6:b0:717:9462:8bda with SMTP id d2e1a72fcca58-718d5e16866mr2039277b3a.12.1725613075015;
        Fri, 06 Sep 2024 01:57:55 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71798286219sm1439166b3a.57.2024.09.06.01.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 01:57:54 -0700 (PDT)
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
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Fri,  6 Sep 2024 16:57:38 +0800
Message-Id: <20240906085739.1322676-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240906085739.1322676-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20240906085739.1322676-1-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Ponyta is a custom label Chromebook based on MT8186. It is a
self-developed project of Huaqin and has no fixed OEM.

Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
Changes in v4:
- PATCH 1/2: Add more info for Ponyta custom label in commit.
- Link to v3:https://lore.kernel.org/all/20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 1/2: Modify lable to label.
- Link to v2:https://lore.kernel.org/all/20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com/

Chage since V2:
- No change.

---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..4bc1777b9ea6 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -257,6 +257,17 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta (Custom label)
+        items:
+          - const: google,ponyta-sku0
+          - const: google,ponyta-sku2147483647
+          - const: google,ponyta
+          - const: mediatek,mt8186
+      - description: Google Ponyta (Custom label)
+        items:
+          - const: google,ponyta-sku1
+          - const: google,ponyta
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.34.1


