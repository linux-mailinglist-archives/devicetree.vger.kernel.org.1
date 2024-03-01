Return-Path: <devicetree+bounces-47523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CC086D90A
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 02:42:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89B2BB21025
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 01:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C563399B;
	Fri,  1 Mar 2024 01:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="Ijun7IBy"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1A82E40E
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 01:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709257334; cv=none; b=cDZzKDRtllOR92yHViwPGvsArSnFCB3Bc3drfc5vtYoRFuSpPYMycWWvXtRWYkCyNfmSHrDvFaKgRkdoSvGxVZUH7QZs+WrfI00S2PhX9ItwOAq+hvUFZ9LEU1YEEnGEEg6R+F8pJnS8nLDPMhMMp68jpNyeURLLyG52ctNeAN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709257334; c=relaxed/simple;
	bh=INZY+SadHUfqA83CZH6RrT2XxFFOy/Ey75oZx6N8c58=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ri2UAaOG4TCCr26UDMUEQtHAf3N3G/I93CM8D7Ed1tWkQcWfgXicgyhaiv2Bt1hoSy+JdVK4XjnDpvhqiymTh+DQ1hlKs5357flxkGnVQ3ux5rPGfs1NHczpRGd5ipSnvjn1em1fWLHtGuqyPJL0h6ypRXITRc1G4mIgEs3Wdao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=Ijun7IBy; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 380B12C0357;
	Fri,  1 Mar 2024 14:42:10 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1709257330;
	bh=OXAJeaE3GvagN6nGaX3LLx/j6ndgTitcWcCU1jpTvfc=;
	h=From:To:Cc:Subject:Date:From;
	b=Ijun7IByBJnY05GU24Hh+uEs2REurx7LH0e6u4ganznmmQpj2CuruhF7pkgUCjiVp
	 UWFXAOf8vThxo0Z41QX2ltf1N3chfbAOhQiQA6AYFanK6PHSIHZ1cmHqJjT5vsQ7UZ
	 g8Esw+p69AnuQ09CWgqmMwn8aXcI/XvMNcHZW+TPq8wICUDeso66qhx8DTILOcCnGa
	 fwO7+lTCrdb36uMjV9kTZZtyoIymyvsReWmLVwOWBT+yBCO0jw4+nWdtOrQ09JTrF0
	 21dSN82hBiGj9b7LA0fKD+IqLWZCjS84E9IxzyAEAfJPE/q8aj4bQdSwPjy9IKJOx4
	 X+wclV0L7/LQQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B65e132720000>; Fri, 01 Mar 2024 14:42:10 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 0993413EDA8;
	Fri,  1 Mar 2024 14:42:10 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 0457F2807C4; Fri,  1 Mar 2024 14:42:09 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: andy@kernel.org,
	geert@linux-m68k.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	pavel@ucw.cz,
	lee@kernel.org
Cc: linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 0/4] auxdisplay: 7 segment LED display
Date: Fri,  1 Mar 2024 14:41:59 +1300
Message-ID: <20240301014203.2033844-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BKkQr0QG c=1 sm=1 tr=0 ts=65e13272 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=K6JAEmCyrfEA:10 a=VwQbUJbxAAAA:8 a=0R7D7yuIXD4GK1tbB18A:9 a=3ZKOabzyN94A:10 a=AjGcO6oz07-iQ99wixmX:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

This series adds a driver for a 7 segment LED display.

I haven't had a chance to look at the gpio changes that'd be required to
have multiple characters as subnodes. I wanted to get the code that
addressed Andy and Rob's comments out before my weekend.
--
[1] - https://lore.kernel.org/lkml/2a8d19ee-b18b-4b7c-869f-7d601cea30b6@a=
lliedtelesis.co.nz/

Chris Packham (4):
  auxdisplay: Add 7-segment LED display driver
  dt-bindings: auxdisplay: Add bindings for generic 7-segment LED
  ARM: dts: marvell: Add 7-segment LED display on x530
  ARM: dts: marvell: Indicate USB activity on x530

 .../bindings/auxdisplay/gpio-7-segment.yaml   |  42 ++++++
 .../boot/dts/marvell/armada-385-atl-x530.dts  |  22 +++-
 drivers/auxdisplay/Kconfig                    |  10 ++
 drivers/auxdisplay/Makefile                   |   1 +
 drivers/auxdisplay/seg-led-gpio.c             | 122 ++++++++++++++++++
 5 files changed, 196 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/auxdisplay/gpio-7-s=
egment.yaml
 create mode 100644 drivers/auxdisplay/seg-led-gpio.c

--=20
2.43.2


