Return-Path: <devicetree+bounces-274698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IxVMAjmsmktQwAAu9opvQ
	(envelope-from <devicetree+bounces-274698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:12:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 656D22754EB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC8F83055D79
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A1D3F0ABD;
	Thu, 12 Mar 2026 16:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XHmhClIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69ECE3F1655
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 16:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331473; cv=none; b=i5LRC2SNPmvpf7Ivn6tlk4Tp/yjYYULMoPdb6u1AOYQBi4fTTxqhTEjXUaFrqwnGD/ESW41mowcdkWOJbRu9V3iD5sW0Su2zy7xL4PL8Cw/y7LjLy4VOqHcp5arg5GpTBNjkhqrGgBtoUIIPqEgizYY4uDN08VgHxVtoFoys6Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331473; c=relaxed/simple;
	bh=/FpJ/+dfa/F2us/EyAIKrqnW3m2fgHQOTC6HPrFx3qM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L6NAqhEzCicSnqMFF6oT+coPQBgLPZ4uRBur9M8ZkRovlv551+DvrFtw32clUO3/83Tqw8lhKe+V7k6mTgEO1pPlp4P8IF8HGXugjQTBRwUe8dW5SAD9n07kuiHwx4nByPVDmmX0tqzrliLecp7llWOO8njlMVZ7YvBsLWTXlW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XHmhClIt; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-4327790c4e9so943324f8f.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773331470; x=1773936270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wxv8jN6w9lX3I24+o8BtoBV6RsdBNdfHaFJY2ryON0M=;
        b=XHmhClItr/Y5AmebzRAb9LRRyFZyeJYk4HlpIwmnh99T6LN/YlfuBvSxEHF9VDcDOU
         EA+346LhkAfJ0aITrw+YPlLvYxEh5C0MOxb1TPp2WVE5ZNwRVP963Rew62qedjU6JL9M
         4CNQsT0BHO3mABeWTNnn7VWEtC6/VuSR3Cf2+FrfDW9G1w+8PoInfIeRAMpGsjpMc4VF
         AbdjwRUxxGU31i/w7mvdQt4nEZfHOcwQSCkhckKtY98lFsydiACoTnvNxcWmC0OYcoNb
         so+To1Q1KLyWxGiSsWWT3kvsy52YwD5lUtqY7vRW3QuhG5OdYb3VUXxicyq99dov8YWm
         oyyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331470; x=1773936270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wxv8jN6w9lX3I24+o8BtoBV6RsdBNdfHaFJY2ryON0M=;
        b=bJGfbrJsd97q/r2zkdqEmaEwn/RHk6U/4XctilPQJX1ND8D9hCZwe3X9Uyf/Ablom4
         kKSzrTdWyfV7FQJpPGKv4Ki0BGHFlyNhTZPg7jJyYLuFMUJxh5i2FQ+0vFcPd2ex1z0L
         4Oi6/uDp6vzVfJb6gKsQmu+A9ON1o72960gpQiIoTv+6/oayLF5XCh4PcDG9/YeNA56T
         5Kg1IEGqY+k5x3ULeCSilPEIeteGSgObzIkJNJoHW5nYJ3I2vJ005L8GCBpNy+EjRHne
         B45f8hP6cBQQ8Ohz/xZ0fcHK844f0W8HmR6YDV9ZPY9TRy8+8s5CcLNWnz9exx77sVkr
         vQXg==
X-Forwarded-Encrypted: i=1; AJvYcCXlYVd/gM07q0HaStJKrqhcIX5SmruZ9zpuO5OISOoHvC54tgHBrc7bTEMnelC3ks2/7CaLl08SKPMO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4gutNhKmPerYV6QtF0oHM5P1Bv2k3fJz9yJuS6AjMAPvZvDsD
	tm6eYydyVimSPZ8fwO2JVK7iBFfC+SUV7rI1lXbC7n/3IQ5GkfxLByAV
X-Gm-Gg: ATEYQzxMy74K0uXaGpx/hxNf8ibe1ETomX2JmMmoYIUyzHTZiT7s81LnoN0g/hMIeZ1
	Dd6LOXfo9Tzw6g85M3hArKO987EjW+GIVbccQzmtjj0ElVOvxCdSeDpie1y46nwijRT2MmBMFzy
	BxEGdDmomRmi/KUCRuGqSXpn5/tI+vXiTiT78GL18lUNf2IvmAyv6ZAmWJXaW80UBYN2owuKeDY
	y3TRuJlAKRmVN7Ml6o88lZFvMVQV2z63N9bPMo32x9FAGQUVfDvg8FT1+n777UA8F0wpxgfmlFS
	SrkKasIBi5a5aaZTh/3FEFlLAP7du7qBLLgfu7fXOLViD4ACCFEbEgrFQzEouIB7akqdjdsmgHz
	3Wb5VHFaqFu0i+IrzlXKkGC6MZrL/RN2oPIW4NsCgACjXfeyUs+Q5jes/HGZsTrHjwhVAzydNxZ
	GLEpTUCIL2eJNgwPhhZjY7xK7i7gwFTSYaeh0Ggr2uwsna5r5epLkN3sWqtAAV0dSd1k/jCXG7j
	qSP/lYV44nfr9YA80ggvdm6pddaLJLpO7QKzmwm+rKQYXA=
X-Received: by 2002:a05:6000:200d:b0:439:ca57:cc85 with SMTP id ffacd0b85a97d-43a04dcb2a2mr318240f8f.39.1773331469618;
        Thu, 12 Mar 2026 09:04:29 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:fc52:7d64:32f4:e21e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20b899sm9775528f8f.23.2026.03.12.09.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 09:04:29 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] arm64: dts: renesas: rzn2h/rzt2h: Add PHY interrupt support
Date: Thu, 12 Mar 2026 16:04:05 +0000
Message-ID: <20260312160407.3387840-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274698-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 656D22754EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi all,

This patch series adds support for the PHY interrupts on the RZ/N2H and
RZ/T2H EVK boards. The PHYs are connected to the ICU via IRQ14 and IRQ15
lines on the RZ/N2H, and IRQ3 and IRQ13 lines on the RZ/T2H.

Cheers,
Prabhakar

Lad Prabhakar (2):
  arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Add PHY interrupt support
  arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Add PHY interrupt support

 arch/arm64/boot/dts/renesas/r9a09g077.dtsi     | 18 ++++++++++++++++++
 .../dts/renesas/r9a09g077m44-rzt2h-evk.dts     |  8 ++++++--
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi     | 18 ++++++++++++++++++
 .../dts/renesas/r9a09g087m44-rzn2h-evk.dts     |  9 +++++++--
 4 files changed, 49 insertions(+), 4 deletions(-)

-- 
2.53.0


