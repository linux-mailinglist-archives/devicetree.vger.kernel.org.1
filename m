Return-Path: <devicetree+bounces-269300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ6wGNe1oWmMvgQAu9opvQ
	(envelope-from <devicetree+bounces-269300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:18:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE331B9950
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8051230D7A66
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71BD439000;
	Fri, 27 Feb 2026 15:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GaFNzx1h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8D0436373
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205283; cv=none; b=R4hLXCHa0zhEqq/9lr/YdIVa2JJNfsY5+N5jQhMr5yhLrKM+cWaOjihf2hCkD67hi5pWSesO9oPSw/1gO6z20QcNxPrxKI6ScJZaD0WkkUjmNAwDsjYp2DVZop++pFXmQdpD3CHU5477k1QEJ4ZqbQ03issCS+U6RScSzBMrl7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205283; c=relaxed/simple;
	bh=iRyauik2JPdZE8hCnTRlr5wrpsbJ9MVPo+6bt9/sig0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VFQx8uA2A5EGfGDh1CICg1omtd6g24YmVGxrrR9PinkonoA0Lh/NMKIpsgaVVCeZUYEQiIJL43JlFFAqXiTuySAlbosHx1hppbEKDsTN/CBsyc5enJDGhi0LZbiLks4X2cqVeNbdP93JEtJ+Zp4FlY8e6c/htdlDjcQBQMpBmsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GaFNzx1h; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3591cc98871so930772a91.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772205282; x=1772810082; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=466ZNlGBRiWCngVU9gts5XHrclzbPJSe7d3Wzr8dFzU=;
        b=GaFNzx1hVi2zpTloT6YOUzsh1I65OJ+6X7qpCJnZVA6xeeBRxYqtoAO9kgYihfy5N3
         x0DL2q/S/3LAWPTz0HC7g8sGR+l/7aLnbTfOq+tY7ilq+MJ6ZSESstl3Pzrfshhc9hsK
         1tU+dXVIhZhXB1vW3B5jk+WbWkayw9tC3CG7HOI5oXSL+HSTaArQ8y+dTYRefXNk4Qjx
         b/eBJapzXdnstgJlpDFKsjhecVmpAHUGOKrEJGUQ/AzSqlj+UBTGb94eFVt7lAZs1UJH
         W9ZNPcNoOifPdpvWA2cn/erqVo1xiA1/SdLkBHzQtX4HH6NWpT9oUWSRkvMyC8Tf1vTM
         bkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772205282; x=1772810082;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=466ZNlGBRiWCngVU9gts5XHrclzbPJSe7d3Wzr8dFzU=;
        b=WXLNodQwy3qwKLo+QMVPTYCO5xI4zKYiUlu/T6efJEKBrwh1r4JIKOqDFlet9xrlxc
         taRbStnQSgS41J6dh8PncXR5vsEj8I8jDgsQRmNydKbru4oTn7iXWB/wPKkfRmEkXpxL
         dK91ts60NS4z6t8BQorKkdl2iSHzWCbbsz0eNyhfzA/+otH3dYzKxEW8xlxGABfnT9of
         /3VYukNuTy6GwiSNJjs7N+JkL+Esu6i7bYczgzBKHPCiRg/mb7q6rOvz+RdHt0VtvObZ
         OavagKpKaI08Pf1uggUBWhe6H7VxPFJkvIxwh4Tbq2lZ4FhjPrKtrHW2pejbbMSXz+nv
         fTjw==
X-Gm-Message-State: AOJu0Ywg0q8Zk7YUm7kAVL4kD27vK9+0D5QcBwfKDrzNwY6GAoauATLN
	rlVMHHXK1iA8tFpcoWc3b3vrOGP4rNc8G3yoyuUj60ZCRK77uUj7gLFH
X-Gm-Gg: ATEYQzxF0LCG+dVdVYYqLm/J+mPvxmz5/AJ64tkLkXQg45GENfKaiifK+BD+x8q4fqo
	ZPGfPSUbf2T+o53QpgR/sr2KjICtYQuxn6OwO0LxSJSFYIJ15SpKh/huBfDk6vdLTMjIhTFeCSQ
	QRz/eWOGtdCXhR8ytT4vzf1+yEXwz/xKLHzXltL7/k4k9Y5Y/Xdzks6cJp3j3kdPnk5cF/8jV6y
	1JNYMyqehKMYrwmKhow/At3SuuT0snZpo1HRKZROkERD2Idj/SIND0i7Baq8Urwfuf4yFOYOuum
	OrjaVjtst9JgCNlgnFkRCHi/1UxlBSQ94+hmJQA4zy1ptle9xWafKwN/8xSYLDQUOulLuPgYvGd
	JCJg0IRZCqM7x9PMW3NkZ1OPHpYxHn+1v14MJefnMJvxJydf2Odrufilh53cvzKSepC1W3CzmPb
	+MY8fMC2hjlsZgHcnmwZjMta16GCCIzrbutGV+7H9+4WgllOV2
X-Received: by 2002:a17:90b:4e8d:b0:359:1063:6af2 with SMTP id 98e67ed59e1d1-35965cad8c3mr2626322a91.20.1772205281414;
        Fri, 27 Feb 2026 07:14:41 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.69.160])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3593dcc9c37sm5485848a91.8.2026.02.27.07.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:14:40 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Subject: [PATCH v4 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
Date: Fri, 27 Feb 2026 15:14:30 +0000
Message-Id: <20260227-arm-microchip-v4-0-7e2ae1c5b5d6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANa0oWkC/13Myw6CMBCF4VcxXVszHe6ufA/jokxHmEQoKYZoC
 O9uwQ1heU7y/bMaOQiP6nqaVeBJRvF9HOn5pKi1fcNaXNwKAXMwWGobOt0JBU+tDJqAIDMZYMq
 5imYI/JTP1rs/4m5lfPvw3fKTWd9/CU1xKE1Gg7acuQoKNsDJremsvC7kO7WWJtxpTI8aoy5rd
 pYckqP6qJO9zo86iRpqZ01ma1ch7vWyLD8ZoIJcJgEAAA==
X-Change-ID: 20260128-arm-microchip-c0c0515024e6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Akhila YS <akhilayalmati@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
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
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269300-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BAE331B9950
X-Rspamd-Action: no action

Convert various legacy .txt bindings for Microchip (formerly Atmel) AT91/SAMA
family system peripherals to proper YAML schemas. This includes:

- CHIPID (SoC ID register block)
- PIT (Period Interval Timer, old style)
- PIT64B (64-bit Period Interval Timer, newer parts)
- ST (System Timer, including watchdog subnode)
- RAMC/SDRAMC/DDRAMC/UDDRC (SDRAM/DDR memory controller

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v4:
- atmel,at91rm9200-sdramc: remove "- items enum:" and replace it with "- enum:" for compatible property.
- Link to v3: https://lore.kernel.org/r/20260226-arm-microchip-v3-0-0bda15abd922@gmail.com

Changes in v3:
- Change email for maintainers.
- atmel,at91rm9200-st: redefine watchdog node as a pattern property.
- Remove corresponding binding node from txt document for every yaml patch. 
- Link to v2: https://lore.kernel.org/r/20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com

Changes in v2:
- Change email for maintainers.
- microchip,sam9x60-pit64b: modify compatible and clock-names in properties.  
- Link to v1: https://lore.kernel.org/r/20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com

---
Akhila YS (5):
      dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
      dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
      dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
      dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
      dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema

 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 66 +++++++++++++++++++++
 .../bindings/arm/atmel,at91rm9200-st.yaml          | 69 ++++++++++++++++++++++
 .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 +++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ---------------
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 +++++++++++++++++++++
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++
 6 files changed, 293 insertions(+), 48 deletions(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260128-arm-microchip-c0c0515024e6

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


