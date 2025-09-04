Return-Path: <devicetree+bounces-212534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39245B43212
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:11:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 540F7170A22
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 06:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20FFE248869;
	Thu,  4 Sep 2025 06:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=grimler.se header.i=@grimler.se header.b="N34J/tUX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5FF248F4F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 06:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756966271; cv=none; b=NdcEa5RIEWH+QlnaawL/3hqi41C7DfwMYBlsX6QsrMMaAapB993qLZqEgfPl7BmUuRAH4KeKul6hoJS8KE/AvhQX8DvRLzjsnkDv9UBTuogJHQIHbbbmaxZtdtm/G/iMMKFgCHugqHzyYdsM4uuqXosD5gL07+MoONymwycTb3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756966271; c=relaxed/simple;
	bh=81cwNxBRpsy4lHfs6w+lntIgyPt1afBs9lzo5aqkZAE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t81ZdgFAVdwwVhkEF1j/YFUG0l9pXwddVMDRiQNvu6oiFj/vYObEfU0rA/UBuW7K6hKwzvEbePkK/ozqeph19mg+u6J5iLCjlzn1zRGGKas6eaxC/LtojhoTzCFpZrw5p/Wki4rJEslfVGWkIgku7C2CUychvw5k7cbAw1hPstg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=grimler.se; spf=pass smtp.mailfrom=grimler.se; dkim=pass (1024-bit key) header.d=grimler.se header.i=@grimler.se header.b=N34J/tUX; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=grimler.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=grimler.se
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=grimler.se; s=key1;
	t=1756966257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oO6F8S4iXmJ7ic9vKWXnr67NGfqxQCelinoF/a3mKzE=;
	b=N34J/tUXchR98rhDpDOIIqbywhM4RW9JEhANmi4vmvFgiZCHcpgGiuXHa+TMQOfwhsjYQX
	tT1Yjq3uBFOr+OtINAguGizcRQ34MCUoOl8zDOd1CZBQZERH5SFsixbWFAeVIoirr5+cNr
	Vikrw1YU7kwKszke8U8LdAWfTWMc7KQ=
From: Henrik Grimler <henrik@grimler.se>
Subject: [PATCH 0/2] exynos5250-smdk5250: describe SROM controller and
 ethernet port
Date: Thu, 04 Sep 2025 08:10:09 +0200
Message-Id: <20250904-smdk5250-sromc-v1-0-b360c6ab01c6@grimler.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEEtuWgC/x2MQQqAIBAAvxJ7TjBjkfpKdNDcagkrXIhA/HvSb
 eYwk0EoMQmMTYZEDwtfZ5WubWDZ3bmR4lAdjDaorTFKYjiwspJ0xUWRQz8g9pq8hRrdiVZ+/+E
 0l/IBA6grvGAAAAA=
X-Change-ID: 20250722-smdk5250-sromc-ea5b95530eb7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Henrik Grimler <henrik@grimler.se>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1123; i=henrik@grimler.se;
 h=from:subject:message-id; bh=81cwNxBRpsy4lHfs6w+lntIgyPt1afBs9lzo5aqkZAE=;
 b=owEBbQGS/pANAwAKAbAHbkkLcWFrAcsmYgBouS1jrDIXgn9bMvXu+aTWq1yB5yYKIbztFjJRb
 5VIRRtWBtWJATMEAAEKAB0WIQQsfymul4kfZBmp4s2wB25JC3FhawUCaLktYwAKCRCwB25JC3Fh
 a224B/9u6FvVsGJF58jfKHM5mFEdC7WYcp9kMsTZRKwrnmwaYKDqTdV72YSucSj75bzXJxBzxYb
 FmXCK16hndHSynT7lYB5IoB7IsP+Tr/VGh+q6x7DAd6ngowS71DzuPn2+AFhDLrbS61qA1Thxti
 uogT4Gopm1d9+/6FMyV4anUDDJg9DozYLQED45vVzBqiYpG0JKrPi8NivoO63Eu9esnjm6zHPd8
 gSQoK3+eFhcPnXlhKPDfbUMErMmcrydfLlsKqutbYhP4cHAbZWv2zrmPTNIt/aYRxf1mNax6Knd
 nLk6vguLG/K1lxh5EPAMFHyauzGm+O/cgs2LCmjYGdRE8VCU
X-Developer-Key: i=henrik@grimler.se; a=openpgp;
 fpr=2C7F29AE97891F6419A9E2CDB0076E490B71616B
X-Migadu-Flow: FLOW_OUT

Based on smdk5250 description in Samsung's vendor kernel [1] and the
u-boot dts [2], the smdk5250 board seems to have a ethernet port
connected to bank 1 of the SROM controller.

Unfortunately I do not have access to the board, so this is not tested
on an actual device, and based solely on the linked sources.

[1] https://github.com/krzk/linux-vendor-backup/blob/samsung/galaxy-note-tab-lte-10.1-2012-gt-n8020-p4note-exynos4412-dump/arch/arm/mach-exynos/mach-smdk5250.c#L982
[2] https://gitlab.com/u-boot/u-boot/-/blob/master/arch/arm/dts/exynos5250-smdk5250.dts

Signed-off-by: Henrik Grimler <henrik@grimler.se>
---
Henrik Grimler (2):
      ARM: dts: samsung: exynos5250: describe sromc bank memory map
      ARM: dts: samsung: smdk5250: add sromc node

 arch/arm/boot/dts/samsung/exynos5250-smdk5250.dts | 37 +++++++++++++++++++++++
 arch/arm/boot/dts/samsung/exynos5250.dtsi         |  9 ++++++
 2 files changed, 46 insertions(+)
---
base-commit: 1557c2eb023d9cdf97b4686fd206048c070d4e70
change-id: 20250722-smdk5250-sromc-ea5b95530eb7

Best regards,
-- 
Henrik Grimler <henrik@grimler.se>


