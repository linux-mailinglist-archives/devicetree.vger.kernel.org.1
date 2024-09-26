Return-Path: <devicetree+bounces-105705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA44A9878E0
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 20:09:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04DDC1C21B1F
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 18:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC53165EE6;
	Thu, 26 Sep 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="S+aFpSA/"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6578526AE6
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 18:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727374163; cv=none; b=bEEUGMaDJnA4k9KmiLuWY3emfRSTcfjkRz3kufvWeE608he/mrg443BjxE8xYLTi8IFCeVPMh/fNKzz5dJf+BDue0XR14ggTU2gzibiIcfzpecY3IsblYmo6Xsq+z5HWJNNPuH1ATs7jQki66ewZowjF3SXwAojHoKT6MlEU89g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727374163; c=relaxed/simple;
	bh=ZF2DzBa49BfuanikxreLTcbSEAwgY3M0gB0xW3443fQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Gv8SlGQYbA+q0yKluPs/BXLL0czxCL1DxmL4dz8i2oVGiyYu+F76V/N9flB0HYM93+rr969ia3lIm9Legbf12iBcHUAAuHO9nF3AfkIcnACNQjB/ax6AEYLcsN/vFRedntMhp3CVLwBge1ZvDgp3YeATuP0PBGJeZmAOHpf9gQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=S+aFpSA/; arc=none smtp.client-ip=95.215.58.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1727374158;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CsVPXYKrkdpFFA8bj1gjkMTFFkhyOuco1Zs7NUqsw6Y=;
	b=S+aFpSA/V6FYFj9SsHrGdmlb5qrqPwLo9FQ6cLn/yNMHUSfYElyzFODjQztv/vyqpye/Ts
	WhO+Td6QH9yHb5HAfF5V/GlCTfi0X/UvH83cLXzC9yhkTs1spjByMR1IbLoZN07vfg+zw/
	1AyuHyVvfeEcbbIwldGffwHXC1gMqik=
From: Sean Anderson <sean.anderson@linux.dev>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 0/2] arm64: dts: renesas: Add SD/OE pin properties
Date: Thu, 26 Sep 2024 14:09:01 -0400
Message-Id: <20240926180903.479895-1-sean.anderson@linux.dev>
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

I have CC'd some people who appear to have access to the following
boards which use the versaclock5:

- Salvator-X
- HiHope RZ/G2[MN] Main Board
- Beacon Embedded Works RZ/G2N Development Kit

as I could not find schematics for these boards. You can help me out by
(pick one):

- Run the following command and send me the output:

    $ grep 10: /sys/kernel/debug/regmap/*-006a/registers

- Measure the voltage on the SD/OE pin on a functioning board.
- Inspect (or send me) the schematic to determine the state of the SD/OE
  pin during normal operation.

My suspicion is that all of these boards use the same configuration
(SD/OE pin tied high) owing to their common design heritage. Thanks in
advance.


Sean Anderson (2):
  arm64: dts: renesas: salvator-xs: Add SD/OE pin properties
  arm64: dts: renesas: ulcb: Add SD/OE pin properties

 arch/arm64/boot/dts/renesas/salvator-xs.dtsi | 2 ++
 arch/arm64/boot/dts/renesas/ulcb.dtsi        | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.35.1.1320.gc452695387.dirty


