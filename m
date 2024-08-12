Return-Path: <devicetree+bounces-93041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B5794F7D4
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 22:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8F59283DCE
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 20:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB4C7192B86;
	Mon, 12 Aug 2024 20:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="VRQS9z7q"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2B7191F85
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 20:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723493077; cv=none; b=EhKSbHC+WWzzimlCHkh0l4dhZJn8W5u9rjXtPCp95AC0vGEqPCF10smpXipBWvBstAsK6B0O5K4xabJWsqeJvESvN5KR7Zonqru3gPIDryZR1lyxxY0crQv8EiCNEEVFVw5i0soVQbngI57mItRrXAxjf/ZeEeLV3+UllltNDKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723493077; c=relaxed/simple;
	bh=YvzG+MJpGUYi5Lk2zrpZ5L1V+sCxpZkS2zgfwnI0ZDE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VOqD1LpyW0uo6D8EP3wQpjTmxGIlp6TOvBHG+XvGvaDgiG/A5oNAapg4KkDbnS+qBFoMmR06+I+BDmYXtwR3vj2Yto9Myd50aYSMct7gvwhVJeGlCDzgMyC2QUc6LC5PjRJFvzZ0AbK0maBtLoITsV+L6xAoGOuxAgSEL4atzWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=VRQS9z7q; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1723493052; x=1724097852; i=wahrenst@gmx.net;
	bh=M6An+HbVerw4Xc90B+VnZiQHHexA47T4Dg9kUXglgRA=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=VRQS9z7qoRw5zcMtk8ZKrjpK3J+7Ewtzad0fMKfo3NnkNqv5sSv2pO+DLXmJ+Sbn
	 +WC7yaHVlG0Ikb7uKcdEgPRmAY3lq+JZ/Zj28yI9Zmge2l/N6RgVpdvHf+PT1tAQh
	 DFS+M8XJ8l8lbmm13hshrDR6bNbHNNDCnlz2G3M08cCbNCPUq7GKHoPfMKm1HS9FB
	 ycXRLZ7lB4ZQfx81/qlSC2yQujpqfg9KTTEjWvCRS69/Gixd8UUTliXy76Ii2sDZU
	 ziBHN56atka6jsxSbc/5NyQIXjmFLuCrCe3Ifa/d18Tgd4PUvRJVcoeR5F8/F1fjE
	 mIMRiKLjoMbEYBzZMw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MRCK6-1srqtk0hRU-00MrVI; Mon, 12
 Aug 2024 22:04:12 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 RESEND 0/4] ARM: dts: bcm283x: Improve device-trees and bindings
Date: Mon, 12 Aug 2024 22:03:54 +0200
Message-Id: <20240812200358.4061-1-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:E1CLL3kgmgqg0B2wPIB3WE6h5C1UDgMMFFfg8QeR17GsYImq97B
 J40vxCRZw1ZAx8SOiBhvIaChgh5CMHVbxZwS4LJ2kzRt20kkIHbOHV7IlbzdX109hwXPp8d
 SBr45VcWER0hQK54NPP2pod3SW5319Is8Np/9Z/SLx3g0E9eYPQsZGVuAq6n+9uRj7LuRwy
 EYFk1mKPOl6gXyIaWKyaA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:c0a5L8+BUPM=;YsIkEM6PaHcLhPAbdMCH6gfx8rH
 gVbxORMoCTxKB6XB56rzIYvXH43EmYs3WQ5RSvoniUep8S8RmLQ3SA5GhdmoonZdN/Gc5e5e7
 KAgBuErUEXccvZiTDaEODoyYw6DIFViZBJNPL55fCfpYy/NsapxDAK5VS16a2q/Cd3UqcfqEO
 QP+7VEHQMbdMMIbej38EVZZY3LRzdK3DoMyUJxD/yMRGyJglRrXqcMr2B/nHoKOnqF/kp9bmx
 BHIG4lHwo2XXNsjauvdDiDT5bK8/55Bbu6nrHiRf+nXxWA+n4w7FaZcb2cur+a8F+BltKsGKm
 8Jp77zacGYHEE3opXXqll1MfdVBMxJGOPDh6zjwmtAALcGvL9ukBl65yvXAOiOE2RXRpnEuNF
 5KQCUvZnvu5Dwtm207Z02h9MsGIPVEqm9Q2mj/8MNgf9qlCGDtQhpDQIVKPzfXqCFt8zbizqq
 1CjaCVuFdos0HE3lkjorZtagbwSow/EWwD5TkPoi+uhrckGnD2u85DXBiyqdwmlK8JDxqJUa3
 NzS45hSuDqFkC8cKIxlJhtzh2JMXAtzCXg6vFCpoDcKdydU2LVFbCkWhd1IGb3+NplOH6M1uq
 IzvFml3tD9wYyVxDqTlxtuhUEk4fFPvWoV5aSa/QdN9YN/4WYENSJjaVVifxTPFmJwiCJHNJZ
 PV2gEPePdyaxBK8cOq6N2slF0YiY1g5tpI+X52uYJRH+eHoPIWYTVaoxVMfmrlzOmA128sveB
 Ik5oEIHMersXGunzKSrIlUCtgB7JnybyK6zLi72u1eyjWvnI568kNNvphxwFYXWPhNoIzw7Gx
 x07HA78pIGGwDlgabLfjT7Gw==

This series fix some dtbs_check warning for the Raspberry Pi boards
and convert 2 txt DT bindings for BCM2835 to YAML.

I hope it's okay to combine ARM & arm64 DT fixes.

Changes in V3:
- drop already applied patches (brcm,bcm2835-dma, brcm,bcm2835-mbox,
  pwm-bcm2835) from [1]
- add new patches to address bcm2836-l1-intc
- drop accidentially added Reviewed-by for patch 1
- add Raspberry Pi Kernel Maintenance as maintainer

Changes in V2:
- drop already applied patches (bcm2835-sdhost, bcm2835-thermal)
- drop patch "dmaengine: bcm2835: also support generic dma-channel-mask"
- keep brcm,bcm2835-dma for ABI compatibility which also resolve
  dependency between patch 2 and 3
- drop quotes in patch 2 as noted by Rob Herring
- add interrupt description as suggested by Rob
- add Rob's and Uwe's Reviewed-by

[1] - https://lore.kernel.org/linux-arm-kernel/20230617133620.53129-1-stef=
an.wahren@i2se.com/

Stefan Wahren (4):
  dt-bindings: timer: convert bcm2835-system-timer bindings to YAML
  dt-bindings: interrupt-controller: convert bcm2836-l1-intc to yaml
  ARM: dts: bcm2837/bcm2712: adjust local intc node names
  ARM: dts: bcm271x: add missing properties to local_intc

 .../brcm,bcm2836-l1-intc.txt                  | 37 --------------
 .../brcm,bcm2836-l1-intc.yaml                 | 51 +++++++++++++++++++
 .../timer/brcm,bcm2835-system-timer.txt       | 22 --------
 .../timer/brcm,bcm2835-system-timer.yaml      | 50 ++++++++++++++++++
 arch/arm/boot/dts/broadcom/bcm2711.dtsi       |  2 +
 arch/arm/boot/dts/broadcom/bcm2837.dtsi       |  2 +-
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     |  4 +-
 7 files changed, 107 insertions(+), 61 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller=
/brcm,bcm2836-l1-intc.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller=
/brcm,bcm2836-l1-intc.yaml
 delete mode 100644 Documentation/devicetree/bindings/timer/brcm,bcm2835-s=
ystem-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/brcm,bcm2835-s=
ystem-timer.yaml

=2D-
2.34.1


