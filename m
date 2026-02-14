Return-Path: <devicetree+bounces-265496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DrtN1Tbj2lsUAEAu9opvQ
	(envelope-from <devicetree+bounces-265496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4BC13AC27
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BED5301BEC5
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 02:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457CE2882B6;
	Sat, 14 Feb 2026 02:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kQxWjgNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24BB285418
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 02:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771035473; cv=none; b=jIx0/YoZ4xlJo1QvYv/b3dwzc4d/6XRZtMO3XyvJCrSzVOfhyWJv4MqaufYAUOKBNyqgbSqViEBvtjxzt6/gmF4u+3ol5X72ZxQItQFmQdy8ZMy2/3gKNHZN8qma/GAstz1yjHK9EHHxvToeNn7VkA/bnIfJ+GkVdRdRGkdL4Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771035473; c=relaxed/simple;
	bh=3q57kPx+HuzQ9FJOddGhjOpFyESyJfg3GaLOQhmMgVI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tXbCBEAXMF54D6qakfF1SMB1jqv6zvBBtwN7EYEquF0n97mzaaN40TzTpzlASb4fQXO7eDr18pvZL7K88Fe16rc99jpU1FDO6B9opfsdm7UXW83drjQsnVFzEtXOxc3vbSnLarQqw8Vhe4yN3IPB3stAtsYVYVQrdiAnM03F9yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kQxWjgNp; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-482f454be5bso34271535e9.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 18:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771035470; x=1771640270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpkCPnIPCeuJ8T3n0TK0PZKz3qkGjDrlXnOs3V5iLkA=;
        b=kQxWjgNpWEWaiPaWZ6YckYI1iLXd8P7eXKbqy30kqGjbteERBlYJvEeChaeQMx1sD8
         yXjeLhSCEshWnTxc4zFgccwrXmGGlq9gFKNVRrUgQSgcrdFrzMCYuahtrlJYy0vx/bKo
         wWbPxnFG4aSYed7GOCKga3/n8gjtU/7EGAsxahazS6RCgqYyHP0w/vxF5bBkCLdYWW0e
         rVuoRXQlGOYvzLw3QGTXGISBAdv7KeiNPQtHlG3rZ6/CNkOQLPz6GeVY69Y0FOb/w7uP
         JIjk2FI60t+3JXDSHvwdnwJyz84k+GLcebOsm3au/+2XBgT4hwRkV5dbWGYjoG9q2oEa
         f8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771035470; x=1771640270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hpkCPnIPCeuJ8T3n0TK0PZKz3qkGjDrlXnOs3V5iLkA=;
        b=Ckh5Qej9N/XpA/7xV+Til3LTCg0YcKq+N4zsi9kd8EgGJbAjNACqnKyMV4FHK3wAzu
         TssCqUeUbEbq8bgjG+iZXKyuuoFyN1OwpQ7COxSuvQyhgTOgzmxK6af6Glsfg9OeLWir
         9cDBb8il7BU7utsY8ol8yeA31PiG2RAoq3dAfPupBFtU+NWlVBPHJ+ArsZniU96yVGZw
         JNW7P7p3mV14gXPCeRxFzWgXIb5hHPsnxq4SxKTJ+/JKbCvTqfiSKc21o3anvgScLXPT
         MACcDT0bkKTEovVYhZlRby609VDqH5ncDxGiRK8uOI2j4/48yHUMU8C6yZ/t/2Y1tjfd
         xkxA==
X-Gm-Message-State: AOJu0YwDgCB+MpWLf8ScVn1Xv516UsKlXo1YMoU8DypQmOntOzKdd2OS
	0FUpo5iO1md4Odj1RcCUw4otnbH3m2/MtZr/uo09Z5p8sXlYyDIdgMBTiy50lkHklKE=
X-Gm-Gg: AZuq6aJRYXPXvTx3iTJmUKhMWUewNINjPeTiugQGMlYUJpokDGSp2mE/FC7Qmf3yqAD
	KT9WHlejw23O4I7D0eGZcc6eiUJLfpRhzC1eHYE2Xrg191Y71AqDkw3QtiQEISqljOrYn1a3S6a
	hgVEc6WNuifbLawoFj7IARo4D08UvPdAx43kCnnksv+Of3d+MK6z+T7TBK1ugR+LhusdjmVy0/r
	wfcEcesIs3ht9X7CrR1S8JicYhxhLC2Bn1sPe5Trco3TxPEpbG1zHjuLV6IZonf8CDqvni1a6NS
	73lhH1EHRSHH1nIAFlgVB0jUeHN9ikUfe7qtasHb3eMIM1Tmg0IVIrNC2zN0MsLWxn71QNqPlCH
	NDo6bgWF8LwbXqvr8Dsvqp1VRA0uSHV46aygs6/QfOQZHHlfKEpMsxRl8rl9pKbOwdq3hl849wD
	yeBeaPN4RKiE24Gf6yHd/I
X-Received: by 2002:a05:600c:5251:b0:47e:e2b8:66e6 with SMTP id 5b1f17b1804b1-48378da3e01mr31119965e9.14.1771035470027;
        Fri, 13 Feb 2026 18:17:50 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acffcesm8608308f8f.37.2026.02.13.18.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 18:17:49 -0800 (PST)
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
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Sat, 14 Feb 2026 10:17:15 +0800
Message-ID: <20260214021719.620752-3-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,manjaro.org,163.com,kwiboo.se,microchip.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-265496-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email]
X-Rspamd-Queue-Id: 9A4BC13AC27
X-Rspamd-Action: no action

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..292fa0bbec93 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,11 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,edge-cube
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.53.0


