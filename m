Return-Path: <devicetree+bounces-267939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLb+OBO6nWklRgQAu9opvQ
	(envelope-from <devicetree+bounces-267939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1EE188A3B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:47:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D71630F6CD7
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E743806A6;
	Tue, 24 Feb 2026 14:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h+oFpkpj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F623EBF2C
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944423; cv=none; b=sN+xGwzePggHZ/n9FynmcsegSicpbCjeqO0kCaYEt7vznaBDoYtBao/jnkDgOEjMPm/6Pg4+9S99Gz47v2fjR0p7g2LVpz5ei1MrZcP63472/1w0tVKQeQ/eNaLHwU+5hyuwFjdDYEb4ZfHpISaugrtYQXk92eQZ+AKYORlWnJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944423; c=relaxed/simple;
	bh=CbSaWv3Dc0ulqUKDcs+EkIEPSwr7Rm5ErRs3VPrx9R0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PgNx22cpUYbD05M/CB/E0C9p9xtTFLwwwy25qA1YNLnO9MoTHehEqh5b2yKuarci9oU2f409tsHqlSJhpqMehJgQ9rJ8CkQMJr7mC/B1I2Dv2qCws8ph9LiNgpTY6ho22uTylLJgfbTe6YJs26nS2O5XyP/KTRxxqZ2MD/lxY54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h+oFpkpj; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-824ba8f0acaso3224242b3a.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944422; x=1772549222; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=99LbRTcDkRWicZEnMyvbA1VmQlow+Wr6MpOuGjNeRiQ=;
        b=h+oFpkpj62i5+aWvG24YA4vpySPT6UWs7kh0R03oy4vhdmKg96u5DUzhA7G4JPiuGG
         t8ZOmRO4dQc+TiyLXGQO1Gt+KHIKl9wRN290IuBeXazEwG1bg2kjxLkdPqN87+8TT3vJ
         mZ3/5fX1z2jvZeThuvxtj0da9WplhP8JOikxsGOxKGCGdh874Bppd22E8mXdcOirqZpS
         sUzhUbD5rLqEiM0GKxvfsuixZuDI8YpuHKJUTkYUJgLTqH8eizbrZMj9RigiQSCcMgJ3
         ppSTeCRw5gb6QVVJvaW+onUH2rPRbKUhYr3zX7vV5IXD4KD/l6qT25dKmIgAU/63hFRF
         ELXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944422; x=1772549222;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=99LbRTcDkRWicZEnMyvbA1VmQlow+Wr6MpOuGjNeRiQ=;
        b=SB+47lIrfKxrGc4AoixdGpEWcTAXdUzhsiy9GYVsFX6AISkfpLB11dP7qW6YYvhVSn
         5pCLH9mu2fXOENb5mtGn1M3EaZUjudbQjiIl1QqwUpZXlOcv86I6Xx6fJDvenrpRMfZP
         exmst+6O76cnqLBin1oyYqH4OXHj+fwbx6jGqG4qp5eriQOoYRBsEHHgX4aF5qS94bnd
         UHQOBsopN/xTfJXdqP/JDjxCt4speMPcp+DLNSAbczH2lEvn9xWQjEGkABml+66EfTKJ
         KWc3I1WnGR0ZHgocEkVRh7Vk7vhkDnKtwOefwvdPCUBG+TUE2MiRPJWGNA8By/baD4D4
         Kolw==
X-Gm-Message-State: AOJu0Ywefsd6VDRmTcQX4oTTTmDpWVX/LFRE2ee3rq6lDrXLnqTCNJ4g
	aZQ3VRhkunZjPYQPWwAaGQF2hxeIb0Um2wfeFWZRTEiJKwrHKWYzYMpw
X-Gm-Gg: ATEYQzw4mhOeOzc1kB8PzoeVaedHPqTfXnrCKki0tHqbegPfyZoMwxRGr/4DoW0ljl4
	aftR/6kBtVsJnEvYzlTHHCXPC+prqwAHEAEfOwT1sb7WKVthYSWLoWQinp3fhArFBN+Vf3mLxSD
	SIfY7M07dkp2pKjHaZZQVWumffcLymHvl0tUPK5/GCaoI3SM7giY3/Q4CmiypG4ISO8K6kWOSy9
	mfuqc5SbYrHs/HVqfpwhtuEuGSonBwlLnlYMbxxE0iRaJ0x0M9XOqr3En24EnSNhtpxwuiT1g+W
	AS7si23IvBYEpOmcjH1V9YDveouEab4vjcmmzYl7a9CMOX8kzYG/jcbyj2vbSSkMD1XUaTRvULi
	ijZzlGwfzcrrG7474/5OJAk3iooDjNquM1finjgXTyR/Hdaw9EALxV83eq2GReRfeC9tVMWlMSi
	KrbVFE4UMRLcml90Te6IMxv0IVWDzqxiaFKkJC9QdEyaQoT9De
X-Received: by 2002:a05:6a00:ad08:b0:81e:4ec2:daa6 with SMTP id d2e1a72fcca58-826daa23f5fmr8127791b3a.48.1771944421683;
        Tue, 24 Feb 2026 06:47:01 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.64.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-826dd64367bsm11149895b3a.4.2026.02.24.06.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 06:47:00 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 24 Feb 2026 14:46:46 +0000
Subject: [PATCH v2 1/5] dt-bindings: arm: microchip,sama7g5-chipid :
 convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-arm-microchip-v2-1-8bedacd2cdcb@gmail.com>
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
In-Reply-To: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu@tuxon.dev>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267939-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tuxon.dev:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 4F1EE188A3B
X-Rspamd-Action: no action

Convert Atmel system registers binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
new file mode 100644
index 000000000000..0228a5505259
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sama7g5-chipid.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel/Microchip RAMC SDRAM/DDR Controller
+
+maintainers:
+  - Nicolas Ferre <nicolas.ferre@microchip.com>
+  - Claudiu Beznea <claudiu@tuxon.dev>
+
+description:
+  This binding describes the Atmel/Microchip Chip ID register block used
+  for SoC identification and revision information. It requires compatible
+  strings matching specific SoC families and a reg property defining the
+  register address and size.
+
+properties:
+  compatible:
+    enum:
+      - atmel,sama5d2-chipid
+      - microchip,sama7g5-chipid
+      - microchip,sama7d65-chipid
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    chipid@fc069000 {
+        compatible = "atmel,sama5d2-chipid";
+        reg = <0xfc069000 0x8>;
+    };
+...

-- 
2.43.0


