Return-Path: <devicetree+bounces-74717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C23904242
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 19:16:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34F981F26DAA
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 17:16:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4284C634;
	Tue, 11 Jun 2024 17:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tP5/ARHx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE74958235
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 17:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126198; cv=none; b=K5405vA4Qxz0ly+sMTD3VzmZm/Ka7jO7ECn457gc9gqxKM2jN0mCq+6BSvl7T4k/WDy95gGmo9sNTFGENFmYMZrureBo8TWQqZk3WoY82mDSqu3BEq/GKIAZ+6bN33Fr3uhLPAexocuRQdkUXgf2HFIpjQtf2pLCqO1KrhA6Foc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126198; c=relaxed/simple;
	bh=ItN7sUriAhVplO52bKTv4k3DGMtoiNHzlLUeJevwpTI=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ZeWmIyN50cbd5LQN8VdCzP4EmrzXZNHzt+wvx2BHtr+C1kXw0NqrUYsCM6k5QgK5kQMrTMptOp1xKAOjFkZYQMKoSOJZCeuGIJCzPQcyqwIaEBsI1VZhWzZoWRBbxcbzFB2tKDnxOmiFwrHh1EKHcqkaa4elYHmc9VECmI0r2gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tP5/ARHx; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dfe148f1549so48907276.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 10:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718126195; x=1718730995; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=F/DGU+PznyeuU3c5ytQHTeE+L+VrUtxcZcMVxa+OmY4=;
        b=tP5/ARHxIaAt3xaPerPVus1vXd0ci7sGFdhoOpF9FVO7U1Gbh70WrwxvM6fIMSKKWF
         TUS2QWjkk/iTvW4JCVqRQ6IUjdF9GlSfSJNNgw9YuISacDCd7d4DPLt5I8qioNSDm+Gt
         ZbptIZ8CDUJ5k0tdmlmsdFA90sguo9+wx0t7QJqz1JGr7Fwyi4WJLdqausOT1kpxCKPB
         DvWydfEDdQHN2kzD6vgCkioKjBhWtZ8XJFecbYbPTDkdPzHNVSjZXh9KPphSSx4VO4dl
         P+yyZd9vAUrw/jor+pSoSf5ItUMRxvzk7jtT8Eh789rb/Gb6i3XEADm7GgX/VG4RGFh2
         v5Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718126195; x=1718730995;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F/DGU+PznyeuU3c5ytQHTeE+L+VrUtxcZcMVxa+OmY4=;
        b=Duc6/T2fJhkM7LhcBHVcRRdzFy5oRJBZH8YhOjpbGiee9/Owu9533eLTjC/vW2b2WK
         JN6itb9Jfz1cCzuFn3doWf4IfdyOBOsFJY5GvYAoosEsvSUvJRhnDVA+1S053VyzJow+
         m1djGsHOcTZgCxgNz+3x/rok7e9G2Fu92TFtpBsPg586bnDCZY8PsgZswC6MDTpM7Piy
         CGseIIgr5KJ/KTD19vvl+VDWnJmmXOGrCvoMVlbHMPC4n7jac4TxlWDy2kauZZD2W/03
         ALxj6TJLXX+ZDU3f63sMQg9CYSZx9/iqOSbmL1zMyktosliRU0rZ5KyN2oZ41a4r1Mtx
         8KEg==
X-Forwarded-Encrypted: i=1; AJvYcCVBZkEswYszg94p+CLnWu9YDweekGRK45JIIDCxC6owwRccVwVa35Tz8UzkGeN9oWliu0WqLo1CoJrN65Otqor/Ody0wcZR3dR1VA==
X-Gm-Message-State: AOJu0YzIG5vfs4WAfV+2avbzvtOcZ5RwGSEDhMuGRKdA3HeRVIJSFL1y
	zJPzLM3Bvl7pomDA1aMod3m1uoXCuAXeW0fQFLhvKU0usbAAUkNg5YwutlT1QDUXSwgXxL41b9S
	Zuyl/35cybQIq/4P/cOZpcurbMA==
X-Google-Smtp-Source: AGHT+IHBusrZw8MLw8qciIrjtjK+WEfeMpPS8uwfN1BpXvw/8erhWM1AECRWM2Fcvj0GiFs+YyHVKKN4D1UD+9niggI=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:6902:10c1:b0:de5:2694:45ba with
 SMTP id 3f1490d57ef6-dfaf636bf55mr3809274276.0.1718126194618; Tue, 11 Jun
 2024 10:16:34 -0700 (PDT)
Date: Tue, 11 Jun 2024 17:15:59 +0000
In-Reply-To: <20240611171600.1105124-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Message-ID: <20240611171600.1105124-2-aniketmaurya@google.com>
Subject: [PATCH 1/2] dt-bindings: i3c: dw: Add clock binding
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Add dt binding for optional apb clock.
Core clock is mandatory. Also add
an example.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 .../bindings/i3c/snps,dw-i3c-master.yaml      | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
index c0e805e531be..7e3d4f308477 100644
--- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
@@ -20,7 +20,16 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: Core interface clock
+      - description: APB interface clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: core_clk
+      - const: pclk
 
   interrupts:
     maxItems: 1
@@ -49,4 +58,12 @@ examples:
             pagesize = <0x8>;
         };
     };
+  - |
+    i3c@10400 {
+      compatible = "snps,dw-i3c-master-1.00a";
+      reg = <0x10400 0x1000>;
+      interrupts = <8>;
+      clocks = <&i3c0_cclk>,<&i3c0_pclk>;
+      clock-names = "core_clk", "pclk";
+    };
 ...
-- 
2.45.2.505.gda0bf45e8d-goog


