Return-Path: <devicetree+bounces-275920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKaEFiV9t2muRgEAu9opvQ
	(envelope-from <devicetree+bounces-275920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:46:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EE529474D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 04:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 801DB300F1B9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B788324718;
	Mon, 16 Mar 2026 03:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="efGR1Mx6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE13257C9F
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773632792; cv=none; b=JfyDx50D21glHg/4pZZGswwOp5pEB+saiNYdodWOnVl7XtkYcGzT2tQUFvKhNKMA/V+uGMl4IM0kOix+03EGx+PDbBYru06Jmw7xiTIohiII5mTyQ6rYrLkxVsuE78F1HsEntC90M0jr8yyQAhZPTHZiasb62mpoPsTBn0ROkls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773632792; c=relaxed/simple;
	bh=YZkTcOEjWtuGRM6CYLskTVAFZsX4Ijie5CUy5nq8B2g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=frndv/HXqJVnmCt8HoytN6P8MvSL5KcDm2eJwTUEQ0+kjHCVKFkfM/oijAkmEMtPoILYP24fi7ZALOPjLwJRrmhYVWvHj/5QVZWL/QBKP02zKxAD0NVxLtZ9GDUmC69Lu8m3CUDRZHU1A1cQodrm3A2oOLJij5k5X2QEunJdXFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=efGR1Mx6; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2ad9a9be502so24639485ad.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 20:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773632789; x=1774237589; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eiRDluLCPaW8AudHXl/ylAi6akXx9V35HuCJ2UwCo+c=;
        b=efGR1Mx6Gh6peBzd4+rovnfWhcQ08DdITGWoEATAOnmfiSAIjyJHdWLTWMUIyKyT6o
         KD5GIfD0rgYa2yYofAqfhdVSWJ7wnDtUZdGb4hsTFDPqVFn8HPt+PdEaZxiV0G858WN2
         /Fgr62WddyJQjZZsx0P6uW0SiaGHIhPfwOxObLs5htEsGmi5pyVUGd79SQt4qkWhjn4T
         UWfOmXvWRVzWFZRAgjlfUVEiMHb6Ci18VlCmO+XmazPnfjeTQPh8HkI46NeCQSK1YSq0
         hIRMAdMoQK+aEPQEP3aDv0C9Y0XYPEkCGkJqllVn5C2EqXyRr39MRvGeOiC2pdILubHq
         GdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773632789; x=1774237589;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eiRDluLCPaW8AudHXl/ylAi6akXx9V35HuCJ2UwCo+c=;
        b=PAxsBfMgDpQIcUIn7buDiSJswf8U2mDYEpL3ZMcB64+vJshbKmQyr0If9NROjTAgg9
         GrG4Tu0X32bDilo9GgTliEn7hYop66sMID6wxqQaLUtHaReLDi0l5pf02t2EEjjA4Vtn
         iR6rRdd9m4LIRgTkJWNy5GBKDc7pzzH2VMqUf1ScInTxQti7wp9lvVu5IH69Je26MFvT
         eYS3RqgIGYI2Za7Nxty87FWSiuCG34ywRdx6cmSDkU2NWzw5GewQS+VXPpCcos3iNF8c
         bSRU9zIA7X6yM0ZzzS31+HPA+M2CjNb05chAwaeXdIS7GsKN6xWlF1pi7r8J6vrI0M/W
         zlvA==
X-Forwarded-Encrypted: i=1; AJvYcCWklqwrPywUM43UfiDTEJvN3DUyAZaVfHf7NDHri0Wp95vHvLSIW+6zF496H7CS2HNQLkoiEkHRjHCg@vger.kernel.org
X-Gm-Message-State: AOJu0YwE8XbG2jGG7H8+f8Ecron8Kt3Wq/3sEgcCpw9JFTcezhlpTu3F
	0rFkXSbVA3CX5uyitjU+5PVV/zBW48sCdTMV9Uk99bTHCHieOtjCAxPP
X-Gm-Gg: ATEYQzwNVxbTFXA4by+vmix8m2EaT+oVY3DuEkCKJTtVba2/W+uMVEEy3CbjAhIj9Nk
	HI2IzkWHj3j3IyKN4waGdzgjYOwoGAmxnqb2MKqCoNMFxnYO/y/FNKvi7iV19BvjGDqTCB1OMsO
	skAgQiCZ69sMghXO71QCUi/tt+LXHBeoOac2beMiFuPNDyZWPACKri9jXow9gd+XahAqg/00W8a
	YFZskoF6cwdxR70lWOcaFih47B0z4U9IJ7gAzslRb6wOlCDz/LJLpACZPN52qvvmbZyHCyD+gnW
	9WSKIAwAwhw8hN5NNf3ET6GGws1dRvwl7aFcJ3ZO3Wzf+VUn6nvpTbuizAJrlw6XRTGX2OJ4RII
	rrmeRalqyIK8xfcczWUGd+yc2os+X+I/xxY8e6OBGrL8GVGLTmINfp8K2OO4UX1DdX/gHkhsXfl
	FgHAO7bUNe9UtlYo1Iv6V/hFG/NCNzHOyS6EykoKekIKRsd588in+z9HKnOpTdLGx5JkPu
X-Received: by 2002:a17:903:3905:b0:2ae:5464:7a4b with SMTP id d9443c01a7336-2aeca9ffe54mr131666095ad.14.1773632789343;
        Sun, 15 Mar 2026 20:46:29 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece56ea5bsm116068155ad.5.2026.03.15.20.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 20:46:28 -0700 (PDT)
From: phucduc.bui@gmail.com
To: robh@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	krzk+dt@kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	marex@denx.de,
	mingo@kernel.org,
	phucduc.bui@gmail.com,
	tglx@kernel.org
Subject: [PATCH v2] dt-bindings: input: touchscreen: ti,tsc2005: Add wakeup-source
Date: Mon, 16 Mar 2026 10:46:06 +0700
Message-ID: <20260316034606.11304-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275920-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,denx.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 10EE529474D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: bui duc phuc <phucduc.bui@gmail.com>

Document the "wakeup-source" property for the ti,tsc2005 touchscreen
controllers to allow the device to wake the system from suspend.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 .../devicetree/bindings/input/touchscreen/ti,tsc2005.yaml  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
index 7187c390b2f5..c0aae044d7d4 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
@@ -55,6 +55,9 @@ properties:
   touchscreen-size-x: true
   touchscreen-size-y: true
 
+  wakeup-source:
+    type: boolean
+
 allOf:
   - $ref: touchscreen.yaml#
   - if:
@@ -97,6 +100,8 @@ examples:
 
             ti,x-plate-ohms = <280>;
             ti,esd-recovery-timeout-ms = <8000>;
+
+            wakeup-source;
         };
     };
   - |
@@ -124,5 +129,7 @@ examples:
 
             ti,x-plate-ohms = <280>;
             ti,esd-recovery-timeout-ms = <8000>;
+
+            wakeup-source;
         };
     };
-- 
2.43.0


