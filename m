Return-Path: <devicetree+bounces-311919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ir1TJZTuL2oRJQUAu9opvQ
	(envelope-from <devicetree+bounces-311919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:22:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CB9686266
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:22:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=einfochips.com header.s=NAESA-Selector1 header.b=TLPQFBHA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311919-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311919-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=einfochips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1829302292D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B503E8356;
	Mon, 15 Jun 2026 12:21:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from naesa05.arrow.com (naesa05.arrow.com [216.150.161.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11453E6DD8;
	Mon, 15 Jun 2026 12:21:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781526088; cv=none; b=dtdxUGX2bt8Cs9bFnAyYzGAjvRn3dF214hAwhYC3Gi9ViLnnVVj2uK4BrR66dRaQWshvm4qs+LugEKev2RNMyK3byxgQ4MiaA2pdSSZJGnLZm1opzoXPCP1pCCs5vpQ5BIs+OA9nprVAVzdw8K3nhv+UbSDuv5YXJiRLN/bP8aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781526088; c=relaxed/simple;
	bh=wvfK47CrSMsQ0UiXmu5vOE7FqXsvHQNdu+KxrtzEa9c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iVWj1hH60qiYftdacuBrG+hQKJEEWT9//wrLu5iBoyaBgbutRHLkAIfHDw2bLj6xIHd6kxysNC3x5biasiQ26ewLLR9mWhAkTkn9ETFTuJaptGHB4+mGsmaH/JouDMYP3MyOaEK/5YCXXkfmM7A+eEt4yfTdQiDVejwK9ov68ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=einfochips.com; spf=pass smtp.mailfrom=einfochips.com; dkim=pass (2048-bit key) header.d=einfochips.com header.i=@einfochips.com header.b=TLPQFBHA; arc=none smtp.client-ip=216.150.161.26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=einfochips.com; i=@einfochips.com; l=1240; q=dns/txt;
  s=NAESA-Selector1; t=1781526087; x=1813062087;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=AXq/7QTdQmljzH1gjNuvNWvgr9Xn6XXBdRnyML2gxUQ=;
  b=TLPQFBHAJCicMBUensE5jPwESdopTHcpUdHcTPZbb0/ePH03LbuHN1Js
   SOt7U9v/d7KSm34BfqKNYyknP/7UI6+LTlG8MqnARVMexQNBuTsvYaux5
   QHfV/2U6wR7cvHZopPG59Ygb9aBG2oIBDMXxVLyRoqAbDz4nPdXzpQD/V
   7ZFMHoadHYu5Fu3BXoeufwXBzxACXzbxiSK/CcHPzqaC4PP60gHfUSLdb
   wTLF9OzgyZQaOKh/WCICAegx4EvdKPA2kCK3ySkN0cUjJ34ILIi3PyJEO
   XdmHFjP7Rby9X8t+vfGYsoxOZbGrfOe4GQq0QG5o7SdDGMdqahLc17shp
   g==;
X-CSE-ConnectionGUID: Jytg3ZVQRCyMylJZrUsYvw==
X-CSE-MsgGUID: WIKWMA+0SS2Hu4KjJQq70g==
X-IronPort-AV: E=Sophos;i="6.24,206,1774332000"; 
   d="scan'208";a="55984196"
Received: from unknown (HELO eicahmirelay01.einfochips.com) ([10.100.49.50])
  by naesa05out.arrow.com with ESMTP; 15 Jun 2026 06:20:17 -0600
Received: from AHMCPU1888.ap.corp.arrow.com ([172.25.5.100]) by eicahmirelay01.einfochips.com with Microsoft SMTPSVC(10.0.20348.1);
	 Mon, 15 Jun 2026 17:50:16 +0530
From: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Min Lin <linmin@eswincomputing.com>
Cc: Yulin Lu <luyulin@eswincomputing.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: [PATCH 0/7] riscv: eswin: eic7700: Add support for clocks, resets, pinctrl, HSP power domain, I2C and watchdog
Date: Mon, 15 Jun 2026 17:50:09 +0530
Message-Id: <20260615122016.1110206-1-pinkesh.vaghela@einfochips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 15 Jun 2026 12:20:16.0751 (UTC) FILETIME=[531C17F0:01DCFCC1]
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[einfochips.com,reject];
	R_DKIM_ALLOW(-0.20)[einfochips.com:s=NAESA-Selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311919-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:luyulin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pinkesh.vaghela@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[einfochips.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[einfochips.com:dkim,einfochips.com:mid,einfochips.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09CB9686266

This series extends the ESWIN's EIC7700 SoC support beyond the
already upstreamed basic DTS and DTSI files. It introduces DT nodes
for reset, clock, pinctrl, HSP power domain, I2C and Watchdog.

As support for boot media is yet to be upstreamed, we have
boot-tested this series with initramfs on HiFive Premier P550 board
using Linux 7.1, U-Boot 2024.01 and OpenSBI 1.8.1.

[1]: https://lore.kernel.org/lkml/20251113014656.2605447-1-samuel.holland@sifive.com/

Pinkesh Vaghela (2):
  dt-bindings: mfd: syscon: add ESWIN EIC7700 compatible
  riscv: dts: eswin: add hsp power domain

Pritesh Patel (4):
  riscv: dts: eswin: add reset generator for EIC7700 SoC
  riscv: dts: eswin: add clock generator for EIC7700 SoC
  riscv: dts: eswin: add I2C controller support
  riscv: dts: eswin: add watchdog support

Yulin Lu (1):
  riscv: dts: eswin: eic7700: add pinctrl support

 .../devicetree/bindings/mfd/syscon.yaml       |   2 +
 .../dts/eswin/eic7700-hifive-premier-p550.dts | 182 ++++
 .../riscv/boot/dts/eswin/eic7700-pinctrl.dtsi | 888 ++++++++++++++++++
 arch/riscv/boot/dts/eswin/eic7700.dtsi        | 234 +++++
 4 files changed, 1306 insertions(+)
 create mode 100644 arch/riscv/boot/dts/eswin/eic7700-pinctrl.dtsi

-- 
2.34.1


