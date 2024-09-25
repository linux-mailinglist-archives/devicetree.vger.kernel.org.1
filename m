Return-Path: <devicetree+bounces-105179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8FE985501
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 10:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97D521F24521
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 08:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B8115958D;
	Wed, 25 Sep 2024 08:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="1JO5XepW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF569158A30
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 08:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727251455; cv=none; b=PLKN5z3Xf3uf1tqrruuVNA/rK23nHDRB91sf39ByHzG/+YrUAOGz+wiJS0XIEISaod9N9AjIfd974gvt+0WBLiJHemLWMHB4WMqKK/ivjfLPrzfuB71/DpnfWxO/PQa7U5G0kFmCH58pXGWBPTlIiO/ffhL7AObwGhH5oVGkiNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727251455; c=relaxed/simple;
	bh=T8wQGLQbROu2UjEMV5tTMSwRI/WmSUT1QouVCIQlt78=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=Jhw0toqT8unOZTgkHRbThJnd5we9kyEACRNhUTvUJzAFvN/UQSPtTa4VbLlMShv01hfxNNau8tCARbfA2GYJO70FCuYtwzvVVCoKaIpCMmBfIwwMpoKYBQ/czonFT6nz9+G0UpHZSNBs8W0836VEPbJs9J6t6mvpHEVHKTyWEgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--jakiela.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=1JO5XepW; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--jakiela.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e1cfb9d655eso9440501276.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 01:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727251452; x=1727856252; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RpI+72pqCUKa6Ph4QBKiGKr7w0qM8RBrdylhoit18tM=;
        b=1JO5XepWfOS+Iiflh9ZxW+6qj8NfSHtcUUl0aYn3Mx2oioOsU9FMr6T0NotVNeOB1b
         xLIQJ38UFjNHO7CsK7ABWhdK8khcNoYe1nJ1gREpikjgAd+kWxpAGSIosEgSla7uR9h4
         9x2HyrPfLE8YkWyU9aMH6IZoNWboTU3tpbvegIj2GYFyoqnP0Ac1r59Q1nAwcoR/DMnJ
         H/81iBzqi0nKIh7o0bkVaNy0Wuv0Nbdj5rHJqUQ0gQu6CppDtinP174twp3uFzUSHzVd
         0KKwgc4GeMKOQOusokJPd2uzut0ApO9edK7JSgUXi7hM2wYPk3WeXzy5oUD9pmi0M9/n
         O+yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727251452; x=1727856252;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RpI+72pqCUKa6Ph4QBKiGKr7w0qM8RBrdylhoit18tM=;
        b=dKsbu/NxvF+t42FYSzWuSlNoJnB1bR6S+bajf1ED5/6OHRJl+JRCsy7SffKs0httah
         ULPtbVeACrMbQJvImqlREyBMU5jzjwYE3A39wIu+Oprsq0ZRULDtXLL7PYOPCfjb+koA
         0/FoIubCK6u7T0+RGtfgNBhynlFjquLbkkIZllclE4SOTUv2IpmCcMx2TaW++8Ga4Td2
         sgxDb4jQ5UP6CE/Met0R2jKR24j4F9b5Bg+rO/Lna5v12Fh0p246WsI/qGAhULPuvDbS
         5QONmnhskuAyYlYw0poCfTXgQhrx7MGV98cNwI+zHI7+17Lmw3mcXdWhrsFwCfUI81jx
         GuyQ==
X-Gm-Message-State: AOJu0YwyLNoyYrYE3MQFkyGEq4ToIUp3k+WI0w3Db6aM0M+tlC/tm1N5
	p1L3XJ3pA+SEi2T9AQ7ce/QK4cNxNA4TCCVtQjSxACm/vR90j7vJaADrgxQg+OFDaukAKZRJVc+
	OaYSPoQ==
X-Google-Smtp-Source: AGHT+IFw0bYPHUqMq0e7EqXrAe/PmOO/o9gXTmryzs8osv8xXCpAe3duc1gxJ6QGosYWIIQYVmnDKsUKdHGX
X-Received: from malysz.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:a1e])
 (user=jakiela job=sendgmr) by 2002:a05:6902:1782:b0:e0b:958a:3344 with SMTP
 id 3f1490d57ef6-e24da39b0c3mr15148276.10.1727251452579; Wed, 25 Sep 2024
 01:04:12 -0700 (PDT)
Date: Wed, 25 Sep 2024 08:03:52 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
Message-ID: <20240925080353.2362879-1-jakiela@google.com>
Subject: [PATCH 1/2] dt-bindings: arm: mediatek: Add MT8186
 Chinchou/Chinchou360 Chromebooks
From: "=?UTF-8?q?Albert=20Jakie=C5=82a?=" <jakiela@google.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	wenst@chromium.org, rafal@milecki.pl, hsinyi@chromium.org, 
	nfraprado@collabora.com, macpaul.lin@mediatek.com, sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	"=?UTF-8?q?Albert=20Jakie=C5=82a?=" <jakiela@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Add entries for MT8186 based Chinchou/Chinchou360 Chromebooks.
These two are clamshell or convertible with touchscreen, stylus
and extra buttons.

Signed-off-by: Albert Jakie=C5=82a <jakiela@google.com>
---
 .../devicetree/bindings/arm/mediatek.yaml     | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Document=
ation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..110149f5d748 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -239,6 +239,29 @@ properties:
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
+          - const: google,chinchou-sku2147483647
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
2.46.0.792.g87dc391469-goog


