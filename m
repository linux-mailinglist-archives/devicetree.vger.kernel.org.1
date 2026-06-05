Return-Path: <devicetree+bounces-307534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XoqtKPw3I2qokwEAu9opvQ
	(envelope-from <devicetree+bounces-307534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 22:56:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A82364B3BC
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 22:56:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="R/TA6/+f";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307534-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-307534-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AD1EB3009F2F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 20:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A823C945B;
	Fri,  5 Jun 2026 20:56:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3F23C4B90
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 20:56:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780692983; cv=none; b=cOVmu48WxtNsyDHXFXw5960fauqPtZV5H9i4RvPnfDjzvSPjAHcH3ndbTJyPzHOzSfwpTccEHPkCPIkLA5pfi9WKISCJO2EdQkLJpSlDzozoe1yOYgQc5cXOOK6IG3IKlJydZrEokSv+TkCCoX1dJ264HNVLJDaTplN0X3WsZes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780692983; c=relaxed/simple;
	bh=8bUD9x4wOou8wQASyhytt6PqZWOsrt8nWYzwb9KNst0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bqYarm6muDwxJZWwXq9WFTN+He+Z6MUv4UvBSl+GdrFA/DR+0e1WYqe9zAaMcyorWqif3fBjXM/137UUSQhy8kFeDHOIwwXOMWvLi5Wq3x/8ZCuUO/iR4lCNEPYISMiO3lrMjeMNkIXMmdPKB0HbkjN8bg0mKtaG68sVb/s+gfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R/TA6/+f; arc=none smtp.client-ip=209.85.214.171
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2bf1497de04so3688255ad.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 13:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780692982; x=1781297782; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OjzwKrMQNmV3nC64BV60pa2u05CadfM/qOaHGnybv9k=;
        b=R/TA6/+fD+UwFQxC++pIOBZ1Ix5ovHvacyEb+uquu8CAxGKMw8jGvqHMs6UgfY96vV
         7SRhgkFH4qvcyKYSYNFLSr3rBwP+u0G+nbmB0CjK0POzLsHLwslWg7/J4iD9hWw4w0dA
         LA7Tg+KjY+OrFsJA8iA6Z0LhIEVCKoa4dS6N6mqqIZ6XtDZrm/VBD/ffNNYVlSdTkXTY
         z9q7AzeXSGZbP2+RclP1r0gMFUbzlKWecMw8n2al2c5rU6uiFcJs2p0ftBkavQMHwTeI
         58HSdyRZsnENZaryw+ZbSe7MQ2wSTyQ/khLXPckIwBBkIuLvgkjiNHNaaUX0he66u70S
         jWxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780692982; x=1781297782;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OjzwKrMQNmV3nC64BV60pa2u05CadfM/qOaHGnybv9k=;
        b=ZdWq4urLQxf8hB/Y3X2XrlT5uaffJkGlDuEpBujSX/t+Om2fR5z5n+f/CNQZ345aQs
         dHB12vhoI8Tf4vMDpwNqbehC9fFzZQudPIZjjJfcrkZ/KYg162mgiaQeYAcDY8qFrwA0
         sKlDs7ReJSGF71DCD+NXvmT44wkPLuQUfc4vpZMpeR+lOtGDdOimRFDo7nolggM3k16k
         nz0fBkO8ocYCKLs8/yJ+yQ8NMpm1V0hi55P4Mmuc3Mga0YOK0mwdg8gMl93CBWdSgxt3
         2AnR4aFdgDrG4KXn3I4BmBEs6SAaKip7WXmGW4pPcu26ys+ShKzvNPoqzETVDSZzXFML
         J9Vw==
X-Gm-Message-State: AOJu0YyLJy8Tl6mxdPd/ODIt4fFXlbcKoNHguwuQwAQ9vW8otDdN01q7
	qivVcV+bn7TaYU50sh26onP2EoJ7Knem5o4PGDKT7+BFQPQZWfo9nCVF
X-Gm-Gg: Acq92OFaBHidtHbZheyNje9bdSiEVerwtAiOV5bC7J5g2f0JK3xrsEKmszNLQPHKlSd
	OG3AosFwgZG6Sh5Tmh2c/ujeNMQM2SJxDJdnGL5AhjgaOZLPt80Vo6sBkTQq4uj06G9X/H+Z53o
	U4lKMhTpmmvUdkjJsD4hEwksA40hax+psQto4+hLhd4DiUo+7WKTXUwJm54N1C8vS0CRrd1KOam
	nigbYXbnTTV5SU4ueh7JusAVHYgnr4UHMCkUuW31xlJsbimfuboIxCoxscLTX7KY1iID1qAObu3
	D2nOu0U4hDfoD28cALss4pBBjkRlCG6lRl3Md+fuCNcmaV4Ur1t3SCD0TBn2ZUDUvtt41xKk39r
	7D4X0B29ov9Ajmkis/on9Std9L3wkjf8i7BJ7361Yk11EneBOIDPqfqjiXxVcIfL5PIjNVZhqEw
	VYtY0WDld2SsYWl+v2M9Nt+fKcKBL4fjvKcikBUbtrBUrFkZez4zGy
X-Received: by 2002:a17:90b:35c1:b0:36b:54f3:64d5 with SMTP id 98e67ed59e1d1-370f0b54c09mr2508256a91.6.1780692981525;
        Fri, 05 Jun 2026 13:56:21 -0700 (PDT)
Received: from [192.168.1.3] ([2401:4900:881c:baba:b3d5:d6d:608b:987f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3712fcb2607sm2197036a91.0.2026.06.05.13.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 13:56:21 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Subject: [PATCH 0/3] Convert ti,irq-crossbar binding to DT schema
Date: Sat, 06 Jun 2026 02:26:09 +0530
Message-Id: <20260606-crossbar-v1-0-f67f7cb9ee50@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDUyML3eSi/OLipMQiXaMky0QzE8MUI0MTMyWg8oKi1LTMCrBR0bEQfnF
 pUlZqcglIv1JtLQDI031WbAAAAA==
X-Change-ID: 20260528-crossbar-2b9a641d2146
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>, 
 Sricharan R <r.sricharan@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, goledhruva@gmail.com, m-chawdhry@ti.com, 
 daniel.baluta@gmail.com, simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780692975; l=1324;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=8bUD9x4wOou8wQASyhytt6PqZWOsrt8nWYzwb9KNst0=;
 b=/eR3ZJOIkfskq17CqohJCaBfvzb880A6wx1qSIIujYuL3Z5BErE6Yt3iCoE59dGvYmyOaxRcN
 dBtrQoj+KbqC3j2UdNNZs0lW02e2SSo7tfExOuRHnqOXZ2dfsjcNkPk
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307534-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tglx@kernel.org,m:r.sricharan@ti.com,m:aaro.koskinen@iki.fi,m:andreas@kemnade.info,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-omap@vger.kernel.org,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:daniel.baluta@gmail.com,m:simona.toaca@nxp.com,m:j.bhargav.u@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:danielbaluta@gmail.com,m:jbhargavu@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jbhargavu@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,ti.com,nxp.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbhargavu@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A82364B3BC

This series converts the TI IRQ Crossbar binding from the legacy text
format to a YAML DT schema and resolves a property name conflict with
an existing binding.

The property name 'ti,irqs-reserved' is already defined in
ti,pruss-intc.yaml as a uint8 bitmask. while irq-crossbar uses it as
uint32-array causing dtbs_binding_check errors.

To resolve errors following changes are introduced: 

  1. Rename the property to 'ti,crossbar-irqs-reserved'
  2. Update driver to accept both old and new names.
  3. Update DTS to use the new name.

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
Bhargav Joshi (3):
      dt-bindings: interrupt-controller: ti,irq-crossbar: Convert to DT schema
      irqchip: irq-crossbar: Handle renamed irqs-reserved property
      ARM: dts: omap: dra7: Use new property name ti,crossbar-irqs-reserved

 .../devicetree/bindings/arm/omap/crossbar.txt      | 55 ------------
 .../interrupt-controller/ti,irq-crossbar.yaml      | 98 ++++++++++++++++++++++
 arch/arm/boot/dts/ti/omap/dra7.dtsi                |  2 +-
 drivers/irqchip/irq-crossbar.c                     | 15 +++-
 4 files changed, 111 insertions(+), 59 deletions(-)
---
base-commit: eb3f4b7426cfd2b79d65b7d37155480b32259a11
change-id: 20260528-crossbar-2b9a641d2146

Best regards,
-- 
Bhargav


