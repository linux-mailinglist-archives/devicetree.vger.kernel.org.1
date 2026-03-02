Return-Path: <devicetree+bounces-269802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2VelAQ0QpWlS1QUAu9opvQ
	(envelope-from <devicetree+bounces-269802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 05:20:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6249C1D2E64
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 05:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87525300A7E2
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 04:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0692BCF7F;
	Mon,  2 Mar 2026 04:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GF8EXgvs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632F8430BB6
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 04:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772425223; cv=none; b=DAakVBc3PjbusTGINXBUb+ylePN6UFeIFIPEPgxugUIV0WN6hLKhBRRkCX8sveZk46+RYZXC9H3O6cWfgu8VErd0bKNRwolHzR+I9Ul5QyZlK8vVdtfe4N5MTvJJuZMB0d7GnTm3fHH7AYr7jtIz9AJ1GlJDOkttS4By48/tE8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772425223; c=relaxed/simple;
	bh=5gILMaGdI1v5nQ4lLFzK5CdL3aZ4jAwq3TDemRpn7yM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=p8HPK79rc//E0EBEf2k0s6D8BFf4Q7jGsErmlLl7YX2WoMk7UJYd7b19tRB2v197/11ioOt2VxsaKvcE6S1W+wTk7MUENCWyYJbUOT5O0RwCh6Qnq4eEWg3E44y+S64cEiLowgziruFGTgQF36Vcp56qz5lDkmP/uKZKLg/mNIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GF8EXgvs; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so2099824a91.0
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 20:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772425222; x=1773030022; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g9G7fxfmzVlIi5Fr50mSQN2bdN4kcLFoj1561/FSzpQ=;
        b=GF8EXgvs+a186U4t329jEOrVllR0wFE3FZj5xw8c2cHixB2xrDqpYBi/BMeNQWS8a5
         2nntNBGPhdXqH6NxKoWYail/ck0DEJ5tZQuzChQNPDYawVNE/9zEdrfZDzD3N9Dx1KSd
         7SmVJ32EmKOmeKagSbyUqFwL9lGlnVm4LXR/Z2u1Nb6M5I/5tUHj9thAUa5em80Trcan
         2UVIMtZAvQ+uGfosA6CF4sw+U7JIky6DCclFoIvqCgkA/YweKUuEYGqT7e3AK1NWdAWE
         uGZeY36WWaQJknkcDN6A/JSFQjZXXPZQvqQi59AgTxWtPxXM8etUJn4ZdzKHMD8dHR7h
         zm1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772425222; x=1773030022;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g9G7fxfmzVlIi5Fr50mSQN2bdN4kcLFoj1561/FSzpQ=;
        b=jyg94zpzIPChpzw0XKJEObr1eBXOmJLABlFXTda77bYBZioL24S5cAb0hkj92Xzb5P
         fQnJteiyBg2kuEM8TFB160zQ6gxKscGhok+FdU5K7hibbPRb69t13qDBf0V5pXcaKSLz
         9Hkhn21QE2NrtAwqkpZSmorx2Q36dv9KxrRUkOsmoYzDcP3LpEYg8m1ilPqIoJk02XT7
         D6jrQdXuLShi5W2XIwNK8hAQjyJxe6A4qpMvySupw+lMnsUfV0V3zqj5F7pnuglgLE4r
         y12zmBm9hyu3/LJUoRGneY6IWK1SMEWyF7Qdf2XuZh1tN8DfuQz7H6efbZ8+q9QGJg2m
         f1gQ==
X-Gm-Message-State: AOJu0YyLqWGrmnGs6Yeu19hArtgjl4iAGNI11IFAsju0TUXiYhQH/Q31
	T+Id95AOg7AEcvF+a2KrjU5bxQTD3klsM+zCsBxYhknzDgxjzVoNBm2h
X-Gm-Gg: ATEYQzzsvB/FiYqROQrkUxl50yPzxXSJct+dig4040BRYNxyr7som6FiIf7XKHYTTvH
	PGmvrJKtm0Mb5g5f0wG8ZVSkf2NJ2WLmQZR0+zCh+zCGdvHzRhq9NlAPRucdNwUiOpHt6uMa854
	uT//lgHwyW4QyFaCQRzNrenL2KZlvBkErJkMsCWupwlss6CTYgGEmUd3ECCTo+6/Yb8oMVvWcrY
	Tz2cWmVUdCjyH8H/y9MT9xRHeyaob8ixvuG+EWKYY3JMroJPY8kKx2pgX50pIS+7bldfV1XthI+
	xqVxByeVeCCgsiB50VW0K/wjYqGU/cZN+sbh615PsjAaX+DZwDAqcLqpS8b88iZ35Wv03xlhrUt
	fko/AijcgIPCAj0LKBwsYfFKIpST6SFExu/AzvGEBkr/L9Rkm+RqvI1y+pyp/OVEfO0rwnT0QpY
	usewsyQX5IRyMDFqRjt2+db46UBJ0lFg==
X-Received: by 2002:a17:90b:3d10:b0:359:9083:3661 with SMTP id 98e67ed59e1d1-3599083392fmr961910a91.15.1772425221617;
        Sun, 01 Mar 2026 20:20:21 -0800 (PST)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3593ddd737fsm16355794a91.13.2026.03.01.20.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 20:20:21 -0800 (PST)
From: Colin Huang <u8813345@gmail.com>
Date: Mon, 02 Mar 2026 12:20:01 +0800
Subject: [PATCH] ARM: dts: aspeed: anacapa: Add eeprom device node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-add-new-eeprom-node-v1-1-2bcf87bc22e4@gmail.com>
X-B4-Tracking: v=1; b=H4sIAPEPpWkC/x3MOwqAMBBF0a3I1A7EKP62IhbBPHUKE0lABcneD
 ZanuPeliCCINBYvBVwSxbuMqixo2Y3bwGKzSSvdqlppNtayw83AGfzBzltw1xutTLc0/VBTLs+
 AVZ7/Os0pfVqL4pZlAAAA
X-Change-ID: 20260302-add-new-eeprom-node-78a20a7c4893
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 colin.huang2@amd.com, Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772425219; l=1109;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=5gILMaGdI1v5nQ4lLFzK5CdL3aZ4jAwq3TDemRpn7yM=;
 b=Lu2BNkUYsAir1qaAPj6PiWZAitwbLnlXMKIMJchEYxY5pYd47YiouzudhsnMoLL/B+oVJfW5Q
 D+kdN8Sb79fDEG51sYs3sXbU8apew5tWFmTKD+DKi5JRdpkhfM5znsa
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269802-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.0.51:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.56:email,0.0.0.50:email]
X-Rspamd-Queue-Id: 6249C1D2E64
X-Rspamd-Action: no action

eeprom address changed (0x50 to 0x51) in DCSCM rev D
To support previous rev (B/C) and rev D,
add eeprom device node for DCSCM rev D.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
DCSCM rev D changed the eeprom address from 0x50 t0 0x51
To support previous rev(B/C) and rev D.
add new eeprom node for devscm rev d.
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 2cb7bd128d24..680108b00664 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -586,6 +586,11 @@ eeprom@50 {
 		reg = <0x50>;
 	};
 
+	eeprom@51 {
+		compatible = "atmel,24c128";
+		reg = <0x51>;
+	};
+
 	// BSM FRU
 	eeprom@56 {
 		compatible = "atmel,24c64";

---
base-commit: 710dbb13377c80a6e39ef049a517665841e3221e
change-id: 20260302-add-new-eeprom-node-78a20a7c4893

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


