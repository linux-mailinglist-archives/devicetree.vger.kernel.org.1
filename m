Return-Path: <devicetree+bounces-110639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D15C99B532
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 15:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F8461C21CE4
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 13:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9E061865E5;
	Sat, 12 Oct 2024 13:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="nXVf/4Nx"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2AE154C03
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 13:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728740942; cv=none; b=KB2CZ7kI1JdFtSELQoUhEQaIVdGG2TQOhw9JIuXfPXUvFkLS9vIv35mDOM4BAqGiGIAOkjPEfa1r6BtMflVQehvoEWUDbLqLy7aHkj/cYJy3kURi1b+D/WTlPKR/p3BMkoDf5bDXAZXewffkXEAi3jUgbiTf08BdTW1CpcWZUn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728740942; c=relaxed/simple;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lg2IabkzcWguP+A6JZf7TBrY+IBFMOnhFjSVAhllb2nz2/H3qDEdz0GiIphPhFtC7hEdg9j3/IvGDbu2THQHAYbFRRDdP9kCrgek3RfLGhoZ527HyJ0oDkA9oE8VQbOv+V3XnFQ17/qWEUFIwvsA2062iYRrnXEldUKslJpWHiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=nXVf/4Nx; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728740918; x=1729345718;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=nXVf/4NxTZHXoXG0nAhX3/pYaqyejLHIfi60wrPArd3lHg5s1xzac4xLv7DauHpD
	 +HHVadnN15OlMkzzihotK4v76KVyykD1mr60g2e4GGR5Ed4o+gbdXEF6GElZUO+aM
	 r4FCT2Xo6OE4ekopvXOGBlUuox5XWvzS5bSgAeR7rSGWWeXOT2MmUPNx7/cR5bgJk
	 xXjWCZXJe11GDY96mU1HcnpgV5yarGC+r3hjEPbjNvpO8JE+UDowTJReH4iU/bVrX
	 O4db/GUN1LHjP090vax/5cf10V2Ww1BWORc3+T/dVX2oeUXo5R1zxjmpetc/OmC4l
	 APAPTOsicxKofPr5Zg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MIMbO-1tDrYA1xga-00GJSe; Sat, 12
 Oct 2024 15:48:38 +0200
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
Subject: [PATCH v3 0/2] phy: Realtek Otto SerDes: add new driver
Date: Sat, 12 Oct 2024 09:48:32 -0400
Message-ID: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Oj8+337dM8VJHfGd9kXbSLhqqhg89TtZbSkxaUshb8QSX6Zq1z9
 tWYcsdfrgil6xGLtUbjZFEQzDO740wByqztI6L23i0jFJeTvvhuk0EYYU/gXIg77zcmoYwA
 T+isb827CC/Yo34/WU6p7vlkORG2RhdBLLdTPJpbPSX1NAsq1zim8Dz+nw59zbIp82oWJFv
 /x6GpK8yxkV1tNyykZK4w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:GOTzriedaP0=;iRItdQR7bb+AzeLFf45XxZ+xxGd
 FbEvlPBpVTksghd5NZ7b60kliZt9uJcCMRk07qTUllxeGj5NcH4uYoRDS87y/hART2/mqrjIo
 mV5Cb3xNiiMuFDtjroU2hisLiEq5mLXNyfC1wk+G4wNiAhYiRi6xwQLgkVxzTVbbBeLLgYMW6
 SUgpbZyvel8uCQ5XF0Cy0nR0mWisdAWv2x5nWYic7FNuJzFnc2Nuv3IiI0k/T7pZ7XQWfUqC5
 KB3blMmRIIGmBO4szyvhmJU+HWoiUvhAMW/6Xj6fbrnSFMvZnKH92Ra7jbw6se9lBumC1pKFc
 /wWSOUcNxKrLLhtdo1rLbh2gneLyUnTehyOgxFhpNMuxoYVNDvmKW5usI/43rfO60OcCfMDIr
 5K8JtePVy38xJu7fdcnYNFYT9HDsskoS4uds4dvS4SLK2mJC+YUd2Jxl/0k257dP1tLYIYX6a
 gkhI1l96deM2nydgd8j/mpHNrO1a9wQcFb4FEmVu97+RGWaemCoCIjP5kzUO2NO7eZvvmGAEC
 qMo7emfVL1SOT5KeWgH+usePfetluFvbsKo49ECZX0IyuhXrhdnZe4t7jQ6SKEzT3lxjMnvsF
 1gBoBmG2Smbk4G7TCOxl9y1TpptPeOCncNKJFrqBPh19AC2qdxtSxy5NghWNqt765y4HVP3JW
 sAT2MiRPpXLfOPFx5lzJGd6AKLRnHciAqfMojxuX4EHEu2PW4oBVK8widSJtvw4NNpVUeFjL8
 vb2e18gZK/p4YPwowB1OeELS5PNJ31vk2r1dDVSVqeW8sUP8vVKFe0xdl0DFqyiDvP5uPwA+Q
 MwZ2QPFazclAbZqRna1CJFiQ==

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


