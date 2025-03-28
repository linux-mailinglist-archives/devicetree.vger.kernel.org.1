Return-Path: <devicetree+bounces-161535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B87A74677
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 10:41:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B569E171AFE
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 09:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936F42144BA;
	Fri, 28 Mar 2025 09:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="GhbZGFYy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF783214221
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 09:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743154855; cv=none; b=f5eiyPFl+PDiLxZ/7f6PwzzC8F+JSw3lOp/BJjX0CloPami4YgNzFxxQnCDLTw8kQhTOk8HrkbD1vfjVBCy9QsqrDctVeoaGCJOSGfKNgKICQWc16szFg34kow8NhliD235UulX8pj/KVXkjZerXzYP8BYhcIfQgNO1+ACqPxiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743154855; c=relaxed/simple;
	bh=AFNbJwYwvuSPKikmk3+Df47KychaU1715h9jlya/yrA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AJyHmGsFTV4ATHAuncbUpDAioVlwZTIiOM3C4mdgqH2e7OI4X5uGwziZxsVBLPHsOZWNIJRBwQmrGm4vJ5OiAVgq9Cu40CU4+S66gWgDYu2PBzsbeNmafq7VPwkr8pucf9X6ZB2m76QQPnD2YpcKflKSNS9zETdOEJsEpnN2hng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=GhbZGFYy; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-224341bbc1dso38853655ad.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 02:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1743154853; x=1743759653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KjMXfLmHy2KF4ip5PaP1f7WukJ56BcbFiMpRTGURY+I=;
        b=GhbZGFYyqAYW7EAZ/08Jeu0UiwP1dYEtTU8S81xNNekSdMghpJk8I2jCuAuW+1er+E
         XEkAR6Kz9hZQlUa4FExvVJe/EpyMJOSH3jwQrkWn+XdFjyPRGao1zABWar/gqzjcfPH0
         n6g/feKrfDBDHI5DdlOr0v/kJ4MWgOfJ2LBcZDhT3YzcXFJereErhLCZJ1dDfsTkyWNj
         CgJ/roEi5t0CDrpcIqiXRZl9Mx4VLu2NTGcf4tDjcgs9f+2uT96KEmsTkjr+oRWkdkXN
         BRGo1l5SZwP0akUMhsdWijWybZU47v2CFzjA6LgS7BSsWoNo1HV3A4R5EEN/bm7sdsq4
         mPdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743154853; x=1743759653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KjMXfLmHy2KF4ip5PaP1f7WukJ56BcbFiMpRTGURY+I=;
        b=Bf1EJDJuN4R7kWru3gZBBwRu+pgpvwxXvdUu+3yzpE/dGEvSdtwtjh2yUwvRBMYTDn
         IMElKb9gzR/9qPfVe8Wk2fnFmpMMYnLQN7fT5oZUlyNPblehAK3/7IyHeirsJAlFCaQg
         yAJwEjFSFJsS1NY+h8+9OfAiWFErGWedIUnYt/ktNcasOa2L4xMQdPHVer7yykXO8OxA
         x7xOUGfdLuOfT7vuXDFJ/rhH8bqN65TW2U58zgQLCdUjtO5H1SUHNqZ9El6tRUd1BLEb
         iRJvH2QEArxBCVsEKIc24/xVCaurrmchqVc46anN0o6wZb+mciCK4jxXcaDyQ/xqHAeJ
         sSWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUu17hdFkZpIGjWHsNowgLjMW/v4A6txCvvyrIPfsJnE9LVf3Q0q5mm+Jqcaj1TeceojjHp1tIHOx9X@vger.kernel.org
X-Gm-Message-State: AOJu0YzKxWYcdM2jke2aZmX6zGDlN6BOPIlaYHo/wn2KFIdadBcUdn+x
	f+hUdVqRRjoujIJeOWm871UM5ozWRh1tFdUXSagccWcwzvXvNVpXVWx9HkLKjfs=
X-Gm-Gg: ASbGncudc/uIcRqxb8wq2F498idrfb7dRx0jVvy2AuvhUl+2KMG5tP47xaWfgRzf9Vi
	vpKaqbEiM/8wnw++km9GJhLvkPVqZKuOq8d+Oa5RTBAEVZVY7v66c++LWvHPKrHWPQ1R9/aIn1s
	30H3u9I2mwv61ldahnfD+S4XLcd1+Fh5VwSaEbbtL86wj/bwdNTcyzDZh219fMPWbsMAair6Jp8
	nqemDWGp0nVVNXOeRyvSs4Rn/KT5ncmwD1jChy8XCxRLEm8eDyUuPr2MzlrxkollHnF4iKX/Tfv
	KzxOercXXUxRibQ4Cr2/l62UpvpPbHa3P+7zDWMAtumT7w7BUR0Sycdp6E8H8cgaFLH7xEGXvKj
	ZPSOJQRN6cL/OLg==
X-Google-Smtp-Source: AGHT+IGp2o3LkuIAgi71QZgUHz6T+RQ1Ol3kgJLLZiH+h6Iuyl7UW85ocR8eAQzVe59u+58NXlwvcQ==
X-Received: by 2002:a17:903:228c:b0:224:216e:332f with SMTP id d9443c01a7336-22804968a3cmr108743245ad.48.1743154853027;
        Fri, 28 Mar 2025 02:40:53 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7397106c7b7sm1283012b3a.116.2025.03.28.02.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 02:40:52 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com,
	angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v9 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Fri, 28 Mar 2025 17:40:33 +0800
Message-Id: <20250328094034.3400233-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250328094034.3400233-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20250328094034.3400233-1-cengjianeng@huaqin.corp-partner.google.com>
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
Chage in V9:
- No change.

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
index 108ae5e0185d..fdc57c140af7 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -285,6 +285,16 @@ properties:
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


