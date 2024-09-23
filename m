Return-Path: <devicetree+bounces-104443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB94E97E693
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:29:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6792E281462
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 07:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D61B6EB4C;
	Mon, 23 Sep 2024 07:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nnqw0odE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F7C61674
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 07:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727076540; cv=none; b=bsQAQNdaEN6jnVp1z/LbBAvZ8DDV+ecXaQ9Es5isElvuH8jemP5QDjvhK1A2XvYCFursRRlRhpVk+sK9QTp7D0wufTENnJ91JUe/OsytziavLYdwWqSIz9/gQ47hZvuCh1obzE6T98n6aqzL12uVrqnoU70VfCMI7yp9aFT4MB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727076540; c=relaxed/simple;
	bh=dd206XNz9V5oFBWlTBsuy0o6P0/Qn65l6yfwvtU1a4Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B74ytkOyzQvMBzz08f4YwsGvaicB60ChTfJdgTcXj/xAhB2a9iJy9O8PMUX64X6uxwUtVfqa/U8M2dZn7QI74D7RuCIt6JFo5O+ZbO+yDSGuEfJ/437UaztbtuIUBv9xnPaONxy83vjeGiUidf0vamwXpfxSeRNvqAXEYWfLonA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nnqw0odE; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7a9a36c36caso18432985a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 00:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727076537; x=1727681337; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mAtZoyub3M5e7HD+it2MQm/CxkmGOb5wWsulGwwzF90=;
        b=Nnqw0odEhFWx+VI5Qw+VG+jX0w3sBQ7wGNhP1yXltuRdjOaGMJ43RziR16+cRzrjQR
         nrOuvsDUYVfCNkTaXL7w9iIh9z7Xk0DLeO5HeSSiB6tGvu2+mKmqjNSBFdRvzbkYIXZp
         ny4IwazMOz1zZMl3LWdBynTpT9Ifq9p0p9dClvZmXVsUHFrWw4pD7vmLX7hGLCjBogkx
         6cpqnYzfBVjUO10OuKj79uioKmauk+C2rSv4BCFfOv1RwdBVnRPh6AleLF/LG5u/qBlX
         7QUmT07Geh30Ri8E/eyIk6LYH8S4uYpdKH/hHiPhtjykzUr05jrhr9R710vm/yvVpW2I
         4gCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727076537; x=1727681337;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mAtZoyub3M5e7HD+it2MQm/CxkmGOb5wWsulGwwzF90=;
        b=J4XfYoTZBaad42AN4ekIjv+YLodz0uXp00jv1VFt+Qq0jD7OTs0mt1cT0+/BuFoWTa
         711iVTWX2t7m1XWoK3DrAzG4W2mtTIVcKAyInQQZiK7Kgex7SftafShhMasppMj8awH0
         ekegeOnpjPZkq4p77vMqNopp+SP5nWNsVRqsG17rrVpRTb9+0a6psdYLXVgTGggc4t4f
         4JYzx3jFRK4d5alT9d3nXhtzvCFKSAEb9UZow7yi2oTv77dYfWWBAZqZYjUtguu97VNn
         PdmkDuKzwPR6XTMo+BxJwZSlxjfyGH+cArE+I9NOVdG4BgPZAhTlE68A9Ac6Zh547L2n
         +QSA==
X-Forwarded-Encrypted: i=1; AJvYcCUpSQg02+M8ICUw3Ry4ey3KH2uvV6igldijrEunA1Lr0SfwSWWUAr8l+u5vTnrjyVfJlRmyH+j7eGh3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8WBdmP0zsGJHUoXlDW4sfZ/ix9vj5WBZhDFkJEVjr2Jriw7tp
	Vp266v3tdsseR1MA8vYowYu1skOXQBeW970a1VYGVXT3aZQKK0qXiD/eEkOYf9s=
X-Google-Smtp-Source: AGHT+IHXpG52Ucwys6xb5zCGbLbdUu0m8hb/GPkaFXGTGCYmRcps10LaSPYl/ynbCKDWpR/O6wrnew==
X-Received: by 2002:a05:620a:46a2:b0:7a9:aba6:d00c with SMTP id af79cd13be357-7acb8002d17mr757137885a.0.1727076537382;
        Mon, 23 Sep 2024 00:28:57 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7acb08c182dsm452872285a.75.2024.09.23.00.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 00:28:56 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/6] dt-bindings: media: qcom,sm8250-camss: Fix interrupt types
Date: Mon, 23 Sep 2024 10:28:24 +0300
Message-ID: <20240923072827.3772504-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The expected type of all CAMSS interrupts is edge rising, fix it in
the documented example from CAMSS device tree bindings for SM8250.

Fixes: 46f8ac8497c5 ("media: dt-bindings: media: camss: Add qcom,sm8250-camss binding")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/media/qcom,sm8250-camss.yaml     | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
index fa5073c0fd1e..06db2c1e6079 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
@@ -329,20 +329,20 @@ examples:
             vdda-phy-supply = <&vreg_l5a_0p88>;
             vdda-pll-supply = <&vreg_l9a_1p2>;
 
-            interrupts = <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
-                         <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>;
+            interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>;
             interrupt-names = "csiphy0",
                               "csiphy1",
                               "csiphy2",
-- 
2.45.2


