Return-Path: <devicetree+bounces-101172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E20C8970BD0
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 04:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 478A61F22176
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 02:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08671383AB;
	Mon,  9 Sep 2024 02:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="h1Tng62F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604DF1BC5C
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 02:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725849127; cv=none; b=u5ZBlPQtG4Zy2HGdMUaJCx5YVA2t8HU3ApTXEBjjwpOmFqnFWDCBJfNVLfU1MbdhjCEJy76H43y3aC9/jcjsoPDXk8aObRdO4cFtinAvdsOyhwZ0SuNvDgcnjMr22TZYReVacN2ts2p8EMgxQX1A9qEy8j8jdguqNjVC0wtRw5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725849127; c=relaxed/simple;
	bh=OwOHhZtP4O5Aqpkmnf53b1CXrn+W1J5cN1DD0oomSmQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TmJc6+3WOOYzHGfBOHH1fEH4HcDVy8V1p/ig9XOSWG/r+2Bw2sn68GZsDY90kvBRS3uKnsC+BzUlpYt9y6JGtwWK+U3vtynx+ITzvuG5nyTZJE7qCXo+4LHizUF3xCaMtMEZ55RCC0Cgbm7jR5m98JI9jVcURwBEn/oT52g3sM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=h1Tng62F; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2d892997913so2507249a91.3
        for <devicetree@vger.kernel.org>; Sun, 08 Sep 2024 19:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725849126; x=1726453926; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ai6i40gtLi8KkfaAdRGfJKbTUS/9SVUXMlQmPGbzRSI=;
        b=h1Tng62F01eyKwmpTFHaRbRj4pIvvFMDpTR19GtLseg1et5T5mn80ooERnDJxbKLn4
         FTQOYxytQbR70k6JYOLpSC27NOFWS+NYa0wcPmM7ps1an76HSr/HtTyRZ1ux8XgKHQRl
         2hHwFiDdIb5inK8dBbc9P0wBoouO0a8LM2xeaGvZgE961tYt/QD7ap5M3rvCLxGAbUpc
         dmyel1nWU1csLiFtU9GvmSCYC9j0CVAq61D3AnH3+e8Trc5wXlTdcucgbpnSQwEknNqz
         f1Lfk7soRiancxeXAkxgViJnI31GufYuSKeqgh/DLFrPkkfmpCdkTk6/ux0tS2Vd0fmR
         h7DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725849126; x=1726453926;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ai6i40gtLi8KkfaAdRGfJKbTUS/9SVUXMlQmPGbzRSI=;
        b=lvZ1det1yk946JiRn3dTopW3skCixCaRR0sLDbB2Ilt+MImHWokZYl0rNeJDtgdO7T
         RovF2jSYSpwD5fPttn5na+/DBPc5/iFehLdjBhmHYlvmCJW4T/5HVpB2UQQ8mzVHkP4M
         OWIl/C717XdLReZBC46ZDpFjABiT/Q45DL1oM6R4PLgvCra8yPT9dlpTlkGjgeg6aMpf
         LAsxQPAsugWD6+P0fn54I6GjZAZh3QskVNH54LD7dO9lsUWYrj6Kh0i0Wy5knPBf3W26
         kEg1Pbdbr9xEJ4cIF92syJVNf326TCANfz2J5nXetd/Sh5bkJUOPb/0ukfAn6DCB3oKT
         WkvA==
X-Forwarded-Encrypted: i=1; AJvYcCUGsy+hVyxxpf5d8JjfWn+MiOv5jQC55fsf/KYgGHEPhBM+yfxdyrgU56kwp0JA1fCS5LhHCAolTc4u@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw7vwwRQniJbmtAPcyj75njkQ8iwGcjpv3Up/NQl8HLBhYPxed
	4mPKMoiZhVlMePykGiMo7QriDGSGlCeVdOmbFARNV3ilq8w2wpkE14vjFKr2hys=
X-Google-Smtp-Source: AGHT+IGgNx7WABZhDETOCChw3HAPeP3YssU06NrA2tHr9bsZ2XDn3kY71U0vqFahzzAqH5lBWek1ow==
X-Received: by 2002:a17:90b:196:b0:2d3:c664:e253 with SMTP id 98e67ed59e1d1-2dad4ef6033mr13296275a91.10.1725849125363;
        Sun, 08 Sep 2024 19:32:05 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db049873b0sm3323645a91.47.2024.09.08.19.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 19:32:05 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: hsinyi@chromium.org
Cc: angelogioacchino.delregno@collabora.com,
	cengjianeng@huaqin.corp-partner.google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	hsinyi@google.com,
	knoxchiou@google.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	matthias.bgg@gmail.com,
	robh@kernel.org
Subject: [PATCH v5 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Mon,  9 Sep 2024 10:31:47 +0800
Message-Id: <20240909023148.1677936-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240909023148.1677936-1-cengjianeng@huaqin.corp-partner.google.com>
References: <CAJMQK-imYrDTuycVzQxkfbkZuHehE8uwc+qS2w=UDShETsBvEw@mail.gmail.com>
 <20240909023148.1677936-1-cengjianeng@huaqin.corp-partner.google.com>
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
index 1d4bb50fcd8d..43a824bee1b6 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -257,6 +257,16 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta (Custom label)
+        items:
+          - const: google,ponyta-sku0
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


