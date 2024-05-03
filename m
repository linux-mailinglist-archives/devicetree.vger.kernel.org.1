Return-Path: <devicetree+bounces-64828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 612948BB0CB
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 18:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B1952872D0
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 16:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 838BB15538A;
	Fri,  3 May 2024 16:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="MDO8H5l+"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925DB155334
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 16:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714753347; cv=none; b=IdCacwYe9XpJn2KOofi6KoZDqvDAZ70uKsCAItOsfTTMDVzp9/PzlRRoLsbFFM23JvWbJ4gkaURglDSy3oxFrE+URa1Be+lYTum9ZDIsEkD1yEi80VqKK+hRoy+quX3egJjOg8dp8Z0Sgne5w771i+dPlbvISvn7EY47hlWLWFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714753347; c=relaxed/simple;
	bh=J4+OVdF9NycY9uPpp5VNvqKh8hgvCLPHf5ryhnZ0hZo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OwBUciKpMl45hYgi60gFni4iuezUWvBEZArX7xpQ72No9AEVAQ0yZiaDRi6X8J6/Tcb1S0owdEUDFHT1DIbbfNjX+TZ2yluMqpKnXjq6/8754lPz6rZJbaOBjFhZr+jHLPl8wSox6F4B2GOYthUDSunWUKJOjyzkbxEUdh7Kqhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=MDO8H5l+; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1714753343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KP44cf8QKhMXu5ffjHI0m+hur3z2Dlqf8PHPq6RoGLQ=;
	b=MDO8H5l+ItJTiZCk3zMF9/ViSoHOLASF0iDshxKCKXR0SyELESqumRGF/p5ojgPuTRh3pO
	ChXq1Rn0V5sUbaLY45OLVcqgpodKVk9wGWxnus9FbP0KXws9JdQ0iWjJN8VV7nxxjArSvJ
	0cOUn/IflKzbcysiXkVAHoaY3r354wk=
From: Sean Anderson <sean.anderson@linux.dev>
To: Linus Walleij <linus.walleij@linaro.org>,
	Michal Simek <michal.simek@amd.com>,
	linux-gpio@vger.kernel.org
Cc: Krishna Potthuri <sai.krishna.potthuri@amd.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sean Anderson <sean.anderson@linux.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] pinctrl: zynqmp: Support muxing individual pins
Date: Fri,  3 May 2024 12:22:15 -0400
Message-Id: <20240503162217.1999467-1-sean.anderson@linux.dev>
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


Sean Anderson (2):
  dt-bindings: pinctrl: xilinx: Add support for function with pins
  pinctrl: zynqmp: Support muxing individual pins

 .../bindings/pinctrl/xlnx,zynqmp-pinctrl.yaml | 344 +++++++++---------
 drivers/pinctrl/pinctrl-zynqmp.c              |  61 +++-
 2 files changed, 219 insertions(+), 186 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


