Return-Path: <devicetree+bounces-123749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E429D5D7C
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C025C1F22D8F
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175B21DE4FC;
	Fri, 22 Nov 2024 10:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ffXCv0Dv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830841DE4C5
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732272595; cv=none; b=TSj/EMlr5qiahlhRZ2Gdj0xXUEJ6uI4GwhdtKymM4GbBNXFzz6cQDSMtLXTJnpAIK9f46tOd53OX3QLGThygVtwsksw7ddBLSM9jfsn79sHfly4rQDNhF/sWBp+J+BN2mC6OcLahchbd0e/i4GliN2UHrobgZSzn8F+KvlDRmsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732272595; c=relaxed/simple;
	bh=tgRUJj6ITNEzj0a1c6+NTV/uxYtD9IZiLPipY7pVz8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E4cAxJo9L3pLtxZxNFKkChbqDnEDx0L6lRi8n+AaaNU/HltYfW49PhMYT+5bVNAiELyPKzNo3VysF3hjoOJbfP9LspVY1CSpltYc1n1aatWVUyufX92H2xWpSAy9kT/oKYs0kvgxrlzJZIJMyJgf3ZfoL94QSgBKN0Fl6wKPQDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ffXCv0Dv; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9ed49edd41so330437366b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732272592; x=1732877392; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HrinVQn1Cbi8/ijEcpv1A5N1VQp4jJYPom9JnVjcWsM=;
        b=ffXCv0Dv5i11x3IOovzSZPJNze0P9Qk7EnjHsGCCZxZy3N0k7oo5vSu3pR23eYIZtp
         1hGDaPEnkkgQK0+y8RXK8dd4Ki1O9AwWbeAJglmLLh85POsmRQlcBU7hwuYYruiAZeI2
         bfcDhm/jBq57rcRL8pK2dcPQ0+lZF8zL1ethM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732272592; x=1732877392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HrinVQn1Cbi8/ijEcpv1A5N1VQp4jJYPom9JnVjcWsM=;
        b=FIUah/Hv8Wdi2cq8mfwc2oVpJqdpcOHUnAuwBvbjplsshEupm26J90SLIlCJuU8VtV
         E6EfEEi89pU1mB4ffjZeAq4xvciXwH/MKruwXnXvgVGUl5NxKMcnMskiBZZZQBE4uGKi
         B9Vhi0vFeojyjtB4oZ/XbZOlYgmjRlVNR25L0kmKO307NTbJ/hmnmtsBY6VCe/nL0WiC
         wtkGhg7aSBiPZ7k97t2NLorqMbKDL6b6K6Rh/Z4w3oJ1SWwAYrEo0T46WKaMsu9/Thw1
         1FQFmIrovxVLjtXKTwzRKDCsiKcYwYB3TitxEGtDsPLdGhmhLCzpocFRaQuZWSLLhWEz
         u+RQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLeGNc4xSsridyNFhp/Xk67VfzLrZEPD6ZYXeSTjUta7/bQ8Ux2FqOa24MjmL9IWQa3NbzFnVNLbcI@vger.kernel.org
X-Gm-Message-State: AOJu0YxxyWUfc0hy6RuddKUInnESHgu7Z7zanetVu1VXbDdLFgYgerLv
	5PFSIm11vSznJt9fpig7BIOuSF4eHncejZNNwgLSfGYXZh2B3ubcLF5hPm0AYCLkGX41tRR/ttc
	=
X-Gm-Gg: ASbGncvBCUe5f0UIeLTR8nwBfcr/91YU7BmMVPH0qCcFLPPtuUsZB72QJwvN/1zebav
	3NoSoHtU7THOlnFmGJguLeHdgcWDObgdzFUMp9RvhqJqZEeHe0FxPA4QJDPTgV0h4BsddUHw//0
	7Yja/qlmpWbQl1Tgdb7hyfLM0+DDWyC0SUPL4Ydp+1OZKa9OxSnoftdARdk48KUJY7Or92BcGLB
	viRo89kK4BrV7LcLQ5VaxsqWdn9IXloXO/cn8OvcbUpcsHSphLA99rjcCAo7vT3VKZfGU6abtwi
	2hkUa09o
X-Google-Smtp-Source: AGHT+IHZnZfKf7gehP3fB8C/hlSWOPVc1U3PpxHVeONSc0QcHH0SfvWm4T58Y60rMJ4GvxkG1gycAw==
X-Received: by 2002:a17:906:1daa:b0:aa5:73c:8d33 with SMTP id a640c23a62f3a-aa5099fc310mr200688966b.35.1732272592002;
        Fri, 22 Nov 2024 02:49:52 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa50b52fe87sm82614666b.117.2024.11.22.02.49.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 02:49:51 -0800 (PST)
From: Wojciech Macek <wmacek@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Rafal Milecki <rafal@milecki.pl>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Wojciech Macek <wmacek@chromium.org>
Subject: [PATCH v1 1/2] dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
Date: Fri, 22 Nov 2024 10:49:37 +0000
Message-ID: <20241122104938.1437925-2-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.371.ga323438b13-goog
In-Reply-To: <20241122104938.1437925-1-wmacek@chromium.org>
References: <20241122104938.1437925-1-wmacek@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Starmie Chromebooks, also known as the
ASUS Chromebook Enterprise CM30 Detachable (CM3001). The device is
a tablet style chromebook.

Signed-off-by: Wojciech Macek <wmacek@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d9..df38bcf7c1b61 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -263,6 +263,14 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Starmie (ASUS Chromebook Enterprise CM30 Detachable)
+          - const: google,starmie-sku0
+          - const: google,starmie-sku1
+          - const: google,starmie-sku2
+          - const: google,starmie-sku3
+          - const: google,starmie-sku4
+          - const: google,starmie
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:
-- 
2.47.0.371.ga323438b13-goog


