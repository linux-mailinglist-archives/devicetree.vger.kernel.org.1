Return-Path: <devicetree+bounces-277130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMQ5D1aEumnrXQIAu9opvQ
	(envelope-from <devicetree+bounces-277130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:54:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C759A2BA497
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CED44313BF52
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8033A1A43;
	Wed, 18 Mar 2026 10:51:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3694E39C632
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773831098; cv=none; b=NPabUxyycbAtiTDhEtZjPmLS4Nf9ZkH+iCy4v/AgR4F2pKxvmHBdGoIeMxrsgCEZe7C7T6uNOURoAC2zudUFhjjjPqOvGr8xUMyA2cymAEF4pdYFw/fiV4c2Y1FpnzbmLWwf0FbmBw1qLyuBHAfmlDfAuSAVE5fmKC57/lM50RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773831098; c=relaxed/simple;
	bh=avnBIWWRM7DGbD6sCINWQ+cehHGxCkrSwRIkVNy258o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T7Xys7G0ig/ygJIe354B+LctikwsH0RrE4npNohMc2mcFgUa82rFKATGcBnNYJ62q6HKS4YpgFhXDS+1WhzwpqlmOWvBthSn2Pel4jKCmopnpiOONqa/raVf7uM29u5PZ+HvgUEqLyLGSeEgrkj+t1kY0OY5N1RLNsD61PxOMp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1w2oUn-0001WI-Dq; Wed, 18 Mar 2026 11:51:25 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1w2oUm-000tSM-39;
	Wed, 18 Mar 2026 11:51:24 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1w2oUm-00000003RI8-3n2T;
	Wed, 18 Mar 2026 11:51:24 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v1 0/7] ARM: dts: stm32: Fix mecio1 hardware revisions and ADC/GPIO mappings
Date: Wed, 18 Mar 2026 11:51:16 +0100
Message-ID: <20260318105123.819807-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277130-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid]
X-Rspamd-Queue-Id: C759A2BA497
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series updates the STM32MP15x MECIO1 device trees to properly
account for the physical hardware changes between the R0 and R1 board
revisions.

David Jander (7):
  ARM: dts: stm32: stm32mp15x-mecio1-io: Enable internal ADC reference
  ARM: dts: stm32: stm32mp15x-mecio1-io: Fix ADC sampling times
  ARM: dts: stm32: stm32mp15x-mecio1-io: Move divergent mecio1 ADC
    channels to board files
  ARM: dts: stm32: stm32mp15x-mecio1-io: Fix GPIO names typo
  ARM: dts: stm32: stm32mp15x-mecio1-io: Move gpio-line-names to board
    files
  ARM: dts: stm32: stm32mp15x-mecio1-io: Fix expander gpio line typo
  ARM: dts: stm32: stm32mp15x-mecio1-io: Move expander gpio-line-names
    to board files

 arch/arm/boot/dts/st/stm32mp151c-mecio1r0.dts | 128 +++++++++++++++
 arch/arm/boot/dts/st/stm32mp153c-mecio1r1.dts | 144 +++++++++++++++++
 .../arm/boot/dts/st/stm32mp15x-mecio1-io.dtsi | 146 ++----------------
 3 files changed, 288 insertions(+), 130 deletions(-)

--
2.47.3


