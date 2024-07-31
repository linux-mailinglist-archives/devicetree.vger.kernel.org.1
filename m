Return-Path: <devicetree+bounces-89664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E22E9426A8
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 08:28:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8CD41F25FC0
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 06:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5369D16D313;
	Wed, 31 Jul 2024 06:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="d+etlb/B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB24A16CD2F
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 06:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722407207; cv=none; b=rk938R0AeXb+BnkTCrFcrdtpoAh8z42F5y4+32qi3/lWRD8gQM8QpMC8DpdpEqSupLxdJGIR1z7hV31kQNYR1yOtRbKoNZjTJd4LNI8QoZ3ptGSfTal7JjYuwdsa1LJ+QiLH/of8JFJWFUWoHfaUpjTAnoKeCZQRfItcOFNA+0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722407207; c=relaxed/simple;
	bh=gN+pByoqcvM3L5Qti+k0iekH32RjU9EFODfZ4olPsFI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fo0VmaCuaubrnZ26cpMi43b4Kpu/Vakj3Y5Qe7vcDBcmSHo3DUh73vdWsGM8OKgzfTJm4AzW7SGX5czbxarbTODuxgAnJ6WWtJo2qBooxd0kb8trlYEdZpjVKKblY0WSw/L88FuOzj8bribPSgllUP2rpRZVCvCW8l4cqvWGJlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=d+etlb/B; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-70d1cbbeeaeso3904324b3a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 23:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722407205; x=1723012005; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6mTCTozL1kMNiDQohIkyeCe1qQLXGcgts2Oa5sMWeIQ=;
        b=d+etlb/Bk11p16l6WHTkVHcjAe7dKQZiwLjprVAkMQyxgUYuFpI32k7acSrFaULeqZ
         RzF7XERdr1Y32X59sbY6tsRPqp2LEsCq9qBIMd/OlIq21H83uNoLaUHK6eRRjjr4KWB4
         Au9XZ6kNVn4vZoWWmhb/F5KNg73PJUQ3N2K40=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722407205; x=1723012005;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6mTCTozL1kMNiDQohIkyeCe1qQLXGcgts2Oa5sMWeIQ=;
        b=LG8aB7EzOQixcghhobXH+evW49WXg6HNmFq/ed1YEw4HdpvrYxcqtXQqrKMmjAGtP2
         tXkC1uUpyAW15BkdrUYJADmAFcUklrJ9AmJD60ImM1rB9ve9hbMx7Lgbjkb4d7/MmVP8
         x05PlSkSpGhcvURWhxSB9oYu5fTCpCi8f8d13IdpV5jdeGqASbBf4YGy0njxfYD7VnIC
         UGzX+FB1WU6bqwXUxO6LYPCbKYEOy6tMtbflIhEN+sAXvaEVwlhXmp0Q2VNbPrVUgEu1
         JXID9dsG2lJBmH8BXqD3hRq5d7fblMG2xL+qqze6nMB0W/fI+hl1FfNCt7BDWfRrpMUc
         YtzQ==
X-Gm-Message-State: AOJu0YylnCkklLeXzGQadMzkOXi7qlTKQa7l9tEQ5AlWpFjzMbUbktUN
	PDlI9ErGFh8y1qS9AMgcfp5rD9PF0pehVdVZpcs5Ul/MLytnxv2SHbTn8X7oiw==
X-Google-Smtp-Source: AGHT+IFmp3+Q0xJ6154cwrPQLay9JBsUxdGaxHPITgVws1imP/cPhOraXxHtZKMmmYBhj+WRwQV++g==
X-Received: by 2002:a05:6a00:391e:b0:70d:3420:931e with SMTP id d2e1a72fcca58-70ecea2eea9mr11327502b3a.15.1722407205065;
        Tue, 30 Jul 2024 23:26:45 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (46.165.189.35.bc.googleusercontent.com. [35.189.165.46])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead6e1084sm9322308b3a.25.2024.07.30.23.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 23:26:44 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 31 Jul 2024 06:26:36 +0000
Subject: [PATCH v2 2/2] dt-bindings: arm64: mediatek: Add
 kukui-jacuzzi-cerise board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240731-jacuzzi_dt-v2-2-4995335daa30@chromium.org>
References: <20240731-jacuzzi_dt-v2-0-4995335daa30@chromium.org>
In-Reply-To: <20240731-jacuzzi_dt-v2-0-4995335daa30@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.13.0

Cerise is known as ASUS Chromebook CZ1.
Stern is known as ASUS Chromebook Flip CZ1.

They are almost identical. The only difference is that Cerise is a
clamshell device without touchscreen and Stern is a convertible device.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..087773a43673 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -146,6 +146,20 @@ properties:
         items:
           - const: google,burnet
           - const: mediatek,mt8183
+      - description: Google Cerise (ASUS Chromebook CZ1)
+        items:
+          - enum:
+              - google,cerise-sku0
+              - google,cerise-rev3-sku0
+          - const: google,cerise
+          - const: mediatek,mt8183
+      - description: Google Stern (ASUS Chromebook Flip CZ1)
+        items:
+          - enum:
+              - google,cerise-sku1
+              - google,cerise-rev3-sku1
+          - const: google,cerise
+          - const: mediatek,mt8183
       - description: Google Cozmo (Acer Chromebook 314)
         items:
           - const: google,cozmo

-- 
2.46.0.rc1.232.g9752f9e123-goog


