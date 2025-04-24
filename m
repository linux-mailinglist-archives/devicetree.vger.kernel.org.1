Return-Path: <devicetree+bounces-170129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B08A99DC4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 03:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 704D34481F4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 01:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645142B9A7;
	Thu, 24 Apr 2025 01:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="HFJzLmlk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C8613D891
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745456943; cv=none; b=rAClFzJh3XSVsumI29tsxOn9l+JKDI16tnUZEwKYZNq9i2CHSekTHI+gyvhONPb508Qd7J43CqeNl7Vkr4Idj+1IpK61Ei/zPiw09Xm1VVhllmnC/R9Qg3Bn3YNp0g+jeM1qiPdeo1T4mqqMvG3ZnK/QGixtOF0xkMExjsCieLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745456943; c=relaxed/simple;
	bh=gDUi3x8HuhmFJYZel1+EEr+q6ixkvA/Spjy2z5wpC2s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QiAeCWw93CVfEYEKOedFQODYyescjb2Gcyk8978lbd9rRPHvIWaACPX0JNhqzAs3TW73AxQwXDYGAg0dpWkqPyBLd8F5x3qn4dZhdPS5Bx12vkLNEfQcxjU49m8L3gv6yeLYxt7Nzr0vivHlBy7ObjDcyevTCUdZ5BLPBWUTQ4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=HFJzLmlk; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7390d21bb1cso361983b3a.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 18:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1745456941; x=1746061741; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VF+0Z9XtQWhK4xM02Ytbsp2xnIrbr2wRpFPuWbjHR1Q=;
        b=HFJzLmlkFGtXSkB/dRHoiQuAgdinGs1ggYoITGlixI8Pd8w7AhW76qILBS6FEGNkGl
         3ylcizowrMXMcSFy89mdsBTfWN4G1YlA59rf+R5bNn5jpCQgREd/0kbIpt3Rc8litRMe
         FSjAo3MkuSDW3feYOe6mD0CapJy91FPfE8tQnvtpnX9d6kKwA0r/oAV0czqPpEtjqrkj
         cjuMycOyvcla24f26adENAhX00QoppnAyaD95+uDhRMLCOhQGpPeErCcowxSw8/oWOcp
         0S8jz6l0KqS3nprN2MeY4Z/zaJh1nvTUA89hd5b4lxvA5LkfhBte9/sVw4a0v6LvMiBa
         wTFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745456941; x=1746061741;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VF+0Z9XtQWhK4xM02Ytbsp2xnIrbr2wRpFPuWbjHR1Q=;
        b=JCfDZPGuwK0KD1cmha7BhB8cvvw/ZYb0g7gZZZJRxn/z/H9cNPPWBX5CRj7+0Kac+I
         nGWkV0pk0N5FU3BF3wB7GDs6Vzl+lA/cG7BshhIhehghUABe39UaJ5LN2Oz9PZu2Gtu0
         QZGeXc0Ly59yDlTXHTFqh7TknVzxGSPv5++f1rpDfWidcU6qG0bENCmQubPGLOHQ5AOW
         ZSI7k+CC1MVzpgRMzhxZEKo96b8yugpX96QnOmI2rg0V+Q2uA00JKLpkq+F3HsYe3idX
         yMsylgFgnrer59WRTsnbTq8zmv9p3FA8GqFptFUsZzU2nEVHMisFeHG3V749bx5aG+ED
         WE4A==
X-Forwarded-Encrypted: i=1; AJvYcCVxX7bkHkb3spQywU99nMx7SMLEH5REoF72rfn/zAmV+vwIQfpwCO2CQADMHfVfftvJcUHWV9JlPdPD@vger.kernel.org
X-Gm-Message-State: AOJu0YzLoDXBteqKx489MXWAXG+JBMq/kZ/JjBmVQ9N6/ajVU1L6ZdZr
	l7uVnpRf28Ar7I9JyPologv4bBezXe2gmM/CdDWoi/7+6qq9nT1YshccWH2w98Y=
X-Gm-Gg: ASbGncuLRoYL+JvzKrD72MQKJOYGWMrOc3sBLlLpxxhLG0qF5PlNhoE4bCJNX5MvnAx
	tDjx9C2sUJKDmI2EW9b20N2Tf8B1Z54uTN1IgVCi4SQesuGUPAWuY9W/qcWIcQAvfTfkBjsKCSF
	bXH5+ZSv4xhx8cmEUTib/bpEuhDahu/zTutNonufel20H049yaR/8LkUTZsW5I+H3JhLlLqXMF/
	0Gw+lSGj0h2Q5RqyROUfZcX5Tl2eTkEW7iQ/XOu+rDZfT7KSKPhWNftAErfBs9isAlsvbC+uEPz
	mq6eMYln2pKJereQTaNfDwz6cg0BXiaRoHXKIiW3MXpTtIKd4Wwyj1wOwuxJpmAZ7/euZpjid/g
	=
X-Google-Smtp-Source: AGHT+IEtg9+UM1qgOmmMcagcoC25vt6k7kN9IVgAb2Yi1Mg8BWfSCaJvnh25Radzm1TcN726SEaGnQ==
X-Received: by 2002:a05:6a00:1947:b0:736:3c6a:be02 with SMTP id d2e1a72fcca58-73e2462f2b1mr1025718b3a.11.1745456940726;
        Wed, 23 Apr 2025 18:09:00 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25941d65sm236071b3a.63.2025.04.23.18.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 18:09:00 -0700 (PDT)
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
Subject: [PATCH v11 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Thu, 24 Apr 2025 09:08:49 +0800
Message-Id: <20250424010850.994288-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250424010850.994288-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20250424010850.994288-1-cengjianeng@huaqin.corp-partner.google.com>
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
Changes in v11:
- PATCH 1/2: Remove redundant items.
- Link to v10:https://lore.kernel.org/all/20250423093647.4074135-2-cengjianeng@huaqin.corp-partner.google.com/

Changes in v10:
- PATCH 1/2: Add enum for ponyta sku.
- Link to v9:https://lore.kernel.org/all/20250328094034.3400233-2-cengjianeng@huaqin.corp-partner.google.com/

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
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 108ae5e0185d..fa1646bc0bac 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -285,6 +285,13 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta
+        items:
+          - enum:
+              - google,ponyta-sku0
+              - google,ponyta-sku1
+          - const: google,ponyta
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.34.1


