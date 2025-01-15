Return-Path: <devicetree+bounces-138678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A00BA11B34
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 08:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C59E188A640
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D546718952C;
	Wed, 15 Jan 2025 07:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="jW5hkWzb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2214B232438
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 07:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736927044; cv=none; b=FbodC5kWp2W4kiQSsCfZd64vpr6PSTCBa1OmtLGf6tVlXrgjW4OKGixLmSIBdzYI0wHr4ESgP/OdsEuqEJuhAZb21WVCk6SRPpWWLm3QQn0orPk3ZWPyng8Xyt95P1HsZQJI9Zr7q9d2JNL0fjl6WnRYxMe4s4VSmeyF9/Rr2Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736927044; c=relaxed/simple;
	bh=6hi/w2RSrE+ViDfSgsZQxeXkmC6s+DJOxBgbxZkuhZk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UfUXjLs04e8A28sAHxRvqyNeAOnUKcI0Q681KpuwZ5O5pbscdoAKBFeyAJ51F157NdEnaKrA+Mbt02WCzLpzD5cPPMjAkJOK2lHGloPCqARoLDhJBvlyFbCeU+DtXy7RtNUaI9bmwzgk0RY4QEAIca8GNNtbJO/3EEgp7VlubAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=jW5hkWzb; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-219f8263ae0so105458845ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 23:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1736927042; x=1737531842; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=irqIrASEQnL/P83qLaBuXsZse+5FN1F0t4SWPoFUX4U=;
        b=jW5hkWzbwr/kOnCLxTWrlGDu57IXU2GJwMuj3s2KaMsdtcQPKkGP1igd/yce6pl0St
         js+1hGahxLRebzTYFuKBkZR45IZAE2KDmqsabjPeexw6JomE2Slroqz7moErfEcgDOAe
         zyHBNyzd1CHdXHS51SsTWP6UnBID7L6OI2gdhK1gzmnUoovYIzYbFffM554SPZvRqxnC
         Q2iw395qo8dEVE8P+/PGKN2Bkvo6YslHBeX0DXLSX6iPdJgsfxpsKhp0emS7L6nZ4lrG
         ysUTpcBNLlxrMsTQ6IZ5s6siCs3j5unKTuYXgCfTmWxodkZ6eqgzw2iE4dWVnUN13FYn
         XIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736927042; x=1737531842;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=irqIrASEQnL/P83qLaBuXsZse+5FN1F0t4SWPoFUX4U=;
        b=my47fsmRmcFxYmFxcNCrjvf3YVivp4po6njEN/UK56fAfXPdIIg36QyAidBWjJo9y/
         qwk4Sf+lkbYo947D06uNHxw1jjJXrtPOZzz32onRscwTNPcgubU299vhj11npBa5OjFV
         PnPEgaoJ5nNa0HZGFYldAcKeyO/eBwpa/jeuVMAswn+Rjcz5zrsSbu6V3EyQgBfe6Ptp
         wuoziVlNUHlhXIN91a5PVCgfdS667T0FZNNE0wcnY9sLrdUDhLoEUx/2lNcrLeJ9sFy1
         1PFPzvqnV8FL6IFPrab8p/KV9KbGHuxc9goeihoIAugUixC/SUPAlFgQnQnvxybpMUak
         d4Rw==
X-Gm-Message-State: AOJu0Yz3MB+Q6aN+pUOhigREifVK7V1F+DxCYm608dhk/BWG3rY2lVFm
	Vox4i7crkM0Egcz6OrZDX5ZLwCtpFbu5IWwsONHjdWGPFljHR56rVsxwj0n5xDE=
X-Gm-Gg: ASbGnctUIlFilpNAXF56GZvX9uT0pf17D0XRwI6ea1bwg67DBfO2EiOp3uumf7WlbFt
	DY7ii/nxU/zLr9PEz7Odh0sRy+ndmHzZgs0Y8hWYLu9mvqOxpYH3qWeiixgcmBDhsnoe/bB9EOs
	HhwoMybpZvklHVdMoGHjpRVrBkgSNx6yyPAVcRak3NnvUKNY2bQS+yaFlZWtM/3Y7ODx88pIUfb
	4hP8zGoTZa5lKBhigmaR/xe6XP0FSrdjSc7STuRczOqmUjSF5Eqs99dE6ILHl8VESQXK8np/FvQ
	tGFTxklFeF7ZuPmpTY76DGWdZSlo8nW4dj8DAc6MQ3fg5/FMJVPPhNhYaEHarCJfHi3ocFGNH6R
	/ldUHRuC5RMEDwM6h
X-Google-Smtp-Source: AGHT+IH7wyHxwHg1k5uN8OxK8Li1gA9Eftad7ox/l7Ex95B0bB66qcmyx0Wv80jD0KvFDC+GMHGKTA==
X-Received: by 2002:a05:6a21:3997:b0:1e0:ca1c:8581 with SMTP id adf61e73a8af0-1e88d108843mr44198267637.21.1736927042246;
        Tue, 14 Jan 2025 23:44:02 -0800 (PST)
Received: from [127.0.1.1] (2001-b400-e25f-ed65-f855-8c86-b103-448b.emome-ip6.hinet.net. [2001:b400:e25f:ed65:f855:8c86:b103:448b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a31d5047ea0sm9335482a12.58.2025.01.14.23.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 23:44:01 -0800 (PST)
From: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
Date: Wed, 15 Jan 2025 15:43:43 +0800
Subject: [PATCH 1/2] dt-bindings: arm: mediatek: Add MT8186 Skitty
 Chromebooks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-skitty_kernel-v1-1-6ef2086858ba@pegatron.corp-partner.google.com>
References: <20250115-skitty_kernel-v1-0-6ef2086858ba@pegatron.corp-partner.google.com>
In-Reply-To: <20250115-skitty_kernel-v1-0-6ef2086858ba@pegatron.corp-partner.google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 herbert1_wu@pegatron.corp-partner.google.com, 
 Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736927028; l=1395;
 i=geoffrey_chien@pegatron.corp-partner.google.com; s=20241216;
 h=from:subject:message-id; bh=6hi/w2RSrE+ViDfSgsZQxeXkmC6s+DJOxBgbxZkuhZk=;
 b=mtRfNsy2B+eYE/hksXjSGuB4MmhaoenYcN126RNPUF9qsdO8z0Lhk48HgqBb2OLLWXgQN2yoL
 TtG7FVnKFelBG4I+OYlg4P9mYFjyQBlbG0zqEf5E7bx4AQwFvqtfbQc
X-Developer-Key: i=geoffrey_chien@pegatron.corp-partner.google.com; a=ed25519;
 pk=P8X+ifKsuR9w8T8cIa35nudXKmZX6qk0iS+5EcuwtrU=

Skitty is MT8186 based Chromebook based on the Krabby design.

Skitty also known as the HP Chromebook G1m 11 inch. The device is
a clamshell laptop with an optional touchscreen and keyboard.

The SKU IDs of the Skitty devices map to different touchscreen and
keyboard.

Signed-off-by: Geoffrey Chien <geoffrey_chien@pegatron.corp-partner.google.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d9aadb7b77e144a474b79da005056..b57e86946d7565720fdee31b2bbef288b0508769 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -263,6 +263,14 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Skitty (HP Chromebook G1m 11 inch)
+        items:
+          - const: google,skitty-sku1
+          - const: google,skitty-sku2
+          - const: google,skitty-sku3
+          - const: google,skitty-sku4
+          - const: google,skitty
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:

-- 
2.34.1


