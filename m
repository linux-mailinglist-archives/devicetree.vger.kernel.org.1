Return-Path: <devicetree+bounces-46565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E145586A18B
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 22:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F44D1C223A5
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 21:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11795150984;
	Tue, 27 Feb 2024 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="s6mFzgQL"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052F414EFD4
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 21:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709068973; cv=none; b=Mw7y7XbLiGT1Gn3o5O/EoZFuqOLEw4cpAfY7sBsUcvGhVsiLqH/Thb5K3LccMo+8txkeh3JBd6KxZB1Jze2eBUytHBK6CBsh2O0YPUIr06x+oMGNRWRBsrIMWliiFhwZqQsX9/TjqM8JLBVnHxXICN1QjtdIxk2YhzSWJPdQc/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709068973; c=relaxed/simple;
	bh=pFyI+ACVeuRY+r4SFuVf46uerP2mffWO+eexgZC0QNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BH05pcRJU6k2RLo5BiV6kL0YePJ1O+kvt2sfsRQR5ux82GKLZDNZRNHXnQVwNH+asOSJtQERH+0PWgSGgY1UWtNr2oju7j2BZTOTw/wRwSlRo5G0w0TgLj2bxcFcgE4CcLMGyreB2i0DqhfUlDhhAVXC//AgX1L6RkVq+H6UaBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=s6mFzgQL; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9AFE22C01B2;
	Wed, 28 Feb 2024 10:22:46 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1709068966;
	bh=ygxWIzKsHP4UeYc7hlBajpeYIax/JONmXUaLO8DL254=;
	h=From:To:Cc:Subject:Date:From;
	b=s6mFzgQLuYaqnEIkimWVOTZJgm7xufkJmEGV+5hgDEYudiR1bsusdsc2Ynk+pdZ1V
	 CTeM+yZy17D1hEfHqsmEucQkE46WtLTUFwVAnpp8gAM/pNKKAoSrrSQPiNynPYBfrj
	 /Qok5cJnNLIzpRX+k8XxjNeR1izk1EZKqt7wu4riXinvALbmtAJ4h2VqqN9UbRXNEK
	 DN9CEuyKMRVvtUs6TbRYiPQ359/djRMnc9cXfbqjFse6g1hoUdKpG7YuvG7T3ThLvj
	 XH9LRrzT7R8+v7UsOecXPYx+f33jTKIb/3SPyZHAMEFLDWdeob9g7zwuS8GTFraLCA
	 2LvVRTAPmmmCQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B65de52a60000>; Wed, 28 Feb 2024 10:22:46 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 5E6FA13EDA8;
	Wed, 28 Feb 2024 10:22:46 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 59024280AFE; Wed, 28 Feb 2024 10:22:46 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: andy@kernel.org,
	geert@linux-m68k.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	ojeda@kernel.org,
	tzimmermann@suse.de,
	javierm@redhat.com,
	robin@protonic.nl,
	lee@kernel.org,
	pavel@ucw.cz
Cc: devicetree@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 0/4] auxdisplay: 7 segment LED display
Date: Wed, 28 Feb 2024 10:22:40 +1300
Message-ID: <20240227212244.262710-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BKkQr0QG c=1 sm=1 tr=0 ts=65de52a6 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=k7vzHIieQBIA:10 a=VwQbUJbxAAAA:8 a=FaJi64VH8NIIOk5AOAcA:9 a=3ZKOabzyN94A:10 a=AjGcO6oz07-iQ99wixmX:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

This series adds a driver for a 7 segment LED display.

At this point I've decided not to pursue supporting >1 character. I had
a look at what would be required to add a devm_fwnode_gpiod_get_array()
and got bogged down in OF and ACPI code for counting GPIOs.
--
[1] - https://lore.kernel.org/lkml/2a8d19ee-b18b-4b7c-869f-7d601cea30b6@a=
lliedtelesis.co.nz/

Chris Packham (4):
  auxdisplay: Add 7 segment LED display driver
  dt-bindings: auxdisplay: Add bindings for generic 7 segment LED
  ARM: dts: marvell: Add 7 segment LED display on x530
  ARM: dts: marvell: Indicate USB activity on x530

 .../auxdisplay/generic-gpio-7seg.yaml         |  40 ++++++
 .../boot/dts/marvell/armada-385-atl-x530.dts  |  22 +++-
 drivers/auxdisplay/Kconfig                    |  10 ++
 drivers/auxdisplay/Makefile                   |   1 +
 drivers/auxdisplay/seg-led.c                  | 119 ++++++++++++++++++
 5 files changed, 191 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/auxdisplay/generic-=
gpio-7seg.yaml
 create mode 100644 drivers/auxdisplay/seg-led.c

--=20
2.43.2


