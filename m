Return-Path: <devicetree+bounces-107074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA1498CDCC
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 09:35:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E40E7B216FB
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 07:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3AD41940BE;
	Wed,  2 Oct 2024 07:35:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D242F2D
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 07:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727854520; cv=none; b=bcdR6N2qm87yB5nhKPbx6oCzOtPe8u51ID0pMT+FbB8w9jmC3U91Nmm3APkCncw6REHRreAVKny4hcv0D2tiEeCVWf83XD7vIIMtkGX2Df0bB7+A2rVa1NdQoYEvWTpTTMxSxKkXTT6Ln1fOCui2EusZbdsifke6PzXKkjYVvlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727854520; c=relaxed/simple;
	bh=T1TASvHPB5TBEZP95zPqinwhLF589z9m+uCKirPEb78=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=M82jFzpYGIa+bw/cc45MZUf7Denj/ZBVnY8bDDr10SzlCutwxwZJr5SAiVVmn6abraNfLSitaK8iu8DosFxntiKZh0RVAsxqPp2nuszxV7U/mNYH+31zpWhXQsSobjgmt+fsiK5IyVF4QHlxJzSJ6Y8qIfoxRUx+t5j12dvI4nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:80d:3d68:c8fe:1932])
	by michel.telenet-ops.be with cmsmtp
	id KKbF2D00Q4Qoffy06KbFwM; Wed, 02 Oct 2024 09:35:16 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1svtt5-0016ye-7g;
	Wed, 02 Oct 2024 09:35:15 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1svttD-003taz-EI;
	Wed, 02 Oct 2024 09:35:15 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 0/2] usb: renesas_usbhs: Deprecate renesas,enable-gpio
Date: Wed,  2 Oct 2024 09:35:11 +0200
Message-Id: <cover.1727853953.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

	Hi all,

The "gpio" suffix for GPIO consumers was deprecated a while ago, in
favor of the "gpios" suffix.  However, there are still several users of
the "renesas,enable-gpio" property, in DT bindings and DT source files.

Hence this series deprecates the old property in the DT bindings, and
converts all users in DTS files to the new property.  No driver changes
are needed, as devm_gpiod_get_optional() as called from usbhs_probe()
tries all suffixes.

The first patch is targeted for the DT or USB tree.
The second patch is targeted for the Renesas DTS tree.

Thanks for your comments!

Geert Uytterhoeven (2):
  dt-bindings: usb: renesas,usbhs: Deprecate renesas,enable-gpio
  ARM: dts: renesas: rcar-gen2: Switch HS-USB to renesas,enable-gpios

 Documentation/devicetree/bindings/usb/renesas,usbhs.yaml | 4 ++++
 arch/arm/boot/dts/renesas/r8a7790-lager.dts              | 2 +-
 arch/arm/boot/dts/renesas/r8a7791-koelsch.dts            | 2 +-
 3 files changed, 6 insertions(+), 2 deletions(-)

-- 
2.34.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

