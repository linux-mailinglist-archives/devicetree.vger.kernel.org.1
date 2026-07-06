Return-Path: <devicetree+bounces-320908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4AxqNLBsS2q3RAEAu9opvQ
	(envelope-from <devicetree+bounces-320908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:52:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 413D370E4E5
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:52:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=einfochips.com header.s=NAESA-Selector1 header.b=kTVoD+hW;
	dmarc=pass (policy=reject) header.from=einfochips.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320908-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320908-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A29EC3127A66
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD5E3EFD0F;
	Mon,  6 Jul 2026 08:12:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from naesa05.arrow.com (naesa05.arrow.com [216.150.161.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E588639A812;
	Mon,  6 Jul 2026 08:12:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783325535; cv=none; b=Bk6YE94Ehra+xFdT64f3Nb2y1kUFa4lNGrTmfGSTG1W4uoHqNlHs1GfDU52EXypPBNXTdXlEf4Zh76EkewYVt5tgjrgR0Ltx0LpyahWVLqwEQjFbn1/Evt57VUkV/MFbC4K403DtpJRxJb8SbrShqMmCLfGuLZEngZXPXUTdEJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783325535; c=relaxed/simple;
	bh=pw0vj+IpR76LWh+hrLVLHyzI3AzgtdkykGqp6E1Y7Xc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UjcAtF5S18Kch05UlxWp92D3CWlxyzzlCq2zOcvagDvTjUEk6CRFYpW2Qc9FoPF2Zl3L2Y2AiCnmg60Eo8NhkBFc25OT91k8wgVDDVacKBeut7t9XhjgL1kimf+A0TjFbsvcY7EVbfdBs+1KUTpGFNnxiu8prmYeNWX7k+v4JZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=einfochips.com; spf=pass smtp.mailfrom=einfochips.com; dkim=pass (2048-bit key) header.d=einfochips.com header.i=@einfochips.com header.b=kTVoD+hW; arc=none smtp.client-ip=216.150.161.26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=einfochips.com; i=@einfochips.com; l=1762; q=dns/txt;
  s=NAESA-Selector1; t=1783325532; x=1814861532;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=DsT3k1JxGiBxu8sTPdmZdN71lJZTeiOhorI0VrVBI4Q=;
  b=kTVoD+hWTU2Gi37oH5kdwZkmM2DWNKX4df53NpEOWhD70SKByw9S0zoB
   FpPI7aR4ksnSJJUDxFUJBTNohQ4KiQIbajEmKb1ASZzFvvQGpXbOyM6oD
   XuNniWpD+VGxV1255YYzGpvyASl0FFUtEpcgwFV3XNvS16nyGN9MHjVYM
   OBd/AcWbUN5froU0s98QXdPnR20SAk+8/JtNft6QgDkwA3V1CB2jArle+
   dtuKk68rcLivJ9wXNPgvaxBe+maElU0pTAaw5wfcNkMbdbvPpNBhJWiHV
   LboMqbpE8znDeO8EUFzgO9d6QmgIxe+X9kLEejtPHwfpSAuEDzecctz5U
   w==;
X-CSE-ConnectionGUID: cOMtjOruTUSRlcdRNeXm3w==
X-CSE-MsgGUID: LCxTXXzCS26HvEadZL00sw==
X-IronPort-AV: E=Sophos;i="6.25,149,1779170400"; 
   d="scan'208";a="57540289"
Received: from unknown (HELO eicahmirelay01.einfochips.com) ([10.100.49.50])
  by naesa05out.arrow.com with ESMTP; 06 Jul 2026 02:10:57 -0600
Received: from AHMCPU1888.localdomain ([172.25.5.100]) by eicahmirelay01.einfochips.com with Microsoft SMTPSVC(10.0.20348.1);
	 Mon, 6 Jul 2026 13:40:55 +0530
From: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Min Lin <linmin@eswincomputing.com>
Cc: Yulin Lu <luyulin@eswincomputing.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: [PATCH v2 0/8] riscv: eswin: eic7700: Add support for clocks, resets, pinctrl, HSP bus, I2C and watchdog
Date: Mon,  6 Jul 2026 13:40:47 +0530
Message-Id: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 06 Jul 2026 08:10:55.0812 (UTC) FILETIME=[F85EB840:01DD0D1E]
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[einfochips.com,reject];
	R_DKIM_ALLOW(-0.20)[einfochips.com:s=NAESA-Selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320908-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:andi.shyti@kernel.org,m:mika.westerberg@linux.intel.com,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:luyulin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pinkesh.vaghela@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,einfochips.com:from_mime,einfochips.com:dkim,einfochips.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 413D370E4E5

Changes in v2:
- Rebased the patches to kernel v7.2-rc2
- Updated dts file
  - Changed "xtal" to "clock_24m".
  - Changed the node name from "vcc1v8" to "regulator-vcc1v8".
  - Changed the node names from "pac1934" to "adc" and "ina226" to
    "power-sensor".
- Updated eic7700.dtsi file
  - Changed the label from "xtal" to "clock_24m".
  - Changed the label from "hsp_power_domain" to "hsp".
  - Added soc-specific compatible string for all i2c controllers.
- Updated pinctrl.dtsi file
  - Corrected the function of rgmii0, rgmii1, and the i2s pin groups.
- Added "Acked-by" tag of "Conor Dooley" for Patch 4.
- Updated the commit message for Patch 5.
- Added patch(#6) that introduces ESWIN specific compatible string
  "eswin,eic7700-i2c" in snps,designware-i2c.yaml file.
- Link to v1: https://lore.kernel.org/lkml/20260615122016.1110206-1-pinkesh.vaghela@einfochips.com/

Pinkesh Vaghela (2):
  dt-bindings: mfd: syscon: add ESWIN EIC7700 compatible
  riscv: dts: eswin: add hsp bus node

Pritesh Patel (5):
  riscv: dts: eswin: add reset generator for EIC7700 SoC
  riscv: dts: eswin: add clock generator for EIC7700 SoC
  dt-bindings: i2c: dw: add ESWIN EIC7700 SoC I2C controller
  riscv: dts: eswin: add I2C controller support
  riscv: dts: eswin: add watchdog support

Yulin Lu (1):
  riscv: dts: eswin: eic7700: add pinctrl support

 .../bindings/i2c/snps,designware-i2c.yaml     |   1 +
 .../devicetree/bindings/mfd/syscon.yaml       |   2 +
 .../dts/eswin/eic7700-hifive-premier-p550.dts | 182 ++++
 .../riscv/boot/dts/eswin/eic7700-pinctrl.dtsi | 888 ++++++++++++++++++
 arch/riscv/boot/dts/eswin/eic7700.dtsi        | 234 +++++
 5 files changed, 1307 insertions(+)
 create mode 100644 arch/riscv/boot/dts/eswin/eic7700-pinctrl.dtsi

-- 
2.34.1


