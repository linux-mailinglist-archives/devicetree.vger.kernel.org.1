Return-Path: <devicetree+bounces-133733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C10F9FBAAC
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D206418845EC
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 08:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE8817DE2D;
	Tue, 24 Dec 2024 08:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="U7OFiNP6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1441C36
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735030127; cv=none; b=eJqupR46S7YokUcEt71AO5A1mFMAse2u2OqBWjO4aQA/IdkwLKUbXn4X1QDmyr2+vhzfyQrYr242Cvf/HJ6Xz1znISTu9YBi68ccXBjWX8tMcQn6h2CJS+28OsuNxY17R2Y9iuoPbcCIhC2igJyAtsPjgkzHoTm8VTYJ7k34a4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735030127; c=relaxed/simple;
	bh=E1aeiXFUI2wcPeVpsG2arYbd8dvyj0V+5TTd5l4ETF8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gQb+ZxuQzZZPnBR3MucEUugd5Kv1enkPvBtUDqASfBdXV9ztoFm+VyC68elY5yQoFHx/ILrMAqtYtuEy2mBYLDyqnJ4S3dQIfyrGOJ+7sIrA64aHICBsGCyJS0K6ee4vxlsLJly0w+kcp0OFlfprmHSOo8uPBGhj2m963YSKZqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=U7OFiNP6; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21644aca3a0so56928455ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 00:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1735030125; x=1735634925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DKiAgKyzVZ+yVhg6dILJiG6y+QvMidinDetzCMJeF3Y=;
        b=U7OFiNP61xfYJPljP2jqW5FZzl5GEqVh5FIkB1kQrNBsYUo6DPGuozkQ8p3PKWAD+0
         NSVVNBAHPI66CwhGZmrZZIkd0pFDnRoZQJqJ/R/oV6N/g9LaSAXDwIU8jDiD4O1tK5Za
         M3uskUSevRNEC+ZQnNtmTPHzjaq67RNPm/wGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735030125; x=1735634925;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DKiAgKyzVZ+yVhg6dILJiG6y+QvMidinDetzCMJeF3Y=;
        b=a9Q3ssMBnaYg7ksg8CGFU+87XYEZEbQE5AotClgXyayh3BRSriQ0G6iaLpBCMNm1tQ
         8n8Pxq/PQIzNEP4j9JDXsloIEYVY2tZDIXxUelBrKDMj0eBZkHr2ONK85uQljCsKL1qH
         8APO+u7jvTU/9soHeWN9p99GKy+wS9l4Tr/WydmYvLH/a+XuZud2G3GwHTGSQmx/rfjb
         StBWqJrKIcsvqkfO7Q9Qzzoaw0+zpZf3Hu1rRhf5eNxkGnidKcQu3ml3uMGcBQWKxJfO
         HbFP9Vp5iWBffrM9SZQD0uDp0VyrWQUvxHJNKypL5yZMmWRGZkCRmMfFgzwdrlg8FjSA
         iAUw==
X-Forwarded-Encrypted: i=1; AJvYcCUf35d5ZykLnhu3YYMjLrZ05pw4PA8FcBaQ3eYiTp5maI31gAr6vVExX+ShK5TqZWrH1w3FyMm6F+0G@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9OPeDiv48+6IROObTdUKO6gpW+upV+KDEhL0/++ByvZF/reTc
	sOv+K7KvdDOnjqq4UPtkYWJA2aDOXi1IT/O+bguTrm8q+q2NAHzdnv//f13KzA==
X-Gm-Gg: ASbGncundEujNutJfcsGaLfMM/jjnukX6bygLtRBenViM1/saXWCRkbA20sJGpC+mpq
	6ZGTHqEFwfswyaQ+GcTAKA4XVnlhnnNXOPh5GUSU51R7keL8rwjwbNhOXTWbZ3UUDQMg2k9lf5j
	2q1cwMIMC+vznzTqTNnF+WrtrbkffdUHRi7HReNsNt0e2eoPM87WjrznH+3qMCZHBTHgW74xMzT
	bwUxL5CernqPpnW9CiSsitUuMTiDpt37aHLw9GqbWrM6BR22OqFsq7HZ90rEaIGengOLqexL60=
X-Google-Smtp-Source: AGHT+IF6Wy9RxfKZv9MvppV9tdwcrpmy7JICFA5L0xxCj2pW2nZrKIeaOlDyLP7l6hYjccjkEykagA==
X-Received: by 2002:a05:6a20:8427:b0:1e0:ca95:3cb2 with SMTP id adf61e73a8af0-1e5e0458eb9mr28926443637.8.1735030125707;
        Tue, 24 Dec 2024 00:48:45 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:a4dc:753e:e6ca:9a68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dbaa6sm9203156b3a.91.2024.12.24.00.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:48:45 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm: mediatek: Drop MT8192 Chromebook variants that never shipped
Date: Tue, 24 Dec 2024 16:48:37 +0800
Message-ID: <20241224084839.2904335-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Hayato rev5 sku2 and Spherion rev4 variants were designed in
anticipation of shortages of the headphone codec. This never happened.
As far as our records show: the variants were never produced or
shipped, and no such devices were deployed to any lab.

Drop them.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- none

 Documentation/devicetree/bindings/arm/mediatek.yaml | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index da6af39caa9b..3ce34d68c213 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -370,12 +370,6 @@ properties:
           - const: google,hayato-rev1
           - const: google,hayato
           - const: mediatek,mt8192
-      - description: Google Hayato rev5
-        items:
-          - const: google,hayato-rev5-sku2
-          - const: google,hayato-sku2
-          - const: google,hayato
-          - const: mediatek,mt8192
       - description: Google Spherion (Acer Chromebook 514)
         items:
           - const: google,spherion-rev3
@@ -384,11 +378,6 @@ properties:
           - const: google,spherion-rev0
           - const: google,spherion
           - const: mediatek,mt8192
-      - description: Google Spherion rev4 (Acer Chromebook 514)
-        items:
-          - const: google,spherion-rev4
-          - const: google,spherion
-          - const: mediatek,mt8192
       - items:
           - enum:
               - mediatek,mt8192-evb
-- 
2.47.1.613.gc27f4b7a9f-goog


