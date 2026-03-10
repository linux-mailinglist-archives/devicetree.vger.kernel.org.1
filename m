Return-Path: <devicetree+bounces-273588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDQ4LHA2sGkKhQIAu9opvQ
	(envelope-from <devicetree+bounces-273588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:19:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D82253292
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E97F8320EF3F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16E932D948D;
	Tue, 10 Mar 2026 14:15:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92F42C11D1
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773152117; cv=none; b=G3L9YkbD9tt+ZD6ECHJNYHiFql8SHpg26nD0OTeobSjGBJdCsGZUuCTzYbuTyZ7zXT2JVQhhDY+5jOd+WU/FY86vm/elIF9BPPj2Veero+uE6O29jj+vBdkGGa34/mZ15N4ORpAwHC4jUv3bL8G39pvR4polc1VO+jjWEifXzAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773152117; c=relaxed/simple;
	bh=N9514f0RNEbSDNCJoPfbCNal9nNlU1pfx+gQoyGcuwM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YgdNuPzK7/6e2HL0Gew/Oq2njQzwrmH6AobAn0B4x/WkBVuk1yBDwWJPjYwSuuCMpKkhLZdJFxZomq/8+yBnT40bIAYyyxK0LtJFnm2+QLg1eA/0DmZlKt6IvheRsP8qioFfWncvOX+9LQQWn3jaRFiDPZKiXH5asc3WMtmGORA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzxrU-0006Tq-GM; Tue, 10 Mar 2026 15:15:04 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH v2 0/2] leds: lp5860: add enable-gpio
Date: Tue, 10 Mar 2026 15:14:38 +0100
Message-Id: <20260310-v6-19-topic-ti-lp5860-enable-gpio-v2-0-3fcc617fe03a@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE4nsGkC/5XPQW7DIBCF4atYrDsRYBscK6pyjygLDBNnpNi4Q
 FCqyHevQ3btqst/FvPpPVnEQBhZXz1ZwEyR/LyF/KiYvZp5RCC3NZNcKi6FhqxA7CH5hSwkgtv
 SdooDzma4IYwLeehqy1UrXd0Yx7Y/S8ALPYpxOr874Nd9o9L7yCaM0RSqrw5Fqvm+SM0fKWsQM
 Ah0yirTaIvHBefxnoKf6bFz+PkiBxMRrJ8mSn2V9Y5DsIK98CvF5MN32ZtF0f8xLQvgcGmxQ4d
 D63TzC2fndV1/AEcyx6xUAQAA
X-Change-ID: 20260217-v6-19-topic-ti-lp5860-enable-gpio-83c0652d34ad
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Steffen Trumtrar <kernel@pengutronix.de>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: A2D82253292
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,pengutronix.de:mid,pengutronix.de:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.703];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-273588-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action

The LP5860 can have the VIO_EN pin either be connected to VIO power
supply or a GPIO.

Add support for the pin to the devicetree binding and the driver.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- add acked-by
- updated deps to newer lp5860 series
- rebased to v7.0-rc1
- Link to v1: https://lore.kernel.org/r/20260217-v6-19-topic-ti-lp5860-enable-gpio-v1-0-f5e8edeb5d74@pengutronix.de

---
Steffen Trumtrar (2):
      dt-bindings: leds: lp5860: add enable-gpio
      leds: rgb: lp5860: add enable-gpio

 Documentation/devicetree/bindings/leds/leds-lp5860.yaml |  7 +++++++
 drivers/leds/rgb/leds-lp5860-core.c                     | 10 ++++++++++
 include/linux/platform_data/leds-lp5860.h               |  1 +
 3 files changed, 18 insertions(+)
---
base-commit: 559f264e403e4d58d56a17595c60a1de011c5e20
change-id: 20260217-v6-19-topic-ti-lp5860-enable-gpio-83c0652d34ad
prerequisite-message-id: <20260309-v6-14-topic-ti-lp5860-v7-1-b1ed6c6a47ce@pengutronix.de>
prerequisite-patch-id: 45e295aab0d3ea7d92bf71596f8b0e18e8621ac0

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>


