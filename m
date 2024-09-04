Return-Path: <devicetree+bounces-99816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4496296B456
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 10:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 774131C210AF
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 08:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31316188928;
	Wed,  4 Sep 2024 08:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="ZZq3uuZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3145E188935
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 08:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725437720; cv=none; b=jvA44jxYSWx+cqEZ+N555SdWo8ZmZDliEf1ECSjemUXwTQiuhmEghuiFNTswF8NSP2/QaET8U5RNy2RMK09VTZBCUrCG7pIkjox1xKtEX8HYpfi2m5fGpEn6DzfZOlojGr5OJLkVPqaD27PU/dyKTgNdwn7TpGGRUQRUWVhrGWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725437720; c=relaxed/simple;
	bh=m+LvTPkx8a1x603LYdhFRWIHDroPR3WoWfKtD0wglow=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jUdypw4V6Ma2r+ktmwRlo0EmSLnAiYrMd5d01pAnY/2/XI0BkpllKxOg9UOyRxFQqaFIVvAWWRMoaM66SY8uWki5TWpLmEaMACkB92L2Uox33P+Q9R9nWoZ6o738YbbkOrRIKkJrUvCINaAN+cdt8WCpsWKei76p1UpttOUGKoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=ZZq3uuZj; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20696938f86so13291625ad.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 01:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725437717; x=1726042517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hRdc5AMdvByd9qcj2i6Loyq3HdJpcgiM3X+j1Pvdni0=;
        b=ZZq3uuZjZGpUHdsGlpAe6zvcY0+y4vDXgQOVBK3smkFYwWH/s9s9Brs4j3esHmafQK
         cicYhlsFNNrfbs5c/fylWa9iyrQBPFWIaXZq4f976FnXrVQGOrCK6G0BuS53/ZThHubU
         qDZrEbkZDejt6pS5wpF3mJTMl87cOElY51/VJ9FMWTbaePOGc1Brxo9yIP0Mw+BLXSal
         HIb7H5Zi+u+D93rxr4ysa+QeaRps8VfqxC7UmeR9TpzNKUVsdGKq1fNjMHfXczT/iAZ4
         VgDuJxYcpZFaeK7cDxTAEuFQKjxRyrM+3+0EIyXg533hgEGVIXSJYIv7lvnH6WeMinG8
         Qurg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725437717; x=1726042517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hRdc5AMdvByd9qcj2i6Loyq3HdJpcgiM3X+j1Pvdni0=;
        b=u7R6jpwDRkWsgPTKigOi3XT8xp/KVXvEXMvm9A5pL8apqIKUKIgKdIH5qGINPo+ceD
         ufVSL+JdByI1u/Pv05Kd6aTRVzqWqgSq/QQ1qM/a0ZXwFkHj7/BUBDlPCMdqs+bKNK1p
         zKI13tfoyeT5ddSprW2VmZePGlepADhkLJP9S1jAfkJ+tY4GPeGuQmqsbThfeBYrqE5F
         C341C6AZ9AJ3ANb++5xErIT+eMNodGWRFY/PjduWDjhK2mkeHIzmna7lNEGdAS66v3p9
         q4Zm8xw+PLkh9DhyS+EYOG1nQr76F1/dRcCnTOPXp7fIvxrv+7hDCSFXNir3wCfpaC+w
         iDeA==
X-Forwarded-Encrypted: i=1; AJvYcCWk7VYYlPEfqlbQ3eDIdewFGM4OIH38NfKRvhwEqF14MixwpZGlo9M4Z2i6NJTlo4vd+v7HB/8IKvUg@vger.kernel.org
X-Gm-Message-State: AOJu0YxcGbZN9lil+pnOzAQRmJwz2+y4JIj2ivjceLEW6FRtSOYUONEu
	395qV+Z940P9NACrO11TaOciToEhmfRUU2FSyOAK7Bokgipn3eXuko6J0iMY0qc=
X-Google-Smtp-Source: AGHT+IGK31//3XeAKFe13krwGEqRfNEJwm77L/z7hDQXuWi5CgOKPXqq/SoD9LyOe4vl6AmOSRsoGQ==
X-Received: by 2002:a17:902:db08:b0:205:8b9e:964b with SMTP id d9443c01a7336-2058b9e9afamr104785765ad.39.1725437717314;
        Wed, 04 Sep 2024 01:15:17 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206ae94980esm9024145ad.84.2024.09.04.01.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 01:15:17 -0700 (PDT)
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
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Wed,  4 Sep 2024 16:15:00 +0800
Message-Id: <20240904081501.2060933-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Ponyta Chromebook (custom lable).

Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
Changes in v3:
- PATCH 1/2: Modify lable to label.
- Link to v2:https://lore.kernel.org/all/20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com/

Chage since V2:
- No change.

---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..410145976272 100644
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


