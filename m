Return-Path: <devicetree+bounces-288534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH81IIHG5WlIoAEAu9opvQ
	(envelope-from <devicetree+bounces-288534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:24:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D145F427306
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 08:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 746BB305DF0D
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 06:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E770381AF1;
	Mon, 20 Apr 2026 06:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=student.uibk.ac.at header.i=@student.uibk.ac.at header.b="cYvsKqJK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.uibk.ac.at (smtp.uibk.ac.at [138.232.1.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7545837FF43;
	Mon, 20 Apr 2026 06:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=138.232.1.140
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776665976; cv=none; b=JV4bBdumjNb/0A/8kCHR/skctM1oRg6gLybCMMocFYLiQplNysFv2LSOTBVSIx1SxCcy9zSrtUIMFtvxYJB8XaaRE3pCPpmHRKv1Zdo4RPoLXrr9LfCEGS42ROl1Xg/hpfXfVti1kVURYSnzOwARNBiiSr2UIndBXVK/rwrLJz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776665976; c=relaxed/simple;
	bh=9TLHe5jIWPEFNCzIQ5w2v9G5Grh/KlzrW8PTeyzoiaU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=G5m5t3eNoKii75XbTVQCoU22aRM0jkCGpb+u2fuovL79jRbP6NgX0EZF0TnyNUO/qwncTOckzeYWJYcomISO5GKa3kKeCKc0ryGQVWMX09jBx2YwPIjbXKb8czarqhqoTgMJ8XwL//hpXIF+3QEDXsn0HclgYjBY/mkYu+qAk10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=student.uibk.ac.at; spf=pass smtp.mailfrom=student.uibk.ac.at; dkim=pass (1024-bit key) header.d=student.uibk.ac.at header.i=@student.uibk.ac.at header.b=cYvsKqJK; arc=none smtp.client-ip=138.232.1.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=student.uibk.ac.at
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=student.uibk.ac.at
Received: from surface-pro-5.uibk.ac.at (ydWLT-U1-7-16.uibk.ac.at [172.25.7.16])
	(authenticated bits=0)
	by smtp.uibk.ac.at (8.15.2/8.15.2/F1) with ESMTPSA id 63K6Ito71297669
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 20 Apr 2026 08:18:57 +0200
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.uibk.ac.at 63K6Ito71297669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.uibk.ac.at;
	s=prod24a; t=1776665938;
	bh=pu7HWhTqWQ7BHlILw0Z+vWuQ8U236tlaz1nProDAHKs=;
	h=From:To:Cc:Subject:Date;
	b=cYvsKqJKSLTcwHL9tkPzvzh9V52iR2k44mmV8grFJL983e7DbzToqAJ2ecPio6WhG
	 8G4Zd8EQnW1nf4K0q5jQYRdBAtlN11cbSw0Ak3HxD5wgB5fCILlJwwN+uTbkF8TOPa
	 w47mSqGtZ0s7lUECXVgsfL5iveJYFOS5usPWGrwY=
From: christian.koever-draxl@student.uibk.ac.at
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, khilman@baylibre.com
Cc: jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        funderscore@postmarketos.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        christian.koever-draxl@student.uibk.ac.at
Subject: [PATCH v2 0/2] Add support for Amediatech X98Q (Amlogic S905W2)
Date: Mon, 20 Apr 2026 08:18:52 +0200
Message-ID: <20260420061854.5421-1-christian.koever-draxl@student.uibk.ac.at>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0*
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Score: () -11.0 ALL_TRUSTED,BOGUS_MIME_VERSION,RCV_SMTP_AUTH,RCV_SMTP_UIBK,UIBK_PHI_SUBJ,U_H_APTO_LONG,U_RCPTS_11_PLUS
X-Scanned-By: MIMEDefang_3.2_at_uibk.ac.at
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[student.uibk.ac.at,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[student.uibk.ac.at:s=prod24a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,googlemail.com,postmarketos.org,vger.kernel.org,lists.infradead.org,student.uibk.ac.at];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-288534-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koever-draxl@student.uibk.ac.at,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[student.uibk.ac.at:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13]
X-Rspamd-Queue-Id: D145F427306
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Christian Stefan Kövér-Draxl <christian.koever-draxl@student.uibk.ac.at>

Supported features:
- 1GB/2GB RAM (via U-Boot memory fixup)
- 10/100 Ethernet (Internal PHY)
- eMMC and SD card storage
- PWM-based CPU voltage regulation
- UART (Serial console)

Changes in v2:
- Split dt-bindings and dts changes into separate patches.
- Updated model string to match documented vendor prefix.
- Put vddio_sd states array in a single line.
- Added a clarifying comment for the unsupported Amlogic W150S1 Wi-Fi module.

Notes:
- The console uses uart_b at 921600 baud.
- Verified memory via /proc/device-tree; U-Boot patches the node to around 2GB.
- Tested on the 2GB RAM plus 16GB eMMC variant.

Christian Stefan Kövér-Draxl (2):
  dt-bindings: arm: amlogic: add X98Q compatible
  arm64: dts: amlogic: add support for X98Q

 .../devicetree/bindings/arm/amlogic.yaml      |   7 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../boot/dts/amlogic/meson-s4-s905w2-x98q.dts | 250 ++++++++++++++++++
 3 files changed, 258 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905w2-x98q.dts

-- 
2.53.0


