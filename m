Return-Path: <devicetree+bounces-268937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLxJGoqBoGn6kQQAu9opvQ
	(envelope-from <devicetree+bounces-268937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:23:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D03D1AC45B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6E91232BD779
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01D1426EDE;
	Thu, 26 Feb 2026 16:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gjw7u/Fk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B6D41C2E6
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772122423; cv=none; b=oYHVVdfK52k9NGYYTm/FYSaCIv+xHFiy1ByEZKo8oA4e/Ac1Q3Jt0h3Fk968QmIpmUj2az8RWmnV0vhtjwN7vrx5hVOZ7sEnTUpIDKyfa68SjjVJIb+q6jSeLZEICbfEv2gLiG/cmo3t0l6m/eSrifgIl/Ny51P2saENrATCk/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772122423; c=relaxed/simple;
	bh=HlZ9rkGNLGtmSItSrk1KXOw8qyjmntYxhu0MN+gNBls=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hJ/wz5qXZ6AitxfBZnCr3Op2tJ/BmwwjVBbMjYBd7fMHi6nAffpYrvTTHh6IqGs3t+1XVdE/wfGO917ovTnxJN5iYwYBISwy+6OCTvGzRSv4kEz9woMqNCJ0uW5tafa8A1fqUf0hh+53M//OV6AdQV26+PIgk+KQlC9xQvcL6qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gjw7u/Fk; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2ade574f05eso7158585ad.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772122422; x=1772727222; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gHrNVpcs/hEO06/Gn4MOS4dYkB1LY3OsaJK5+hgF/9c=;
        b=gjw7u/FkMv0saylRDN4C4gMZVO5ELVqtifln2zAkaoPPFrhiYb/QvH1LwS+osygwR9
         wuCIlpptRSAJ3+kSNzJWGMju9RiaWOUVDarHPntsnw/GK5chGv4rPKFIiaemDgBm5LPD
         f5iqdnFBX+VxoPeeg7Lrj4YVfguP3z91X88Q9RF5I41iC9HM4lV5md/e6iMzm5fcTkZu
         OfyhopLtMJm+AbwBbluQqmD8SctejWLHAuWkQ/3pkPT6wsJHpCHRnowT1a050qiT4qo4
         Hd38KvhlTo1OJ2Utv+uRq4JEtG7yP0bCuQgcNIHEs4G/hRY38j7BZGJazPDU/msrjEGY
         8COg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772122422; x=1772727222;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gHrNVpcs/hEO06/Gn4MOS4dYkB1LY3OsaJK5+hgF/9c=;
        b=mgt5AcET2RR02E0OLulYVbONWYDz20v9i2z3jHhZDSfalwFb3q6SOuGkmHZjceG2O0
         w33Z2c0mHwDl5y5yUgKstwPXN/fECX7d1g90KHKeLH8i1XW17zbzEebjh9pf/MqMS+QI
         kyTIKquagAEyfpp2FtILloPdhQqKZsnivPtIQQ2HTzBRHmTrddcbzDidtmlL8u+kZRX+
         LSx+dQDFeD7Q1VQcffHTLF6VHZQnWwov9RzQTk4B+IPYH3dVqo2cphS3CAho2CHbh6bX
         n5oiHDxJRoXFAS+uBeQPr6paGCXrLhXTulp5uQ3DjpEEzYxKGCEaWZQLX+xt4VQO277A
         oiFA==
X-Gm-Message-State: AOJu0YyGTwNEkiRYYYMVLA7Sqaz7gySgd8i+kSk4J2mZjY9xkpuFWIAB
	lO1oLfEJGS80f+leexwIpNAr4SqEZOu7grithyFFc5Xr/iqlyupvp9P6
X-Gm-Gg: ATEYQzwI0/ZfgRzDoOU+RpQ+2l0Necp0OerrbvYCWQ8RD/IUtO4sArHKnrgESNMM2Mb
	Aemjp+LADzYedZUNDqhUdAQJBcd1CPp1/0tNgn5Fr9vix9nTJSjN14V7W8A5CriaqjF7995O905
	uYX8sDzq1pGaceZub5zbaM/2F8yb/xYYFNMcPp6K3l23QiNeMJERsJPlFaNYoPWr+yruSMLqXtK
	zRWJgxL9jTPfqKVjp50lW/FFpxIqpDlGQzwNbFUzMhbLGQCVGXPdD20bQe5gowstY1B1N8z/cZu
	eOcJs1HmN+EEg5WE2pTcjGpbwxgDltdDe3VTRcWoQt/6oCQW/edM2m2auznso8ojjwtC3aAUmI5
	LWXm/Nicnl8vMsRIYyvdg+bXzD4sfW0UBgOu2Vp0ZJlckiqnVP3qa9/Y//NodmHZUKouBDnHOs8
	rID78mWH3YGQs4Go6iFNmCGwV8srEimxjgR4bxqMpJ9mZhM28k3efXmDbI
X-Received: by 2002:a17:902:e54d:b0:2ad:ad0f:bbc4 with SMTP id d9443c01a7336-2ae03487058mr35953045ad.31.1772122421968;
        Thu, 26 Feb 2026 08:13:41 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.183.54.8])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2adfb6a0432sm44384595ad.52.2026.02.26.08.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 08:13:41 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Subject: [PATCH v3 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
Date: Thu, 26 Feb 2026 16:13:32 +0000
Message-Id: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACxxoGkC/13Myw6CMBCF4VchXVvTDldd+R7GRZmOMIlQ0ppGQ
 3h3C24Iy3OS/5tFIM8UxDWbhafIgd2YRn7KBPZm7EiyTVuAgkppaKTxgxwYvcOeJ4kKValLBQV
 VIjWTpyd/Nu/+SLvn8Hb+u/FRr+9fAl0fpKilkoZKe1E1aUX5rRsMv87oBrFKEXY1FMcaUt20Z
 A1aQIvtvl6W5QehN0F66AAAAA==
X-Change-ID: 20260128-arm-microchip-c0c0515024e6
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268937-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0D03D1AC45B
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

 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 +++++++++++++++++++++
 .../bindings/arm/atmel,at91rm9200-st.yaml          | 69 ++++++++++++++++++++++
 .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 +++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ---------------
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 +++++++++++++++++++++
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++
 6 files changed, 294 insertions(+), 48 deletions(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260128-arm-microchip-c0c0515024e6

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


