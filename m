Return-Path: <devicetree+bounces-135182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C644A00024
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 21:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 145DD162FB7
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 20:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D811990CE;
	Thu,  2 Jan 2025 20:42:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97ABD42AA2;
	Thu,  2 Jan 2025 20:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735850534; cv=none; b=KI9u8L8LLidmKovJ5oxuIRqcaznmWg2k8NDcaU1ETUcyHh6Dliew9Rt2QFzQqh5XjddJP3xU4Xu76wEsm9sbi8jbfHzjf1tTBChcRzq/saCnHS0ktC6CVJAnR04g2C071oUjmfGwmhSDw2ORAinVJzxWH45OGts8O8SQp5okR4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735850534; c=relaxed/simple;
	bh=Cz2weQOXayUcYrbDUJRxmDQcFulShwPl0LAPss1dhuo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YED3q1etG93kGxBrnFa9+SmXcdclY1qNKFEFg4iVzNxCQfBCCLbIHDPhV0PNFBJoOVHQjFsdBiXln4fGQzvhxhFB4VH7rfifToFVlseKzFlhs9FnUp1zE+HSc0QET872XFv6B05l4kiQMCyd5jtllFMvjvWWhPQ9UlgXVto2eOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id DF5C7B220C7E;
	Thu,  2 Jan 2025 21:42:05 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>
Subject: [RFC PATCH v1 0/3] riscv: dts: starfive: jh7110: More U-Boot downstream changes for JH7110
Date: Thu,  2 Jan 2025 12:41:20 -0800
Message-ID: <20250102204137.423081-1-e@freeshell.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

U-Boot boot loader has adopted using the Linux dt-rebasing tree for dts
with JH7110 VisionFive2 board target (and related JH7110 common boards).
Sync the minimum changes from jh7110.dtsi needed for boot so these can be
dropped from U-Boot.

This series of jh7110.dtsi changes is RFC as being uncertain about what is
required for boot. Testing, review, and suggestions are appreciated.

E Shattow (3):
  riscv: dts: starfive: jh7110: add timer node
  riscv: dts: starfive: jh7110: add DRAM memory controller node
  riscv: dts: starfive: jh7110: bootph-pre-ram hinting needed by boot
    loader

 arch/riscv/boot/dts/starfive/jh7110.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)


base-commit: 708d55db3edbe2ccf88d94b5f2e2b404bc0ba37c
-- 
2.45.2


