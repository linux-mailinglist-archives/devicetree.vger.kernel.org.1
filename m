Return-Path: <devicetree+bounces-125421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CC89DBF5D
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 06:57:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 892E9281412
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 05:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6303B157A5A;
	Fri, 29 Nov 2024 05:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="epSB6VLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C8D155CB3
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 05:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732859850; cv=none; b=iZ5HPkTVz9MR8aI0DUP7VI0Rxh7at2y0udNCDVwNO0Zr691aZE6f1jZimvbj2vizE84Jfs4T+OJeI/1A0XyhHsCj0f2hc3S2QvQ/9IZdTVEEcfan5dZu3mOGYS8bgUhn5vONP+EvyvDPN45PoZS8q/sbpGZnQptcN5A+mW7Dedk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732859850; c=relaxed/simple;
	bh=2U9nTkbm74paSVTFTs1PRSY08ro5QpmpIYYm03e10r0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GouVv/5IlW3saruPgORW1j3jIRBONx5OdujPAbjBIeP2nv3rOs38Ccw1etJMox1PMJnG5ak5IvNc/JvZ0OwtAc+CcDcNjU5gux7hQUD9yILiYnzH+8S4dMS+CCejODXEXIsbFp2IwBFfe3Ga82PwjHkLeEkxkulX8sdSQU4G3ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=epSB6VLa; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9a68480164so177793566b.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 21:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732859847; x=1733464647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FIal9P/vly9trTFOOFdtiwygL3gRq3FSgu7GS6el7Zc=;
        b=epSB6VLaSZDR3EBFYwksqpPY+8BHWBV6Gi0Wzj203rAZFwpG9rNj4XxDaF4gum/iVp
         Eu+zsYdMoSEXv/cpBj0K6RjDb75LsBNpA6BQVdimteut5GDdFa76IQhx5W6KPt7VYx7N
         MfvzJ4fLzAfrRdusNUtgJOnklG5DsM+oxQbOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732859847; x=1733464647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FIal9P/vly9trTFOOFdtiwygL3gRq3FSgu7GS6el7Zc=;
        b=Uq+n7U0XJPS5vcmh0CIUs21jLr/9L/ePX2Ns1x0yj8PDsT8NOaRll0O4qExJeKORn4
         FAdGRqPYLmY7AInsZXBu6QNMSFE6OkVz3tBRLrj8ycA1hO2Fs6X3RRyC2DoiJEx2SLfR
         KU7zzPJh2cBEjFo4AzIugLI76hElQmRmsw3NLjuo4DxssUyDRqCHTrKRgfwxq/ZEn6tU
         EQiaADJIDdbIuCw+uK+OfQOyQYF4E/JaiAE9nFuYrZCSnaXBX1/g4pD8xPbxuSd7hyot
         X82PJ7Nc8M2UAXPrThJn0woQnoSHdWymHPRerdbNglVO5zxv9lXbwQTGJP3WvT/xJH40
         nJNg==
X-Forwarded-Encrypted: i=1; AJvYcCXcyJKfyACNLJQsM8z8nHi/18tiR3qqELn/cYZ7n7Dsr4N3EkCAxPfTlLv+fR1F8SexDNEgm5knq4bT@vger.kernel.org
X-Gm-Message-State: AOJu0YxThsm6joncwbTAk3zDp66DA+s03tzpYuoCzTWpXGpViN4xb6lA
	o6SCXwysXVpFd/8F80KghODkEnxbf6oA/4yjU+/ExywmSZfELKT4lXSiWF6xCw==
X-Gm-Gg: ASbGncve2Q4C5Kj6gv0o/CKwRvo2dZgCqNcF7ukV++hGrn/3360xjnWItF8JGY/EacE
	m2L6oo8APx2KiTShJGY2MM9KwU/JTNe1SlNMmBpF4ybkTMtG1Dqf28OUhgDOO8nvtzYl5+JHHqe
	bKR3wmAEjIe2FUgaQ/h3o2MDMFao5Cw28Bnwpl+VbcvLx537bJLSlnkSOaJ7kG+Hbe5ave/b9Ns
	+5L2QpEJGs+KpuDwWTaaZUurzg23BSKkFuGuAeWfokMW+cpWFX/NPYVLHREM6r5NvGCE7/emyqL
	rq5GxBwX
X-Google-Smtp-Source: AGHT+IFNv0zD6hK5Kn3ME6hU3vghtPqyWLs3uKgSZCZPb6u8aOBrQiKeDRnrEBES/faD2DMaT8va1w==
X-Received: by 2002:a17:907:75d0:b0:aa5:3631:adcb with SMTP id a640c23a62f3a-aa58109066cmr648048866b.53.1732859846732;
        Thu, 28 Nov 2024 21:57:26 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa59997354bsm136283266b.199.2024.11.28.21.57.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 21:57:26 -0800 (PST)
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
Cc: Wojciech Macek <wmacek@chromium.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
Date: Fri, 29 Nov 2024 05:57:19 +0000
Message-ID: <20241129055720.3328681-2-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241129055720.3328681-1-wmacek@chromium.org>
References: <20241129055720.3328681-1-wmacek@chromium.org>
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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changelog v4-v3:
 - No changes
Changelog v3-v2:
 - No changes
Changelog v2-v1:
 - Fixed items/const bidings description in mediatek.yaml
 Documentation/devicetree/bindings/arm/mediatek.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..6191a5320c14 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -263,6 +263,19 @@ properties:
           - const: google,steelix-sku196608
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
+        items:
+          - const: google,starmie-sku0
+          - const: google,starmie-sku2
+          - const: google,starmie-sku3
+          - const: google,starmie
+          - const: mediatek,mt8186
+      - description: Google Starmie (ASUS Chromebook Enterprise CM30 (CM3001))
+        items:
+          - const: google,starmie-sku1
+          - const: google,starmie-sku4
+          - const: google,starmie
+          - const: mediatek,mt8186
       - description: Google Steelix (Lenovo 300e Yoga Chromebook Gen 4)
         items:
           - enum:
-- 
2.47.0.338.g60cca15819-goog


