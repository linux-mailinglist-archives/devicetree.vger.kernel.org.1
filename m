Return-Path: <devicetree+bounces-243309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264EC96A09
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A90BB342C1A
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3323D3043BC;
	Mon,  1 Dec 2025 10:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NqlIMNDp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7CA303A0F
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764584619; cv=none; b=HnXFGBOkYlxHPHrizY2rdZg+8Oy2yQrGwhsi4TP8BgQgCWSa5P+nCgp41zRi0Iu8gd/JR+yk5/7BxRqtsiIBDjaiDfu5d/AIDbHEIxwkzVLi3BJCHf5NaKx4FSpUT4pY7/newFXShg5PuqTLRsk5EM6fesyw9fi4cyJiJqZoY08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764584619; c=relaxed/simple;
	bh=xFX5YgQIiA3apISM9uVyuqH8avDy/oWY29ZCIQmyCTc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tsBGT0Q8rOIgr1KeEradIH1ZH3RKPDnS/emUsD3E34LFLT3syqDgXwAhgEfESYwDJBby8Lu9oHAmgDdAlOFUv0hvSvz4AVXLEdpIx6llUAuctw1rEhE5TrApweNdtZUevQwXIhS4+8lu2wHaxYaobhpZbXi7i+VK6vQfRdsrHi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NqlIMNDp; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47774d3536dso31884855e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764584615; x=1765189415; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rBKIjSzAwbk7FH1fuZrbrBv4iYOLXu9AA0angIhb2c=;
        b=NqlIMNDpV5ePjB4R/7ZSlUHICDpjX2vCbo2KPnWmU8s8JoC1TELMnVrX6um5mLw3kc
         2LiyVeFFKKZdgGqCFBiVIahgx5sutlde5HzCbU5v6lodMY0xNpi8wSyDG4rgowYFb8V5
         D8+a//8tHEy+LllEEMazeLEYTKugNkJeKiIDNQdeyWrFjntoyPwcQkzo21iZEtst6Zm6
         HhbTRxXvBI9fG/BlZNuxEgjrJOjrIrORLsH/WPUWbusl6T2nAtDHlghpzwd+qKc9BaNb
         hzXhzPiSz+M2V8uUZakjVT5Me0xQXaWflYSXTdfZE9Dj7niNSPn/P6q/x/VLuHUYgbRQ
         iw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764584615; x=1765189415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/rBKIjSzAwbk7FH1fuZrbrBv4iYOLXu9AA0angIhb2c=;
        b=F2ZTNGIy26gzdsg5X0WvDN8X7jboTF+npQnvdLZxIMm6L/trgMOjTzUnnLT+cw+x1W
         vzS/9Pc8cRLolp/O9cGTyysXcu0da4HhsQ+x+d7Y0ARwKgTLvqSkIdLEjWtpWTGexwc3
         fxUEX+mMsy/rwXkIYWTTFtIQOLpumU3hCRuhbwX/9gy5egqel6WCt+rYaGFBIG99JzpQ
         moLLE9fKEELiLaF8KPuVKvSm72tfEx3zycx4TXqRhys1raKpSPSxWaBWj1IgWyQ2E5T5
         CX3cWx/Ss1zLyFtH2JAPLWGOZ/6b0wVCnhydYu3KeQoADggWJM7uYwrwZ8aDjNjVZG+U
         Lt+A==
X-Gm-Message-State: AOJu0YzgiGXF0E9yQ4SIa8++16zAyKJCtl/TWSsHzRg5LwZ5jaMnrI+r
	BH1cwdvUZ+EcUz89WUtyNwExkImFnmQti94tJu1DCb4Blo2728eAot/qhq06IMZs
X-Gm-Gg: ASbGncu6WLhDNfUHdoB+FLaC92P1sCnnap8BaX+c3yh0nUhpbMME4mjqTgfb+qvcdlL
	uxQU/5Vs9S724bm7j5MuUqaMjz4eR2GKnH3QdVKnYQKqhENK5LKq6rbh7yVnoLH/Nbd7fwAq8qz
	x8ImNAikKdENIUegsO0thC+9m6WFWenTb6HE1TuKCwY4tqm77/Y0GnenYTu02NWriPJqdcBZrLR
	q545VyRNkmg1IhZjiscmk/fD3dkBPplWTGJzTACpuF0omFYc3IzTzZzYWf41yKZ6p/GHOZwvqEx
	3D5jYkfD/E+U4rOx/gMSUlCsuuiqZZNMlQ4oP2Yttl6zT6HDNhdWdLCmNjNTCAdEPtLSFMoH71Y
	2D7Tc9FkErQ0Jk/r4dXxo+iBDCLf7SE48yuw27oNyY0hOCNLI9ubP4arjOxmU1S3z0537arJYCT
	jLFfus+waP2Qst6XSVbDAVsNgwbg==
X-Google-Smtp-Source: AGHT+IFAwJxBI469N7L9CqPS5vNwebnCpoilxRn/5gXB2dFYAtif9suU451xCgzkE/Q6bFDKsWWdtA==
X-Received: by 2002:a05:600c:5952:b0:477:3fcf:368c with SMTP id 5b1f17b1804b1-477b9ee4fbfmr302253395e9.9.1764584614500;
        Mon, 01 Dec 2025 02:23:34 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm29466439f8f.2.2025.12.01.02.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:23:34 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Mon, 01 Dec 2025 11:23:16 +0100
Subject: [PATCH v2 2/4] dt-bindings: arm: mediatek: Add Ezurio Tungsten
 entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-review-v2-2-dc2df44eec7e@gmail.com>
References: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
In-Reply-To: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584612; l=1305;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=xFX5YgQIiA3apISM9uVyuqH8avDy/oWY29ZCIQmyCTc=;
 b=p/W1wp7YQyzzW+UcST+cXTXhp1K5/zznvhV9cPYVl6t4+RrDx/duXQb+41zcP/qryk570Nmqi
 IQcmlqNpFm/BUR/uG+UqUQsgS1sG9MZDYeQtxzZgt1obzSaqVB3do3h
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Add device tree bindings support for the Ezurio Tungsten 510 (MT8370)
SMARC [1] / Ezurio Tungsten 700 (MT8390) SMARC [2] + Universal SMARC
carrier board [3].

[1] https://www.ezurio.com/product/tungsten510-smarc
[2] https://www.ezurio.com/product/tungsten700-smarc
[3] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index f04277873694..cffb0f6ac690 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -431,12 +431,14 @@ properties:
           - const: mediatek,mt8365
       - items:
           - enum:
+              - ezurio,mt8370-tungsten-smarc
               - grinn,genio-510-sbc
               - mediatek,mt8370-evk
           - const: mediatek,mt8370
           - const: mediatek,mt8188
       - items:
           - enum:
+              - ezurio,mt8390-tungsten-smarc
               - grinn,genio-700-sbc
               - mediatek,mt8390-evk
           - const: mediatek,mt8390

-- 
2.43.0


