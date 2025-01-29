Return-Path: <devicetree+bounces-141611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C74AA219C3
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 10:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2EAD47A2A8A
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C101AB6D4;
	Wed, 29 Jan 2025 09:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b="F01zPqdH"
X-Original-To: devicetree@vger.kernel.org
Received: from esa1.hc555-34.eu.iphmx.com (esa1.hc555-34.eu.iphmx.com [23.90.104.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC7F1A0714;
	Wed, 29 Jan 2025 09:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.90.104.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738142278; cv=none; b=AF6y1+3nNZrc3uQfxPJYamg/JqpX7yd7tmOm4WRXK7env6zoel+i/k7jZD0auOGVSzeptVAQtkY3sIEdELFmjbZtguW9ZpqE/1pQuMRZG5DTGrBrf3NKVACu3r+FM/4eRI3HdVqiU45Va2FHN/igg2QH5Xz+makunQGmUJlbas4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738142278; c=relaxed/simple;
	bh=K3OD3dxywITjvy6jKlbNNMbo87dMZ77ETsuJ9jOPISQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=esrB7h+8Jqh33L1UM8r/sYzTK7BpsTZxcz8ogM8R2diw45G/brpKZ2wCvZWWqqVH7r740NGCJbCudaktFp5KSC1NvZaMisBj6AgPFOvn46n1DNxfJ6Ydz+ShlYx/loIJ9/ihU6VWvxVCAJGbvkL7nXnWitHW0cYMsssliXeWcPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com; spf=pass smtp.mailfrom=mobileye.com; dkim=fail (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b=F01zPqdH reason="key not found in DNS"; arc=none smtp.client-ip=23.90.104.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mobileye.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=mobileye.com; i=@mobileye.com; q=dns/txt; s=MoEyIP;
  t=1738142275; x=1769678275;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=K3OD3dxywITjvy6jKlbNNMbo87dMZ77ETsuJ9jOPISQ=;
  b=F01zPqdHU/ZS+GG9Rs6EXaU4/HwOW/1XXA4mUZ4PTfpl5tjTmbQ2W/qF
   axT8uie7xki/A0SjjN6uB9jtjmo7Pn155Wo88UcPf2IY3knKZish8W9Pn
   Zs0BaH2lG1X9dMinHqVWViZMnttpyAsWcE0t3+P5qeDDigpQJmokkS0ap
   tQddeiv+T/q52IV5N8PrE7DuvPjLE2BQLNBWYcHW6ejYlnNFJfSDMXBKL
   ZyjLNI7jrO96rL/uu47wY3kqip8pieAnYs/QUGYGHgS6aOQM5H1waVG5t
   8xWp7Mv2lTibSv+3jis0j3+F7Y9mMKn3uJacE7RFRmiKZmb1dmskV4T47
   Q==;
X-CSE-ConnectionGUID: BgIeckuzRxmdnMHdXtrD1A==
X-CSE-MsgGUID: HZgsU7KdRPKidvCKuGL2Sw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO ces02_data.me-corp.lan) ([146.255.191.134])
  by esa1.hc555-34.eu.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jan 2025 11:16:42 +0200
X-CSE-ConnectionGUID: 5JdEmO9hSfSifX91jEuKPA==
X-CSE-MsgGUID: mmL03Lr1STOTFpLkRb7fHw==
Received: from unknown (HELO epgd022.me-corp.lan) ([10.154.54.6])
  by ces02_data.me-corp.lan with SMTP; 29 Jan 2025 11:16:40 +0200
Received: by epgd022.me-corp.lan (sSMTP sendmail emulation); Wed, 29 Jan 2025 11:16:41 +0200
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
Subject: [PATCH v5 0/2] riscv,aplic: support for hart indexes
Date: Wed, 29 Jan 2025 11:16:35 +0200
Message-ID: <20250129091637.1667279-1-vladimir.kondratiev@mobileye.com>
In-Reply-To: <87ed0o87qg.ffs@tglx>
References: <87ed0o87qg.ffs@tglx>
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

Changed from v4:
1. Verbose comment for the dt-bindings commit

Vladimir Kondratiev (2):
  dt-bindings: interrupt-controller: add risc-v,aplic hart indexes
  irqchip/riscv-aplic: add support for hart indexes

 .../interrupt-controller/riscv,aplic.yaml     |  8 ++++++
 drivers/irqchip/irq-riscv-aplic-direct.c      | 25 ++++++++++++++++---
 2 files changed, 30 insertions(+), 3 deletions(-)


base-commit: ffd294d346d185b70e28b1a28abe367bbfe53c04
-- 
2.43.0


