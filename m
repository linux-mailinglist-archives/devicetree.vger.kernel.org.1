Return-Path: <devicetree+bounces-259029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOHpAriYc2m2xQAAu9opvQ
	(envelope-from <devicetree+bounces-259029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:50:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9280E77FB2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:50:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45008301BF5E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF4522C0278;
	Fri, 23 Jan 2026 15:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L0YHSsOU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6312221CA13
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769183397; cv=none; b=Wo1hqQ11I5mtoVQMXUD1sk8A7jRkkoeC+2u4xpajJ499c9EqQ/gcc6TqpxI7r8DwAaT2nvfYK8a/2rzP+kkXogsKmPSib34J6LOzLfmQyBFCPlFpjvzUu3cpx4lkIVnSZceU6XGw9G+bpOdYP/+uGaaPHg/g2toI/6d4gwfJFOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769183397; c=relaxed/simple;
	bh=81EDE6zANSkm7jjtzly7Hfy4SkGwEuzWgjcqJ0BHYUw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oEgFi+QC0SqxBM5BW7m75B0a55h2jspOkHRfC9qOR7xd1mopTXu/aFsUh5U44dWDegVxaKstFfbycV9G/HPz0TRUk8UABl66PZyTY+a2vuTL/lT6SwNcCSiBjLxU0z46UkZZTDm21LMobJSVZ6+t13x4o3ggPKuTj9dXcUhlLQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L0YHSsOU; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7cfd04f1be8so766529a34.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769183395; x=1769788195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7yKtZk161f45HUB/bUq94UEthH6CcvyZMfBkMmlIuRQ=;
        b=L0YHSsOUdJG00mFqkVKZyrQ8HAnnvZKPdxwk6G+hZHmI3uYDS1BIeUWafL0xyuZNUe
         MLSJptqd2Gg+jomW2eShdfuwl4b7FjcfLluJQ1gdWou+/c+ZlVKl2YckaNkcWU2pYaIB
         uYmz35RLAFmuoXP8on5NqO+W5JYzDz40bmivT/AnCkfeWoo8xi1TY2OqiMPybVWL5O/z
         /baZhk5kylCbQIpZrLSMcl8hwNnyVG79c+Y7UBMvmJwgO8DFeuqLSdVqizRwy6Xx6wky
         5UjjknB3+dfyHyhEBp94G4NyS6g5TYp8lSYauHc986sTZsmB0LVGmZpvK2J97RDPuvBD
         TMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769183395; x=1769788195;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7yKtZk161f45HUB/bUq94UEthH6CcvyZMfBkMmlIuRQ=;
        b=UrWDkesvgG8v2hxY5mB0VywNPECpJkwiEHS+AHK3L14nmvf4DyAju+BtfCfanXUd3X
         5UW8Ixw+TeU+HhNFgseyCYgV9R5QL2iDiCXkXkwwWWhJLPjcvsP9CTom5BVbh/UJcoms
         JWWbIysfT0dUJDxMIFu7qJeA5/fuKe3re7vCuxZxdbxpHlAZk+CyEJpsy1A/qW2+Ei6L
         gMaLBFUCHTfnIJMQTDTWsjnRSvjEKEJA0oJQvHGrxkYGIB2MhGoIhGLKIXrWPiQxEfOy
         NRyurQV1bXXROlHXAAKROi1VVAJRpahgWUkcYOVFEjqJCwGqC4FogExpGK/9LJ2Z9LFD
         JQug==
X-Gm-Message-State: AOJu0YxxXSN3x0T48Q5bETRgAuX9PqAz0EqieXkdyghpLExcY7vgtr6b
	q6pWiARK33/7yFXmakcNMs3ojREDggzXxFfBVUZm274c5Bwx29J6ety9
X-Gm-Gg: AZuq6aKHubQFuqXiMWdDLFfc+SmVU1Lv1q1EYumq+Jo3ef5d5m7k4fbFcHlC5lrKOnf
	rog64SmIT1NtA36+XCcIIGCbdtJqWfAFt4tw3fTAYItY/4XhvIXkiNL6xXH46H+WiaE1MLZ4GEx
	552PLKysF9gJkxuBBEfA2MWLe+pGYa2wMtMuuve/UoZ7r2E97f2uZvyAMnFB3tCeV9kXbl7xslm
	GfrdvAPkrvTVeJv88ABbzFVFMX34B5l55mUAMOxNFvWLvexbhCpOJKK1Vv43e/t1Yj8dB2d4c1u
	ehYF6Pgk5iumKy8BzcXZk2ZivCus8Av3xYpbPa/uqjyBCK8wROarPX42w3Ck5kwCXXn4mFujdkI
	SD/kMa6uBGTR3DoPzXqcf1/aCUniCzygURncegmfLlwDkLtbumEX/imZi91eenEgZruUWBa/4Al
	ylXsKPTyhLOA==
X-Received: by 2002:a05:6830:6112:b0:7c7:5d8e:8b40 with SMTP id 46e09a7af769-7d15a5d7d6cmr2311298a34.5.1769183395270;
        Fri, 23 Jan 2026 07:49:55 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::ffa])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d15b3e2789sm2074327a34.27.2026.01.23.07.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:49:54 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sound@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	wangweidong.a@awinic.com,
	tiwai@suse.com,
	perex@perex.cz,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] ASoC: dt-bindings: aw87390: Add Anbernic RG-DS Amplifier
Date: Fri, 23 Jan 2026 09:47:30 -0600
Message-ID: <20260123154731.130649-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260123154731.130649-1-macroalpha82@gmail.com>
References: <20260123154731.130649-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,awinic.com,suse.com,perex.cz,kernel.org,gmail.com,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259029-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9280E77FB2
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add a binding for the Anbernic RG-DS Amplifier, which is an Awinic
aw87391 audio amplifier. This manufacturer did not provide firmware
so we have to use a list of init commands instead, requiring device
specific functionality rather than generic aw87391 functionality.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/sound/awinic,aw87390.yaml        | 34 ++++++++++++++++---
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml b/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml
index ba9d8767c5d5..9c1baae767c4 100644
--- a/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml
+++ b/Documentation/devicetree/bindings/sound/awinic,aw87390.yaml
@@ -15,12 +15,15 @@ description:
   sound quallity, which is a new high efficiency, low
   noise, constant large volume, 6th Smart K audio amplifier.
 
-allOf:
-  - $ref: dai-common.yaml#
-
 properties:
   compatible:
-    const: awinic,aw87390
+    oneOf:
+      - enum:
+          - awinic,aw87390
+      - items:
+          - enum:
+              - anbernic,rgds-amp
+          - const: awinic,aw87391
 
   reg:
     maxItems: 1
@@ -40,10 +43,31 @@ required:
   - compatible
   - reg
   - "#sound-dai-cells"
-  - awinic,audio-channel
 
 unevaluatedProperties: false
 
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - awinic,aw87390
+    then:
+      required:
+        - awinic,audio-channel
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - anbernic,rgds-amp
+    then:
+      properties:
+        vdd-supply: true
+
 examples:
   - |
     i2c {
-- 
2.43.0


