Return-Path: <devicetree+bounces-69015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5E38CE70F
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 16:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E58D11F21DE5
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 14:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 601C712C550;
	Fri, 24 May 2024 14:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rpyKTH5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CE812BF32
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 14:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716561119; cv=none; b=TUhFAfTFjUiHjVNcpMARK/PlGB+yeEXa+HeIRxh/rA9tXEod1XTWTO6XxM6H6t5dZy4rQb4AnO5ROn6XX1nBdfeSkUwXyKXW01F9ZSqRSGjbW0JXR9fApS1vJ0fhdZGF+lAA4wBgO84CJn+Y/6HXJSO2IX6E68w4jZKTiWCfsy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716561119; c=relaxed/simple;
	bh=rnldv7833XODCkkhE2IoJHX1ijFNhpuCcMgGUEpMC7w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FNmrPHf27dlo0VcriVDLxRXf2gtlp39n3HtPpNyy+Dok7HmjiErhLSo328kNg3gw4nn25Zfrj5vlLT904TugBIDNuYsO8NGSbwY7tL1zX+ZXr1hHFHqb3K0GjS+lxcgiku4OeZCi0yF0Fz72/FP7FjNIojKEsUIKVlioA+oPckE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rpyKTH5i; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42016c8db2aso31482645e9.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 07:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716561116; x=1717165916; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJ3mx1HRwERqoH8XmiCBcC2qPne8ED2LI938/bq1eLA=;
        b=rpyKTH5iQvriVyQD9mnPFPiJuyP0PXkrW+qDjdhDArRSrkNndcJ7XZuSorzwsAspCH
         ByKOyD+mKqoeQoQYrtQ2ihQQx7pafWGC5pxFHOMJe44JMvj8NdZZ7hRIwpdKGjWUW1gY
         6aGICS8m6/gI/5Ige1l9vmHmlfe3cQUZJQelXFtyfcwicuzoHbaTJPJ3Ira35WdHZxGg
         T1KLm8fE49gRAAG/nysHvEUAkq8eKUXj5IZ8C9KrHnYRND0iWdQocMjmkstwRM0PiVC2
         tRC5qbhFL17ap3FlUrg47jHRwsAfwzV670AcseVot1k2ciuIjIWSfQ6BIcoEZedIQtnR
         Nhrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716561116; x=1717165916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJ3mx1HRwERqoH8XmiCBcC2qPne8ED2LI938/bq1eLA=;
        b=mb5CjqGFGwy7V6hx/N6hvvMNR/4okuFma4A5wg0+/ggg30yarmxle+lOxRM6yYOjZ8
         ZUID8Vk0NPa2dHZVnzYvd9pFUsDHeaFgdWSaKSURdxwvqmJ8uTSIrvcovB6bW0KJQJKV
         yDat7Bx5KmjWIYbgh2+wy9b9u4ZfAH7A2+C5LwC+pOHF6Uaue0DfWrrshAvq3zjodhsy
         DFRT0EV6IOCJx2r1E0EWCzfKJxiK3r7VVHupfJ1CvTafMxn9lwNldinSeXXXhGc5ex5F
         PttMRVabYLvBs+vzCljujR7J8lRbYOBiDmAybavY91cQi80oY5mx9zpW3m5y95+kJj+n
         YIJg==
X-Forwarded-Encrypted: i=1; AJvYcCX0saSoyXF3UN/0iPK/vcYn7cwpA3HDDF9rplGyTLd4Q0P/iD2eynggN7/GwQewawO+78yQ86HHXQS2EqkkrztMCyQmvRiNZpUDBA==
X-Gm-Message-State: AOJu0Yxq4gXN1PJ0FA2Ic/ZxAadXA10SW2Zb7TRPntT3teDoLVE9C5+u
	a4hPB3+S1czWQdiYjLST/b2pSL17CdZIMgIl2Lu8nntyF1LxgUs3UlZpoN3vREA=
X-Google-Smtp-Source: AGHT+IHeazyAYbEcDfkZpobbZA+PYRdLXkVlFupJmpkvVRjYWEJntrAScewAKlYFPKugfsjlI9OUkQ==
X-Received: by 2002:adf:cd91:0:b0:356:48f5:437b with SMTP id ffacd0b85a97d-35648f546camr1349067f8f.32.1716561116049;
        Fri, 24 May 2024 07:31:56 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a090c2bsm1719611f8f.59.2024.05.24.07.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 07:31:54 -0700 (PDT)
From: Alexandre Bailon <abailon@baylibre.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: rui.zhang@intel.com,
	lukasz.luba@arm.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandre Bailon <abailon@baylibre.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/6] dt-bindings: thermal: Restore the thermal-sensors property
Date: Fri, 24 May 2024 16:31:45 +0200
Message-ID: <20240524143150.610949-2-abailon@baylibre.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240524143150.610949-1-abailon@baylibre.com>
References: <20240524143150.610949-1-abailon@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

thermal-sensors was defined in thermal.txt but when the yaml binding
has been defined, its definition has changed, dropping support of multi
sensors.
Since we are adding support of multi sensors, use the original definition
for thermal-sensors property.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/thermal/thermal-zones.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
index 68398e7e8655..fa7a72e2ba44 100644
--- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
+++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
@@ -93,10 +93,9 @@ patternProperties:
 
       thermal-sensors:
         $ref: /schemas/types.yaml#/definitions/phandle-array
-        maxItems: 1
         description:
-          The thermal sensor phandle and sensor specifier used to monitor this
-          thermal zone.
+          A list of thermal sensor phandles and sensor specifier
+          used while monitoring the thermal zone.
 
       coefficients:
         $ref: /schemas/types.yaml#/definitions/uint32-array
-- 
2.44.1


