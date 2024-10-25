Return-Path: <devicetree+bounces-115561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3139B0068
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 12:46:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A05128422B
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64CAF1F80A3;
	Fri, 25 Oct 2024 10:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fnSJ4QuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856BF192592
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729853164; cv=none; b=C1gGXSjyr/bRRS/wrZ3dZnemWs3HOJaZZiLL8KxAzvSwWQnXFqR00i+N+mXuIgBOfK6xzLA9yQlLAtnioVcG07lqVkVJ6abLSx6USfrk6BWOW0ssrsmFe3HBCtbM7qWNlaR+bhO2M7cDzOgU/lwDpPwOuUk9uvRl1kHrrei4s4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729853164; c=relaxed/simple;
	bh=O14uLJFcfQnS9aEjRH8ZapsPP/mCxPsRfwWSDCmOMkY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D29riZzKKMtTZT19sHJwO0KYXzN+lD+twWfC9YzIOC4SwudSLfg2PXV7YC1nSlOkHTm4t8dePw+gx8EC9F0f79T47UEj7hcxh8wxQaok75RR/tCqvcvaD6kuK87RaiyWAKwmlHcQyLFSFoKO9L1NnGNHRIAyiqJzSguDzLFru0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fnSJ4QuQ; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7ea9739647bso1253776a12.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 03:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729853162; x=1730457962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ceLR0IvL9qdGH71mlJjn14Kdj5vXT4ULmmpb71qNMEk=;
        b=fnSJ4QuQVaAJl+9/VCdbdqBZ7Sxwbr/O6rAx92Td6BQXVubUv++AU/0CvNd8MvlKlc
         Ph8Lp4dv09HWw3VZrsH8GAHl8tmtMCr/6Z1jA+rwROaUg3c+xCgGkt/u2lru0WQ7MNhA
         +L3MRDcmbX6KI/d98bJU7NPkzSi9/MuHXqTSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729853162; x=1730457962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ceLR0IvL9qdGH71mlJjn14Kdj5vXT4ULmmpb71qNMEk=;
        b=VsGgWOOXXoe3UR73KsfY2eWpRMwb1agjjwvlSjPZOJAtKuMo8UraYV0gpai+WI+sV/
         DNV3GLXWuBzdMe8EP2bNXyCNtDz4RnUwNtSM+niDybKxZKZResu74Xdn0g3ltYR12YAu
         L8ue/nvngpHFjsr7uWFvWsXbOY/fpLc39BtCQHBugUi0J4hLQoxrcf6IGtBeVVyEq4cv
         RUw0qz2Ne3K6BG9SUG+jd4rLcvyKuHibH5bOtxz9oCw1ErGnPh68DHDOBII186a3CHBD
         yVPZ8LGfYnZ3VVin9I0St+1owQtKc3TXpBILWlhG7/QEWXZ7EuZhbnsF+OPbfO6Bk0Tu
         PF2A==
X-Forwarded-Encrypted: i=1; AJvYcCXMD2oe+GBjj2g4fKxY1wZmjJ8Z58+5AfueUZX4yyrFzuZX+iMURWJKtrI8knhbZCKUvsyjVQWMAxul@vger.kernel.org
X-Gm-Message-State: AOJu0YwRO9GKtPNLHxzpqw8Dln06DdW/Fc0Qbek5zKSnpVsjhfVJF64L
	X5ZkvM711ow7GC5er3ZDsP5RddC5vDgpEPeeOKmTsM+tvr8X/+8HEXee/ilUH1pZJTE6c0SovBg
	=
X-Google-Smtp-Source: AGHT+IGz6wzyyQ3d+NeaKQh7ukjIPx/hDX/N2T3R4gD20OXmJ38D2JhCFST+k71O7anmr55JG00JVA==
X-Received: by 2002:a05:6a20:2d1f:b0:1d8:d880:2069 with SMTP id adf61e73a8af0-1d9898ff764mr4972242637.3.1729853161966;
        Fri, 25 Oct 2024 03:46:01 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:ebe1:dd63:343d:8a4c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0d089sm829548b3a.99.2024.10.25.03.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 03:46:01 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: Fei Shao <fshao@chromium.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Trevor Wu <trevor.wu@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 1/4] ASoC: dt-bindings: mediatek,mt8188-mt6359: Add adsp and dai-link properties
Date: Fri, 25 Oct 2024 18:44:41 +0800
Message-ID: <20241025104548.1220076-2-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241025104548.1220076-1-fshao@chromium.org>
References: <20241025104548.1220076-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "mediatek,adsp" property for the ADSP handle if ADSP is enabled on
the platform.
Add "mediatek,dai-link" property for the required DAI links to configure
sound card.

Both properties are commonly used in the MediaTek sound card driver.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 .../bindings/sound/mediatek,mt8188-mt6359.yaml         | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
index f94ad0715e32..701cedfa38d2 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
@@ -29,6 +29,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: The phandle of MT8188 ASoC platform.
 
+  mediatek,adsp:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: The phandle of MT8188 ADSP platform.
+
+  mediatek,dai-link:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      A list of the desired dai-links in the sound card. Each entry is a
+      name defined in the machine driver.
+
 patternProperties:
   "^dai-link-[0-9]+$":
     type: object
-- 
2.47.0.163.g1226f6d8fa-goog


