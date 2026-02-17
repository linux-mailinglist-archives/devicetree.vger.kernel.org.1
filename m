Return-Path: <devicetree+bounces-266219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MivKFGklGmwGAIAu9opvQ
	(envelope-from <devicetree+bounces-266219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:24:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B5B14E927
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C457A302B207
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD69336E49C;
	Tue, 17 Feb 2026 17:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VFR3HJ1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A345D36C0BD
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 17:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349070; cv=none; b=sm6lzTKOyBVZayDDJ4wS73JW4mts/zDI3SDQicv72cVoKv34euM5CHZpAvVSJjAJHFxShU/obp2dfOXmSvSMXjbFg0fvz2GSs2sVsPt9/nwn+Mgh4WdWyjIYr1b951aXWrT30yDH5H5XYxd5OBwIx6gYLQt4/gruPyYWeFls6IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349070; c=relaxed/simple;
	bh=XcaGFT1isDNTFfiGQLEYjzZthPCV8JRLkjiswzHuawU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=vEwcUKDRgUUldq8NBVlvrFOfGSiOz9ZaHlMMFIVqGaZend6NjrD1zVe5+2XFPN/BbkJORedDgPBojJAvKVlDIMl147DPIvU5DbHglwAGmSY7ReAzxlqOLwI0eGvJR8lSBTU8f49vgWBcDoHrGqIqULqYv+Y+LChlvdUZDA9aBuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VFR3HJ1J; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2aae146b604so32529485ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771349069; x=1771953869; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lvvufgkhUDdE/Bqpji9LIc9wg44ul+E6WiDw+AU4u0U=;
        b=VFR3HJ1JzMMZ8l1FJWW8v0iVLHpXmEwyiUwh4sosdfUR0Y6XeNyHGNMZF6LSSKHUas
         WiJXtpWmMwDtSxa+Rhu+jE6zbKtsZPCSO0pZ7XkoMGS+k5ABMAx1YaF11AuoHJp44GKH
         +eE/aYqXePt4eqGKDtHL3goGzWnhCHdGljs2AlXprqfw0MEQhQ9FADzs5v2ixKjUNFDf
         gAQgG/qX7rTM+n/8d+Jck/2VUWc/GWJqp66frNd2RLNNBrz5XDWVY+6EfOWrYGv8u9Kr
         FYcfkUvoyOpkbdPCYITSSEPoL4k5I/3aVdDfjOD0mzRFcDQbn/Kk65PEyaD4VrrAMowf
         dasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771349069; x=1771953869;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvvufgkhUDdE/Bqpji9LIc9wg44ul+E6WiDw+AU4u0U=;
        b=fJKFVxFprseI9gxBf76IoAPov9yPyotA4x03NZu2v/D4CgfEv7lDVpGFJdCWeGff8F
         WyH+H7lKNlFPLfuPWtY7JlPUw4IalBiS6wBpnRrkpxeriNA5xl4eMsVoTyF4IdA6bFjP
         uFFhxAgatqQnxenKkSSPwVmia8UoZV1afZPCodcsBaF+6Anv5+YVBjbxPhkKh8f8Ck2T
         Zup4yXT/vreIk9oWJgi0P2XwqpznLVoJDEIURorqNavemAk9mji2xtwE5H6sunvvC9EJ
         qrrbIdBNdcIZEUzaa0kFlIeCK1YNyLBh+SU6UP5rJkPlusiUD/n2scnUq3nVXN/CpMH6
         Ry8g==
X-Gm-Message-State: AOJu0YxrmPpIaKH500bIuN05LHIinKsnuIHYsEYgyC9/U27d1cuU8VWe
	UoAjcISSPiOZI7oV8br2n/9gqgOGAWUq/bLB0wBeG1NuRRUSRj+lI39p
X-Gm-Gg: AZuq6aJDM23gVe3c8s/TfR2GJFbRBpVZhckUJcx5bMGEgBpQOHfFp5chw5Nasp3uSS3
	eL2oVhCv3pCXadbwesEbTXcL67rVRi5tW46mCgCAp7SMYEhwaKdnwcAMPsoubD3A3LGJ9nTDQ19
	moJ1SedQZ/cvZ2aoJD3woCiyrelbyYWnVvwXmZjcdiCkA/SrUllX03TcGIVCFwUE/acgJRrdniG
	P/bdOT245ywlkXWMh9ZvnQDLZln0nb3GhBENbK5DPfgfa/Ah9pL9DriIbldUk2zFMnfzaKXa+0F
	HE8+C5X/lKmd+ysF02CtZ9/mwPwGfY8rtPglZuPs8l3/2MXIaRIHQn2r9GkzCvnxVHrREnHkdZV
	qc5Q6e+1b6z41te+XCX50Xt4OKRwBC2espVE1cQ8rDPY9cIH5TRprFGHvYWYfS0Kjgm57Jkw1lT
	3vwp2V1hITEaJQQS9zvQ+a5tDGDyrOBQcEh0h8Nh+uWFniQbGM
X-Received: by 2002:a17:903:2f85:b0:2ab:333:22e8 with SMTP id d9443c01a7336-2ab4cfbc6b7mr142195775ad.24.1771349068951;
        Tue, 17 Feb 2026 09:24:28 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.109.65])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2ad1a7145cbsm146880305ad.30.2026.02.17.09.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 09:24:28 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Subject: [PATCH 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
Date: Tue, 17 Feb 2026 17:24:18 +0000
Message-Id: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEKklGkC/x3MMQqAMAxA0auUzBbSoiJeRRxKjDZDq6QggvTuF
 sc3/P9CYRUuMJsXlG8pcuYG1xmgGPLBVrZm8OhHdH6yQZNNQnpSlMsSEg5uQN/zCK25lHd5/t+
 y1voBLIErF18AAAA=
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266219-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 10B5B14E927
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
Akhila YS (5):
      dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
      dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
      dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
      dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
      dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema

 .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++++++
 .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++++++
 .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 +++++++++++++++
 .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ---------------
 .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 71 ++++++++++++++++++++++
 .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++
 6 files changed, 293 insertions(+), 48 deletions(-)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260128-arm-microchip-c0c0515024e6

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


