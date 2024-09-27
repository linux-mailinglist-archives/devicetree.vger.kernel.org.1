Return-Path: <devicetree+bounces-105978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB868988B15
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 22:13:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86362286A46
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 20:13:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75FED1C2457;
	Fri, 27 Sep 2024 20:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="S5bXrHzl"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793F61C1AC9
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 20:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727468011; cv=none; b=X72J9iPcQ4N+POM1KeLbsaw+neWXSE6gZcVVmPlt1c4bxm/Ds89ZBkza9HmCDwf09A/NWt5D4XGG7LQ+BLP1PO41mjzgSs3p4dcn0pgU5bIK2F+MKYHl5cXYqOWcNNNJrHCEH0iT47LIWdi0Pf+6T6qZka5zBbLRVIgdgUWDCCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727468011; c=relaxed/simple;
	bh=xI6sh12PnhjW48umf5HvLQVticiVFEK9aS0/hKJ+JyY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=f8aOHpUXbAPkryCnMBZ8n8kwvsw8z6sYl7SayezWmn05hbrjjYC1YyepJgLYsLHH7b5/EItETjz17KIgbhgYBPpae/ENKYXFD0FEA1bmC+eeUpIlO7AjgPDGIkmbgJli5gUaAlEZj6co9gL+gP8UB9BTxy3Jtz4/Ht7xpP4hytc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=S5bXrHzl; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1727468007;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HrrJJQK2mCPHh+Zx29gx+qrh9j0gtgwPd8+dwfKMTPo=;
	b=S5bXrHzlNUHBqb0NUX8jNJxpvHyIJAfzbAAztxsDJLQXQ10M92GGS9BzC1N18WmF4fipCb
	w78dPBxtpAMkaNMCKHtm8++YCceJL8gQ5e4CH3jybYi/5pNTcKHwCFIBiwRSqY/O8xU4h3
	/qpbffTLqFq68u9VMOuRXddBAkBiz+w=
From: Sean Anderson <sean.anderson@linux.dev>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	linux-arm-kernel@lists.infradead.org
Cc: linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adam Ford <aford173@gmail.com>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 0/3] arm64: dts: renesas: Add SD/OE pin properties (part B)
Date: Fri, 27 Sep 2024 16:13:10 -0400
Message-Id: <20240927201313.624762-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Linux can configure almost every part of this clock generator without
relying on the OTP settings. However, the correct configuration for the
SD/OE pin cannot be determined automatically. Therefore, add the
appropriate properties to configure this pin.

Thanks to everyone who replied to part A with board info!


Sean Anderson (3):
  arm64: dts: renesas: salvator-x: Add SD/OE pin properties
  arm64: dts: renesas: hihope: Add SD/OE pin properties
  arm64: dts: renesas: beacon: Add SD/OE pin properties

 arch/arm64/boot/dts/renesas/beacon-renesom-baseboard.dtsi | 2 ++
 arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi       | 2 ++
 arch/arm64/boot/dts/renesas/hihope-common.dtsi            | 2 ++
 arch/arm64/boot/dts/renesas/salvator-x.dtsi               | 2 ++
 4 files changed, 8 insertions(+)

-- 
2.35.1.1320.gc452695387.dirty


