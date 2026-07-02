Return-Path: <devicetree+bounces-319354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GOUpBuNXRmrERAsAu9opvQ
	(envelope-from <devicetree+bounces-319354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:21:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFED6F77E7
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:21:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chaosmail.tech header.s=mail header.b=PvRN39e2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319354-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319354-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=chaosmail.tech;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9199632207BC
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9A76481AA2;
	Thu,  2 Jul 2026 12:06:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from chaosmail.tech (chaosmail.tech [77.81.229.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DC147DFBF;
	Thu,  2 Jul 2026 12:06:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782994019; cv=none; b=V347yyYl9de3gT/wtnOnsFLI+tpudkSeZbl4FceloYCg1fvbJGc4iJtzUBHklaiDPlNko+JeVruYwLmS+h7HrjRz2LA4H/qb05syn9oQ9p80crWtyXKE/HVHh7FMfB5mKaKUFKPdTiUbuAXKCwM0y29bvlBV1pgfG4A1Z78AOmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782994019; c=relaxed/simple;
	bh=jUlZSi3Y3F/0QuIxjuAl+t+pHRC3h/ygSTf4tVgbRFg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g4BoE6MY0kLxbFWDJTBW9GTGpJxhLcqnLaoMx8EZOgYMJ6ZIAnhYfEvy2JH2ygGGmcnyqBdr73OYRwmy/uHHun3/tyFgLAsd4GEBPmO9urE1Id+m31xRR3jFBFn5iVPGwhF6Siw69acMMc2jQHxPUGh1nVMeCtrdJzd2zG6d6PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chaosmail.tech; spf=pass smtp.mailfrom=chaosmail.tech; dkim=pass (1024-bit key) header.d=chaosmail.tech header.i=@chaosmail.tech header.b=PvRN39e2; arc=none smtp.client-ip=77.81.229.115
Received: by chaosmail.tech (Postfix) id 347FD1C888A;
	Thu, 02 Jul 2026 12:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chaosmail.tech;
	s=mail; t=1782994005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=SQNpC2MoYnLQAl/v3dxVQexz4TEZdGqYDZch7PZVNZg=;
	b=PvRN39e2OtdyoOiqOOVP2E/XParelVBDKN6Tf444vbUXewXfCOBlZnpohD/6T1W3NOmIe5
	dJjT9qJqYMm5oDZmrOLvAh9YMZkHL3re6DIqUkSHUu9VMy1g2An0m+js2RnSAjbydVV8xM
	T33OvLIxpDx1AYgRkKBZGHH3NJdd/ac=
From: Sasha Finkelstein <k@chaosmail.tech>
Subject: [PATCH 0/3] soc: apple: Add "PMGR misc" power controls driver
Date: Thu, 02 Jul 2026 14:06:25 +0200
Message-Id: <20260702-pmgr-misc-v1-0-4f075a3a95c1@chaosmail.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXM0QpAMBSA4VfRubbaViivIhd2HBxltIPU8u6Gy
 6/+/ghCgUmgziIEOll49QkmzwCnzo+kuE8Gq22pK23VtoxBLSyoOjLo+sKhxQpSvwUa+PpeTft
 bDjcT7u8A7vsBoLwa2m0AAAA=
X-Change-ID: 20260702-pmgr-misc-ae1cbd5bc2c7
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sasha Finkelstein <k@chaosmail.tech>, Hector Martin <marcan@marcan.st>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782994005; l=1550;
 i=k@chaosmail.tech; s=20241124; h=from:subject:message-id;
 bh=jUlZSi3Y3F/0QuIxjuAl+t+pHRC3h/ygSTf4tVgbRFg=;
 b=24ErvKIbhJOk782EuxDOBxCg4INtj7JZ+kfwYzPQK38zAqwbYHrJ+KabRgYh7yB2Mirj5Qif0
 Z2vR12trINkDRcS8Vcb7pzaWD7AtPvbEmZ9fFceWRCi171ACZ57jl1N
X-Developer-Key: i=k@chaosmail.tech; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chaosmail.tech,reject];
	R_DKIM_ALLOW(-0.20)[chaosmail.tech:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319354-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:k@chaosmail.tech,m:marcan@marcan.st,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[k@chaosmail.tech,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,chaosmail.tech:dkim,chaosmail.tech:email,chaosmail.tech:mid,chaosmail.tech:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9BFED6F77E7

Certain Apple SoCs have additional power state controls that are using
a separate "misc" mmio interface. Currently this includes the fabric
and memory controllers on pro/max/ultra SoCs.

This series adds a driver to put those in a low power state when the
machine enters sleep. The power savings are SoC-dependent and are
around 1W.

Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
---
Hector Martin (1):
      soc: apple: Add driver for Apple PMGR misc controls

Sasha Finkelstein (2):
      dt-bindings: soc: apple: Add bindings for apple PMGR misc controls
      arm64: dts: apple: Add pmgr-misc nodes to t60xx

 Documentation/devicetree/bindings/soc/apple/apple,t6000-pmgr-misc.yaml |  45 +++++++++++++++++++++++++++
 MAINTAINERS                                                            |   1 +
 arch/arm64/boot/dts/apple/t600x-die0.dtsi                              |   7 +++++
 arch/arm64/boot/dts/apple/t602x-die0.dtsi                              |   7 +++++
 drivers/soc/apple/Kconfig                                              |  10 ++++++
 drivers/soc/apple/Makefile                                             |   2 ++
 drivers/soc/apple/apple-pmgr-misc.c                                    | 177 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 249 insertions(+)
---
base-commit: 59574e5978abfc2ce1c194ea0200eb6fc718d8ce
change-id: 20260702-pmgr-misc-ae1cbd5bc2c7

Best regards,
--  
Sasha Finkelstein <k@chaosmail.tech>


