Return-Path: <devicetree+bounces-168583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E05DFA938BD
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:33:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 912A0189865F
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63FF31B395F;
	Fri, 18 Apr 2025 14:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="XZBC1ED5"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AAE1ADC94
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744986801; cv=none; b=NQrmAVkL7L5IknLjmnLq0hHoKVk5y/JRHC55AdNCwwvvUSVADm3Wh+Glj0Me7GY/WAdrc8SENuy8x7/+Q/75NjZZyCLb7kShn6gIR5ePJ9zEBjtWNAwFJ1ns8aprsnkptt31oHD0k0oWOJqawAU7N84za/0rJRf7Z1Qz7I3WcHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744986801; c=relaxed/simple;
	bh=r6V0DmHyaU5hxFhiC9myY0mAuk8MyY99GOVJuNFVwBQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=S0bh+EuFJnJGBoHIPp7tkaLNEyQKlTJiqcD5fAegXHAyMuCKvc936UKEc8/KaCi00lb1q0YaO8qhaQ6d43zrDzuq5Xyy2+XQAD3oqz3EBIOEFY0EgwmFzHJbM7CudRSplLzU6j12EzzWnvpvolypDu1C/QflxlKYO1oKt7fEMZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=XZBC1ED5; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1744986792; x=1745591592; i=wahrenst@gmx.net;
	bh=EqOCjIcCwZsHM1zqimpSgnGMI/EH9LYfZpUhnMP5OBQ=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=XZBC1ED5xBvRTIa+01LR3EMMo0jgy2iE63lJ8wqNAvUrI5XOQOaQfhQngYFV7a9M
	 vt0/qRKqp07IHTJoPkw4gFg2YmR107LMYgJc48nz+ggGfhi0tV956bk/pknx0uDPY
	 jJpKHAA3aRCBdDWzsFYVSAPZxD/f0FlnSF9JGC6WKPjaSlwc8V/NY3odUm3HZ49nI
	 Sjdlxp6uCYdck10HgySUbVB4+btjhV4tgV3IMxnCcEkByqZiBc1kQWU0t6gq7TquK
	 H9CHlgkKT6VLnf0hD6VFAVNc4pIdaQiBD0+LW8ZMYT8s4xS86Wg7FJeuqv3pUguD8
	 5rhpU95/b6jKNOuQqw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.251.153]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1McpJg-1ueZIY0OCw-00p9Bd; Fri, 18
 Apr 2025 16:33:12 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 0/3] ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd rev)
Date: Fri, 18 Apr 2025 16:33:04 +0200
Message-Id: <20250418143307.59235-1-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:gXc9D8dpaeiHJAKGeWBEbUClC1kkQ3/tZzIJ9BeroE5FB2I5ybw
 KTi/QiBdj/YtzzpwbiYHBZPazi7mOVU7ZTjEjAFQOl6BWPO7rIUK48g9msFcwxPWZzjMbFv
 KQJw5YfXlJSu+o4G4e3j2jz7H5PfiT2/16ajEDRwFvcQ3GWNOcUv2FUruBMbfj1ntj79RdC
 ZC3J1tGqNRaFentWNoI2w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:t/e+Ls1gPTo=;+1EGjn3lTWkeQ39Ef1jY0xHyGAy
 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
 w==

This series adds support for the Raspberry Pi 2 (2nd rev).

Stefan Wahren (3):
  dt-bindings: arm: bcm2835: Add Raspberry Pi 2 (2nd rev)
  ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd rev)
  arm64: dts: bcm: Add reference to RPi 2 (2nd rev)

 .../devicetree/bindings/arm/bcm/bcm2835.yaml  |   1 +
 arch/arm/boot/dts/broadcom/Makefile           |   2 +
 .../arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts | 130 ++++++++++++++++++
 arch/arm64/boot/dts/broadcom/Makefile         |   1 +
 .../boot/dts/broadcom/bcm2837-rpi-2-b.dts     |   2 +
 5 files changed, 136 insertions(+)
 create mode 100644 arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837-rpi-2-b.dts

=2D-=20
2.34.1


