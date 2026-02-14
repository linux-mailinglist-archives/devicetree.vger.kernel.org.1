Return-Path: <devicetree+bounces-265495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBJhD1Dbj2lsUAEAu9opvQ
	(envelope-from <devicetree+bounces-265495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BB00A13AC20
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE33A3008C2F
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 02:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272E3287507;
	Sat, 14 Feb 2026 02:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UID8HdKS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56AC285418
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 02:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771035468; cv=none; b=SALNXisCO8IUe5MIliRdsRdFfjW1m+ISrhxhHsIrwXfyLEjKpJ9oCulku+dv4btHkdxTCVR/NQquUBLOKdLjQgirpZXS9K85y4j5fH3lnyRualBoRHRoRWdCPmWdnG+2aLNX0CxooyVHXBuSc3t0K1/h+Gtrk6gH92qBYGLo2L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771035468; c=relaxed/simple;
	bh=TAD/hFi85Wu3YiWFHogFnX3PnwJMf/TlaUG/3KSI9cI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iC2gfTsVJOsrJP8Cut1wStyQRDTh0xSWckz+JB+A8+Jf2Imr48glsEpxMDWbag/13RoNNrRUfxzEMAk70V6Z3jLkEfORCGvce0r8P5nw40hd32UJk5we/6N9UaHqzBceS3eMpB5fcRyzWjgyjG5QKqBgKCwppE/pbOF/Ffo+ITM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UID8HdKS; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4376acce52eso1008779f8f.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771035465; x=1771640265; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TzRCi/w8UauYNvGrp56yDPR9f/IQ83oBSYIApP5ggfc=;
        b=UID8HdKS5Cya0t2FhyVx7MITgC0gIXWTvaNPeZ71h3NPgRklGPMymjXXwtwPlFNurK
         mzU+QFKqANQoWGvI518bKrSR0mvyyFeBX6qWqUqGDFm29tBx+bhgR9ivNL0x86pNfZmV
         z4mIxupB23LS5KH5E2o/QbTCc5rHEaj1PYagFnLtX4rr1mxT8AUVPshNMdOEidqj5v3u
         qTh2foy9bFzPw1R1cFjM3h1oznvsDqizUTY5Aedn1zUXVOQe2neWxfAhMEg2ToFZZ7Sq
         poi6s65mciCUOi6+DfP3E+oggDIPSB5HNX0Y8SWgpu86vWiJyP2sgv2Np6aSn37DD4W/
         47FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771035465; x=1771640265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TzRCi/w8UauYNvGrp56yDPR9f/IQ83oBSYIApP5ggfc=;
        b=bAbJkE7SJAlsy/0WbMXzdCGB3wLu0OpnnIGv7w/O0uXlanO/kIwqTbDmUPzcr2QMC0
         hCLBa2kIGyNFrzYG0ujGJ6wkv6xV5PZqdVfX46sAgxM9zYmqcxvYhqrr8x07GLj75rZB
         +RboIA/Eiol/+A9iOvO7QZ4mU86mvocal/DhcHi0Tb4wail7pJ8dFbNU8mJAopAnZ6xb
         2GsxvcMMFK6Q8G+HSiujVLuNskVckRYW0eLCDYCOtzRG3BWomJCaAh9vVKN1Uctcq0ui
         2AFxKPnzxRhcv8EAiAh4FtCPMo0gn0o2lv9WSTiYcmfkLeq5qykHra4UiiJdnaodNCKM
         2aAQ==
X-Gm-Message-State: AOJu0YzPLxTccdR7t/C49zGcEL+EsoN/ntV6pLQL9n7RLpxj7dwiGaWu
	hIqAlqPK+0Lp7fLQF5/NH/8EFuvT+ob+gzHXoG2AQu62syyqUFt933pgveLzqlmo+Bk=
X-Gm-Gg: AZuq6aJ+GUwgSbbRgnVLd+WaWCAbEeLVv2xJBisJTszM6xPCaLS8O4+hpzaW8G6KcA1
	gzjxG2RZEY9H14JZmCbaC7CCkJlxIrIxDQGxP3sb+eV4ss0Ph63EW3WUgXxqwRtfrXIaGl2bQYS
	YQH86Jya+NXf/p1pnGm/MvFjoIf4SUXFqucPo5H+8Mj/ZgUPhsuD/yCofT6+GAeJrcppYMP2ahe
	i3j/ZgtqWSQI4I1Yw33NsF0BROR+GJ8vPnPeIusSv8RyW5NXBkVg4CNhFruabWhfj2nkbrk2ubu
	r4tZLePCDz9HixDA4NRmx0k9VLeaJFy00pYICpDVJKzSf+3I23Vyo7S+uxUOw5nPxtHFD8dOdOi
	FGbV+leJ6Sy7eSPsDBzFiO0NXkv4MLThVfVPk6bjjwwkHFGqOLGmpkq3CanC0LVGCzJgaeVwwoY
	qplJrdSplw/TMu/zvFY4Qq
X-Received: by 2002:a05:6000:1a8b:b0:435:dba0:736c with SMTP id ffacd0b85a97d-43797927177mr8537551f8f.56.1771035464830;
        Fri, 13 Feb 2026 18:17:44 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acffcesm8608308f8f.37.2026.02.13.18.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 18:17:44 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	jonas@kwiboo.se,
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Sat, 14 Feb 2026 10:17:14 +0800
Message-ID: <20260214021719.620752-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260214021719.620752-1-jerrysteve1101@gmail.com>
References: <20260214021719.620752-1-jerrysteve1101@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com,kwiboo.se,microchip.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-265495-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email]
X-Rspamd-Queue-Id: BB00A13AC20
X-Rspamd-Action: no action

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..484df0b7723b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1187,6 +1187,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.53.0


