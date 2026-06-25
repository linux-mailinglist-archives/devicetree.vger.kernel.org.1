Return-Path: <devicetree+bounces-315459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AG89EBuVPGpspggAu9opvQ
	(envelope-from <devicetree+bounces-315459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 04:40:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5286C26B9
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 04:40:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=e8p2PzRf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315459-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315459-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61F03303FAC5
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 02:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 305F83546CA;
	Thu, 25 Jun 2026 02:40:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64296346E66
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 02:40:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782355211; cv=none; b=nI1kh85nNcJOF16t5svsGX0EQbmUFN5ZTp83+9I9Xt6BClEkH52UoEQ59K71+1HNaIfUypy8GAFmUgP1Pl33jXyjchyeCp6J0coA/u31e0iT5VRvrQHRbS0fpzx7d8UZZg3pa+Qb1MAK+K5tZzjzUfccud9OBS042yGEZG9du+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782355211; c=relaxed/simple;
	bh=YBiLRFwM5rrdVOBuMt6rT22pL96r2wUG1T2+9WFixWs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RvQG6oDTKk2IFI1hdVmBgowN+oIYnmx2nCFwiPuTVKolciPBs0F5E+Fvv6m8nl9OxYDWmd3L9Owq/sbrJEetULHCEyGrimx1iJ2Kp6fdM2LShUIx1oPxVRJODr7+/2avU8FNcRQHn8hSp8kHZGM/1R3UN8i+RG5aCNQjlg/eYhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e8p2PzRf; arc=none smtp.client-ip=209.85.216.42
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-37d826e9811so1158065a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 19:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782355209; x=1782960009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6B+w/JGAQL38w6AJd9IpzadwmAsxuQxaTLnqy3En65s=;
        b=e8p2PzRfXJYcVaZZ2SsDwEMxXtPFqwQl153OUAFMfoQNB0WhX6d38aEtH7DBfJvD5h
         G6JNZ9Z5jBi69I7HT6oHMp9TRokjCgac+pS3W8NN+EYTkFnYDMnjEkSCVuBnPUXFGSyY
         E2tWjBhobnGEZsrO0Ldv2gFQHpJTPtuCod8sx7nTn+SC6mgL0UDzCDG+URgB3yazVL0g
         C6eMKxovPgmcMxaPfKjkOa02ToE+OaE87lkrKdBhCeL7K2RgHB6RSRnDbmtpEAzCMei/
         ux0NWvi581TT+WOjT9b5mqaUpdmLSL5Lirqmb/PyYlJsmt9AceJiOb1pN500i44+9Iru
         8WkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782355209; x=1782960009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6B+w/JGAQL38w6AJd9IpzadwmAsxuQxaTLnqy3En65s=;
        b=ZMGCSj6M3lTNFnQvAu1EuQ8S4MYZQOo3sVkvHTxK4dN8rC0z2AEKkezeaxBmreShwR
         1MJoO/hAHnkH5V3QNDZB71ydo00yuRFc4LTACWMiLBBmRAVLinWJphA28fVQPokpekSW
         w61/rRUnpj8SAaa1UgYNbh11wnEVmHe1EpZEMIs4tSrSSjOmM+L3lGYDrbuhEIN3Dg6n
         nU9tO5Bq9NbIm5fxoSzHCuN6aqyJC5ZnT1FlcPEMYwPhZXvcxkFS37Ebj5GfX/5oH3cY
         e0sd21YhKli7TP+A0544OsfxXihIPRks9DZd5PcyzYCYK1DzpS6GiylYb5/R+yNruMp2
         OzUQ==
X-Forwarded-Encrypted: i=1; AHgh+RpXmkvhQtrdz1JgJGOgadPsKkRXElK0rlUtvur0kVtblWKaa+ymacUcwvTEf1g59Jw5NTaJ860cKMSh@vger.kernel.org
X-Gm-Message-State: AOJu0YyhHc3Cv6lgwB/R35cCl1iAe5iWFvyt8KFHf2uWXqFeCTHlzwf9
	+fkbAgyq8NdssvOejXMn4alLLp9s4EqcG1zYDBKxYymLBSh6w27P4qxG
X-Gm-Gg: AfdE7cnglKpguJ3gMcOtlqTAzI8XF/V086MsfWAxu57HRYe65yWA/Vfjd80pJXcknBP
	xZ+dmPLfojsy13EMDzTAvhyM73tCPFU5LqHp0cfucnEltXnX978J2oXWf574mSQrMQOACO6YQdT
	bAc7mpRMRZnjZzwQkGgUItxzqrR1q5EZXZLJkk58jpU0RLlPUhC02UIO7EueB+ZKv0KJFgnZKjS
	07Qd0Z8YXESRgGMsekRsWOTFhy/RxmDMRHgbomOH9szoaDFlGMx2cCHMgo9TrqkTjtP49A/TUgk
	iPlnjmCJO7n1clR5L3qmSLPy74pdBXmK/9yVZiXa1sLmVmEZ23TyuTp6BWeh594IKAyTbwsV4lo
	qWIU/ovrRAIqR0xNpM2jO19ZYr8xNLYR3+dqHuns4U1E27oc/rfJkVInE0iCaDHefiuOKGjXiPA
	4l3yllHqnlF/FCUPqVotKLJ/sPGr4VHL6rGyLQ4y8o70yYFZxzZhQfEGj+jcGfT3qsyc5XspD5z
	WHsGqGH88gk
X-Received: by 2002:a17:903:1a68:b0:2ba:7881:948d with SMTP id d9443c01a7336-2c7fc658488mr8256905ad.1.1782355208638;
        Wed, 24 Jun 2026 19:40:08 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f64dc839sm8538545ad.68.2026.06.24.19.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 19:40:08 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: reset: nuvoton,ma35d1-reset: add simple-mfd and child node support
Date: Thu, 25 Jun 2026 10:39:55 +0800
Message-ID: <20260625023958.569299-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260625023958.569299-1-a0987203069@gmail.com>
References: <20260625023958.569299-1-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315459-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,arndb.de,arm.com,nuvoton.com,gmail.com,lists.infradead.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:arnd@arndb.de,m:catalin.marinas@arm.com,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:hpchen0nvt@gmail.com,m:yclu4@nuvoton.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:a0987203069@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF5286C26B9

The MA35D1 system-management syscon node hosts the USB PHY register
block at offset 0x60.  To model usb-phy@60 as a DT child of the syscon
node the binding must allow:

  - simple-mfd as an optional third compatible so the MFD core can
    instantiate child platform devices.

  - #address-cells and #size-cells (each const: 1) so child nodes can
    carry a reg property.

  - An open child-node pattern (patternProperties "^.*@[0-9a-f]+$")
    to pass dt-schema validation.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/reset/nuvoton,ma35d1-reset.yaml        | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
index 3ce7dcecd87a..1fda7e8f4b5d 100644
--- a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
@@ -19,6 +19,8 @@ properties:
     items:
       - const: nuvoton,ma35d1-reset
       - const: syscon
+      - const: simple-mfd
+    minItems: 2
 
   reg:
     maxItems: 1
@@ -26,6 +28,16 @@ properties:
   '#reset-cells':
     const: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
 required:
   - compatible
   - reg
@@ -43,4 +55,3 @@ examples:
         #reset-cells = <1>;
     };
 ...
-
-- 
2.43.0


