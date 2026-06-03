Return-Path: <devicetree+bounces-306312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 36bCMpg9IGpezAAAu9opvQ
	(envelope-from <devicetree+bounces-306312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:43:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD59638BA0
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:43:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=eolLVlKv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306312-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306312-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 997343092552
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD312383C65;
	Wed,  3 Jun 2026 14:33:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3358933AD88
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 14:33:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780497226; cv=none; b=AN8kYFq3vVdyCD5S5FCFdHuXcAza9kwKh1IxvSdMkHg8HIhA1y0vaTJpxi17atupIFtVc867lbKt0UGflAY6AGwFg2CggVCOfuWqrCtoBS2xzoI9sJa7CxEbozW6l8vgtTxZaaiBjLOXd9quyeIKd0YYmLmJw71zIL4Ay+zxeNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780497226; c=relaxed/simple;
	bh=cpGu0rWZnVZvnWSC1MpxH3UZfAfOmGgstpuqCmO0qRk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J/OLaznDsUQGZWOxeVuvFSYVjJQpt/8JDyEfoOZLmHMsFWgnyc6ul+22gexS8o3YnX0l53bqYjluc+J+ffE6edV/lxp1WWaOsKxNio8mT/+dOlTxFa/iYXVu3QSpY/gJDCF+x5h3riADNzqFegTJOkiiSgddChfoUjHkLzpo5Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eolLVlKv; arc=none smtp.client-ip=209.85.128.44
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-490b3e03939so7404555e9.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 07:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780497224; x=1781102024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AF2OGYc6ovJIikJG6bbt/+HWa1EepNYCU6GkRGY0EEc=;
        b=eolLVlKvudQ7oKWVQLPNiZbl96+/GEMOGIGPEB/RzTLmcs6HQeEyjCIWEhL3ecaoOh
         H5Nlje0k8mrqkJawmpT609lpf/RDEKKMrz+gHSND9hDVxK/X45mQt50ZVWd52O5dV56S
         Jls2OvgLcfhsxq1LMQ6YpAKPCPKr1LqOi33uRG1oF1ZqwzOQ8FPogzWk1A5+2PQ2NArO
         WmTu48wfJ4lU3cKs9OnqGid0+hSEN4SMQp7rDpP/Bvx5riKnZOzLxdwPY0UNJcWq4RGr
         TJX+cJArhGoiwBmxSiJ/wC1JIxVwIpEtdVJNE3WPs43VKCGsNchOzPIhjZqSiQid48Vp
         G+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780497224; x=1781102024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AF2OGYc6ovJIikJG6bbt/+HWa1EepNYCU6GkRGY0EEc=;
        b=IZOrbqRsmi3fFw/b5QZSlavMMXFWROJMtSd3mR3lqYvKm9udU5eyPlAUWEy+dzw/St
         sIId1NJr1y4ClbT9tXgkTOFzQ2iglH6ecb9tLpdwtL+snvg/fqPGADWFAYrU643QqiMo
         ihigoMFWM9geScUxv5VoiPHX+uwcWlT7TozpRrdWwpneBvqE6DOtohCvzJKnaCQIUHWn
         om1KeKvKrVhkYv/IuZmF2BrzY7f1OMijHZHjd8r17uDqy/AYI21IkP05smOkLLkpKUBO
         GoD8Jp2L82VF1tp0tTb3DgoZrKpyE0UFmzg6f/Kan1+EFh5KuZJEnhpEciJFGIZtLBLK
         NIOw==
X-Forwarded-Encrypted: i=1; AFNElJ+eH3t48a0eOsoX9ZoA1sQfRCK+A4xNcr9p3u2kIdCKTLnpClDBrUDu+TwUUamheAS0CK/m49Q/Kole@vger.kernel.org
X-Gm-Message-State: AOJu0YyG+sa/Z2T+/LwUQTS3Yv6qqfBJcE+63lBTHCySII2X+bkSKD/1
	/2njqCeLIz89hWfSJ8ve7QdCdPys0HwZyC/ipSqe7qkLsIr/Khh9zt/a
X-Gm-Gg: Acq92OGR+8We1BxZE1WeGumkhEVVasUlV0uk/zOQXxn7uFxfOZVQG/REEjvWehvpJjc
	DxIVuOLayXlLrmpnJPeN0seZt2Smc5Mh7I43/aIds2k3v1MivdltHDiBJjQLc0w/aHbGqxrONrp
	oGaXk0PTNF74tymjbsOiYk9oK+mhBW3TMtt0t+GtJOP7argK+LfvoBuYAO8Gm9P+lKwOYvdM58A
	Bj34l4wGusdqns1+m9P4F9EuDaQcjivurlrOtjhenz0oOyGaJ4TtzX4qw4D+YniBoVpFFj9ACET
	e/nPzH9RVyK08mn38VU0+Y1phQGPoH08npaB+cCE/KtSNPFu+/GwzTom3fNtUEnYnuK+995jkO4
	NwnoGdxzsIFNxAj0Nm5IGyuDAJe6/JafOuquQ6ChpxAra3dnB3JqK8TPaVTUBvghbs270AevZbv
	YkWpRdhrEtZmU6h17KKffrBrk9eMlt8F2xSRUcGnY8ZEhSzfrxgkmvTM4vzmM=
X-Received: by 2002:a05:600d:8496:10b0:490:bbc1:c9be with SMTP id 5b1f17b1804b1-490bbc1cb45mr2385875e9.0.1780497223482;
        Wed, 03 Jun 2026 07:33:43 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:179c:89ab:19f6:9ba4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b0e823f7sm160147395e9.13.2026.06.03.07.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 07:33:43 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 1/2] arm64: dts: renesas: r9a09g047e57-smarc: Drop SW_SER0_PMOD condition for rsci4
Date: Wed,  3 Jun 2026 15:33:35 +0100
Message-ID: <20260603143340.162457-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260603143340.162457-1-biju.das.jz@bp.renesas.com>
References: <20260603143340.162457-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306312-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:biju.das.jz@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,vger.kernel.org:from_smtp,bp.renesas.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FD59638BA0

From: Biju Das <biju.das.jz@bp.renesas.com>

rsci4 is routed to either the PMOD connector or the M.2 connector
depending on the SW_SER0_PMOD switch state. In both cases, rsci4 is
available for use, so there is no need to guard it with SW_SER0_PMOD.

Drop the SW_SER0_PMOD condition and retain only the SW_LCD_EN check,
as rsci4 is unavailable only when the LCD is enabled.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 6372f582a7c4..07db9e434521 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -237,7 +237,7 @@ &rsci2 {
 };
 #endif
 
-#if (!SW_LCD_EN) && (SW_SER0_PMOD)
+#if !SW_LCD_EN
 &rsci4 {
 	pinctrl-0 = <&rsci4_pins>;
 	pinctrl-names = "default";
-- 
2.43.0


