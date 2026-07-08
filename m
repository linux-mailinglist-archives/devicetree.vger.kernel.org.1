Return-Path: <devicetree+bounces-323216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HL9bEUPOTmrbUQIAu9opvQ
	(envelope-from <devicetree+bounces-323216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:25:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A1672ADE0
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:25:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b8GPc4j6;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323216-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323216-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A61A0300F7A0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD213FCB0A;
	Wed,  8 Jul 2026 22:25:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6324E3ED3CD;
	Wed,  8 Jul 2026 22:25:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783549502; cv=none; b=N1bMq3aCbZfu6wt74kGdyib6MrHp7dlI4SQtFyLoG2VoZX2cubxoW/OpghViKsEE7zvSsps6vngO1G8mtANQOrIJ0n1IxQIEEheZtIf9vTDUzha8/8s9oVJso1n8UHs2RuKX0ZPGjSuwTXuhpgvPmGWkk56SQOxTBX01+cER7Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783549502; c=relaxed/simple;
	bh=nxlzeLusRnCAwzljk4jRSyPH1GliWW8fxfaJjLFzuXU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OVz+bX6YNG8xSmEMh5bVz29aU41A3yArzOQ3pp72qXn0lO6BR3LbGWS2lRZa8oc8dlV5p5PkxF/MpUGdx2+xlyteeoCyErBPXJKIxrd47fvl42QWJt9wWHofEew6Q2acHiUfpbLsql4t609RcVVq4PRPLew1YOWsuUy309Yp0Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8GPc4j6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F6A71F000E9;
	Wed,  8 Jul 2026 22:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783549501;
	bh=k72FKtErkVWXYuvUzP0hO6M77clth2kx7kycCbq0WD4=;
	h=From:Subject:Date:To:Cc;
	b=b8GPc4j6lHcpRrNKWph1ZmKBd4PfZG6VijUiWEVTXPAyeva93kV6pzyoKiff+vhfJ
	 pK9+o9/M177Bg5x0STwXjI2M3/v/G86AX4nfc/uSM4yfEyZe4pjSmFkVfGt+sBmmBY
	 +IiU5tniRfjanBZ5RfriXEDPwrNVE5O4yDMKALT8HlXbRuWHACzhVlh7jy0Ss1+A5y
	 iA3j0CXPZY1oLBa4U7hthbz8dydjmHgn5uMadUMRogEogYad1ElwMC/JkEK7ZSkz67
	 Lc55U7IZviXNqKCuRvuj6/a+IJRuHclQcwxuIrzQwQVsbyV7rIv95NhEGWZDAY67Cd
	 EwqO+r96XvzqQ==
From: Linus Walleij <linusw@kernel.org>
Subject: [PATCH 0/3] ARM: Enable IXP4xx to use little endian mode
Date: Thu, 09 Jul 2026 00:24:54 +0200
Message-Id: <20260709-ixp4xx-little-endian-v1-0-e9622d0ba9e4@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQqEMAxA4atI1hOI9Q+9yjALtVEjUqXtSEG8u
 1WX3+K9AxxbYQdNcoDlXZysJiL9JNBPrRkZRUeDIlVSRRVK2PIQcBHvF0Y2WlqDdZ1Rp9VAmSo
 gppvlQcKz/f5eu383c+/vF5znBaafYSR4AAAA
X-Change-ID: 20260707-ixp4xx-little-endian-9930bd2f0325
To: Russell King <linux@armlinux.org.uk>, Imre Kaloz <kaloz@openwrt.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323216-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux@armlinux.org.uk,m:kaloz@openwrt.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:arnd@arndb.de,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linusw@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0A1672ADE0

This modifies the boot path for the IXP4xx, the remaining big
endian ARM system, to enable it to be booted into little
endian mode.

Motivation: big endian is less and less supported by the kernel
and for the ARM architecture, IXP4xx is carrying the entire load
since it is booting into big endian by default. After this there
is no currently supported ARM system that cannot be booted in
little endian mode, and the big endian support may be retired,
if so desired.

How this is done:

- Enable the XScale to switch to little endian mode from a big
  endian boot loader just as it can today switch into big endian
  mode from a little endian boot loader.

- This works fine because when we switch endianness all bus
  accesses are also endianness-switched (swap32) and everything
  will keep running as before from memory.

- The object file will boot in big endian mode. This is done
  by padding the file to an even number of bytes and then
  endianness-swap (swap32) the entire binary before it is loaded
  into memory. This means the file will "look as if it is
  big endian" when it starts executing, and the first few
  instrucions up until the endianness switch snippet are
  executed as big endian.

- Workarounds for addressing the last byte in 32bit address of
  the serial port at 0xc8000000 by pointing at 0xc8000003 were
  uniformly dropped. If the system shall actually boot in
  big endian mode again, we need to fix the serial driver
  instead of using this hack.

I did not add the logic to pad and byteswap the image to get a
bootable "big endian" object to the kernel build: just the bare
minimum. The missing pieces are:

  $(Q)size=$$(stat -c%s $(output_dir)/zImage); \
  pad=$$(( (4 - size % 4) % 4 )); \
  if [ $$pad -ne 0 ]; then \
      dd if=/dev/zero bs=1 count=$$pad >> $(output_dir)/zImage 2>/dev/null; \
  fi
  $(OBJCOPY) --reverse-bytes=4 -I binary -O binary zImage zImage-swap32

The resulting zImage-swap32 will boot on a big endian system
and switch itself into little endian mode.

Tested on the IXP4xx Avila platform with a little endian
OpenWrt root filesystem on flash.

Surprisingly all drivers on the IXP4xx appear to work just fine
in little endian mode, due to care taken when authoring them.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
Arnd Bergmann (1):
      ARM: decompressor: always set endianess on xscale

Linus Walleij (2):
      ARM: ixp4xx: Relax endianness
      ARM: dts: ixp4xx: Drop the reg-offset hack

 arch/arm/boot/compressed/Makefile             |  8 --------
 arch/arm/boot/compressed/big-endian.S         | 14 --------------
 arch/arm/boot/compressed/head-xscale.S        | 12 ++++++++++++
 arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi | 10 ----------
 arch/arm/mach-ixp4xx/Kconfig                  |  5 ++---
 5 files changed, 14 insertions(+), 35 deletions(-)
---
base-commit: aa4ffae4701cc6edf6303bf35c42e24f335d6899
change-id: 20260707-ixp4xx-little-endian-9930bd2f0325

Best regards,
--  
Linus Walleij <linusw@kernel.org>


