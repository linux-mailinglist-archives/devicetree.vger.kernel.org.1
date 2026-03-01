Return-Path: <devicetree+bounces-269668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIzUMDDmo2lmRgUAu9opvQ
	(envelope-from <devicetree+bounces-269668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 08:09:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CB01CEB96
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 08:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE86630158A9
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 07:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53862322B8A;
	Sun,  1 Mar 2026 07:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KDufSnj4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2473112C1
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 07:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772348966; cv=none; b=N62kSMdPUjc6+QW6OM0jhm0wbuAY0v1tH7AYT06lHdG4c4kMumsMHL0pyHtkjJ+Uv0OKiyAzD+L+041zpgNxdtRvZjd3ERHvJh2q/yuzsG8mLHpzIcnb7zsB4EhsEyHKCl3pAMIslkY42k2ubjQpj8BouQ8a6x/uD8iYgGWqe3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772348966; c=relaxed/simple;
	bh=SZCvH9ptXwr+zYs40Unk0LF+ib/Prl67vt0WxGefX8o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MgGLzxT5TVQ2Zt4fRCsQgSaPHUCWAFiSZ7490WlrWHPrAtmU9D0sbwOundWpjmdrW+pjKWx50ftQGvMR4GL9PbL0An1Mlq7Ots5zEOBdUtSByUV+yzDLU0M3ILanJfwzPqCPG4nuxx7uyBgD411AhYyuDQCV5rG57rk0quU2TF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KDufSnj4; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3598661fe57so68468a91.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 23:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772348964; x=1772953764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ojBU3qsJs2ejfRqpiuBbWHbl1eur015MogxwzTgNK1o=;
        b=KDufSnj44GZdEwOhhijf2jnm2zElnizjQOIBYqtzaDjsnvYOkP0E4iXlJB0erPEyk2
         P1hGtaKb96vk2RrULs/UIVyQ37Aedh0Fdvvuqni2iYmrq0ufb7ILO/ykYRJ66ACm36VR
         k00CVaN25v0nD+cFUefWk/Iwxxka/N/lsGf8Tq00bAjELXnfwRQEsuglcyJWbJxzbyeR
         wBU3Q5JHr0y2F/OV8+uhihaZkNBaKExwBdTPFDqFmw8nV68DCCDimoD1KE7UOL8eMgBC
         ODU/V3A9oTG8FCQrHkf6+KB7xOw+afG2pvxswen/q6heO+Iu4bFyGARbdlz2FLkx+lyA
         C06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772348964; x=1772953764;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojBU3qsJs2ejfRqpiuBbWHbl1eur015MogxwzTgNK1o=;
        b=vHJi99gsvl7jwYWDD2tyiHYvJeIn42gcyHt8tJmD9/MBUraSTY1GIUxr6Ib1Inzi8U
         bO0uLcUwcuGJGxhbebDnwrUVZc5U/y/NFVIYCl5687XRMlyRkbDogcSwy9SannAjB5+q
         1TT40PBgZqggZ9C1lXGOEgFJhdE1EBNi/MrFUMPXspBJSm1ydA4rYU4ofXBWkv1+avxS
         3P7bpDVzsymnYN6zG2gcrMXGw3/Tpp7Vy8Q1Fh9zLg28jDtjIwcfUyDvBTpLQSxS/r0V
         9PXZ3+rkVmNUIvjzWdst1G2IRfT5zOrq1yyn1A7JTo0kbPJksyQHiWFCbstQ9H5MSepp
         LZ/w==
X-Forwarded-Encrypted: i=1; AJvYcCWI5S7wKDUNKPIkfg5dggS6ZXs1gPhRISDIM+ONfs2PFRRsZ4W3NE8ZwO2nDMhvJ0T9YC0yphkJldIi@vger.kernel.org
X-Gm-Message-State: AOJu0YzHqR4+lJDARzP3asm2nI6C4JKQL99tfdG7oXbJqAioylAS14VN
	HxR1dXcX2W/lkJfLJUxu3FV1wjRHQAET2nXNCGzIkogpotZH9i6m4e1L
X-Gm-Gg: ATEYQzwcU5lS9gE9065GT57noiYRtF0PD6//1VbbbFynPRVy5vbJXQwPKN2bt9IoiJ7
	9wIvK2RcDOo2JwWGAEPEusRmRV5INrrBA3AvYXvlax9nf7t6y93g0MMNzHNgqavLBhOWPHOep0w
	Bzw9SewXgzw3zPP9c4TzKLLYg6IBf5U4k73HNFFJkMrSjRTnBxEf6MFLavIXf9Q5j6dxABQYEWW
	OV6KwNC3Nspw65M0TVX/6Y5sbweYLQmGeSBhQHoQeIEybovxrj0gfurcHglrRG3V55qJraKPLbs
	fG0zBi5mtH4FIY0mUKSQLkHzadiINrmTqs0brCnB/fdGpQnE/hRUpBqXx/8T04v7KJtxKhWaemA
	qioUzmT47oC1vHG0nG+BU/vXdXyNr6tJ+grdJgrQ74FJ1jm1zWM6vvYAuwMnH8eqtM/sFz6ULJM
	gbxeYSDWYrQE17yyDe7ZY/ibbC5VWDE1nn9LtZx+qrL95m
X-Received: by 2002:a17:90b:3501:b0:34a:4434:cf87 with SMTP id 98e67ed59e1d1-35965c0beecmr6172846a91.1.1772348963574;
        Sat, 28 Feb 2026 23:09:23 -0800 (PST)
Received: from localhost.localdomain ([240e:400:9c28:18f2:532a:7136:9478:4b8a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359814e3eb4sm2473463a91.16.2026.02.28.23.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 23:09:23 -0800 (PST)
From: Xueyuan Chen <xueyuan.chen21@gmail.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Chen <peter.chen@cixtech.com>,
	Fugang Duan <fugang.duan@cixtech.com>
Cc: Gary Yang <gary.yang@cixtech.com>,
	CIX Linux Kernel Upstream Group <cix-kernel-upstream@cixtech.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Xueyuan Chen <xueyuan.chen21@gmail.com>
Subject: [PATCH v4 0/3] reset: cix: add support for cix sky1 resets
Date: Sun,  1 Mar 2026 15:09:07 +0800
Message-Id: <20260301070910.6169-1-xueyuan.chen21@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269668-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[cixtech.com,vger.kernel.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xueyuanchen21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 71CB01CEB96
X-Rspamd-Action: no action

This patch series adds support for the System Reset Controller (SRC)
found on the CIX Sky1 SoC. The SRC provides reset capabilities to various
peripherals across the S0 and S5 domains.

Changes in v4:
- Restored the 'syscon' architecture to properly describe the SRC as a 
  unified memory region, addressing DT review feedback from Conor Dooley on v3.
- Replaced the fragmented 'reg' items in the YAML bindings and DTS with 
  unified contiguous memory regions (e.g., 0x16000000 and 0x04160000).
- Refactored the driver to drop independent ioremap logic. It now cleanly 
  fetches the regmap via syscon_node_to_regmap to prevent resource conflicts.
- Xueyuan Chen took over the patchset for architectural refactoring.

Changes in v3:
- Passed dts build checks (dt_binding_check, CHECK_DTBS).
- Removed initial syscon attempt (reverted in v4 for the correct architecture).

Gary Yang (1):
  dt-bindings: reset: add sky1 reset controller

Xueyuan Chen (2):
  reset: cix: add support for cix sky1 resets
  arm64: dts: cix: add src syscon nodes for sky1 resets

 .../bindings/reset/cix,sky1-rst.yaml          |  51 +++
 arch/arm64/boot/dts/cix/sky1.dtsi             |  12 +
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-sky1.c                    | 372 ++++++++++++++++++
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 ++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++
 7 files changed, 649 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
 create mode 100644 drivers/reset/reset-sky1.c
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h

-- 
2.43.0


