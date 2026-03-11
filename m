Return-Path: <devicetree+bounces-274320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBd4H9HBsWmdFAAAu9opvQ
	(envelope-from <devicetree+bounces-274320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:26:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF2B26946D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46BEC30B84BF
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7F1344DB5;
	Wed, 11 Mar 2026 19:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rp3lu70T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7D5322B96
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773257105; cv=none; b=kpblUdYh+l6AW85kA/xXaKJEk3Xqe/L9pQRO7M7c4cZiKzoRC5VXuPdxudON0MFeVLoEoaHIPYbWz8il4Syi/ri6LF4uAgRy/h7Rig/RlHleG0E+Gqhk5378xyYw2k8DlQu4dDN/XJqVCWzeLJDb8ddrrahHA8H6GulYR0Dy6GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773257105; c=relaxed/simple;
	bh=b9HmeHxgMcPC/SBp2sYfh6ohwI+6SBfFck2XmbwxSz8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z33E/P7t2vYko6jx9O1V1vifn1ZRu3UnrPQp0Dl8pDWF2XJJcHNfLlhHahWfsNmXJ3L8Xi1j0stD/o95ZG9cs242hcvaTLohIbA4HvTWt7V4S070lVX8IKnQmWwd0PiWoVDpqtSUgpp8YQ+HUnxGpdxzVeimdAb5MaoeQlje/pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rp3lu70T; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b2965d4bso165746f8f.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773257102; x=1773861902; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WpsrhRFcwlEjerz39TM+P1YoBuq1w2QcXlm9lDtvWEk=;
        b=Rp3lu70TscULB6XBbQII5D3kyX8vCzFnciWJIcBp/tyM220sWX7NkQAf89Un+L3QP5
         q/VNessWdSafpqGmpfP7AcynNfTLYvJtvyY9HwPMbNfnlaskNt6smrk5kJBdOAJVXurE
         Uzh+h8Z/1/FL1CmuYnXxTWdq8DmgVsO3K28Xg+0RWJSFH7/gdhC+hFI4UzXaCtw9Vrx8
         pDqvVseWeOIqQnHASnJX9BvxrGbciliMsJlxsLsuETebFK6bsIg+2y3JGOW/maESBbWo
         5HpVD7BKBSYDeMHg3PBRJ+lKkxLbEX6RHNSfnwOx++867r52KBdDAKnWEie/nYJJ90Vy
         Wx7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773257102; x=1773861902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WpsrhRFcwlEjerz39TM+P1YoBuq1w2QcXlm9lDtvWEk=;
        b=mcGOAEP6M+2/joUOg9Sm1lqJtvuFrRmXYnPN3Q1oLPoBYEZgYjC3aZj1gIJh7mPQKF
         MXO2HdJvYyxswcIkOmvPbizcuMEMKiXm/qzALvdhPTHh8Acic88/b5yOCrr0/cHCSQTk
         ARIgu1JN8SQVIQ3kIktu+pY96ednTubOBF0Lfh4SEtQEFCZclhTwM855RKAPvx1xpz/8
         iBaFCZAYAyqP8K8ZZhD17ZIu+GJPSKeMu7pdsimMCLzjsyuNTQWyeN2ugQROUss4o06O
         OVZhJ6ysMMRINb1oi5KhyN6asbC1q6tHyev7n1viDUOWYLDWV2PwoFILQJA4IX6Zm61j
         6oPg==
X-Forwarded-Encrypted: i=1; AJvYcCUUImqNQnqyvSsSlPgPLiudQHhzyDm/xUF5BFSVnF620JSfjxz3twSJbHWDi4vGUbwmZye2KMAqDQgi@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9wMhQzh9SULp/mG0RQXVqagcTAzG/U8GZJOXkAFEVbZ6T+tIX
	w9zcomwjnG+0FHlSlynAQxR3o15oFyw5DvVNH+DvNkWDtpFatGLE+rlP
X-Gm-Gg: ATEYQzwxm0A4NQDhqUD+qgY3+QNT0uHZDkWP5vwtJxOSU+J04NBlVLq/Hd2pnyEufW7
	qW6MLzR7qKa3HdkUASO2SYLtbtOCxiEnzrkIUIYyb7pkGiOzAXBz//71myUJWK1a7sIdAD5DsG6
	fyioxks9iQaApq4P9YCAzOoqjxT+pSDsX8MfUU+qkTDb6c6gO7+85LzpKtHBvtEXtrPq6qeKUqG
	+BquNmi/SqfBJT7U4Mv7whHvA/fOUC2tGYFFBYBbUbkvA8PeQu7ZC9P3gZoOjSCKqc+ypJcmg9B
	v+FGb6C4kGHRm273Aul2O920cbOLKgjhD2Avgnm/piDo3hxldajeaFEqD5wg0nBQeMObZxvdSKy
	7uwvtTSkOCUxQHoTgj/1I/LQTynJmwNL4kdLZctkibin55+ivHiXyDY4waAHP8ss+em2WFEfBBz
	AMNWxCWT4Z8UaaYeiNez6ka5Waxnz63wHRr13elHhwoii8fGHz
X-Received: by 2002:a05:6000:2303:b0:439:ae3a:cf52 with SMTP id ffacd0b85a97d-439f81c748dmr6987944f8f.22.1773257102190;
        Wed, 11 Mar 2026 12:25:02 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:38b7:8ca3:cb55:d344])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20bd9csm1323210f8f.21.2026.03.11.12.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 12:25:01 -0700 (PDT)
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
Subject: [PATCH v5 00/15] Add RZ/G3L IRQC support
Date: Wed, 11 Mar 2026 19:24:31 +0000
Message-ID: <20260311192459.609064-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274320-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 1CF2B26946D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

The IRQC block on RZ/G3L SoC is almost identical to one found on the
RZ/G3S SoC with the difference like it support more external interrupts,
GPT error Interrupts and also has additional registers for GPT/MTU
interrupt selection, shared interrupt selection between external interrupt
and TINT.

It has 16 external interrupts of which 8 interrupts are shared with
TINT[24:31] and are mutually exclusive. The external IRQ/TINT interrupt
selection is based on a register in the ICU block.

Ref:
  v4: https://lore.kernel.org/all/20260227140316.308106-1-biju.das.jz@bp.renesas.com/
  v3: https://lore.kernel.org/all/20260206111658.231934-1-biju.das.jz@bp.renesas.com/
  v2: https://lore.kernel.org/all/20260204180632.249139-1-biju.das.jz@bp.renesas.com/
  v1: https://lore.kernel.org/all/20260204142320.103184-1-biju.das.jz@bp.renesas.com/
v4->v5:
 * Added support for separate interrupt chips so that the decision is made
   at setup time and not at every interrupt delivery in the hotpath.
 * Dropped the hw_irq range check involving info.{num_irq,tint_start,
   irq_count}
 * Updated rzg3l_irqc_probe() for supporting separate interrupt chips.
 * Added callback irq_{request,release}_resources() to both irq and tint
   interrupt chips.
 * Dropped SoC dtsi patch from this series, will post later.
v3->v4:
 * Collected tag from Rob for binding patch#1
 * Updated commit description for binding patch#{1,2}.
 * Updated commit header for patch#3
 * Replaced IRQs->interrupts in commit description
 * Fixed the typo Dynamicaly->Dynamically
 * Updated commit description IRQs->interrupts in patch#4
 * Replaced the variable type for num_irq in struct rzg2l_hw_info from
   u8->unsigned int
 * Replaced the pointer variable info from irqc_priv and instead embed a
   struct hwinfo into irqc_priv and copy the data into it at probe time.
 * Replaced the check 'hwirq > (priv->info->num_irq - 1)' with
   hwirq >= priv->info.num_irq
 * Updated commit description 'this differences->this difference' in
   patch#5.
 * Updated tint_start variable type from u8-> unsigned int.
 * Updated commit description IRQs->interrupts in patch#6.
 * Updated variable type of irq_count from u8->unsigned int.
 * Updated commit description IRQs->interrupts in patch#7.
 * Updated rzg2l_disable_tint_and_set_tint_source() for making
   tint assignment very clear in the code.
 * Formatted rzg3l_tssel_lut as table format.
 * Updated commit header irq->interrupt in patch#8.
 * Updated commit description IRQs->interrupts.
 * Updated shared_irq_cnt variable type from u8->unsigned int.
v2->v3:
 * Dropped items and instead used enum for single compatible values
 * Add minItems for interrupts and interrupt-names properties of 
   the RZ/{G2L,G2UL,Five,V2L} SoCs
 * Replaced maxItems->minItems for interrupts and interrupt-names
   properties of the RZ/G3L SoC.
v1->v2:
 * Simplified the binding by using pattern for intterrupt-names
 * Fixed the binding warnings reported by bot.

Biju Das (15):
  dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Use pattern for
    interrupt-names
  dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3L
    SoC
  irqchip/renesas-rzg2l: Drop redundant IRQC_TINT_START check in
    rzg2l_irqc_alloc()
  irqchip/renesas-rzg2l: Replace single irq_chip with per-region
    irq_chip instances
  irqchip/renesas-rzg2l: Split EOI handler into separate IRQ and TINT
    functions
  irqchip/renesas-rzg2l: Split set_type handler into separate IRQ and
    TINT functions
  irqchip/renesas-rzg2l: Replace rzg2l_irqc_irq_{enable,disable} with
    TINT-specific handlers
  irqchip/renesas-rzg2l: Split rzfive_tint_irq_endisable() into separate
    IRQ and TINT helpers
  irqchip/renesas-rzg2l: Split rzfive_irqc_{mask,unmask} into separate
    IRQ and TINT handlers
  irqchip/renesas-rzg2l: Dynamically allocate fwspec array
  irqchip/renesas-rzg2l: Drop IRQC_NUM_IRQ macro
  irqchip/renesas-rzg2l: Drop IRQC_TINT_START macro
  irqchip/renesas-rzg2l: Drop IRQC_IRQ_COUNT macro
  irqchip/renesas-rzg2l: Add RZ/G3L support
  irqchip/renesas-rzg2l: Add shared interrupt support

 .../renesas,rzg2l-irqc.yaml                   | 157 +++---
 drivers/irqchip/irq-renesas-rzg2l.c           | 447 ++++++++++++++----
 2 files changed, 402 insertions(+), 202 deletions(-)

-- 
2.43.0


