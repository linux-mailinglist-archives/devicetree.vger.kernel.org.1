Return-Path: <devicetree+bounces-310268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WpGWHFN6KmrSqQMAu9opvQ
	(envelope-from <devicetree+bounces-310268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:05:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D77246702AA
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:05:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WdFdLZsi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310268-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310268-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D0B58301B4EB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F27376465;
	Thu, 11 Jun 2026 09:05:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05D03603D8
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:05:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781168721; cv=none; b=S+e3RG1bYWXW07Ak5J7Hc7iR747NIbTLfG7D/MsL2A4rSjmKt6tC2HLq4/R4hDhDErf7V20SIxDKgCUtzZML04YDbLkYwO9dAk7U2Km9apYZf53cNxeT+Z8wxUM+ccDQhEFrxzWjxAJJZAP7KLRdpkPWmMaeaTpS24Rlu2jxP58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781168721; c=relaxed/simple;
	bh=BWMEDVmRB9JbQvI3sny8iiY3wE+9xE1sfKpPw+QYZ2g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NXF4acEiuenSZ8rtQniycUA567PNd4LKON1zaXUdG0YfXHceLPBPhYH33WLdwqgsoCtvyw3pIMd9R5wIWZM8diP6iSqsCCNWbxEGrt37ahPt3Lj9F16eJX3ZxlwdCwq+VPsFmpoDKdAMR/IoXIEVYs50/QGLI9BdVC7vtNvJGFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WdFdLZsi; arc=none smtp.client-ip=209.85.210.179
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-84230ab8857so3496821b3a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 02:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781168719; x=1781773519; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1Mj84MHRpXBohUBJnwrZGqmrt19z2ndsx48TqvGHQGY=;
        b=WdFdLZsi1szbEfj1NPEHBCRj+5tHlZB8wcqj5Ln/yJC0dLaDJgKR2+hyikjWGIdOX1
         PkM+Rt6XrVMwjgP8SLlFPjLEaddqhVV4CKiVd81MjxS/+EaiVKdXaG1jKtT3fcHuZYrL
         xHAdPhdBJcHcROCXI2q1boHxhE8lITStl/mwCbSOcyiNZqL2vYkYxWaLgWREy8U5NfW0
         mJkWaTJcn3RQoXl6U7rAcFXtvDFG9OmRmMXBg218oOAjapjpKz1aLLVDLVuFIsG6rWN8
         TBnB+wR3eJRf0BtQ3FdSa+FEwfSTFiLQalnisF6nZqjTbY6C9VxprTSkuEp6pOzOuSqh
         dcsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781168719; x=1781773519;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Mj84MHRpXBohUBJnwrZGqmrt19z2ndsx48TqvGHQGY=;
        b=iYZo4cYplWQbNjxvWybb4+JlvU4FSPQpi8t7qiDLK6LzUBLdLlFKdQ9QvQLJTCa0id
         Obeq0+UijUpaWtmbq7DNEBnU2oflzdvrv/LWHASNnWIa/fdnphAd2UH8Z3Z8MZhNXECA
         Ur2K0Mp7BvPT2FsAZQHPtDILexIc3q1t+X03Fl3FRbGPultZYUkY/hTAvYbtPLejCSUZ
         jfwpwLRSNvcdjUTyQzFfcFM+RBJ9ttk17H3TfB6WGZO07fMbLHkphQ8fNG0pVDEsDgP9
         IuuaL5wwQr1/8Yx/DInQaUwVGBheNHJDkeyreO/Yzf/RhyJNiXapMaUUC9tPVNikuXeZ
         ddvA==
X-Gm-Message-State: AOJu0YwHPrjtr0Kw2RUacKkCzX8ZQ8Bc9KiUNEZVkydulLtSlyyaUzm7
	ePxXkImiYlVI/Assd1Vibp/VC7Us/f7BfHYq+R7AOfTUXQ5M2J7f8KAM
X-Gm-Gg: Acq92OGlT6JBe9MONmEPfIHTREb08ufPNqKqCvKdsx3pCejkOwzazURnZVCGUQbz/9m
	v0PLTWiABWCsvMeLG36UIs+saO10GOItCy1p4A+rUrYdhKygwsYq1bpYTUpgg9Q3o/xC5bENnTk
	5SWkcIh1Lhz5HNc5UdGBrw4YYHKqmmRGA+yTtOBNzXXnLH4aXiBB+e8nZzSQv2viWqsEECIm3bT
	97sbrlKq/AlAkoMy73N102zd0IyvjDC0rfOvqLNPtk1CZ+f9z4aF/EiqTH8qj5TwYtoZ9VvXCvJ
	3fEzC3IruG8Dey2fYnKP/acVGWwHpzJLmdwezz4ikE8DT6hB4bAYTkwdoj+nWmEJzqDdbThqkEz
	9QcAjt4AmZUDYAvG9OuJwY1qMpMNz2T9GtlrNt2ZqFqy6aM4WhqnK9ZVLPrSiKGUsJSaCKC1FMO
	Vjg3zhoFbdLI/F23xXHk9Y02ZtscbmDWC9ps+WVGHjzTrchS/w4N0MnMEAwAEMHbpY9PQRFbECb
	w==
X-Received: by 2002:a05:6a00:3923:b0:82c:24d5:63e6 with SMTP id d2e1a72fcca58-843367fac80mr2183974b3a.15.1781168719266;
        Thu, 11 Jun 2026 02:05:19 -0700 (PDT)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84337b8f8f5sm1456306b3a.5.2026.06.11.02.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 02:05:18 -0700 (PDT)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Subject: [PATCH v7 0/2] Add Meta(Facebook) ventura2 BMC(AST2600)
Date: Thu, 11 Jun 2026 17:06:52 +0800
Message-Id: <20260611-ventura2_initial_dts-v7-0-a61d8902bc5f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKx6KmoC/4XO22rDMAyA4Vcpvl6GfJKTXe09xih2LLeGNhlOZ
 jZK3n1uYDRkmF3+An3SjU2UIk3s5XBjiXKc4jiUME8H1p/tcKIm+tJMgNBcCNFkGubPZMUxDnG
 O9nL089R00DkpjPGImpXVj0Qhfq3s23vpc5zmMX2vVzK/T/8BM2+g4QGQI/amtfL1dLXx8tyPV
 3YHs9giqoKIggTeSWe1V2D+IPIXQeBcVhBZEOFd8BatdsrsEfVAVPUTVZAW0AGQVZKrPaIfCEJ
 bQXRBpCHSrg+6dbhHcINwqCC4Itq31HlDLmyRZVl+AFvMVCwRAgAA
X-Change-ID: 20251222-ventura2_initial_dts-909b3277d665
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Kyle Hsieh <kylehsieh1995@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3863;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=BWMEDVmRB9JbQvI3sny8iiY3wE+9xE1sfKpPw+QYZ2g=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBqKnqvh2zpBy6ioUsMjhQQ/gemnH1NixS0Vhlbn
 xtGQw885NaJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaip6rwAKCRClg0K3CVbE
 gX52B/47PPYv7zShvvHHybO0MT9Nhdz+03SiBForwG1BKHKqGZBOn0tuWkAWgq69eTU4u34zFLo
 xFrbWNBLo03BtOi1GjhQUK6Lpe6uhoNww8ppssf9N3PGXck0PtkjDl/kg9bdmZENALVhp6eCVSX
 XzQr9E5YKmJIOwvEbvIz3nDn8HThBj5DIQ3UsDa8i7h+DeQ8nkqPgPwBXS5Wc5kYZrkdwxjGv/y
 pCF504ZBITKVvNjUo6sRb+Cn9HBO4OviJibv4yAGYEAV4QW/71Fy34yFx571sa4AWsfQRIzp7Nr
 qqHA/ZB7l8u57JjWy0HiIgMOORgDpPvMyXy99cbHHhfV1aJV
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,gmail.com,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-310268-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:kylehsieh1995@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D77246702AA

Summary:
Add linux device tree entry related to Meta(Facebook) ventura2.
specific devices connected to BMC(AST2600) SoC.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
Changes in v7:
- Updated the commit message to include a detailed description of the Ventura2 platform's purpose and its key hardware features.
- Fix comments from Andrew Jeffery:
  * Ensured consistent blank lines to separate child nodes from parent properties and from each other throughout the DTS.
  * Sorted fan nodes in ascending order.
  * Replaced '//' comments with '/* */' block comments.
- Fix feedback from Sashiko AI:
  * Added 'idle-state = <6>;' to the PCA9548 mux on i2c4. 
- Link to v6: https://lore.kernel.org/r/20260610-ventura2_initial_dts-v6-0-375d8e9d7ebf@gmail.com

Changes in v6:
- Addressed automated feedback from Sashiko bot:
  * Clarified comments that io_expander0 and io_expander8 physically share the same interrupt line (Wired-OR) by hardware design.
  * Removed leading zeros from unit addresses in DAC nodes (dac@c, dac@e, dac@f).
  * Removed unused properties from the adc@48 node.
- Link to v5: https://lore.kernel.org/r/20260608-ventura2_initial_dts-v5-0-37ee5bcf58b6@gmail.com

Changes in v5:
- Addressed review comments:
  * Added comments explaining the necessity of 'legacy_' prefixes (hardware label collision), pre-allocated I2C aliases (future expansions), and the 'ledd1' naming convention (schematic alignment).
  * Removed the empty `&mdio0` node to comply with upstream networking subsystem guidelines.
  * Removed the redundant `&peci0` node.
  * Sorted `&kcs3` and `&lpc_ctrl` nodes in strict alphabetical order.
- Hardware/DT alignment updates:
  * Removed unpopulated sensors (adi,adt7461, infineon,tda38640, ti,ina230, ti,ina238) to accurately reflect the current board population.
  * Added the secondary flash node (flash@1 labeled "e810") under the &spi2 bus.
- Link to v4: https://lore.kernel.org/r/20260424-ventura2_initial_dts-v4-0-806b00ea4314@gmail.com

Changes in v4:
- Fixed capitalization: "ventura2" -> "Ventura2".
- Reordered I2C child nodes in ascending order of unit addresses.
- Enable PECI, LPC control, and KCS3 interfaces for host communication.
- Configure MCTP controller on I2C4 and enable MCTP support for specific mux channels.
- Add Infineon TDA38640 and TI INA230 power monitor nodes.
- GPIO and Pinmux cleanup for PVT:
    - Aligned gpio-line-names as requested.
    - Remove unused or non-existent GPIO line names to align with Ventura2 PVT.
    - Update specific GPIO pins to empty strings where signals were removed or consolidated.
- Adjust SGPIOM frequency to 200kHz and update signal line names.
- Enable UART3 and add serial2 alias.
- Link to v3: https://lore.kernel.org/r/20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com

Changes in v3:
- Add annotation for marvel 88e6393x
- Modify the gpio-line-name
- Modify the node order alphabetically
- Modify dt-bindings document for rmc instead of bmc
- Move the gpio-line-names to original node
- Link to v2: https://lore.kernel.org/r/20251224-ventura2_initial_dts-v2-0-f193ba5d4073@gmail.com

Changes in v2:
- Remove unused mdio
- Link to v1: https://lore.kernel.org/r/20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com

---
Kyle Hsieh (2):
      dt-bindings: arm: aspeed: add Meta ventura2 board
      ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     |    1 +
 arch/arm/boot/dts/aspeed/Makefile                  |    1 +
 .../dts/aspeed/aspeed-bmc-facebook-ventura2.dts    | 2897 ++++++++++++++++++++
 3 files changed, 2899 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251222-ventura2_initial_dts-909b3277d665

Best regards,
-- 
Kyle Hsieh <kylehsieh1995@gmail.com>


