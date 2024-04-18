Return-Path: <devicetree+bounces-60742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 716A58AA1E8
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 20:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D2352881F9
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E20D17A932;
	Thu, 18 Apr 2024 18:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kesHXOEG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEAA1779BA
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 18:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713464184; cv=none; b=J76Kzzkg/cn0uqYrlthbar0NUYLMK0NNkdlpchbN7bjy1YUdGyCki4rSBigPaCxebDHHTtdDm4w0FNDeSf8vzRwg1gdWdCj3r+Ifq56gDXO81i6jThd4JcmtZ3qWRzSIe3lpuZmpCENKFDOUZqpd01ed5YigQkwpbS8uIPQ6Rdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713464184; c=relaxed/simple;
	bh=vC9wNDCoFCG+63bXlhz80/EnfUoxmYoU48GUa+Mimoc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dvLFJhpd9TgeIvbK3CcjiLXoFghftyyRfuOdCrk+QgrT4P7L1ZaXwBwMYezYz3zM/MfONefptOWFQgtt9JOmxfGWSq2QimAP6UtcU1Wj9Rfg0pNafVep4W+ylPI/Zoz3Ldsv4w0MzoZD7p+FgXPsAGC6kXxmwDr3TZ7WMHzpEto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kesHXOEG; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5acfba298d5so401927eaf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 11:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713464182; x=1714068982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dx+uCkY2IHVYFvcxaqefP55bzrjYD/j8sy6xvhSzhtw=;
        b=kesHXOEGODvEl24VbXi4YtEUBjirMZc70jU20+cDI2e14pcUQFqw731V0P+0qwJyHF
         gVoDmoKggkF2F/b3gs1R/w3ROwFUZlHdY9sB4hnj50vB8BcVwbuI6LbclhbKXQFhsXi5
         kLdkJfQbh1x0uVsVLwK4sXBri75BhmwnRl0muUv+mWqb9qODgE8vteML+jwKY0+OHC8l
         RSZowGBYajz64AgvCyNZBqdIQAPGVJryQ1itTathV59VLM1sgR1V2BFF91A3Gzl8EZRp
         ScuQLRJbq/a34ULhtChJCs+yyq/G9GcR+3LsfodSrjgwNbiYKbRCldYrmF6x90bJq4/a
         Nulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713464182; x=1714068982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dx+uCkY2IHVYFvcxaqefP55bzrjYD/j8sy6xvhSzhtw=;
        b=TfWQ4j/i0DHQNKq4JD+QH08HVq1LiegMNog0bak1hzYf7am50qpV/TnWkJO5xji9NA
         HCZ0zinkSJJxvHiCXEhIRodrtF9Hql08cd7r/J8tVQfujzC0bSRegjVbRPzjuMn77UP9
         /yVPoq78A60Cpq+xh4fNXLulIb0X/C/xMOabbLUMiC72NjRnHo3gGCLQF/d6HvyoGYbd
         xfPsWTBxcQvyfoMO1kSJAaFUIKV+UJsMbtpKJk0fH8iZ6FQvLddsXXVJNB1V2XbR6lSy
         Hz7Jfh53kYO6MC3WQvqNrzprZ+Ay7AKWUOAmpa56wBoxW+3vZMwYCrRB7YxQicFa+/pT
         qVPA==
X-Gm-Message-State: AOJu0YzGVDA0s7Q9wq+1X/0RYui8oZqqrbR9zjZFQSFf6p5aHQ3IXHe3
	DVJ9o7go37jb8Il1Vq+Fc2BJujDENf2hQLOXfumOo7zpp9SzrPG9
X-Google-Smtp-Source: AGHT+IGwcDmpvkOcf6VyHUItjQaGZIzHI+N5H26q7l37j0aPkI29YblbrKT3hqlPXl+W94+88SXJdQ==
X-Received: by 2002:a4a:5102:0:b0:5ac:bdc0:2bee with SMTP id s2-20020a4a5102000000b005acbdc02beemr3946568ooa.8.1713464182272;
        Thu, 18 Apr 2024 11:16:22 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id dh4-20020a0568201e0400b005aa77c0fe49sm483419oob.24.2024.04.18.11.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 11:16:22 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tglx@linutronix.de,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/2] dt-bindings: irq: sun7i-nmi: Add binding for the H616 NMI controller
Date: Thu, 18 Apr 2024 13:16:14 -0500
Message-Id: <20240418181615.1370179-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418181615.1370179-1-macroalpha82@gmail.com>
References: <20240418181615.1370179-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add binding for the H616 NMI controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
index 83603180d8d9..f49b43f45f3d 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -25,12 +25,12 @@ properties:
       - const: allwinner,sun6i-a31-sc-nmi
         deprecated: true
       - const: allwinner,sun7i-a20-sc-nmi
-      - items:
-          - const: allwinner,sun8i-v3s-nmi
-          - const: allwinner,sun9i-a80-nmi
       - const: allwinner,sun9i-a80-nmi
       - items:
-          - const: allwinner,sun50i-a100-nmi
+          - enum:
+              - allwinner,sun8i-v3s-nmi
+              - allwinner,sun50i-a100-nmi
+              - allwinner,sun50i-h616-nmi
           - const: allwinner,sun9i-a80-nmi
 
   reg:
-- 
2.34.1


