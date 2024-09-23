Return-Path: <devicetree+bounces-104431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBB197E5EF
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 08:22:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A280B20A26
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 06:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DD4B1759F;
	Mon, 23 Sep 2024 06:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="qXHU7v8a"
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-38.ptr.blmpb.com (va-2-38.ptr.blmpb.com [209.127.231.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6A610A3E
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 06:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.231.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727072531; cv=none; b=K4tm+qLqF3U5dsucD/wq9WcwU1FfGkCIYjsxvpnQRv84VSeVQaqOqAB7qndp5awdr91cGlb4R+hSwSjmX+jQI8rfNesme1GGKvv55dmN+xXJDXxqgL8/wtDqFcseolZfW1VGGkh9F/EDgVb5G4vxuAUZf24zBuoJo0Jn2nNfEzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727072531; c=relaxed/simple;
	bh=/ghcqLauH0+CMXorpxpw/GTZdb/NnVf+X3CD68EoTEk=;
	h=Cc:Subject:To:Message-Id:Mime-Version:Date:Content-Type:From; b=uW1eOU/+RM3aBplJz7RBYL2dRomlWFV0nV+q9tDi4DaqevCZ/19eG6KWC1pkna64rsEUDvE+yTEEIwrftgxCkNUfNc6xbCGA3Xv09IED1HFXIzIzl4segQVicxhBydHamTWaQuUpNrio2VQaJNoOmXxUQJe0CLtnCUcXR5E9nAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=qXHU7v8a; arc=none smtp.client-ip=209.127.231.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1727069788;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=aV6BkKf5lBk9jyifuv+6J+XRGBiA2WnxkCA2SCxaiWI=;
 b=qXHU7v8agvU3Rz1J+NXGp7NSek8bhPkhXB0K3AMKbZSL0y/b/9YtK9mi/GmC8eFH2EZXUZ
 IT+ut3DVKy3pk74W9D9ICdiMbsDysR8V+slccj7S4zLdFoBb4Oho4b6WI7Tg8wwWHys2hP
 jcjzraRm00X7PEwIoiiMu7PfoEuiaq/0tz/+64hN32WtqZdi8ViqylnqOqCJiXo8dUzayn
 aF3VhmDjAdIuaZSK28GLOE3NLRIFscncxEVvDfvkPIOEfzHtdDsA8GjF0ksCcjzeGNErsC
 fFUxrnvApM2Ne3jdrr1wensxd6mC0ppyA9XfxfnWfO4/zMT/jtT34Tpv5nMyUw==
Cc: "Conor Dooley" <conor@kernel.org>, "Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, <linux-riscv@lists.infradead.org>, 
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, 
	"Sandie Cao" <sandie.cao@deepcomputing.io>
Subject: [PATCH 0/2] add framework dts and config
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
X-Mailer: git-send-email 2.34.1
X-Lms-Return-Path: <lba+266f0fe5b+20bb59+vger.kernel.org+sandie.cao@deepcomputing.io>
To: "Emil Renner Berthing" <kernel@esmil.dk>
Message-Id: <20240923053621.1585972-1-sandie.cao@deepcomputing.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 23 Sep 2024 13:36:19 +0800
Received: from roma-MacBookPro.. ([61.141.249.188]) by smtp.feishu.cn with ESMTPS; Mon, 23 Sep 2024 13:36:26 +0800
Content-Type: text/plain; charset=UTF-8
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Content-Transfer-Encoding: 7bit

Add  dts and config to support RISC-V Framework Laptop 13 Mainboard. 
https://frame.work/products/deep-computing-risc-v-mainboard

Sandie Cao (2):
  riscv:dts:starfive:add framework dts
  riscv:configs:starfive:add framework config

 arch/riscv/boot/dts/starfive/Makefile         |   1 +
 .../boot/dts/starfive/jh7110-framework.dts    |  35 ++++
 .../starfive_jh7110_framework_defconfig       | 151 ++++++++++++++++++
 3 files changed, 187 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110-framework.dts
 create mode 100644 arch/riscv/configs/starfive_jh7110_framework_defconfig


base-commit: de5cb0dcb74c294ec527eddfe5094acfdb21ff21
-- 
2.34.1

