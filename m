Return-Path: <devicetree+bounces-137035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61921A074D7
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:38:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 493BE168549
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E7EE215764;
	Thu,  9 Jan 2025 11:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b="HPwJaA9F"
X-Original-To: devicetree@vger.kernel.org
Received: from esa1.hc555-34.eu.iphmx.com (esa1.hc555-34.eu.iphmx.com [23.90.104.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E4812EBEA;
	Thu,  9 Jan 2025 11:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.90.104.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736422727; cv=none; b=u5iWwP05PVJMIoL5xY8LTFAtpCeDBvD486YoOKu9araGUuG4+CW9xlDFwG2W7TuA9qvbo8+els2fYnj4rgDfWqoPTgQE621zT6O1EIdZZijFkDL+5+dme+PzFu/yOSqghX7GAh9PwlMRovH/zr0uSWtq02A6S3hGo6SD/MgqUfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736422727; c=relaxed/simple;
	bh=dka7ZTLMgJA2Fmf33NNRki5hYKAGIfRms5XWjqtdZaU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=QmVbinfs/wXP5aySL1YRNFBwJmpQiNgIn0cqpD7MODou1Uz70yUifmG7G/gpcs0FIXpcyzUAVC5y+Ey6ETEteyxuBuUhSa7olShJLzEGKWanC81Q6Avsf2aYQyNLGUoTeFH7OHQ3g8NULb1pef1jY/iYzMVmHHGEsl4Q/ad4l/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com; spf=pass smtp.mailfrom=mobileye.com; dkim=fail (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b=HPwJaA9F reason="key not found in DNS"; arc=none smtp.client-ip=23.90.104.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mobileye.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=mobileye.com; i=@mobileye.com; q=dns/txt; s=MoEyIP;
  t=1736422723; x=1767958723;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=dka7ZTLMgJA2Fmf33NNRki5hYKAGIfRms5XWjqtdZaU=;
  b=HPwJaA9FNAbSaeEDmV4R8chmY3gUfjxqNRNetovSkEHWwJEBiXz3twWd
   tb1cGQp9Ck0VIqaRLhPHGjnDTHm9MdtLRRyFy6g1S5nC4ZrepusvlIEci
   OK40YKYkTQ6qmf1iZoZSY7u5WVI3dTRIjK797XZmUe1V783AJpnwALpai
   zgfjMobKEbsjCMKf7ReMP7ZO4X3mupV8bU0he5cnO8k+6OtDRIuaXQHjG
   nT3N62cYpb+zo5CwyRaZ2MKWgNE3/+f9ws6IbENp642w1DwzLkihio7VX
   NrdvVTlB5OYFlZZwLWgcNxRO2sVhVWOT5bfYXJRb6Gpj7TUa6oDEU4B+6
   Q==;
X-CSE-ConnectionGUID: kpMYwASWQPW/c5tAy4j7BQ==
X-CSE-MsgGUID: QGvEw9IVTCKMfbVHSMy2sw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO ces04_data.me-crop.lan) ([146.255.191.134])
  by esa1.hc555-34.eu.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2025 13:38:34 +0200
X-CSE-ConnectionGUID: Ce2P3xx7St2Hj+QgzBw11g==
X-CSE-MsgGUID: 459YEkpiTZeDW5oJCxJPVg==
Received: from unknown (HELO epgd022.me-corp.lan) ([10.154.54.1])
  by ces04_data.me-crop.lan with SMTP; 09 Jan 2025 13:38:32 +0200
Received: by epgd022.me-corp.lan (sSMTP sendmail emulation); Thu, 09 Jan 2025 13:38:32 +0200
From: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
To: Anup Patel <anup@brainfault.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Subject: [PATCH v4 0/2] riscv,aplic: support for hart indexes
Date: Thu,  9 Jan 2025 13:38:12 +0200
Message-ID: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Risc-v APLIC uses "hart index" to access data per destination hart.
Current implementation assumes hart indexes are consecutive integers
starting from 0, while Risc-V documentation says it may be
arbitrary numbers, with a clue that it may be related to the hart IDs.

In all boards I see in today's kernel, hart IDs are consecutive
integers, thus using dart IDs is the same as indexes.

However, for the MIPS P8700, hart IDs are different from indexes,
on this SoC they encode thread number, core and cluster in bits
[0..3], [4..15], [16..19] resulting Soc consisting of 3 clusters *
4 cores * 2 threads with hart IDs:
0x0, 0x1, 0x10, 0x11, 0x20, 0x21, 0x30, 0x31, 0x10000 etc.

Change default hart index to be hart ID related to the start of domain,
and add optional property to configure arbitrary indexes.

Use of "device_property" API allows to cover both ACPI and OF in single
code

1-st commit adds dt-bindings, 2-nd - code

Changed from v1:
1. use as fallback logical indexes instead of hart ids
2. refactor code to avoid unnecessary memory allocation

Changed from v2:
1. change property name to plural "riscv,hart-indexes"

Changed from v3:
1. added missing recepients as per "get_maintainer.pl"
   no other changes

Vladimir Kondratiev (2):
  dt-bindings: interrupt-controller: add risc-v,aplic hart indexes
  irqchip/riscv-aplic: add support for hart indexes

 .../interrupt-controller/riscv,aplic.yaml     |  8 ++++++
 drivers/irqchip/irq-riscv-aplic-direct.c      | 25 ++++++++++++++++---
 2 files changed, 30 insertions(+), 3 deletions(-)


base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
-- 
2.43.0


