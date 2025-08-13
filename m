Return-Path: <devicetree+bounces-204249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C07B24BD7
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54F265878F0
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 14:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 981112ED14F;
	Wed, 13 Aug 2025 14:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="zHB4UP1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DFA267387
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 14:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755095370; cv=none; b=QKPFe5cnXSDxCiZs4Yb58dGenu6bg/kMUVEC58h81npZ8FhVq8ItJrcdDWuOtpHpU6bt2v/ZyeLj5r/6dm8jSl184sKStqg7E1uCIsHU61Ncqo0sC5dvrUT88lF6anv+o0POb+yINA3873wLnXBCHMmaM2k1oWZOl+OnKTPqxNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755095370; c=relaxed/simple;
	bh=nKUvmNvJhfoKiR+8cjgcbFgqo7a1ZZT6IqC2KlQW+84=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=sM5Ku/OetnNmGTmmItOJZtt2F+IrzuFJ4s9cW5ArcU24LoGU9NCNtYYNP5rblRlDGXydxVYjmRfZQ6ufjzbQ6h+A1Xps2gHzWkhl1Nu4aQUBwQukBlqycE5jz3GZS12RHMJBkxqQeVl8CuHGFmUewkl7pSp2y68CRoKp8V71t5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=zHB4UP1K; arc=none smtp.client-ip=212.77.101.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 46899 invoked from network); 13 Aug 2025 16:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1755095359; bh=3ja7h7dUqrlW1RAuBrZxtdHPLzTgwxnd+mp3VH45HOw=;
          h=From:To:Subject;
          b=zHB4UP1KzLIuTovJGkJwyQ8tRseD9gEY8heCWYaybZebHY9dRgJWIy0MrzebgBdVj
           cIc9okAH3u05KQeETevPZVKGu5UY/Pku1o4CNzyHg9bknUyGW/ELXZI9P/MQkutHF2
           dO36Kzz04ainAHY6ay4/2agiqg2+os/dhLXwL7vomSXnmLQQeclqzA0F7Jh7IfobLv
           q3Hvy5hNabJt1rCxSIO7dLBQ8ZcL7bm8VxmBu0OT1nB44F5kxiazQb10Em9tsKsysM
           wvxO9uK4mK4NFTAGOuRdQkS0k0WO2C7rqKu24yt25wAn7puKt5PJz7jVKquSloniW2
           AP2Qer5K14w7g==
Received: from 83.24.134.210.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.134.210])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <robh@kernel.org>; 13 Aug 2025 16:29:19 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	kever.yang@rock-chips.com,
	mani@kernel.org,
	tsbogend@alpha.franken.de,
	john@phrozen.org,
	masahiroy@kernel.org,
	olek2@wp.pl,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] mips: lantiq: add British Telecom Home Hub 5A dts
Date: Wed, 13 Aug 2025 16:21:31 +0200
Message-ID: <20250813142917.2053814-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: 544fbd3e13afee0f3bdaf733bddfecec
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [8QN0]                               

This series adds a device tree and bindings for the BT Home Hub 5A router.
It is based on the Lantiq VRX268 SoC. It has 128 MB of RAM and 128 MB of
NAND memory. At the moment, only the peripherals necessary to run the
initramfs image have been added. The remaining peripherals will be added
later. Some of them do not have upstream drivers. This is one of the most
popular Lantiq-based routers within the OpenWRT community.

Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>

Aleksander Jan Bajkowski (3):
  dt-bindings: vendor-prefixes: add British Telecom
  mips: lantiq: add British Telecom Home Hub 5A dts
  dt-bindings: mips: lantiq: Add Lantiq platform binding

 .../devicetree/bindings/mips/lantiq/soc.yaml  |  60 ++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/mips/boot/dts/lantiq/Makefile            |   1 +
 arch/mips/boot/dts/lantiq/xrx200.dtsi         | 104 ++++++++++++++++++
 .../boot/dts/lantiq/xrx200_bt_homehub-v5a.dts |  17 +++
 arch/mips/lantiq/Kconfig                      |  10 ++
 6 files changed, 194 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mips/lantiq/soc.yaml
 create mode 100644 arch/mips/boot/dts/lantiq/xrx200.dtsi
 create mode 100644 arch/mips/boot/dts/lantiq/xrx200_bt_homehub-v5a.dts

-- 
2.47.2


