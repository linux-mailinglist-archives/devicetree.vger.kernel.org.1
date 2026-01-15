Return-Path: <devicetree+bounces-255638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0E9D25196
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:56:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D42B30B34AF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B092A37998B;
	Thu, 15 Jan 2026 14:53:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B8532E729
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768488797; cv=none; b=fW/6XEtpNB1O+a1/HfIQ5BpKuH2X+CIlDgr4Ct3BM3L4ToHrem856EIKnwTwE43qcwNv7Pbrrrxxs786OSdKHe1+BFonDTvOF8F0NYPMuAZPketiElZrxNmemKce2V+mBcJ9j7+YPePQxCH0EnbzEt3Ku3Ske1xb5IW8Ga5xfFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768488797; c=relaxed/simple;
	bh=8lIQyKgEiLIsBqCgyScROCV7LDAF2mqaH328nAshXzQ=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=PqW5nWjhoy3MkAGYWvyJg+UQ+c14yb/xFGr3TU36/qaYmIbYEC9pP3jCZx9DPM0lyhCZVY3sJPYFL/hubawqSSkOkZY9vXYJnxHXObJWkNeQPAhHQ1AiFvZlpPho54tAOEqiKXPrzfmFNnrJnV2zLF1hhV8X5qw+VVjpYk88LNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 60FEqk0v039366
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 15 Jan 2026 22:52:46 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Thu, 15 Jan 2026
 22:52:46 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <andi.shyti@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-i2c@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <pjw@kernel.org>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <linux-riscv@lists.infradead.org>,
        Ben Zong-You Xie
	<ben717@andestech.com>
Subject: [PATCH 0/4] Add I2C support for QiLai SoC
Date: Thu, 15 Jan 2026 22:52:40 +0800
Message-ID: <20260115145244.435890-1-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 60FEqk0v039366

This patch set adds I2C support for QiLai SoC.

Ben Zong-You Xie (4):
  dt-bindings: i2c: add support for Andes I2C controller
  drivers: i2c: add the driver for Andes I2C controller
  MAINTAINERS: add an entry for Andes I2C driver
  riscv: dts: andes: qilai: add I2C controller

 .../bindings/i2c/andestech,atciic100.yaml     |  44 +++
 MAINTAINERS                                   |   6 +
 arch/riscv/boot/dts/andes/qilai.dtsi          |   6 +
 drivers/i2c/busses/Kconfig                    |  10 +
 drivers/i2c/busses/Makefile                   |   1 +
 drivers/i2c/busses/i2c-atciic100.c            | 353 ++++++++++++++++++
 6 files changed, 420 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/andestech,atciic100.yaml
 create mode 100644 drivers/i2c/busses/i2c-atciic100.c

--
2.34.1

