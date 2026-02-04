Return-Path: <devicetree+bounces-262780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL5VO22Ng2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:18:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17379EB8AF
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 95A463069F8F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 18:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32F6C428845;
	Wed,  4 Feb 2026 18:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GWHgpdWW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D257542317F
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 18:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770228397; cv=none; b=BMXLYaRlWUrK2Zccv5uyQOXqWSRqUEdpq7J4Moa4XLkX0O9PPeTFHkJO2qz14jXARgawng0Wo4PESZNjGIK7g+SykcQKRk7U0vpUv1BEAEuSX6QWV53PIUbkSzE7wH37pchZl13IVfQDOuKcgNXyxHY1xZpvylLDHwX75WPV4Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770228397; c=relaxed/simple;
	bh=JFBlGU4Xvp1F0FTzk80+WzdmniBWd4w8yA5cERclmuc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R4/kXuz0KyiX36IfhapozVfryN5u7+WwdlUWJmEO6sWY5gGm02h+slHKcXM+NaCKd1oHhx53Dbjv2fYoxEgI2M9pkUDv4Pr0eVSJRbLnTwMOSCEYF4U7fxPRt+fJNv1x+EhY4asLrl9zB+lKaA4ukUtcVP/14nxJIIFSRXB+H88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GWHgpdWW; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6581af9c94aso154255a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 10:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770228395; x=1770833195; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yh8VPX4Qi6iYs+jPcVaLzIK7A97eSnHakigPQRv+gxE=;
        b=GWHgpdWW0hhpjgJb6oxrermIK6EsU1/feV1TbzSXQaGwd2s2aKiP4uUp4qt1Wx84Ul
         zJ1fmPCQfsT9Zdz4PVSrcpEo79Qa3pbW7cUQzzwjq9WzTf+TdZ/SF+BBAcJyO0j3nFIj
         JATetc28mfsnPeIg0fv+phIALaGv+LPt52m3ElQ/ABp8KHyDcSGIepD5McF/qflaSyko
         +AEUE19szIA5vDIqqq+uoDw8EbafjP0c6evmIpvuaVlt2KEb0XzCHOp7xA3HWkLeYw53
         4+rb/A5z78WuoG2R/uArkazzHL7Jz4XMtjUom3GNNC3nr8dlB58YB7uHdSzwYFistFIM
         HMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770228395; x=1770833195;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yh8VPX4Qi6iYs+jPcVaLzIK7A97eSnHakigPQRv+gxE=;
        b=YEtf+0xOlnqy6rP+Dnb006l41+p0NLIWOCIcDJWUYOB0KN2JPStVrrGOo7CjS5XRGz
         I+ogSNGsbnnwBx10v/cnED4IGy/LW2so1nCRZZ8M9vgnPz4nDSJNgZOuPekKFeOpIjUv
         XIjjAqIqJ6eMbv17y1N0kDyPm2l6v/kKuWaxJRmM9BjlsmxkD0bZYHICz9eNggT4u2Dw
         2vb2jEdKLGwZEWG0FHoq4O2rWvHJpWy9NcH4qFRoqo8UK7wZvdF/eDe1ksR6P7pgwjuN
         kXgw/LZubwv6mQh3c2uNqXURdGjJrzSnet6J9g1cw7LSXepkq/zMFyGIjKdn64zT20ft
         QRNw==
X-Forwarded-Encrypted: i=1; AJvYcCXi7svCfRkBhfafY3yI0hdphayGUIoB9TnREJllWcpJsgjMgnhfP1nfv8A9qSyhZUTuVS0aJnjf5U3h@vger.kernel.org
X-Gm-Message-State: AOJu0Yxle5NNgcNc5mhuOggrOWcyoqGoS4nXST9qMt1YnMp80Y0INaGh
	7+aauAJ0QuQ0aC5uSLVhA5SDeKl4+Mlw/4AGRvkSJYfWbJT22bWlaRhp
X-Gm-Gg: AZuq6aIXoXJykjp7rF8HZ7uyLVSDS0mP21zJrjlA17kOmaEeVKlsOpCWj7ik5hcgbxF
	94odzeUXbrh8kQJdh9XGgC+wkZK8YKBLVGiAxRVMFYf9/SH9gG37v4aVTT924mTOuiMjVNsPXIn
	BarM1mJVq2Rkre9gkyNIgMFHwnWPeSJt0DW6ebw2/KCBtiEYSb06VlQhHIlPLXLGpraduFGI+HQ
	C+Oj1Qccm3feT111F04FMtLTy5qN+SCQ0BgMogwOrhPGMns+b4oLuU26tjCbCyn5MpbGnXkN9s/
	pzXBwzbTx2tixXT9dSaZHxkjwjY07DT/HwmGnNdaDW34vdzElGnYRc2QC2/H/wQIyG133i+hb4j
	b5qEUReOubd2Tp9ZjBgY+/ufThSPZiyKJr253lycbdZfsx8MUgryupDkxUIi1ZM3L+rwA5GB49f
	CgI3R+7keAvfRsQ4yYjpmXZI4UBHYQQ6NdzrQ=
X-Received: by 2002:a17:907:26c9:b0:b87:892:f43b with SMTP id a640c23a62f3a-b8e9f196585mr261606666b.42.1770228394883;
        Wed, 04 Feb 2026 10:06:34 -0800 (PST)
Received: from localhost.localdomain ([2a00:23c4:a758:8a01:3c9f:a100:4d45:ebc7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ea0057dd1sm149677666b.65.2026.02.04.10.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 10:06:34 -0800 (PST)
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
Subject: [PATCH v2 0/9] Add RZ/G3L IRQC support
Date: Wed,  4 Feb 2026 18:06:16 +0000
Message-ID: <20260204180632.249139-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262780-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 17379EB8AF
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

The IRQC block on RZ/G3L SoC is almost identical to one found on the
RZ/G3S SoC with the difference like it support more External IRQs, GPT
Error Interrupts and also has additional registers for GPT/MTU IRQ
selection, shared IRQ selection between external IRQ and TINT.

It has 16 external interrupts of which 8 interrupts are shared with
TINT[24:31] and are mutually exclusive. The external IRQ/TINT IRQ
selection is based on a register in the ICU block.

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

 .../renesas,rzg2l-irqc.yaml                   | 156 +++++--------
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    |  91 ++++++++
 drivers/irqchip/irq-renesas-rzg2l.c           | 218 +++++++++++++++---
 3 files changed, 336 insertions(+), 129 deletions(-)

-- 
2.43.0


