Return-Path: <devicetree+bounces-271048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNgHIKswqGm+pQAAu9opvQ
	(envelope-from <devicetree+bounces-271048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:16:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 226CC20042E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:16:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C3983304E352
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFD72282F2F;
	Wed,  4 Mar 2026 13:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OPmbjRh2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C2226AF4
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630178; cv=none; b=bfv+5OtCQSMN4rneWOSyQai18cQiaeI9i1+AvB1hMLRNYV3ICHzN+cZsTe/lrUlw0+iUMirko34Iu2BtTfUwvQc4XCWkh2mzFDGRGlLMgINAkGSyu8PJTQr7N4IsOGUVb0yuJhIHRSUbf61AtTegcNV/vYJaljAfBvLD9ks7sZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630178; c=relaxed/simple;
	bh=ZM0UeGckLgWfb8A9LZDrdGuBcoOBBI4fXdeLoyxc1d8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lOVjN7IWtocx2dEXINv5RsCBGywps9N1icpmKnMLb85szKY9az2aYvEB6j7HV8qkltx7N7ymz3uiVTprcK8YnbIVK51THURK0dgYyc1qSy9Hx5r77Suvms70l5GSOYY6NHtsqC1WBh/BkGLK4sxaVt69iZ1lWg+9bkTraR1C7zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OPmbjRh2; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b935ff845c8so880355766b.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772630174; x=1773234974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veByMjsGeeA2OCIj+ldV0X1YxNMqgif+fScGvqauuiw=;
        b=OPmbjRh2byzpiGHqE6m0xgECQ98ogsE02JLsOPwH7UCkI5FfDtxW/UgTmYrdSRuLqg
         /n0FqjeXIThzbkiaSaSGLxULCtKOtHOQXLt73k1wmkQareBZ4yOWs4gJYyGcJXjebMdR
         MxoUjt8vjalxJm9/lEVoC9K8j6spS+IS7IDnTeaDM7E85ZBfKRXE8oaCSk4mZJmhe2sL
         BSMujJSVbOY72zEH24hEv1wbwrf9uzng+GeWLFlD8Oxy9z9Z/Bghd4PiqIVto/JyHDzY
         lqVEeNf07F9YgiEKcEb98eS4VU1DP1yNl/+Df0GOGKThajOSmu3eWoerERQn1cQ4yD5W
         EboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772630174; x=1773234974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=veByMjsGeeA2OCIj+ldV0X1YxNMqgif+fScGvqauuiw=;
        b=TT+PZuboKgaS1gZjCuy3F1pV+rigB9XuK2FPw2qsaNiFCL30AbtYg3m73fV3jEQxtd
         xV7hS/mtKZGnuxjZAXCbfHW39JNmBEVqG+wDoUxBUh6g0P5Oil53mpIv8usQxidSzR8Q
         A4BiFTV3w2lakQXTsYt8yPVFpRIzJW/nbFbOBPfw9joRfLqDRyJyZbYtDTc9FsyPPM1R
         nm40yHSUI4P2W9KxLuVJFtpJlw2BXEbvahTe7KNEDDMR6ZJRCHpI8bpuZF74vI7Sktpb
         Y2w6tt8SQjGecCWTEOtqhsU+uCEEYZRZm+nSqX8RXyJLS2sj56+5hGz6k1jVWpZpG49K
         z/0w==
X-Forwarded-Encrypted: i=1; AJvYcCV3KYoQmFPTmM70/cuLVOJkXZYHdXJXB13t1a/np5J5ZyhKl4IzugGyLIi1F0KZMsRVozm2sQdVrfH3@vger.kernel.org
X-Gm-Message-State: AOJu0YyTT73cSEzpGMlTAnbymSnzYCdI31i/p/pOT5rdYUATEaKkHUNt
	cpBWWppBwgfg4V4HN5UyTnayRrqblaT1aVJDRhPwqvg+La/aRFe3Dxgx
X-Gm-Gg: ATEYQzyCFd10U9ag0AL8RfaTEioRY/lBpXO8e22G6NBhgl4Mgi6hKcR7OkIuBCfm/Zx
	HPyQelr9j9E3dQf6Xl7oGgcD5xgnFVheTYzqGGEhe0LrN+IA0ptc9LAHiIFrdG3AUR15UF/sD2z
	f8F7suJWvFgVzQ4SDSZDanXHrvK3xsEVhqoth/db4fwRbqHKJOuPfYKuHj4PKnxDZ3fekEoV6PV
	MfCurUVODJwSW6N4jVnZXp08k4Omj5BQ7UWZNyLHz+/n5fcBfTMQjRdVc3DM/v15Au9IzJ6TCOq
	tT/4SrUOB7pllne5v50qSSQrm4rEVIlPzlImozxHEBKz3XDvz2T/cEl33VCeP06PhgsoJkUA3NQ
	Ct9u/Ym3UdXP6EaLNmAoT4l0XPJGVY7eZPGPDP17bXlrkuEU+xeOVBhhORM2T5LtkZ6nraBybaY
	IfHMPXB4UY8of+yYaXRR4MDZcERkQzZJ4QQEpuIwFEJE2Z2NIsKkC2RwFogdJWqg9+G6eLo2k9h
	v2+6XMKoj1QKuyRngMXDbPaPEDtic+c685S5L2G2pFnt88C2giPcUjWn8QVbOYduwRdRzKnqIW0
	D3eFoofQ4r89ntQa
X-Received: by 2002:a17:907:3f87:b0:b88:40bd:be54 with SMTP id a640c23a62f3a-b93f11b1f21mr110307966b.24.1772630173896;
        Wed, 04 Mar 2026 05:16:13 -0800 (PST)
Received: from DESKTOP-JNMGKT5.residents.sin.openfiber.nl ([88.202.160.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac84357sm740226266b.30.2026.03.04.05.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:16:13 -0800 (PST)
From: Alexandru Hossu <hossu.alexandru@gmail.com>
To: krzk@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	gregkh@linuxfoundation.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Alexandru Hossu <hossu.alexandru@gmail.com>
Subject: [PATCH] dt-bindings: misc: xlnx,axi-fifo-mm-s: fix interrupt-parent property
Date: Wed,  4 Mar 2026 14:16:10 +0100
Message-ID: <20260304131610.37503-1-hossu.alexandru@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <e6f8db4d-2a5a-4424-b44d-6416ee0c5ca0@kernel.org>
References: <e6f8db4d-2a5a-4424-b44d-6416ee0c5ca0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 226CC20042E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271048-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linuxfoundation.org,lists.linux.dev,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hossualexandru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,43c00000:email]
X-Rspamd-Action: no action

Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>
---
 .../devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml   | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
index 6d1cd651e..cdc295f2d 100644
--- a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
+++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
@@ -31,8 +31,6 @@ properties:
     items:
       - const: interrupt
 
-  interrupt-parent: true
-
   xlnx,use-rx-data:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [0, 1]
@@ -56,7 +54,6 @@ required:
   - reg
   - interrupts
   - interrupt-names
-  - interrupt-parent
   - xlnx,use-rx-data
   - xlnx,use-tx-data
 
@@ -64,11 +61,16 @@ additionalProperties: true
 
 examples:
   - |
+    intc: interrupt-controller {
+      interrupt-controller;
+      #interrupt-cells = <1>;
+    };
+
     axi_fifo_mm_s_0: axi_fifo_mm_s@43c00000 {
       compatible = "xlnx,axi-fifo-mm-s-4.1";
       interrupt-names = "interrupt";
       interrupt-parent = <&intc>;
-      interrupts = <0 29 4>;
+      interrupts = <29>;
       reg = <0x43c00000 0x10000>;
       xlnx,use-rx-data = <0x0>;
       xlnx,use-tx-data = <0x1>;
-- 
2.43.0


