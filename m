Return-Path: <devicetree+bounces-295029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBeeHUpFAGqgFgEAu9opvQ
	(envelope-from <devicetree+bounces-295029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 10:43:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B926503226
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 10:43:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B9E9A300293E
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 08:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91BB436AB56;
	Sun, 10 May 2026 08:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BabbIQR7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D2369236
	for <devicetree@vger.kernel.org>; Sun, 10 May 2026 08:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778402628; cv=none; b=ejhb07S+9yovK8/zgu6cQsfVta8tuO4ZdHRwZqZC+m9n9Za7fo675TfWybFOgvpZQgbmU+6K3CyWW/fbJnpRLwjOCoj1pispnH57g8yBs5c13/OFP4O5okyOwmiDR7aqXcVQnrcnIFMTLbKuADUV83FvTC1mFTRpM95TItsU6ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778402628; c=relaxed/simple;
	bh=NAsOp5VWFgwKRWRvG20Z6BUZo2fk8Rg0gpq73L+RkcM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DouYa4XDwCX95U9YboGYCSO5/Zb/iyfqtJ7AwGEwSn3yE7AdNVwh5pmSLLdkYAJGW8vV+/naJ/kH0cliG+LCSGXuBZdt+xbI4ClfJt3AIJMX37xyeKxkBDWX/SKudQCnus8Nl6Xk8uo0m+bE/JfGc2bqpRKzSMPn7InOWjLxGdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BabbIQR7; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2b7d3ecc10dso32897155ad.2
        for <devicetree@vger.kernel.org>; Sun, 10 May 2026 01:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778402626; x=1779007426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MGdYxWBckVTlaOvEXVR7slFeLhH3KDi23p9+cqpYQPI=;
        b=BabbIQR7xhCmEJKtexEwxCTrP24KGY49wU1qj3eqRCDALVhw4auZbr6zeADdro6QpF
         28BNoevIa+FNuXdHGF6P6SBSNsiGH51Fa8PQtc6KGPWtkXhyWXX94UK0TVqsG36eIgwK
         O6eXp6nAKZzw0mJm44YkATCOOHCNuRYVJ6AuF87HchxLqVyq95T+4IlnPTd82VSVuxnF
         B2HfGkrb5Z1qi5Zy+rg4vJQNaE+O6aB/0R8yEPPrbnFaj7t4XRxHrDexyyAnr2qnU86H
         RH3jiaTlfHsdbloaUlgRSsdM5c+0QnKFeLRGyOexIbzFRS0/6j6+L2r22PIehYqeX43Z
         CMOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778402626; x=1779007426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MGdYxWBckVTlaOvEXVR7slFeLhH3KDi23p9+cqpYQPI=;
        b=AYGUMSga/4bxeEPVftEk+lgJqaQqOhRI1V+Jbkdtu9HOL95E5wCoJ1/zkof/rntQ6c
         RuDKL1Nf4o8Ekd/8oc68Oa67AeExoCT9WD0UaprvcVtVVdaxf0Dxri9wWLUJa+17SPov
         3eD//kuU9I+uu9zzinoJAmcU9/eAkO6vxYphXy43upVt1Jczoh7vj8QDJzQqwHMx4V6b
         SEogQgks2pS/O/Q4LNmsOGiq7lFdFLRd+Iw7dTPQFXOD/asJpf08wmT0MuYP52KV9KsT
         ogRHZPQ/ydQngCFdocMfYH5YhJPckHlL9baXNsQJeWSXvkAQ/SBWwk54h0qaToUxXPIW
         QG/g==
X-Forwarded-Encrypted: i=1; AFNElJ+khyEWPxvs2lL5tqXO4Ftxsfl7uK5FMnOfPcqws+v6H+mZigtqh6vb1K8IEcJdAMS0fj8Q02WoIoyO@vger.kernel.org
X-Gm-Message-State: AOJu0YwobL4wJLDMgNJli4QffXYDOaYKzayFm4r6CGu5fRxeH/wQ6Mje
	dddgoX2Gx34tB/BzZod66y8ZPZLOT4X661oQFuw+ha3ktnGRF4HCLRx/
X-Gm-Gg: Acq92OHsJqIHr3aUOgui6MltXszjGZ0qlIGiM1NkkzDH1UavvNTNOcJ9kwuEKWwZAXW
	FCMi9MEdtULwdUxKApGaQmjN0Juti4oWibSlno5+uBDERRITREzamRCflWgPEM2AH1KdiccxPD9
	GAPgbYIbBFFyrpI790tbPF64s216/MLJ/CAMBT3Qx+XFEw8OBaMXV8ZncZe0APuFaboQEA4DsSg
	cIZsUabQZGtB6VtdgKUOF83xeM+/sQj1xu+IrdnqKp3bvKhkyRV6wctKxEEZwtzKPhFKqQFNGmf
	Xwn2YHdWX8M07fQF/XD/erWfffw6VIfW1jArO4x4b+CEJit3DqQq7JB4VblPsIr7Gavg5qEIJ4Q
	YyMxnTcpQlBSFP113Kq0CmilCQ9t0C2Yo3PYgMdDkOgKgWDN1Cu3OTTctVqK0e/FT7eTBavn+0m
	uDJJq5gCbZ2KgS3AmzeIK8kDh4qcaxzrF8g3loQ+IyiGUokUwEvOWY9lRngHt69vvExbS1IQMCq
	2pKW0Q=
X-Received: by 2002:a17:902:ebca:b0:2ba:6518:a6d4 with SMTP id d9443c01a7336-2bc7aa1356fmr59329735ad.20.1778402626428;
        Sun, 10 May 2026 01:43:46 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d3ffa0sm70471005ad.25.2026.05.10.01.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 May 2026 01:43:46 -0700 (PDT)
From: phucduc.bui@gmail.com
To: kuninori.morimoto.gx@renesas.com
Cc: broonie@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	krzk+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-sound@vger.kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	tiwai@suse.com,
	bui duc phuc <phucduc.bui@gmail.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 01/10] ASoC: dt-bindings: renesas,fsi: add support multiple clocks
Date: Sun, 10 May 2026 15:42:54 +0700
Message-ID: <20260510084303.122426-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260510084303.122426-1-phucduc.bui@gmail.com>
References: <20260510084303.122426-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7B926503226
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,glider.be,gmail.com,perex.cz,suse.com,linux-m68k.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-295029-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

The FSI on r8a7740 requires the SPU bus/bridge clock to be enabled before
accessing its registers. Without this clock, any register access leads to
a system hang as the FSI block sits behind the SPU bus.
Update the binding to support multiple clocks to properly describe the
hardware clock tree, including:
  - SPU bus/bridge clock (spu) for register access.
  - CPG DIV6 clocks (icka/b) as functional clock parents.
  - FSI internal dividers (diva/b) for audio clock generation.
  - External clock inputs (xcka/b) provided by the board.

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 .../bindings/sound/renesas,fsi.yaml           | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,fsi.yaml b/Documentation/devicetree/bindings/sound/renesas,fsi.yaml
index df91991699a7..c50e7115b21a 100644
--- a/Documentation/devicetree/bindings/sound/renesas,fsi.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,fsi.yaml
@@ -38,7 +38,32 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: Main FSI module clock
+      - description: |
+          SPU bus/bridge clock. On R8A7740, this clock must be enabled to allow
+          register access as the FSI block is connected behind the SPU bus.
+      - description: CPG DIV6 functional clocks for FSI port A
+      - description: CPG DIV6 functional clocks for FSI port B
+      - description: Internal FSI dividers for port A used for audio clock generation
+      - description: Internal FSI dividers for port B used for audio clock generation
+      - description: External clock inputs for FSI port A provided by the board
+      - description: External clock inputs for FSI port B provided by the board
+
+  clock-names:
+    minItems: 1
+    maxItems: 8
+    items:
+      enum:
+        - fck  # Main FSI module clock
+        - spu  # optional SPU bus/bridge clock
+        - icka # optional CPG DIV6 functional clocks for FSI port A
+        - ickb # optional CPG DIV6 functional clocks for FSI port B
+        - diva # optional Internal FSI dividers for port A used for audio clock generation
+        - divb # optional Internal FSI dividers for port B used for audio clock generation
+        - xcka # optional External clock inputs for FSI port A provided by the board
+        - xckb # optional External clock inputs for FSI port B provided by the board
 
   power-domains:
     maxItems: 1
-- 
2.43.0


