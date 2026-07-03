Return-Path: <devicetree+bounces-320127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6FAEJ8GuR2rQdQAAu9opvQ
	(envelope-from <devicetree+bounces-320127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:44:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEF9702793
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:44:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chaosmail.tech header.s=mail header.b=fD0bWHtD;
	dmarc=pass (policy=reject) header.from=chaosmail.tech;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320127-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320127-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 28961302779E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440E83D3317;
	Fri,  3 Jul 2026 12:44:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.tech (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DA538A73F;
	Fri,  3 Jul 2026 12:44:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783082680; cv=none; b=KtiIcSYBLN2DkDNL/gT3rnczTbw9lJE7OBHn5usAz+UvcEvMfmP4fHpW9ClKu10AO4Us0yAmikamPbydVtvHdIiyo4LclFZtLAmBpElleBXgTsfubcu65BUpzJi20t8fKJv+rzNjYrw0MxjqHfz24zEvJVC0JK5qlQgDSeVyeyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783082680; c=relaxed/simple;
	bh=8D7Po7SCptGVEHm0r1MA8F5t/rLXTgEyoB3RxAxQRVM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UEju+N3twyahduyu257OYAmXka6PLc+6HrYL1EtnpkvyMt3lU6eCHKvR3j4gK2FFXNOtJn1hp+UBSnFJJTpUSyzbf6WXY0ZZtB2pr+k6fIWc686iX87TE/PZbl3p8IZRgHlIqOfueC/J0etGs+RT/Ee+slcxM9tbuVLh6Q66l0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=fD0bWHtD; arc=none smtp.client-ip=77.81.229.115
Received: by chaosmail.tech (Postfix) id 61AC31CC21E;
	Fri, 03 Jul 2026 12:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1783082669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8sQSDqAelniprUW0bjLh4r7TPdrV1wyI0a++eXewKTc=;
	b=fD0bWHtD56p8eHPQqsgumvfj42tKkzjKFtun/Ui6JnVvuo3KeE5/XJTfv8TYl9UG4OTV7c
	ENIt18XZMj3CVi3508IJK3cMRCTsf6GaaGGwHTBJnQcaj76xnIpqqYgrIjM8oN7MR0G1y5
	TKIJya7jhsnnPE5ej/jB2AFU2XnJXiQ=
From: Sasha Finkelstein <k@chaosmail.tech>
Subject: [PATCH v2 0/3] soc: apple: Add "PMGR misc" power controls driver
Date: Fri, 03 Jul 2026 14:44:10 +0200
Message-Id: <20260703-pmgr-misc-v2-0-4b26ba10c5a4@chaosmail.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22Oyw6CMBBFf4XM2pq2Womu+A/DogwDjJFHOkg0h
 H+3xa3Lk5yce1cQCkwCt2yFQAsLj0MEe8gAOz+0pLiODFbbi861VVPfBtWzoPJksKpdhRZziP4
 UqOH33rqXP5ZX9SCcUyAZHcs8hs8+tpjk/esuRml1bnTu/MlfHZoiPhml9/w8zoQdlNu2fQH3x
 RwUuQAAAA==
X-Change-ID: 20260702-pmgr-misc-ae1cbd5bc2c7
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sasha Finkelstein <k@chaosmail.tech>, Hector Martin <marcan@marcan.st>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783082668; l=1706;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=8D7Po7SCptGVEHm0r1MA8F5t/rLXTgEyoB3RxAxQRVM=;
 b=e3ZFilP3ziJzNDOl7lwPRWQtPWYiZ5G7wAfzdU4XPb501CsLWgxMMUj2XHpsqfs0+DPbrs0Ly
 fzzPfCV5UPwAkaC2yglrcnQKXYlcPbgI60fspd56MPuzJFdeX7Wu3y1
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chaosmail.tech,reject];
	R_DKIM_ALLOW(-0.20)[chaosmail.tech:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320127-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:k@chaosmail.tech,m:marcan@marcan.st,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,msgid.link:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BEF9702793

Certain Apple SoCs have additional power state controls that are using
a separate "misc" mmio interface. Currently this includes the fabric
and memory controllers on pro/max/ultra SoCs.

This series adds a driver to put those in a low power state when the
machine enters sleep. The power savings are SoC-dependent and are
around 1W.

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
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
 drivers/soc/apple/apple-pmgr-misc.c                                    | 179 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 251 insertions(+)
---
base-commit: e5d9690657844a2645a518cdf838206f6daf513e
change-id: 20260702-pmgr-misc-ae1cbd5bc2c7

Best regards,
--  
Sasha Finkelstein <k@chaosmail.tech>


