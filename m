Return-Path: <devicetree+bounces-169837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5B7A985BE
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E2AF3BCD25
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62491266B4B;
	Wed, 23 Apr 2025 09:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="X2TPcn3g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED24262FC8
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745401021; cv=none; b=WR4H6J1TdRlp02d4X04dS0RQDWhfqmF86ivmadWtxGh+7Ws+E5U8EARBmrJYKrAminTCEyM5sgXdPGmwZaB4nObBpwePDYeWdfFe0fcZlM8x81p0N7OjNAsSjFa8b1SV4KKG3OckxBZLGEjmzVzId+aT8HDykJkChKRlrEiuVhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745401021; c=relaxed/simple;
	bh=GJdKUK988ok83LnjedrDrg6DXqh9QP6qTMBFCaLwgDY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZRKB5uoO3LX7HsL2M5vYAJMBdWIll4A8cj1yFHFZpg5/8ip25CUYlG75ZXiqyB4+C+AVeqIW/bakYFE7yi0S6C7eDDsgAMxMg6koS92/B3j4QraUctw3unwnE8vzmkoULFpNPdQ3JvUFRdY/iJDvHUsn5oGqNvnHj2kP/FsLM0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=X2TPcn3g; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2264aefc45dso98639145ad.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1745401019; x=1746005819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K+xSVSEjLLoJeTGf00+7NUDFSajI19htlW6OjqQ08dg=;
        b=X2TPcn3gYpmoi7B9HH+ykjP6Ekt6zwT6Q3d1RmeFV8vTwN8gOCc22BvBa8+bDoSzHr
         rQw/tZZ9eFxbYEs7WladETBDD/i0kDKYDI5KP92Z1RlqkAb4WAYVOBnFDr5u53WVt4gK
         hXMQSqhXzzyp4IPmcjYd+prJI0LA2/QKb+EcXk1aV3rIx39ebAnyPecQKgZnRXpT1Wxd
         owQN7LbYsC9BQS8EZROrMFd7j1J3JJsRUNJUeavCpybr8p4Xs4FLkdeARA4xs8bcQOYF
         XLXiOMQjbVZN0n0W3+nmCqtm9HztCiaXuxTvGuInKxEP4vaRVj6jtDExFQ6wFPiXtSCe
         iBOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745401019; x=1746005819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+xSVSEjLLoJeTGf00+7NUDFSajI19htlW6OjqQ08dg=;
        b=JD94YqRD3Q1ZbBTMIAHeVIYPucf1QVswToh0hwtnuMI57kRH0LJE1u4y7/+B1DfJsl
         QO093czunys8qdeFPPQ46bEJ7uSlwJCmqQRZGWfPTEj1yMViyyYDjVA5K2tnSKDtgwDh
         JFBVNqjepV4OLPEHctybmbPLyWWFuSANfUNSEkC/ZOISMqqsTL4bdm9bzURMTmBch/4n
         heSjwYz2rtWIzSjpSZTMV1DxPjzEXeGVUg1xbuWq+WJlKAamKg7RGld+/z+gsFF4BLQp
         SY/os2Ws3ow5khH6nYAcH/d8ZHCeDgFRODfjT0PNgD/u6HYcygILl+9Yb/PjRIEjTTGU
         83kg==
X-Forwarded-Encrypted: i=1; AJvYcCWo2JlQwctxWguxrYFkYVpS1WG473W1KebxFZY/yOWF6HBP1h5RzEug7BOEi45q470z49Wc6fo1k+lp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7KZh3CNzhrT+rbnCOWRnN1Gx7p88tueRdxh78G+WtGHMYk5VZ
	XNXco4k30AWh9yl1X04F99VLbimTSNdi1JkrGcwYmpkk6zWfj2M3DrLzan8DCPE=
X-Gm-Gg: ASbGnctNVKmAE+RDFUjxyqoBNMUpSSNPaCoe4GMKtROx9ryrf7R3iAXKh7g4kaTvgTS
	EIuSXWcJaQ0LtLGqsgYt2zqjoMQE+oOPWVyHJC0g3C3dHVC9MW7LGbFlGuGzgR5st4VAyPNQNuX
	ieoYtoA3pCaMV9TJjIP/srVkuF1561HKaoRu70Qt+W8JFQhAcgdT8f2TBH39xjr3alw8F37Jt00
	FOHORkm1Y0ejyeCHp9AtTONC7k5a73KM4xHJUu9ld9n7UPfPEFVwlxFc0gvojZGbaBEny8ULrIn
	A1bin7eh790esha60QVm04sAC5hmBd6GJsAlOSFy1R9wCw7duRsVgrNTlv3RcJg8eOPkPO6Cyzk
	=
X-Google-Smtp-Source: AGHT+IH4Modu/E8d48v1FsMHRhmok4QGpGU7FQB895A2U+1zbGEhQvVtdj5vu+Io3DYOEd0DRLMUeg==
X-Received: by 2002:a17:90b:1f90:b0:2ee:45fd:34f2 with SMTP id 98e67ed59e1d1-3087bb3c7eemr23304008a91.6.1745401018662;
        Wed, 23 Apr 2025 02:36:58 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50ecec54sm99557885ad.168.2025.04.23.02.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 02:36:58 -0700 (PDT)
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
Subject: [PATCH v10 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Wed, 23 Apr 2025 17:36:46 +0800
Message-Id: <20250423093647.4074135-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250423093647.4074135-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20250423093647.4074135-1-cengjianeng@huaqin.corp-partner.google.com>
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
 Documentation/devicetree/bindings/arm/mediatek.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 108ae5e0185d..bfa38e7fd0f7 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -285,6 +285,19 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta
+        items:
+          - enum:
+              - google,ponyta-sku0
+              - google,ponyta-sku1
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


