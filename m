Return-Path: <devicetree+bounces-92224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1161394C4D0
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 20:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A3801C2624B
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 18:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8FB15AD90;
	Thu,  8 Aug 2024 18:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hDMvy1ob"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84C68158D6A
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 18:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723142688; cv=none; b=j5frxhRVEcn1BvmKFKWuflhuo2LxJ9tpAPpKS1RnsE70eg5zUDxjHOp3UVl0b7AUD7FExZGQ40z9aVb+0+g35+UoqAl2wMgy7xnUi4woCAAu9gtJtencbHTuFEfLOB5X8NEFNLDqVFmVhiK4amMEALN0YwBDSVb/IBC23v2Vlxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723142688; c=relaxed/simple;
	bh=NbdLMTWfLXl/wJipk+LdtD2moPrB8cy99z3WZQooviE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uyeb+0N9hxQN1B5e+oOMKtaEdtwbdbLYGwJPthRXhHdYJHbPD45VbsVgJmu4u9BQNdVyu/g+18QC9FuH4RV2dJJDSuPmxvezvdn4fe0VUVayIZENFhbT2trXj2TTB/l0tytxvV6/ZfGt/orBcdN1Io7pTkDCwbZe+NhcZVZup1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hDMvy1ob; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7107b16be12so1099770b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 11:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723142687; x=1723747487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+FZjS9lLhm8Ss5ACYK4UD0eLeWkBZ4V5hozi46AMmMQ=;
        b=hDMvy1obe44ZOmZy9Fdk47AOApAFFH0Y2Bu1fTdcC/JVIDrMfym+e7ADvxBOAJIxE1
         mJcAKyfjsnOFiW4Z2P0vyK+Lf+RqjmZ1+seO7U4FLARaB7K1+gGq4FKBLUF1n4W82u6K
         arOjGPo3TZCF8ink+Qs/Zbv4p0IFPBXQGljcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723142687; x=1723747487;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+FZjS9lLhm8Ss5ACYK4UD0eLeWkBZ4V5hozi46AMmMQ=;
        b=mBHi9dzVQi8FxVUvnjRHTgGPcPyVZBuRn/Dv9vcUqXqjf1+JyR09KhzntZawgZx6M4
         E6FLIu+N+gdqvGQzD1nW9gctM1zDcik51amEJgsGlhWhQEOoYxdCKckHFkHXn/QI+QBD
         2UQxyVElsv/Rhfj5kto9WpCc8z8TSFF4PiBFNKXI+ZCjdHijepA/lobrFy+XitWIuDgl
         6LJz8qPX9an8Cr7JmhQQb52lurk2xFnrQL9XSbq/IKAF1LwhiYXJy6zaWew+TwzI7XEI
         oiNkUFVFh9DHlULDBSBO9wEIh0Ww7Gg4jUXhIdopDkRsWAhAChWvIKO25hJ6vWlY8G2o
         PLPA==
X-Forwarded-Encrypted: i=1; AJvYcCXARw7oKINp4MTKjcJA4fYE9dPxmiqO4mmvljYzN+bZAGrHZ9M20o6yxh29187nBxtqqgHhOa2RbiP/zL0mxVopg0CPJp8/wHKiYw==
X-Gm-Message-State: AOJu0YztNxIOGEpLd0aXLT7eluZURuxUlEJs1banTB/J+1dpnI3xHleT
	0rIT4Hsw4A1rWEdRbzcA3wGZzkJxrZJiNDECdrG98HZ0nyHcX9j6SVcMKyjQQQ==
X-Google-Smtp-Source: AGHT+IHmMuhdk1NaYfmjsh5fG9/wnslwqUeMbA6OPtLJlYkM8QY7GVj2DKaKMTuWDb1cv34MVl+iAA==
X-Received: by 2002:a05:6a20:3509:b0:1c8:92ed:7c5e with SMTP id adf61e73a8af0-1c892ed7db8mr748828637.23.1723142686764;
        Thu, 08 Aug 2024 11:44:46 -0700 (PDT)
Received: from dianders.sjc.corp.google.com ([2620:15c:9d:2:66d6:d51f:d7f1:36c4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-710cb2d50cesm1416640b3a.109.2024.08.08.11.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 11:44:46 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Rob Herring <robh@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Clark <robdclark@chromium.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: display: panel: samsung,atna45dc02: Fix indentation
Date: Thu,  8 Aug 2024 11:44:07 -0700
Message-ID: <20240808114407.1.I099e8e9e36407a0785d846b953031d40ea71e559@changeid>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The yaml had indentation errors:
  ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml:21:9:
  [warning] wrong indentation: expected 10 but found 8 (indentation)
  ./Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml:23:11:
  [warning] wrong indentation: expected 12 but found 10 (indentation)

Fix them.

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/r/CAL_JsqLRTgQRPcfXy4G9hLoHMd-Uax4_C90BV_OZn4mK+-82kw@mail.gmail.com
Fixes: 1c4a057d01f4 ("dt-bindings: display: panel: samsung,atna45dc02: Document ATNA45DC02")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../bindings/display/panel/samsung,atna33xc20.yaml   | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
index 87c601bcf20a..032f783eefc4 100644
--- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
+++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc20.yaml
@@ -18,12 +18,12 @@ properties:
       # Samsung 13.3" FHD (1920x1080 pixels) eDP AMOLED panel
       - const: samsung,atna33xc20
       - items:
-        - enum:
-          # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
-          - samsung,atna45af01
-          # Samsung 14.5" 3K (2944x1840 pixels) eDP AMOLED panel
-          - samsung,atna45dc02
-        - const: samsung,atna33xc20
+          - enum:
+              # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
+              - samsung,atna45af01
+              # Samsung 14.5" 3K (2944x1840 pixels) eDP AMOLED panel
+              - samsung,atna45dc02
+          - const: samsung,atna33xc20
 
   enable-gpios: true
   port: true
-- 
2.46.0.76.ge559c4bf1a-goog


