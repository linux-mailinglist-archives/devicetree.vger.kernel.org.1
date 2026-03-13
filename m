Return-Path: <devicetree+bounces-275425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPiuKkE6tGl3jAAAu9opvQ
	(envelope-from <devicetree+bounces-275425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:24:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 428F1286F2F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:24:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC99A321345C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E013C4575;
	Fri, 13 Mar 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KRtEBIEq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDDE3C3C1D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418833; cv=none; b=VlJOMoBqiK+BkdbFDBbAjymaOA2UIxruHSywn7mqcaPV1B18Mk0cxJX6Zjkpbl78io5/PcY8UHjYzoEhy62XBS1dEw9uqS5tJzJLldbMPNSNRoCXREWODKqe+3qaa9p2WY7QfyqzV0mwVaYYQQXCJ0KlgjullaJes9vIKcUdpdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418833; c=relaxed/simple;
	bh=k4VqZ9j+t+GnkOhNITqT7e/LGKQWEezXmuYDUIu2N0s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iBGE95dWAlrz1VexJhqd/TceGpxhwBE8kzAmauRUOfv1rrnyRgRyRaqA18RcHf0tLOkIbbZnGg7PFXz8aouWS1YYLxvB1+l2vHyTYBiawdmoPNsedQJ2HcYzIC3I6OmpUlnm5vk7ijI4lPxAjUcjnNuiWtQcdaGhDy1CGOSAA00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KRtEBIEq; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48374014a77so23328985e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773418827; x=1774023627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Tsdn7+1vCyaUHmngCU3ZIyKBw6uVtjSNrsm1j3NeCc=;
        b=KRtEBIEqYBI6z38lSwACdRgRJ3/fgCX5yoM443osbwHQLUnlaMn8kbm8EyJxSR4Vrl
         KyHgDYp6Xa0HH6QlhhjawMhjxQooP+uALw2amL7cs915EDjtpY3nHk2NGKq33hHV1Scl
         0vOo90pctIkPGcC7f5r2z+/LiKR811DUZb9KV8A1UT5J5FKABLfPSbrpvF2FvUFE8p8W
         vefaIcbSkhbgjMmTN3aOrs1px6VSlm1uCqp+bbpWEMX/HllIszeVQahzwkSUG3c/JKMD
         z0hEsNwpoSr1TSm+fmB2k9O7SbTR9yic+gFhRZzi/Gl2/NJcuoNy+iE9UuVcdWQdstwy
         INhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773418827; x=1774023627;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Tsdn7+1vCyaUHmngCU3ZIyKBw6uVtjSNrsm1j3NeCc=;
        b=F+FJiuEaB1leK+x3NtKWTGGGaqJUWA6UuUkyufax9fXIwvbnblLJiVs1gfycN/gDAp
         fLnDNQJHs9jnyUhOnUrnWKWkXeFIiGN9MezuswPQEanknhCX2suSqG0o46qMN2MJ/cY1
         tyvtb0Yie7PA1tZkOMfzg31DOV5+FKqmLxzaX8rv+3Rq4cy37nV6ljwjxGH+IMLq/myj
         MNYKZNEX5euAw4zU3IdD1rsWw6uMzt9goeAih/ZSSwlwJHo6/OcOYigZdC9ADh3+8bg7
         aDEE8GJFp9LmmNFWTrqF4ieXjP7R0fqO5WK93HjKoLEdwxiaM2GUIEfOgeQjgmTga3wh
         0fiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsghPAmN2CnZsQ+W3o5n2ii+JLZwI4pcNlfUQ50sHeZ87o58AcMEOvcxUUZh82hx2/9tepDbxzmGHw@vger.kernel.org
X-Gm-Message-State: AOJu0YwEvVWFfsTSi5KEjUHYMIGfKxTf+0XPuNh2z22j6cluVwgUQ7rV
	USuGH7yrZkeI0ehdsynS/oVr4WYJpO1LAxNSWfcowED+LQGS3SVaoX9E
X-Gm-Gg: ATEYQzzUFb5yfF3rMBt2fwwLq3Z0UjeCqC7425XQsjuJ2TpGrlZ9I7npJKRuEbWgnJb
	/LmqHiZYu7scPCoOHMnB5hToIg0kpqT2SC3CQyPgHPl+B0Kynh2gw9NSA/9LfJw8e28+rEJAdmk
	FkBpvv1zZGYdfw5FS0gtbxiyJ9Bn8Axr+FHE3QH9/uRAy+dFzA7BftGgEe+idlADITBxZAMxvkv
	QmguWXWLrs3E7pet5GsITIYrDMxUE0GkqSU0hjvAuaoVfmJstxDOUalZns9exJHY8eBpgkLjUAC
	4X/lFgAP2EEXe0eyc+Fv1iyRnH/gQdg496Esm/mcaww4Lq1Q+49VDHua/7PbaIrxeXIdQDvh36O
	FGL3nmLF4zDkwoK21xRkwPF6SEvFVkFYAlEE0zasdAo/J4YLHp4uLpg3/vZBsdGYNQFkYxqBqgX
	vCPuo29UuEQAJ9ohCSaeVebB02a4LDajwuR0hrJvqA9XQ6f/LUNOBwEw0Oiqn9SRjVEZbHP77JL
	GA/DjwgPKVvgfpELBX8i3MUzLCtSIJc1XXCjH0=
X-Received: by 2002:a05:600d:4453:20b0:477:a54a:acba with SMTP id 5b1f17b1804b1-485567031a2mr49499595e9.17.1773418826939;
        Fri, 13 Mar 2026 09:20:26 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b65fd3dsm219944515e9.10.2026.03.13.09.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:20:26 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Frank Li <Frank.Li@nxp.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/2] Add support for Variscite DART-MX91 and Sonata board
Date: Fri, 13 Mar 2026 17:20:01 +0100
Message-ID: <cover.1773417666.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275425-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,pengutronix.de,gmail.com,kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid]
X-Rspamd-Queue-Id: 428F1286F2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series adds support for the Variscite DART-MX91 system on
module and the Sonata carrier board.

The series includes:
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v4->v5:
 - Rebased the series to for-next branch

v3->v4:
 - Fix space between BUCK4/BUCK5 aned parenthesis
 - Remove unused pinctrl groups

v2->v3:
 - Rebased the series to fix DTS apply issues.

v1->v2:
 - Ordering by hex and node name.

Stefano Radaelli (2):
  arm64: dts: freescale: Add support for Variscite DART-MX91
  arm64: dts: imx91-var-dart: Add support for Variscite Sonata board

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx91-var-dart-sonata.dts   | 471 ++++++++++++++++++
 .../boot/dts/freescale/imx91-var-dart.dtsi    | 468 +++++++++++++++++
 3 files changed, 940 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart.dtsi


base-commit: 04faa34bb5e68338cc2568da78f6535f685dd4a7
prerequisite-patch-id: f5c8d966fa1a6b246f7eb1c249e7d6c353b2d71f
-- 
2.47.3


