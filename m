Return-Path: <devicetree+bounces-320567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GEtYN8QTSmqE+AAAu9opvQ
	(envelope-from <devicetree+bounces-320567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:20:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6327096AE
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:20:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chaosmail.tech header.s=mail header.b=KQIf+CAZ;
	dmarc=pass (policy=reject) header.from=chaosmail.tech;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320567-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320567-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D69B63007CB8
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 08:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06C236E460;
	Sun,  5 Jul 2026 08:16:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.tech (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3ED336A360;
	Sun,  5 Jul 2026 08:16:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783239408; cv=none; b=f2xMjXdBiyksWT+UJfGH5V/UOGRZv3cRcGf28j3KhOnhLDCYM86sArr8b9g/1hwnrY0QzSWlk5ZTCYU2VdDzhAoYclDDCF+ycGFFTbBdHQVpPBr03esMXHSzf4qZY45pmtYkCO2jYhRVq0denY7WexvlaE3VUeoiabfcbXdKcQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783239408; c=relaxed/simple;
	bh=e9CoEDwG1cbuQpb5x6xSuH1axeei/ZWdFetHF10wjzw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MTAkgciC7PQDXWLXjA0oFkGMafNlPI7xXkNVQaUyUdtOcGGJgxatyaY8NP2A0gdjN/pHEBOZshooFUYt4lTDj0jNH21N0fMKgo4l6w4vc1dHyvDHTQi/1UGgeDT5yp6iXv1ZAZCI+YZFA+0enMeQ5zYemGk4QDjH7btUNQomFZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=KQIf+CAZ; arc=none smtp.client-ip=77.81.229.115
Received: by chaosmail.tech (Postfix) id 9EDFC1CC21F;
	Sun, 05 Jul 2026 08:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1783239398;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pDLQdHX5gTGLk/qcwUj+BnQvTh2X825nYYdv1sm68gE=;
	b=KQIf+CAZQgI6mEIjvqCmqeZF5EZhfYn7NN+F/meU5c8aKwoehil0dFMYAhcFy4NOb+IKh9
	6Sgt4AfMXK33gzOU+QiHhrZwrd5OS6CgyDJUnkVwxe2g0JZhJIHRV4nqfIXZl63fglHPWA
	+MTI9agFqYOGw88gsbDzPkHTQKwH+DE=
From: Sasha Finkelstein <k@chaosmail.tech>
Subject: [PATCH v3 0/3] soc: apple: Add "PMGR misc" power controls driver
Date: Sun, 05 Jul 2026 10:16:29 +0200
Message-Id: <20260705-pmgr-misc-v3-0-51b75fed6f73@chaosmail.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22OzQ6CMBAGX4X0bE1bKERPvofx0C4LrJGftNhoC
 O9uixcSPX7JzOwuzKMj9OycLcxhIE/jEEd+yBh0ZmiRUx03U0KVohKKT33reE8euEEJttYWFFQ
 s8pPDhl5b63r7bv+0d4Q5BRLRkZ9H996OBZm4f90gueBFIyptcnPSIC/xk9H3hh7HGaFjKR7UX
 s/3ukq6VaU1UoA2xY++rusHe0iBjPgAAAA=
X-Change-ID: 20260702-pmgr-misc-ae1cbd5bc2c7
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sasha Finkelstein <k@chaosmail.tech>, 
 Conor Dooley <conor.dooley@microchip.com>, Hector Martin <marcan@marcan.st>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783239397; l=1926;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=e9CoEDwG1cbuQpb5x6xSuH1axeei/ZWdFetHF10wjzw=;
 b=jKItj/3tDyZFn57sHoVKW4ElnRhTcuHnatqYe3oFAnkxL9uFJo8h5ghENN7SPn+8kJ4Fzhxge
 dEssGlepPjQBonZ1R45SUGLF0O4PxztxG8ey+LAXNxAX2XlUb3CEqMI
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chaosmail.tech,reject];
	R_DKIM_ALLOW(-0.20)[chaosmail.tech:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320567-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:k@chaosmail.tech,m:conor.dooley@microchip.com,m:marcan@marcan.st,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chaosmail.tech:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chaosmail.tech:from_mime,chaosmail.tech:email,chaosmail.tech:mid,chaosmail.tech:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,msgid.link:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B6327096AE

Certain Apple SoCs have additional power state controls that are using
a separate "misc" mmio interface. Currently this includes the fabric
and memory controllers on pro/max/ultra SoCs.

This series adds a driver to put those in a low power state when the
machine enters sleep. The power savings are SoC-dependent and are
around 1W.

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
Changes in v3:
- Remove ability to probe only one control, it is not used anyway
- Allow building as module
- Style fixes
- Link to v2: https://patch.msgid.link/20260703-pmgr-misc-v2-0-4b26ba10c5a4@chaosmail.tech

Changes in v2:
- Error handling fixes
- Reword binding description
- Link to v1: https://patch.msgid.link/20260702-pmgr-misc-v1-0-4f075a3a95c1@chaosmail.tech

---
Hector Martin (1):
      soc: apple: Add driver for Apple PMGR misc controls

Sasha Finkelstein (2):
      dt-bindings: soc: apple: Add Apple PMGR misc controls
      arm64: dts: apple: Add pmgr-misc nodes to t60xx

 Documentation/devicetree/bindings/soc/apple/apple,t6000-pmgr-misc.yaml |  45 +++++++++++++++++++++++++++
 MAINTAINERS                                                            |   1 +
 arch/arm64/boot/dts/apple/t600x-die0.dtsi                              |   7 +++++
 arch/arm64/boot/dts/apple/t602x-die0.dtsi                              |   7 +++++
 drivers/soc/apple/Kconfig                                              |  10 ++++++
 drivers/soc/apple/Makefile                                             |   2 ++
 drivers/soc/apple/apple-pmgr-misc.c                                    | 181 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 253 insertions(+)
---
base-commit: e5d9690657844a2645a518cdf838206f6daf513e
change-id: 20260702-pmgr-misc-ae1cbd5bc2c7

Best regards,
--  
Sasha Finkelstein <k@chaosmail.tech>


