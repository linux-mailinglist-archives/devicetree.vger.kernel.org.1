Return-Path: <devicetree+bounces-67856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A76968C9F3D
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 17:04:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 130B0B23372
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56ABD13666F;
	Mon, 20 May 2024 15:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="OPP9ZF6t"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A268628E7
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 15:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716217473; cv=none; b=WGNkfbv8c83coXZE1yktr3W3cYaWIxIZMw/Clj9p35WVWjYeaikMhtqtBd07GTG0yAou1EycThMV1580xmSTAucCSjogGTQKuzoWB/6q3DguMybMJ7eIgLlxawmkerXuf7SpKpR3mADJlGwyTWzfR2raAxEqfxmb5vjQPnWMXaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716217473; c=relaxed/simple;
	bh=eCYp4mjC+0JiUbeUmXWOj3HLzb4I3jg7VH4PjtPCCvU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qwqqp/rgFuXi/79oA3/Itj3j/bRi1x+mO2IBivdb/n8Zzz5gDzTYU1JRIfsN/erg9WJg3gGa4+laEWVjzJ0RjlOpJq4evu1e1CJP8Qvk7aETl+48HDZ5W2oe06UPj/hrlP17vww8ea3H9u/ymrHd1W2GGrKJ7K49ez1v/Mmwy7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=OPP9ZF6t; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Envelope-To: linus.walleij@linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1716217469;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/aoMXSH8jpDjOdPc4mmzUTpeyMxeVokbgmGtnfVUZT0=;
	b=OPP9ZF6tauZZ35YslQN/V2OB1slVmyGi1BmvHcztBB376nR74L2XxeWi4JX6q+XpxpGFMJ
	0y71SaGZ5KfMB1ZOMTC2+gRHKwyFYw2SvefxLjk/i7nUztmxOeimcXIYahD99BS8QkOgtT
	h/4b0XqQpZ1FJCZnz3o20Jp9M2pYIr4=
X-Envelope-To: michal.simek@amd.com
X-Envelope-To: linux-gpio@vger.kernel.org
X-Envelope-To: sai.krishna.potthuri@amd.com
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: andy.shevchenko@gmail.com
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: sean.anderson@linux.dev
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
To: Linus Walleij <linus.walleij@linaro.org>,
	Michal Simek <michal.simek@amd.com>,
	linux-gpio@vger.kernel.org
Cc: Krishna Potthuri <sai.krishna.potthuri@amd.com>,
	linux-kernel@vger.kernel.org,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] pinctrl: zynqmp: Support muxing individual pins
Date: Mon, 20 May 2024 11:04:22 -0400
Message-Id: <20240520150424.2531458-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This series adds support for muxing individual pins, instead of
requiring groups to be muxed together. See [1] for additional
discussion.

[1] https://lore.kernel.org/linux-arm-kernel/5bb0dc7e-4c89-4f3d-abc6-41ae9ded5ae9@linux.dev/

Changes in v2:
- Use __set_bit instead of set_bit
- Use size_add when calculating the number of kcalloc members
- Expand commit message with some more motivation

Sean Anderson (2):
  dt-bindings: pinctrl: xilinx: Add support for function with pins
  pinctrl: zynqmp: Support muxing individual pins

 .../bindings/pinctrl/xlnx,zynqmp-pinctrl.yaml | 344 +++++++++---------
 drivers/pinctrl/pinctrl-zynqmp.c              |  61 +++-
 2 files changed, 219 insertions(+), 186 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


