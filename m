Return-Path: <devicetree+bounces-105107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2FA985292
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 07:45:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04AAA1F216B0
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 05:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD2114AD03;
	Wed, 25 Sep 2024 05:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="E0NKe+z/"
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-36.ptr.blmpb.com (va-2-36.ptr.blmpb.com [209.127.231.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957AE41C94
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 05:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.231.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727243128; cv=none; b=ImaFTE/ANQfmDlgKH+mOg0tIsYZ4mTnDAFDA5hodt/em+cJguIDkWAJQl4teM0+P22m+QpKQxBWm/rStWFHu1HKCEtmTkx6pLl9rB/7bfq06rFosUt2JQMRHFVi5MyxcdoTRlh7iEOTzwOSXUXZfVE4Yf266aI27RQnQrUtZ8FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727243128; c=relaxed/simple;
	bh=eVd4ZCtT5ouoFbR+rt5hQNpp8c3XinZdqDv+bsXnQ4k=;
	h=Cc:Subject:Date:Mime-Version:From:Message-Id:To:Content-Type; b=IIM5qeP8Y05CG9WINFlTS/lMcRgfkbXzxsR3EsaXBf7I7949CLNY29HZn5shW4aRymts53wdULhF8OpIeGFINQWPESdq0KDDppyzLj/1O+a5r18SBuHNfCICnld/I9euiDNnNUgmOdQ841YuzItlDpowMw9knqlHEcRyY6UBzew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=E0NKe+z/; arc=none smtp.client-ip=209.127.231.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1727242297;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=a6txcGONyEy3jDjRb3vFFGuVu+sHQ0dLCYuaB0BaxR0=;
 b=E0NKe+z/n+xXFsenCOT8WAqBcrRXiSHD373ERYZ1BWMIWbi6/6eFYOYP9IeIDcP+vhSuSP
 RtMCnsFxTiYx2zhPTUNzxwT2faaRHKWdgKmsTXVo2TgQNE8a61p8A2lQip9AVxuHM5WkP9
 7F+OiqHgttFzbkb/T03hOTaNfM+cN1Y9qOVJADdCW0GG/Igm/Ege7yctbWcoVvaZ4ye4O/
 lXl1gqt5f/zGMjwuaoiIKKb3awlTqHoKb2Lz0JInlrCwKXhWLmVLug1W+WV4PicZk+yCVt
 FLtstAFBqMW1LtzKMla3a5lJZE9vhX4m752Zkkpj7ad6n128dBtRuEQhGhwJOQ==
X-Lms-Return-Path: <lba+266f3a038+dfc91d+vger.kernel.org+sandie.cao@deepcomputing.io>
X-Mailer: git-send-email 2.34.1
Cc: "Conor Dooley" <conor@kernel.org>, "Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, 
	"Heiko Stuebner" <heiko.stuebner@cherry.de>, 
	"Neil Armstrong" <neil.armstrong@linaro.org>, <rafal@milecki.pl>, 
	"Linus Walleij" <linus.walleij@linaro.org>, 
	"Michael Zhu" <michael.zhu@starfivetech.com>, 
	"Drew Fustini" <drew@beagleboard.org>, <linux-riscv@lists.infradead.org>, 
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, 
	<dhs@frame.work>, <ams@frame.work>, <gregkh@linuxfoundation.org>, 
	<yuning.liang@deepcomputing.io>, <huiming.qiu@deepcomputing.io>, 
	"Sandie Cao" <sandie.cao@deepcomputing.io>
Subject: [PATCH v3 0/3] Add Framework FRANME0000 dts
Date: Wed, 25 Sep 2024 13:31:20 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Message-Id: <20240925053123.1364574-1-sandie.cao@deepcomputing.io>
Content-Transfer-Encoding: 7bit
To: "Emil Renner Berthing" <kernel@esmil.dk>
Received: from roma-MacBookPro.. ([61.141.249.39]) by smtp.feishu.cn with ESMTPS; Wed, 25 Sep 2024 13:31:35 +0800
Content-Type: text/plain; charset=UTF-8

DeepComputing is creating a RISC-V Framework Laptop 13 Mainboard 
powered by a StarFive JH7110 processor.This is a developer-focused 
product, aimed at making tinkering with RISC-V more accessible.
The Mainboard is under development and we'll share more on functionality, 
compatibility, and availability as the program progresses.

Framework Model: Framework FRANME0000
DeepComputing Model: DeepComputing fm7110

V1:
- Add framework dts and config.

V2:
- Add deepcomputing into vendor list.
- Add deepcomputing,fm7110 into model compatible list. 
- Fix the error about dtbs_check.
- Framework Config will be included in later patch.

V3:
- Update board features into description

Sandie Cao (3):
  dt-bindings: vendor: add deepcomputing
  dt-bindings: riscv: starfive: add deepcomputing,fm7110
  riscv: dts: starfive: add framework dts

 .../devicetree/bindings/riscv/starfive.yaml   |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 ++
 arch/riscv/boot/dts/starfive/Makefile         |  1 +
 .../boot/dts/starfive/jh7110-framework.dts    | 34 +++++++++++++++++++
 4 files changed, 38 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110-framework.dts


base-commit: abf2050f51fdca0fd146388f83cddd95a57a008d
-- 
2.34.1

