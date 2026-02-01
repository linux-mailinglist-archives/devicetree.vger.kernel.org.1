Return-Path: <devicetree+bounces-261566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QD6eC3o6f2kfmAIAu9opvQ
	(envelope-from <devicetree+bounces-261566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:35:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7913DC5C27
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 12:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E6663023364
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 11:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB79322C99;
	Sun,  1 Feb 2026 11:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DmtX5h64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886BC2EF64D
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 11:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769945696; cv=none; b=R+xPqg32OeAn6y8Q9mGO8CcPKTEp2jUG+SBIu8eleHeu8oFF3CYfk4vpB0OjeVuGzFVw8kmckCDnpDewNtE/3feUoWXtOgYJFXHMjMcF1YnQLrK/HCb77mwTnNdQisDkpPBRmeB2tPzrVPDCRHMa+xDR0Eu+4qFlNWshG5gSOe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769945696; c=relaxed/simple;
	bh=VoRGKGvGovvbjVXjmIRcw9Twd++Z4cD98WE2cri9hSw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g8DHvWO/BVIravEVY3w8LCy0jt6XKHfP/f7WecCqX89sYm3UOC4/G6Dg/y4lhhR9CDYNfWtUaTHx8qheCe0AveHpGL1Fz0+jMOMlygbqELCfNv2CkOUlwwBbEcoADC80vpC9uwSWo2aftOg6XNEAYxjl4QWJH0NJEJiguUtYWcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DmtX5h64; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-35338b3dd31so1634708a91.2
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 03:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769945695; x=1770550495; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oxX/gLAM7vPDixCI0FGPNHMkP2SivAHPQt+ss8O1P6A=;
        b=DmtX5h64qhoA5Qja+tts+aXh3TI4yNQFpT8n7+GmYFy3eFb6iqGrXgURenOPo1eMBd
         5rA0h3Dx5/fp31WtDgeZMRlqL+PxEC9TSp4QPOMwTWqOuo1NjFFP4St4rT218SvMbEKE
         HSYUDWKITTABYyOWryU5nKGiz1Iw/7/Hx5jkegVqOHpzoFcMiOvvMQoZgnsNCnB79x1I
         QNFGu7y955YFh82Ur9q6AowyPrkxAgg+95em5ZGnbfAJWvRmL8G9wTosytJhasYAVDCb
         4jziKOtO+/h4euB6WGFc3cCqeH3yZI67CoHPKz7OQq2UWkccEhj4o2uUHuwC8POtdszh
         dPGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769945695; x=1770550495;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxX/gLAM7vPDixCI0FGPNHMkP2SivAHPQt+ss8O1P6A=;
        b=UFqg+0/3JVaW74Pw4LlrAk9u+NaHa74IGvKPcZbBq+3hiZjhOxARCmIjw/O5SIvjlo
         vukQflCvs6kfUTeLs8HIGD+po57bHyq0wXzJpwwQy8Wc3svbu0UJvsFKQT+H52EHPgOq
         Y0tKi5pv8KMCkWEy7gNwAyMR1Ily/KJsq5yQ76Cl928faCxwG1pwa6ff8NauABNJHdZ2
         +GoMID9esttK5uEgecY6UDlL3KKJpmh/0kI409962ZGpGrVtdzzJHpTeDfLA5sNBn2LV
         g2hDJRS/NDWtpwfxW1ofjSd2mya3KtHngM09ecHno9KrZ1PFG9dXO9dLEa4knNn48LaN
         4CfA==
X-Forwarded-Encrypted: i=1; AJvYcCXdEDJ7PYY323A3l0f3N/hi9w1LBlci0WrSVWsAYjb3uxZP9wVA82Ell3XCTMzkfWR8hOYwnhDe7xWt@vger.kernel.org
X-Gm-Message-State: AOJu0YzOC5XVYQ9121BMNXv2PxMs4ZTNw3gOxV09lyLCD0WN0QlnV5h/
	ozYUGleoyffSi1kjJ3/F9QeppJEKkyVrKugGcuTImBG/mutQ+oO5vSEY
X-Gm-Gg: AZuq6aL8MzYTC2Ra6yvSPvp6lJQUlvAMAUKNAY5gPU/p8vJX3rv9024ePf2bgv3n18D
	088PfFhQ6ofs5tytQ3UxauGLZv2ryJEeuJR+JK86D3MBXKY8rC16+c8v/5uYbsv2r1JNRstiaKM
	ADJqp/i0loQhKee2dEOzFQ+74HAj70Moiv878mNLGbXHaa0zNEBZXz1iFDEm8uZpxmx5R42PdBh
	8qALwVlK89n8cGMBSkyO19HgkKV8KetwB35/ujt47k2NJQ8Jq8LVnTkt4faL80RTXp0nL8CHTMa
	6dV4uElpK0Eo0khJbpCXm4bWHzVoYibfjkxOXoiuYbQu/6PaYujqP2Ybz8hdJ9WO9XwWDerscOZ
	sAATCxTCHJEdsRoJYN/CSNuiii0ynMQzK4EvydkWtykNbK6saa88mi51xrGqKgGGPakyLRa0khd
	q5byMld14d2zv6Xy9gpx1j9ATQXRD+PPZUH8depALfkjuk
X-Received: by 2002:a17:90b:3dcb:b0:340:b912:536 with SMTP id 98e67ed59e1d1-3543b3ad361mr7794468a91.31.1769945694901;
        Sun, 01 Feb 2026 03:34:54 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.252.105])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-82379c24083sm12994728b3a.55.2026.02.01.03.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 03:34:54 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH 0/4] dt-bindings: usb: atmel: Convert Atmel USB controller
 bindings to YAML
Date: Sun, 01 Feb 2026 11:34:19 +0000
Message-Id: <20260201-atmel-usb-v1-0-d1a3e93003f1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADs6f2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyNL3cSS3NQc3dLiJF1j8zQLy0RDE8NUEwsloPqCotS0zAqwWdGxtbU
 ACmhXsVsAAAA=
X-Change-ID: 20260129-atmel-usb-37f89a141e48
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Herve Codina <herve.codina@bootlin.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261566-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7913DC5C27
X-Rspamd-Action: no action

This patch series converts the legacy text-based Device Tree bindings for
Atmel/Microchip USB controllers to DT schema (YAML) format.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Charan Pedumuru (4):
      dt-bindings: usb: atmel,at91rm9200-ohci: convert to DT schema
      dt-bindings: usb: atmel,at91sam9g45-ehci: convert to DT schema
      dt-bindings: usb: atmel,at91rm9200-udc: convert to DT schema
      dt-bindings: usb: atmel,at91sam9rl-udc: convert to DT schema

 .../bindings/usb/atmel,at91rm9200-ohci.yaml        |  85 ++++++++++++++
 .../bindings/usb/atmel,at91rm9200-udc.yaml         |  77 +++++++++++++
 .../bindings/usb/atmel,at91sam9g45-ehci.yaml       |  71 ++++++++++++
 .../bindings/usb/atmel,at91sam9rl-udc.yaml         |  81 +++++++++++++
 .../devicetree/bindings/usb/atmel-usb.txt          | 125 ---------------------
 5 files changed, 314 insertions(+), 125 deletions(-)
---
base-commit: 3f24e4edcd1b8981c6b448ea2680726dedd87279
change-id: 20260129-atmel-usb-37f89a141e48

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


