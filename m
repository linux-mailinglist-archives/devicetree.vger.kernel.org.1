Return-Path: <devicetree+bounces-263320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLZgG0vOhWn0GgQAu9opvQ
	(envelope-from <devicetree+bounces-263320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:19:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE183FD209
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:19:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E10743008775
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 11:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A41E6376486;
	Fri,  6 Feb 2026 11:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZbLbcFoM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5FC33AD90
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 11:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770376622; cv=none; b=rT//bpPQ1v9JuseDeNVuLSmj4gJQ5Lbrmx7YcBhAZyqSpKYkTU5rebC3wEvT5Vp08BmezSDlQ5JM758rGdnbwhShvo2BHZFelz9Z41go6llF6vjOK+hjrhFS1WpvGGBvg6gjeaaP1Q7pLyw8g8BmgE8JDZpqQXLGMWdHbObNv9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770376622; c=relaxed/simple;
	bh=wwjUFexXKh6EHD/le00Kq5Bi4tnOLorhECVgFddAaLg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=O2vuVRnYvwHJilUxluPBvyOf+1/zfG7Eq57MIGgd0w4Dhx3S4uo7oMKGd9czgyA+LIi8u9nLwFreGgbLnVXZd0uNKK7tvtPohESy7f4Ybqfg1FnyLoPIYAEzdO/ycQoDAHJSuCgP+InRa7K99tkoQGDbfmWqJ03SaY48m1CzeCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZbLbcFoM; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4362d4050c1so301799f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 03:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770376621; x=1770981421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=laSKJ3Aq6rws+tRhtF92C+SUMjCCorkjLSt0dPMjicQ=;
        b=ZbLbcFoMEhgJKP0B424rN+VLC9v+iy8gb4sRkPayRVZ/8C4BFSzlx3PYi4YUcciGno
         NTjqQ7x0nJauyQqtw38lzrsO2g/89Zt7eO4kfXg8eBLyGcz0yf+0iLA9aYMlCxHP+sam
         190DwcGD4xZVSP2AeSoApGtGa/+pbJQw0K71M6QlsCG9UlBLEGRMtw5qmwYap5vQsToO
         kVDuHL8Tg8CLjh13m2vEuqml3DWNTkaKAoRI08hodlmsy+SWczvAuNpmuaUSXBtKdNzb
         3q4UWgflDe8xuJLAFUVm3NRmOcpWRKoicmOQVjFDvnai+MhcLcIjDUwnBSL9m1pDcZ3C
         hlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770376621; x=1770981421;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=laSKJ3Aq6rws+tRhtF92C+SUMjCCorkjLSt0dPMjicQ=;
        b=Y3gkXHZwh6Chz/75j38kiGzgCmN9R1wPis/av4va3rbYctt6aPcjuQLnOHzPwVC0Qp
         8iJpVEVZewdcFkJdhO2zLo/n+gG8+znGdGe8ElvdFG3M4C7Y06IdVtIh05WRgLmh7mXg
         jm/hmJ4Xws/6+UJkD0mvAqVssPXsZVI/FWJ6/CM+5Nz9xHifUwel+BzE406KrHAAHSiU
         A1zzxjkDgffkv/GKtDYWZFvfVBfhsmO5LGc4W7NTv6TH05jWm/QjOYGjuTj0iKNvSXLi
         MjxTq+rfVi7ygIsYE1cV9LIJy1mFO7nqA5YgZRB+I7+GNpurxesBe1J5q4TRnG1NA9yd
         Dd4w==
X-Forwarded-Encrypted: i=1; AJvYcCVUzsZ7rrC1SPuqHjuW/4nUIPQgVIuuaER8z4q605L8EyUw4W/Qk4PoWifOhTHjlasGQHOwHduuAw0R@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgv01w8TCutM0iP6MwsWoncwCDGdaxnYcdEU7dnkNXOmtqAdCA
	aSkAaoE97XEMtVDaBqSKl9Z+H0f48SEXw02P6sBxzZQXumBaLM5jZ7v5G4yBq/GW
X-Gm-Gg: AZuq6aIs66JIx5V+n5bn1wQhnMN72C79zjFbI+pspXyO8N2uhv+4siNtJASoTTznTQE
	NwfAxZxbjoyiX5l8VCbLu/xayJNOgbyPz5IEVu1rdq32qX6j38poS4pY+/sYRiDsDX37IE4Ivva
	gIWpmznCh242XS6Cde+AxN/ygWDpM6kLMzzfvkEBpmk1gm7RpM5snC2n8R09GgUjUQns98Ybh1n
	MSxNprQQLBG16+pRNcGO7oXChJ3SrkC2V4gwLpOQKxUgnU5HwoZP7kpkbLyVtIrqRP+T3V8bbTZ
	Mr/cgBJq8jgSk3FVMMnIDxkINKdl766Utf8VOQJi6Y5YrHavMqiPrR4VrNlPEKPAw0pAM5w2QQq
	FUMUzuy+hU6WnF5Yt9pD0abcPaCIzQLxFqSTt9SaKSvGLQJldRrMLM7ixCYb/YdaXFWOMfyC/kf
	L52fD3EObMK8pfindZ1Q==
X-Received: by 2002:a05:6000:250d:b0:435:a370:2d77 with SMTP id ffacd0b85a97d-43629346e61mr3681008f8f.27.1770376620624;
        Fri, 06 Feb 2026 03:17:00 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:1e64:f8d5:9d7a:19d4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4362972fa4csm4746380f8f.26.2026.02.06.03.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 03:17:00 -0800 (PST)
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
Subject: [PATCH v3 0/9] Add RZ/G3L IRQC support
Date: Fri,  6 Feb 2026 11:16:43 +0000
Message-ID: <20260206111658.231934-1-biju.das.jz@bp.renesas.com>
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
	TAGGED_FROM(0.00)[bounces-263320-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BE183FD209
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

The IRQC block on RZ/G3L SoC is almost identical to one found on the
RZ/G3S SoC with the difference like it support more External IRQs, GPT
Error Interrupts and also has additional registers for GPT/MTU IRQ
selection, shared IRQ selection between external IRQ and TINT.

It has 16 external interrupts of which 8 interrupts are shared with
TINT[24:31] and are mutually exclusive. The external IRQ/TINT IRQ
selection is based on a register in the ICU block.

v2->v3:
 * Dropped items and instead used enum for single compatible values
 * Add minItems for interrupts and interrupt-names properties of 
   the RZ/{G2L,G2UL,Five,V2L} SoCs
 * Replaced maxItems->minItems for interrupts and interrupt-names
   properties of the RZ/G3L SoC.
v1->v2:
 * Simplified the binding by using pattern for intterrupt-names
 * Fixed the binding warnings reported by bot.

Biju Das (9):
  dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Use pattern for
    interrupt-names
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

 .../renesas,rzg2l-irqc.yaml                   | 157 +++++--------
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    |  91 ++++++++
 drivers/irqchip/irq-renesas-rzg2l.c           | 218 +++++++++++++++---
 3 files changed, 337 insertions(+), 129 deletions(-)

-- 
2.43.0


