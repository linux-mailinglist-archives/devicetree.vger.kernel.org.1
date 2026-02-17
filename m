Return-Path: <devicetree+bounces-266220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDbgJWyklGmwGAIAu9opvQ
	(envelope-from <devicetree+bounces-266220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:25:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F19D314E93D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8CDB301A926
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E8B36E49C;
	Tue, 17 Feb 2026 17:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VvsVswyD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E62421D5B0
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349075; cv=none; b=gpkgcZx4KjussmjLyQDzWOMXlL8DYnNh0yV1uNlbLBhiYSd5SwV2+E3QR3Lo9rfpXUhIHy0aFnh3xhjQlZJy2VpTuNgiKi/As2fSJJgMvnIHsnGmgX4mYcuFsolbiVp8fE1PhuPIRP1jvB9PiMA+EP7AV/xeDDoPIeVQubILevU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349075; c=relaxed/simple;
	bh=Lm+If8v0n9ZzqlY8OLZOp6s5/3TL8aa+xDq0I/7MaGk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ODZtekpDeND68pEYgJbYggUTk4WG7DFC61il9RTFXLLS3WCzpCZ4WPe8ZVvd3zWbDZALY+/iHTgREjM1tbqw9fNdgoIuqmKKtlfTQ4PY8h9dcaIXALHqQASM85wedVSvBM0btZddtKWe4J+AknVXvDlCFukmtSi6O52kn4x/LfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VvsVswyD; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2aad1bb5058so45287715ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771349073; x=1771953873; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bau6uafrQZEyhO8IyYecaXoONB6+S5GZTLPA52Q4cME=;
        b=VvsVswyDaHNeq/VSgNBHSUZMLk6gWouMUGj8akUUE5sm/6gq2PpVxO0XZl4xNGgpdb
         m9BtEp+PpIWbeMOOsYQDlKB1hbXGk3E++uscvqo4jcgtnaBgVUEyVHeiKOdqy9EQbRRr
         SiX0e7RLL7EAcjjk4bWl/Z7nXyI87m+1uoSVqUasEo5gVHv1+lSnEjQFiy8hlA6fnv9x
         6WyQ3WVKPuRR/VI60W6wH2iL2RnEP6iDvj2teE86bSBfHik5y5eswKc1qfuPcvGIk8+V
         zTU/sw7eKJUFGS2P3xN2eEIerhUnG3t3x5pfhtbRhVinSZAmWl8HTO6IFfpHcwcUlSyr
         JLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771349073; x=1771953873;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bau6uafrQZEyhO8IyYecaXoONB6+S5GZTLPA52Q4cME=;
        b=AN5zyi77t0yRLMfCel4k1j++sWXJgdDELjh2F85MO3+nkWtRSCjGJmPogiW/VF78mi
         tP4W1FG6CPe3F49SMB0BEF3sKxiSbtg0WY7JBLdKExc6G0BmfDGcGbtCnVuXJwcwpwIq
         EB/s3rvTfks0OA4czzOkVaVvXExJRn6kdAC2rZ7gv6jSgqdXOzOElDKtWYa0IFoeRjuH
         wgoXd3M4G5bEHeAKti5gp/sTx0GDkryLDOrkK7ZmSsJCpPs/uKZVaHx4Xnf/5P7k7NlR
         5IrsNx64sYET3lU3o+w47Lh8OrJI1sD9wR1VmmaQqEbU8LnwijNbi+1/ItIdUQVyyXug
         bUhg==
X-Gm-Message-State: AOJu0YxWwcz1l4aQygWcCD53osOKmt88n9ytQfGi5eolhjm4wlMrdWsm
	vGN2npg1CCUcp2jedkOHpt9XRBI7XHblTvpEdXv3aOiMFIFpAznOiU2Y
X-Gm-Gg: AZuq6aIKF4+1soNZUWnSCTiELQmAOWTaEdErdrMXH3cbMY0UCxIN9RcyqvEzunhdNEP
	OK/XotH3gBH+hy4BirxlXpD2piUMYN1pedlEcZKorQ4EPO09aVmx8E2nsEyoyDn1Ms69SJPkvUP
	Xs5LlI7rqtSeRXZx7S7/ue4l966ijqipAEZxoH+IPSKLLHBksQ3gY0xZ9K0xcBqsOA/Sq+sOHVZ
	cq7ItKlORBMKDmJHiN7UXaGgG2hkoMmSiUVSgM0q8NgsZ7kfL6KxZrGyvoVQd/aGQj55fSOnPyS
	GEWj0/knbYlSGs3WBoIIf1qABMHjexTqMYQa8LfGCvUO5wLy4rFUwnNAmJTNvk49gsQxJ0MxxI+
	4QgZq0UWon5y7bc4zk6k3Z3F7YOGYO2eogz0f/JKRTUyXlBuRAcDQBFQMpJpnDxbG0UP9mU0DP7
	gR4JpdDl/UZCYwb3ZF2Cg5zYPUpyzUtYRkkC8pSQyOv7JLzfoS
X-Received: by 2002:a17:902:e885:b0:2a9:451d:a69 with SMTP id d9443c01a7336-2ab504e974fmr163450765ad.10.1771349073454;
        Tue, 17 Feb 2026 09:24:33 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.109.65])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ad1a7145cbsm146880305ad.30.2026.02.17.09.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 09:24:32 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Tue, 17 Feb 2026 17:24:19 +0000
Subject: [PATCH 1/5] dt-bindings: arm: microchip,sama7g5-chipid : convert
 to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-arm-microchip-v1-1-ae5d907e10e3@gmail.com>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
In-Reply-To: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266220-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F19D314E93D
X-Rspamd-Action: no action

Convert Atmel system registers binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml b/Documentation/devicetree/bindings/arm/microchip,sama7g5-chipid.yaml
new file mode 100644
index 000000000000..4227f308d43a
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
+  - Claudiu Beznea <claudiu.beznea@microchip.com>
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


