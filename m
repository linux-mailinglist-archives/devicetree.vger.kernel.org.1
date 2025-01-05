Return-Path: <devicetree+bounces-135624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DF0A01909
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 11:40:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6941B7A1651
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 10:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97B29147C96;
	Sun,  5 Jan 2025 10:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/1cfuJY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B84145B21;
	Sun,  5 Jan 2025 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736073636; cv=none; b=XwiXBo950PeIZKAO2HhxbphxDH7jbLLSAvx1ghkYsqesHBLUfmrQLS9m5txdlOppELlMYKZudgfcEw1AFJUAOWZMvM+4G2gDCZM6Wms6297jUk4lGJ9AxqdX6WKt0wEPZkfwRrmEcfstQr2SUyitJ9pyb3BFwVfswSM1FPyFE/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736073636; c=relaxed/simple;
	bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RjHuaimL0dA/Q1X24Rw0QKH3YtjuwbJTQAEZD6DIkidUZUSGJ5t/eMDgamfNYbArcG5VTa7gF+dBx419ut1UZI67uv8bi5397OKUR4u/oMq8DFu/bhET/izZhqDdeBVqdnMPLdbi86GHZ66hoB1MceK3/5wFpoxRb6AudouLC50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c/1cfuJY; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3003e203acaso138837031fa.1;
        Sun, 05 Jan 2025 02:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736073632; x=1736678432; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=c/1cfuJYxfYYMBQtmAIUvXB981WwDma903ug+ce17BiUVYlBLebKeYiGYOs++8II5H
         wYivEtk0hgUjFYz5fnuFRnpNP80uXrs1u6zlNmYvo0KkfYnTqK1gPW4aTOgSpiT5hN9Z
         rq1wm09wEFiVa21CgA+RQYHoNLFnxoK731ovjs4I26JsFaoBUZOXVc2bTj+GlsGv/UFS
         jgkFYCvTewbyeofvAkFHzcwSzt0CRrLKbIY0Gli203sWFZ2dMbMx1Dr1LUXSEd3QAcXn
         WMNslAKRC1C4RJwjAKAI+OMTP70RzoDVuy0syaxF59ZM+bBmh84hEEYD10kgJfapOQvF
         Edug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736073632; x=1736678432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=WXSGt49atj0p/TFiDqG9/frw4PdQF15xJJcxTjzjTcttvK11qJL7FKtMWOxCoGY0FH
         rpomZ+X/dMySE5WRxRQqf338l+b6k8B9FbBK9TARC+LPzc1qbw6JSyAsJtd1Kr5zFbq1
         o/M78Y7JMDKvzC+T91o6NJW5NRkGwRJJL8199TUiPDvi6alRPi0bUjsJDNa3qWd0eOiG
         NeaH56f1ugOJRO01p8WaW/i8c/6PMRVNPHb3CelE1lFs7nEinosT+mBiNSAaDU51tE09
         AzaSmoimfMYYbLXsv+pyy/MN6+kZaIwpzUOIiTGdnzFyOo1zAPyEeSeYw+nWaP86QB51
         ReEg==
X-Forwarded-Encrypted: i=1; AJvYcCUtirRKPBp6jYefsVf8UVLrBN/oklJQA/JvIkgL4JGPn2fkJLw1CSJg/ucmyYrAPPbvGZbh/ybhEojaAuE=@vger.kernel.org
X-Gm-Message-State: AOJu0YxFps1KDz4nJGlaY0yVFxt+863FyuTNouxlC3Id22Hw5Wy43NzO
	hWaj6Pg5xHGRm1RCKBZRBjn2gqI6B2t8jO+KXGsVxQvOXuDCFIHerTv8DBRe8A==
X-Gm-Gg: ASbGncvbz5hqzAIVVV1F4uu7QpMv3kDDNV4wXrUFeN3olFfl302rXMDSpKHogEB05G2
	5n34FuLNRd26IPFJoL2Eu5p8Jb2VIQNad/7W7ma3SBSDdmIXbGxJbgsOlB4hRfchtIEUUp7PinI
	YwZ3W+oppv4zTIiD2N2eLKJpok7LntnzXi1wPMJwkQ2GtJjYpCf7AuL8Z2n/uNcneMl6EBPM+ji
	JxHM1A/N12qRlpFXUoJwj8Vzv2wYSYoX3SVinNs8RBj0PKUL2bTymkrTv4=
X-Google-Smtp-Source: AGHT+IE0caNAMxPYJCF7Zz+XrUoBE8azb25sS9Q+9Ccb+I7OrmJowXuuqHIKpehjzy8O90b0xI9yOg==
X-Received: by 2002:a2e:a9aa:0:b0:300:33b1:f0d7 with SMTP id 38308e7fff4ca-3046850333amr166975921fa.5.1736073631870;
        Sun, 05 Jan 2025 02:40:31 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b082e01sm52248861fa.98.2025.01.05.02.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 02:40:31 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Sun, 05 Jan 2025 13:40:30 +0300
Subject: [PATCH v6 1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2 and
 Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250105-bigtreetech-cb2-v6-1-ee7bc9c4df46@gmail.com>
References: <20250105-bigtreetech-cb2-v6-0-ee7bc9c4df46@gmail.com>
In-Reply-To: <20250105-bigtreetech-cb2-v6-0-ee7bc9c4df46@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnemGeEXmJPNXBb+jHGA/0OjqOFMlyrlvkswP4T
 BnkjyUXVvyJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3phngAKCRC8310ZUDOW
 /UNyD/9qYntOtE4VksPm3dys85cARBjDzkBIQ5ujW2v6+YwxoJ0XHj286liqdYlnPy4mZQkYo7+
 n6qreRrv8uPseAeKBjK3acVHnhM7wmkvTbFm/XG8MRNK6BNXLLmNq74H31XFQk+nloSVQGDYzJp
 tfRCsnbZdVJY+wUQaf69Hv8xTpvYj1nv/RY2MA3zeZLKDJLod6jmxGdajikgjgfHL4tW1F9pekI
 FbQfrS+sxzg8XYWABZj6zLEWDkU/SJPxt8hezhJg5xgMozb+rk6IADnhiW7hyz1l0Af99AAaUTa
 HNPEWfFSo3LsPBFJjzvr4234Kqpcw5x4FfMWS505iFK/iw/qjxx+9PUiAwSz+p0HLsmsa1HRrP0
 x0QFLnK2Ix81dPc5IcT0SgcyrnA4MGincwW0HvHZ23pErv+PpUpGFRVBcTCz+c/p+qEspPk8lPP
 w7VK9Omho+dlH9jiCKmFVNxlIOQDwljRLEjFsPzhA2Rw3eA9Pf5YQK+DEr7bxm/zmDAm5Ro0/d8
 xdvpGIVAc96OUEMcPD1g33OGZS6MSDDlibxPO9F879bY95N/1Mskyrem5ziiHu1uVsdXtdkCJ/v
 73UTY5Dz2mMbqKM65+VgLrQa7743vd6dGB6JgjyTqx1XLFo+aHRB4ngDeHg87wCQieM/nGW3PTN
 AGHyEWNPJP7CG7Q==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 based boards

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923fadaa48c407a8e55e7854db7203e..349453b1676bfac45abf5cd49d6bd9f847281213 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -81,6 +81,17 @@ properties:
           - const: azw,beelink-a1
           - const: rockchip,rk3328
 
+      - description: BigTreeTech CB2 Manta M4/8P
+        items:
+          - const: bigtreetech,cb2-manta
+          - const: bigtreetech,cb2
+          - const: rockchip,rk3566
+
+      - description: BigTreeTech Pi 2
+        items:
+          - const: bigtreetech,pi2
+          - const: rockchip,rk3566
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2

-- 
2.45.2


