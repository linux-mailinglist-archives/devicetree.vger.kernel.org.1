Return-Path: <devicetree+bounces-269452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KesG18xomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E10FA1BF506
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C5625304245A
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB3B18027;
	Sat, 28 Feb 2026 00:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+NbmC78"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CACFE54B
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237147; cv=none; b=TeMrJqKcdjifKIec+NnYPMlwW4RJ8jOMSEdEdkgJXDbR/4nAQlZ7pp3wKRrU8Gqzvqm0p5ssMlx3/MOSJ4XpN9mDWF4D+hAW4cGdSXBea6/+YGRw9WdhidSKCay57t9z3iF6tD/tiLTlShqwzDz7tq7kk89icw6TNRHuSoChS6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237147; c=relaxed/simple;
	bh=qzTqk6LQvcL60Am5VdYw8msyeKSQTRSzWgdMPkFQ/Iw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u6BHgCBKEMoUxFbrMbofZtOy+2GtofdvLtON5zXMk25ajBzMeoK+MueN2cZo5+GBl4YFFGWtuxebd767/BN/UymQrWf5+prsMDRnBsm3184aQ+m5MgPpwRjs7pE2eEGcJj93NWnaHCwF5NW+RfW5kLU+7S4SSrR4ujStMQWExNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+NbmC78; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B67B6C116C6;
	Sat, 28 Feb 2026 00:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237147;
	bh=qzTqk6LQvcL60Am5VdYw8msyeKSQTRSzWgdMPkFQ/Iw=;
	h=From:Subject:Date:To:Cc:From;
	b=u+NbmC78T/ZOT5ugEq2UmdcIhbySl/yLefJ4s6+cBi7nj2lR3pGcVXybPCe7Yv7Wp
	 sLCm2Rk/v8vcUY7i2PBi9SS6h65anq930WIWMjPpwl7NCbZUlSF0kek4wLlLzDQ5tB
	 iewe946WBwSpPQqTf9CGSRuZMBOYLR65S6Ezj2m3Iy+Z3fiC5Qhm05RyefzUCU9mwE
	 nQREXPqhGjhUlFw6PDXrYgqXQCIsV47E0MrCSN+MN8Ff04QLwm9EWokChUkPSjrkXJ
	 xnN4aqpDHGHSGDoeuus9RZR2eXxS1kwh3ZOe64wn3fZZ7/taBtQea+hWIDu0R2ei6V
	 AS3+MdvU+d+Ug==
From: Linus Walleij <linusw@kernel.org>
Subject: [PATCH 0/8] ARM: dts: gemini: Additions and updates
Date: Sat, 28 Feb 2026 01:05:40 +0100
Message-Id: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3LTQqAIBBA4avErBvwB8K6SrQInWwWWTgRgXj3p
 OXH4xUQykwCU1cg08PCZ2rQfQd+X1Mk5NAMRplBaWMx0sGJMdyCG78kaNfNWe386AeCtl2Z/tC
 uean1A7ouQABiAAAA
X-Change-ID: 20260123-gemini-dts-fixes-3af8318c9c6e
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269452-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E10FA1BF506
X-Rspamd-Action: no action

This augments and fixes the Gemini DTS files a bit based
on some upstream work from OpenWrt.

- Add the SSP block from the bindings already merged to
  the SPI subsystem.

- Add Verbatim Corporations vendor ID and the S08V1901-D1
  NAS.

- Add Raidsonic IB-4210-B DTS.

- Fix up errors in the Teltonika RUT1xx DTS.

- Small fix to the iTian SQ201.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
Linus Walleij (8):
      ARM: dts: gemini: iTian SQ201 need to boot from mtdblock3
      ARM: dts: gemini: Tag disk led for disk-activity
      ARM: dts: gemini: Add SSP/SPI block
      dt-bindings: vendor-prefixes: Add Verbatim Corporation
      dt-bindings: arm: Add two missing Gemini devices
      ARM: dts: Add a Verbatim Gigabit NAS DTS
      ARM: dts: Add a Raidsonic IB-4210-B DTS
      ARM: dts: gemini: Correct the RUT1xx

 Documentation/devicetree/bindings/arm/gemini.yaml  |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/gemini/Makefile                  |   2 +
 arch/arm/boot/dts/gemini/gemini-nas4210b.dts       | 205 +++++++++++++++++++
 arch/arm/boot/dts/gemini/gemini-nas4220b.dts       |   1 +
 arch/arm/boot/dts/gemini/gemini-rut1xx.dts         |  18 +-
 arch/arm/boot/dts/gemini/gemini-sq201.dts          |   2 +-
 .../dts/gemini/gemini-verbatim-s08v1901-d1.dts     | 225 +++++++++++++++++++++
 arch/arm/boot/dts/gemini/gemini.dtsi               |  17 ++
 9 files changed, 470 insertions(+), 12 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260123-gemini-dts-fixes-3af8318c9c6e

Best regards,
-- 
Linus Walleij <linusw@kernel.org>


