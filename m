Return-Path: <devicetree+bounces-82907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A27489264FE
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 17:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F828B21C42
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 15:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2960181CE2;
	Wed,  3 Jul 2024 15:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ncXIeeVq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D2E181B9C
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 15:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720021065; cv=none; b=TDruZHDFx5azrvqHlIwKPpftv4Z6QBRK3GYNQMyzhtZiJJIzEyxla2MskEscqVX0SJncsl0j9Uoub5T/FIc+EO+QmDdKPJ6ArGTseG17np2WaQIJjsHxcH9/Txo5tRai4FEsn7+OJ0AMANgyJeg2hB6LJHHsnutHWRwQnt5lu64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720021065; c=relaxed/simple;
	bh=4tm4poGH1Qp2f/Ekw2ZcGWDQwJwexwXTaGlBJ4EKROU=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=MMSgHXnL437ZbtCC3/EpFuMuykDR3SGIZFZK8VFuHT/9hqiwZ1QKegkeTfCPfu2UIIfTferPtF2HnepRGhOv7eFvTgfK72i9H+sWWVuJIAtsh/qLfRI6/+a6wi9wxt6cz9vTO/Catb8hCnIyo4xEK3IV+JtWxzu6ub+/BPo+zM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ncXIeeVq; arc=none smtp.client-ip=209.85.128.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-4257dd7d594so23891935e9.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 08:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720021063; x=1720625863; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=QXlYYR1UR9cqAQ1pIZHR6lAQLRa2deLFoE8lo+c+kks=;
        b=ncXIeeVqNqg88UIN/ehLAdSxkKC+IvoAmhuPMGRtbM5tpCyMVrEUK5qCz+J44iPXgi
         lz43z066uLCtJBcbSrskIi00U/2eGxkfKoyY5TaV4RTBs79l1Ib16TrCj3H32TOwxEKI
         1ElkXZdegGxdElyW5AVymiAOvBNRZfPf7/176/LFG10SyxnVumd75lCb9xPzEwR2Lhry
         vKQEM7qW4/iZ391d9kXxb4ev0TMTcdKcUiVxMqgW0uEjyMzP2PCtTswCJOP1nwT/Xvt4
         E7iC8Xm8QBOUqt41xBew9Q1TVCxlAZDjnaM46XIEiBg8rNlkh4Z+g1s2mHSoL7jP+tmU
         ln4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720021063; x=1720625863;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QXlYYR1UR9cqAQ1pIZHR6lAQLRa2deLFoE8lo+c+kks=;
        b=RzNVsuiNEVRaTLswobhMiHQ2fb52Vygd2ezDuedqDmW8ju3i3ZDpGVPtWm1UXojl0e
         ff8OzyYmpiM1feOO5Q3a1AZ8ykfTKzLHQ6BFbGTolJRZQEWgH6Yv0cGqqAr4iXxLyTCz
         Kyw1utLAkIgasAPGAlKJbNJcSEV7+jwaRd8dKb323fK/uN5+8VFaZiT5JlKOM7Yqcks3
         Okd/HFNkJkRZzXlUpz0xHsQZRq0dAV5kbYeGazFQLSFEBVXlhQPOxqnLHJlABlLPAiy+
         +hu80HzyDCQEntf1grsTM/7GcpxYGYB36WckSSBoqP8+lGE6mZHP72+ES1dsCgLfyGH4
         QttA==
X-Forwarded-Encrypted: i=1; AJvYcCW3YQ2GQuIzUhmVoYvl2e8EAMuVFGMV1RjJmiEOhh8PEHW+7ea0SMTT8QscvUpl/OTxR7UthcpFmJ/CrSWeFEUa7ELCGcTzoZijAw==
X-Gm-Message-State: AOJu0YzURExYsMJsdeXeQRNCasHxDtf1287l/7vRRJnEg4lRPIKEwEH6
	ov1FQAaQAQN4eCtgjDdH/hFdNWooU3ea9GonEa/fcHHaSzHp6/c2LjjHS1Ym9CZkiWW6rSKnLeK
	LipgFxyyuoAoJSQpIQN2Cc4zSzQ==
X-Google-Smtp-Source: AGHT+IFK31UsAzUApygH4p1vn9PaZfFSeq5R9qd5sAlUzx8hcFcelv/46dvTQSMU89/uRNfJ9fru0q36VeOeQRptLhU=
X-Received: from sebkvm.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:cd5])
 (user=sebastianene job=sendgmr) by 2002:a05:600c:3ba6:b0:425:6c3d:36cd with
 SMTP id 5b1f17b1804b1-42579fed62cmr919245e9.0.1720021062606; Wed, 03 Jul 2024
 08:37:42 -0700 (PDT)
Date: Wed,  3 Jul 2024 15:37:31 +0000
In-Reply-To: <20240703153732.3214238-1-sebastianene@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240703153732.3214238-1-sebastianene@google.com>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
Message-ID: <20240703153732.3214238-2-sebastianene@google.com>
Subject: [PATCH v3 1/2] dt-bindings: vcpu_stall_detector: Add a PPI interrupt
 to the virtual device
From: Sebastian Ene <sebastianene@google.com>
To: arnd@arndb.de, gregkh@linuxfoundation.org, will@kernel.org, maz@kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Dragan Cvetic <dragan.cvetic@xilinx.com>, 
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel-team@android.com, Sebastian Ene <sebastianene@google.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

The vcpu stall detector allows the host to monitor the availability of a
guest VM. Introduce a PPI interrupt which can be injected from the host
into the virtual gic to let the guest reboot itself.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Sebastian Ene <sebastianene@google.com>
---
 .../devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml  | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
index 1aebeb696ee0..e12d80be00cd 100644
--- a/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
+++ b/Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
@@ -29,6 +29,9 @@ properties:
       Defaults to 10 if unset.
     default: 10
 
+  interrupts:
+    maxItems: 1
+
   timeout-sec:
     description: |
       The stall detector expiration timeout measured in seconds.
@@ -43,9 +46,12 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     vmwdt@9030000 {
       compatible = "qemu,vcpu-stall-detector";
       reg = <0x9030000 0x10000>;
       clock-frequency = <10>;
       timeout-sec = <8>;
+      interrupts = <GIC_PPI 15 IRQ_TYPE_EDGE_RISING>;
     };
-- 
2.45.2.803.g4e1b14247a-goog


