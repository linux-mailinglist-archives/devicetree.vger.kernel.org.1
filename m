Return-Path: <devicetree+bounces-112513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E539A2889
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 18:24:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7ED5281668
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 16:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15F71DF253;
	Thu, 17 Oct 2024 16:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="EkEJykXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C531DEFFC
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 16:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729182287; cv=none; b=uvrOg1zu0lncnZExBSTnSIt1IMulMD1SX9Ezj/XUTcJWXjheQzUcM8XyLvC9GB+MFpmv2Vwbm1FI1LH7aIwOM0rw89iHsjPJWN5sysWwLm+Hga1s20uDNClK+kKq0c13Te3mNVIG7mhENSwk2xc3GjdPKioBobtqjdDsGyot2Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729182287; c=relaxed/simple;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Wj+F1aMnrAqFQXCCOq8ljsgrqB9Ha4eM5OsbCQLp5rowiIpnyEIjn/EiUOg9MN1VcMS3p2h0tH08UGQ8730qfr9tN6sshpG0/W1VFeaBqz4jAdfMaSB6pa0A6S8i+at0mp+/OhZRaCMLbR8tXhZT3Er6iObbd8flDVg+cMedYrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=EkEJykXc; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729182250; x=1729787050;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=EkEJykXctTPpdUod+Edt6VhGvaF3PizXmFNL88cunkPl6o1lZcFm9Td3zihHF7K1
	 XQb2VnFBKO3Rhyj0FTCX/KFW7Yef3AIa7jVQ17qhwdtYLf7UpWFasqrAY6M4v3KKS
	 i9VCCN6/cKvr3hGEIrpifXwPOcpHUDPgO+0BcBEXeoFiVrOFAXEk9PaF9Atdqo2Im
	 znk7exEhyYI3mS9qTIZ+Y4oqmnOSpzK+LTYjeAaXuCGEOga7uTqnje6FFUGrGT8HJ
	 IC317xMuJy5Mhcrhi1019aBblV+01wOmrBYIEOgzcxZlkzgGEr1z6TJBiM1d/kw//
	 /y97w6Oupk0o5vOa1Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N0Fxf-1tpR7d1svv-00xKrl; Thu, 17
 Oct 2024 18:24:10 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v5 0/2] phy: Realtek Otto SerDes: add new driver
Date: Thu, 17 Oct 2024 12:23:58 -0400
Message-ID: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:TiqkoZK0sHUvZjbLqlVGBpwOEgVxu7Sc1xnIEujLfYsheWGhYKZ
 4ECz1kxs5ujquGNKfopu9pyopGLQ/RFk6djA3uo2in0Doi31CzAmYT/mzxngG1xJsgMTo/R
 u6htiYpoUDWzhAyzJzwy/LFacDZHCTNkQsTIgXqDv2Va3rx4seCbUJjCyi9mKwEwkK/7w+u
 wTpQUmUXo7uq4Qg3QTVcA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:P/z53sdpcNQ=;ar2XupGxZHDr9mwNaDGO9/8pxsY
 6JYH9QNC4na7btfm1PwrwVfmDOINm+8nKTnH8JeF4i7+UlyYots0NXQ5SrNC6CMvuLJKEi1co
 VyE4l0VJ77MnAxkGFGVwKRlNfSGPOCrihB2qcq9qh/REv4ajcQ+FMjbjXzb7USIb2Ev7u/hMN
 w/FHTthO3gYGI9iG1hv/u5TcDrtIklhk+e1bB+tXe3xnVsS7Jjr2Et0pRg99uUvWuU7u5nt2o
 Y7hoDUPZCiMCaCLE2kS1nWsbJwwuWll+cLJa227lZQ32vUmWghZAn+opMQIdFSfDrP0BTCx+c
 xlRSrU8u33+61ZBwjqX1npKngQp3I8Fxyfh1deafGiVTIgppjcDLUWIPJYTMwskerDsELW5lY
 cTuyyPdxHcZBd3WjFVDl6/3YsjdPuI6x4QdYhUvjan/F+cBGEw0finQr7fmwmyE87EEGoHqo0
 UOpbaV0sNBwpeDOGcn/6iiuED0o7wup0sHXUkSEfKeJcyYpeuOfGjALhReVDs52L8CtgMnAGL
 F8Zs4zl7xc1cULkM1Cr2nqKejKh/wCBqBdlabbPP355hFApsHf14ew4tkms4VW0BirOrdUBqe
 yhyvI//jExzkFmP5W92LgneqUlqD/q8b0cLkOPsEpVr6AKMJNtFgdv9O5coUcDij75V8rtl7J
 ykECtqNMlUNdaY8xsLUStd+QWVsksthcK4MH9wH9/sn9qxLTj3tjVGMXLBrArUg6GcvWYh1nh
 j30z1JjPrS4+XOktXujwrFnkfgY5TdOXudKYGWjrzimmVhnLNink+FNMt5djk7q+l1J7A0dCW
 ZWAaUJZ2kylkGYjgx/F3JxXQ==

This patch series adds support for the SerDes in the Realtek Otto platform.
These are 8-52 port switch SoCs of the RTL83xx and RTL93xx series with MIPS
cores. The ports are based on 1-8 port PHYs (e.g. RTL8218D) that are connected
via multiple SerDes.

The driver is based on the GPL source drops from the different switch vendors.
It supports all 4 SoC series and was developed and tested on the following
devices:

RTL838x - codename maple - Linksys LGS310C
RTL839x - codename cypress - Zyxel GS1920-24
RTL930x - codename langon - Zyxel XGS1210-10
RTL931x - codename mango - Linksys LGS352C

Due to very little information and fundamentally different I/O handling and
port ranges of the devices the driver assumes and translates some handling
to provide a common consistent interface.

Currently only provide the most basic operations for mode set and device
reset as well as some debugging information if enabled. The strength lies in
the fact that the driver can run patch sequences for the SerDes registers at
certain events, e.g. during setup. This allows to run configuration
operations to get the SerDes up and running.

For more information see:

https://svanheule.net/switches/gpl_source_drops
https://svanheule.net/realtek/


