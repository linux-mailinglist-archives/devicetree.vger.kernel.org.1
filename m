Return-Path: <devicetree+bounces-262695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB9NH7hWg2mJlQMAu9opvQ
	(envelope-from <devicetree+bounces-262695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:24:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FBEE70AB
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 15:24:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBF443006157
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 14:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33F062BE643;
	Wed,  4 Feb 2026 14:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GSfr7hu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B0123D288
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 14:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770215005; cv=none; b=uiDcteN86vrIh8LGUSOYObRoKRbi0HPC67sOABoTAJZVLvxnho4HAgqdxhkb21tdITkpcTM4RrX8lAQ7oU15gTX12ELx8X/lxd6CMK/RaJmM9a4HH1CaRVpqBxPOmVE0oPp1Qb9iYsXZ1veQJ8Jn1Y2qYhLnANOkyD7rzKGqax0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770215005; c=relaxed/simple;
	bh=csoDZpmYyjeCMvKV7endx7NY3EpOJ+eAV8UdMpj9mwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CdUilDuKJSaM7hG8UxMqDXe/G36u5D5ccPquSNVpFDcKYmdcBJgai6DRC8rxTYQ73mi+MhPwPkWckHcWUHB+Lq/YTER7UiiyNQQy9GJrXGKHd+qDn8Zui76NMe37Dsr4SAHmGY9goyYKv6SBky23QWWQ3O8yr/PihopWt+STPQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GSfr7hu5; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b8e9f89a8e3so134868566b.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 06:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770215003; x=1770819803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lU7ESjXCTwJh2bpXkAkJ/rnLoQ5/T4bIZw6hjLMuYEc=;
        b=GSfr7hu5K8cb5wkgQbUGt8qhE0rRXbHnIlDjn4fq+tYzYTlCrAiUsKz9troy5nCgKl
         qDyfkIDk/ECeH7CUHNQaJhye+5zuetrYAGQuGD4k/Vhv16IE8rhFwhjSW8J1cniIiBQq
         +DYXCcAT9mcu7/nzb6Q+k8TsncAWq75smIBR1N+/yg3mhOPh5/ZtuqgvjjYB95rsyHES
         hRaPMWyUT+LBOOMTAXZhluKSiIDVMsbPfXh6O68Oh8ma6kddoTORynQd4SqXJpWO+WmW
         yyGLErK/S8Ee0Zw3B53EJdCGVy4V40HEfokDgMG80JC8Z1TkUwhnnMWQN1Lp01FCHBDp
         Zukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770215003; x=1770819803;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lU7ESjXCTwJh2bpXkAkJ/rnLoQ5/T4bIZw6hjLMuYEc=;
        b=JcsuqR80yDgYP610/s0QRckAgmLjnk3uqKfYx3gD/uJCGpoMHBuSRrSesOtfCL4M01
         9z7243JhwZyolYocD0y0OWIsj1/HXpST5/AS/0KSabkKf/S1C7BVAe1E3ZJOOETULjJ1
         p+NcwM1Jh6HFQe96UUm2TsAko16jv1Cdg+f8PgGaUtFtZtdI7KKaLLYSmk23cTMndybJ
         yYCETj0xacrtMXbfkpPZOj6cnZoSMUw+avt4B0/SWS1yQULpDqr5BOJnCCufwur/v4Vn
         9HYOaOeDqRqAzPz3HEXq4M2aslz1uDSig9t+iuvYjjU6EIxtqvni7pxFwIgKW7Ktwb+t
         0asA==
X-Forwarded-Encrypted: i=1; AJvYcCWsD1GX5w4L6uXvMKwJAbrIr8u07sJB9CURliV2+NOivAl7/t34WKOMwOcreyXYvjbEIT2MA0WFU74s@vger.kernel.org
X-Gm-Message-State: AOJu0YzUdcL66At+v8ktUm7XnB5cy/nBTu/irDROlv8pj3FXdYyQAHm7
	4ifUzi6mQDZDpNF2I3BQoVKKaSt4zOrr9DQUmwUOGpv5rrDTveY6Cuih
X-Gm-Gg: AZuq6aJYI1Iq4QdzqyqKrMrbVQIUH2/hJyxwd6PdFtw0FRrl36bSAXmVndzegTtxNwy
	FvyH0OBOIDh9KVxcMVRy50h3sVALmjM0nLmV0qxaMWui0qRg+E8n3BUglet4b9SaRwOUNljDvL9
	iEKnq0ZZdQ54z3Rhwn/O0VXw3j0XsLMuEcECCbr0rKY1RXj5L/ml9ngK6bJR8y62PvYdbtnXPr/
	4aQL5Z0ls4ys0crLsxYMLgsMViT3OnTs1erwh+bDq4bl1GSCdo29Q7zCYd8nON2G51gwkWGP6ps
	6WNgigGgkt4pe7reKfSCx93tLzzImdaysKzs9pJ1Sb3jxNmcyiKLsKX/Q3rBfPDgMbtaR1IvkRH
	QT60yZ/GxCKn7GI3Kc94P8j7ZppuuE8izveq7gI6sn4hEluD2nLMB0jPvoiII715Z4+K1kktJSj
	ixLiJ9P7pYlnGtRxNwSVEzXUrQQQXx12pl27E=
X-Received: by 2002:a17:907:3fa4:b0:b87:2780:1b36 with SMTP id a640c23a62f3a-b8e9ef30624mr255363466b.13.1770215002965;
        Wed, 04 Feb 2026 06:23:22 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:3c9f:a100:4d45:ebc7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ea001ea7dsm129038366b.47.2026.02.04.06.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 06:23:22 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 0/8] Add RZ/G3L IRQC support
Date: Wed,  4 Feb 2026 14:23:08 +0000
Message-ID: <20260204142320.103184-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262695-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B6FBEE70AB
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

The IRQC block on RZ/G3L SoC is almost identical to one found on the
RZ/G3S SoC with the difference like it support more External IRQs, GPT
Error Interrupts and also has additional registers for GPT/MTU IRQ
selection, shared IRQ selection between external IRQ and TINT.

It has 16 external interrupts of which 8 interrupts are shared with
TINT[24:31] and are mutually exclusive. The external IRQ/TINT IRQ
selection is based on a register in the ICU block.

Biju Das (8):
  dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3L
    SoC
  irqchip/renesas-rzg2l: Make fwspec variable as pointer in struct
    rzg2l_irqc_priv
  irqchip/renesas-rzg2l: Drop IRQC_NUM_IRQ macro
  irqchip/renesas-rzg2l: Drop IRQC_TINT_START macro
  irqchip/renesas-rzg2l: Drop IRQC_IRQ_COUNT macro
  irqchip/renesas-rzg2l: Add RZ/G3L support
  irqchip/renesas-rzg2l: Add shared irq support
  arm64: dts: renesas: r9a08g046: Add ICU node

 .../renesas,rzg2l-irqc.yaml                   |  66 +++++-
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    |  91 ++++++++
 drivers/irqchip/irq-renesas-rzg2l.c           | 218 +++++++++++++++---
 3 files changed, 343 insertions(+), 32 deletions(-)

-- 
2.43.0


